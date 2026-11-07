.class public final Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeVendorPayload.java"


# instance fields
.field public final blacklist vendorId:[B


# direct methods
.method constructor blacklist <init>(Z[B)V
    .registers 4
    .param p1, "critical"    # Z
    .param p2, "payloadBody"    # [B

    .line 42
    const/16 v0, 0x2b

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 43
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;->vendorId:[B

    .line 44
    return-void
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It is not supported to encode a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getPayloadLength()I
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;->vendorId:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, "Vendor"

    return-object v0
.end method
