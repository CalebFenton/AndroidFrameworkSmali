.class public Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeSkPayload.java"


# instance fields
.field protected final blacklist mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V
    .registers 18
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "firstPayloadType"    # I
    .param p3, "unencryptedPayloads"    # [B
    .param p4, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p5, "encryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p6, "integrityKey"    # [B
    .param p7, "encryptionKey"    # [B

    .line 129
    const/4 v0, 0x0

    new-array v4, v0, [B

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    .line 138
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V
    .registers 18
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "firstPayloadType"    # I
    .param p3, "skfHeaderBytes"    # [B
    .param p4, "unencryptedPayloads"    # [B
    .param p5, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p6, "encryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p7, "integrityKey"    # [B
    .param p8, "encryptionKey"    # [B

    .line 151
    array-length v0, p3

    if-nez v0, :cond_6

    const/16 v0, 0x2e

    goto :goto_8

    :cond_6
    const/16 v0, 0x35

    :goto_8
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 155
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    .line 165
    return-void
.end method

.method constructor blacklist <init>(ZLcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;)V
    .registers 5
    .param p1, "isSkf"    # Z
    .param p2, "encryptedPayloadBody"    # Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    .line 79
    if-eqz p1, :cond_5

    const/16 v0, 0x35

    goto :goto_7

    :cond_5
    const/16 v0, 0x2e

    :goto_7
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 80
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    .line 81
    return-void
.end method

.method protected constructor blacklist <init>(ZZI[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V
    .registers 17
    .param p1, "isSkf"    # Z
    .param p2, "critical"    # Z
    .param p3, "encryptedBodyOffset"    # I
    .param p4, "message"    # [B
    .param p5, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p6, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p7, "integrityKey"    # [B
    .param p8, "decryptionKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    if-eqz p1, :cond_5

    const/16 v0, 0x35

    goto :goto_7

    :cond_5
    const/16 v0, 0x2e

    :goto_7
    invoke-direct {p0, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 98
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    move v3, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;-><init>([BILcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    .line 106
    return-void
.end method

.method constructor blacklist <init>(Z[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V
    .registers 16
    .param p1, "critical"    # Z
    .param p2, "message"    # [B
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

    .line 65
    const/4 v1, 0x0

    const/16 v3, 0x20

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "critical":Z
    .end local p2    # "message":[B
    .end local p3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local p4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local p5    # "integrityKey":[B
    .end local p6    # "decryptionKey":[B
    .local v2, "critical":Z
    .local v4, "message":[B
    .local v5, "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .local v6, "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .local v7, "integrityKey":[B
    .local v8, "decryptionKey":[B
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;-><init>(ZZI[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    .line 74
    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->encode()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 186
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 205
    const-string v0, "SK"

    return-object v0
.end method

.method public blacklist getUnencryptedData()[B
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->getUnencryptedData()[B

    move-result-object v0

    return-object v0
.end method
