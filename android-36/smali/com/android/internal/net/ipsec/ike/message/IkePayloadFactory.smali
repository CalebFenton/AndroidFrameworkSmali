.class final Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;
.super Ljava/lang/Object;
.source "IkePayloadFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;,
        Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IkePayloadDecoder;
    }
.end annotation


# static fields
.field private static final blacklist PAYLOAD_HEADER_CRITICAL_BIT_SET:B = -0x80t

.field static blacklist sDecoderInstance:Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IkePayloadDecoder;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IkePayloadDecoder;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->sDecoderInstance:Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist getIkePayload(IZLjava/nio/ByteBuffer;)Landroid/util/Pair;
    .registers 11
    .param p0, "payloadType"    # I
    .param p1, "isResp"    # Z
    .param p2, "input"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 139
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 141
    .local v0, "nextPayloadType":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->isCriticalPayload(B)Z

    move-result v1

    .line 143
    .local v1, "isCritical":Z
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v2

    .line 144
    .local v2, "payloadLength":I
    const/4 v3, 0x4

    if-le v2, v3, :cond_3c

    .line 148
    add-int/lit8 v3, v2, -0x4

    .line 149
    .local v3, "bodyLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v3, v4, :cond_34

    .line 154
    new-array v4, v3, [B

    .line 155
    .local v4, "payloadBody":[B
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 157
    sget-object v5, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->sDecoderInstance:Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;

    .line 158
    invoke-interface {v5, p0, v1, p1, v4}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;->decodeIkePayload(IZZ[B)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v5

    .line 159
    .local v5, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    new-instance v6, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 152
    .end local v4    # "payloadBody":[B
    .end local v5    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :cond_34
    new-instance v4, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v5, "Invalid Payload Length: Payload length is too long."

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    .end local v3    # "bodyLength":I
    :cond_3c
    new-instance v3, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v4, "Invalid Payload Length: Payload length is too short."

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static blacklist getIkeSkPayload(Z[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)Landroid/util/Pair;
    .registers 18
    .param p0, "isSkf"    # Z
    .param p1, "message"    # [B
    .param p2, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p3, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p4, "integrityKey"    # [B
    .param p5, "decryptionKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[B",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;",
            "[B[B)",
            "Landroid/util/Pair<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 183
    array-length v0, p1

    const/16 v1, 0x1c

    sub-int/2addr v0, v1

    .line 184
    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 189
    .local v0, "input":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 191
    .local v2, "nextPayloadType":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->isCriticalPayload(B)Z

    move-result v6

    .line 193
    .local v6, "isCritical":Z
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    .line 195
    .local v3, "payloadLength":I
    array-length v4, p1

    add-int/lit8 v1, v4, -0x1c

    .line 196
    .local v1, "bodyLength":I
    if-lt v1, v3, :cond_43

    .line 199
    if-gt v1, v3, :cond_3b

    .line 210
    sget-object v4, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->sDecoderInstance:Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;

    .line 211
    move v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-interface/range {v4 .. v11}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;->decodeIkeSkPayload(ZZ[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;

    move-result-object v4

    .line 220
    .local v4, "payload":Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;
    new-instance v5, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 205
    .end local v4    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;
    :cond_3b
    new-instance v4, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v5, "Invalid length of SK Payload: Payload length is too short or SK Payload is not the only payload."

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    :cond_43
    new-instance v4, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v5, "Invalid length of SK Payload: Payload length is too long."

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static blacklist isCriticalPayload(B)Z
    .registers 3
    .param p0, "flagByte"    # B

    .line 44
    and-int/lit8 v0, p0, -0x80

    const/16 v1, -0x80

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
