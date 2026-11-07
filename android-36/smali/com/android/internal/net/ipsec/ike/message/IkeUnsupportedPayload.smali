.class final Lcom/android/internal/net/ipsec/ike/message/IkeUnsupportedPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeUnsupportedPayload.java"


# direct methods
.method constructor blacklist <init>(IZ)V
    .registers 3
    .param p1, "payload"    # I
    .param p2, "critical"    # Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 38
    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It is not supported to encode a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeUnsupportedPayload;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getPayloadLength()I
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It is not supported to get payload length of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeUnsupportedPayload;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 69
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeUnsupportedPayload;->payloadType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
