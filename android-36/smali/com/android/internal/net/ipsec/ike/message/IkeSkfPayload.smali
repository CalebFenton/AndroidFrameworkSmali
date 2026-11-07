.class public final Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;
.source "IkeSkfPayload.java"


# static fields
.field public static final blacklist SKF_HEADER_LEN:I = 0x4


# instance fields
.field public final blacklist fragmentNum:I

.field public final blacklist totalFragments:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;II)V
    .registers 5
    .param p1, "encryptedPayloadBody"    # Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;
    .param p2, "fragNum"    # I
    .param p3, "totalFrags"    # I

    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;-><init>(ZLcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;)V

    .line 130
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    .line 131
    iput p3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    .line 132
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[BII)V
    .registers 19
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "firstPayloadType"    # I
    .param p3, "unencryptedPayloads"    # [B
    .param p4, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p5, "encryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p6, "integrityKey"    # [B
    .param p7, "encryptionKey"    # [B
    .param p8, "fragNum"    # I
    .param p9, "totalFrags"    # I

    .line 113
    nop

    .line 116
    invoke-static/range {p8 .. p9}, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->encodeSkfHeader(II)[B

    move-result-object v3

    .line 113
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    .line 122
    move/from16 v1, p8

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    .line 123
    move/from16 v2, p9

    iput v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    .line 124
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
    const/4 v1, 0x1

    const/16 v3, 0x24

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

    .line 77
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 78
    .local p1, "inputBuffer":Ljava/nio/ByteBuffer;
    const/16 p2, 0x20

    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p2

    iput p2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p2

    iput p2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    .line 83
    iget p2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    const/4 p3, 0x1

    if-lt p2, p3, :cond_3c

    iget p2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    if-lt p2, p3, :cond_3c

    iget p2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    iget p3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    if-gt p2, p3, :cond_3c

    .line 90
    return-void

    .line 84
    :cond_3c
    new-instance p2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Received invalid Fragment Number or Total Fragments Number. Fragment Number: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "  Total Fragments: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static blacklist encodeSkfHeader(II)[B
    .registers 5
    .param p0, "fragNum"    # I
    .param p1, "totalFrags"    # I

    .line 136
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 137
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 150
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    int-to-short v0, v0

    .line 151
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    int-to-short v1, v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    .line 153
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->mIkeEncryptedPayloadBody:Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeEncryptedPayloadBody;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 173
    const-string v0, "SKF"

    return-object v0
.end method
