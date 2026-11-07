.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeAuthPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload$AuthMethod;
    }
.end annotation


# static fields
.field private static final blacklist AUTH_HEADER_LEN:I = 0x4

.field public static final blacklist AUTH_METHOD_GENERIC_DIGITAL_SIGN:I = 0xe

.field public static final blacklist AUTH_METHOD_PRE_SHARED_KEY:I = 0x2

.field public static final blacklist AUTH_METHOD_RSA_DIGITAL_SIGN:I = 0x1

.field private static final blacklist AUTH_RESERVED_FIELD_LEN:I = 0x3


# instance fields
.field public final blacklist authMethod:I


# direct methods
.method protected constructor blacklist <init>(ZI)V
    .registers 4
    .param p1, "critical"    # Z
    .param p2, "authMethod"    # I

    .line 64
    const/16 v0, 0x27

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 65
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->authMethod:I

    .line 66
    return-void
.end method

.method protected static blacklist getIkeAuthPayload(Z[B)Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;
    .registers 8
    .param p0, "critical"    # Z
    .param p1, "payloadBody"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 74
    .local v1, "authMethod":I
    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 75
    .local v2, "reservedField":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 77
    array-length v3, p1

    add-int/lit8 v3, v3, -0x4

    new-array v3, v3, [B

    .line 78
    .local v3, "authData":[B
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    sparse-switch v1, :sswitch_data_3a

    .line 89
    new-instance v4, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v5, "Unsupported authentication method"

    invoke-direct {v4, v5}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :sswitch_25
    new-instance v4, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;

    const/16 v5, 0xe

    invoke-direct {v4, p0, v5, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;-><init>(ZI[B)V

    return-object v4

    .line 81
    :sswitch_2d
    new-instance v4, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;-><init>(Z[B)V

    return-object v4

    .line 83
    :sswitch_33
    new-instance v4, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;-><init>(ZI[B)V

    return-object v4

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_33
        0x2 -> :sswitch_2d
        0xe -> :sswitch_25
    .end sparse-switch
.end method

.method protected static blacklist getSignedOctets([B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)[B
    .registers 8
    .param p0, "ikeInitBytes"    # [B
    .param p1, "nonce"    # [B
    .param p2, "idPayloadBodyBytes"    # [B
    .param p3, "ikePrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p4, "prfKeyBytes"    # [B

    .line 104
    invoke-virtual {p3, p4, p2}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->signBytes([B[B)[B

    move-result-object v0

    .line 106
    .local v0, "signedidPayloadBodyBytes":[B
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, v0

    add-int/2addr v1, v2

    .line 107
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 109
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected abstract blacklist encodeAuthDataToByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 117
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->authMethod:I

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {p0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->encodeAuthDataToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 119
    return-void
.end method

.method protected abstract blacklist getAuthDataLength()I
.end method

.method protected blacklist getPayloadLength()I
    .registers 2

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->getAuthDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method
