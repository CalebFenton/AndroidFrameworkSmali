.class Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppN1ModeUtils;
.super Ljava/lang/Object;
.source "Ike3gppN1ModeUtils.java"


# static fields
.field private static final blacklist N1_MODE_CAPABILITY_PAYLOAD_LENGTH:I = 0x2

.field private static final blacklist PDU_SESSION_ID_LEN:B = 0x1t


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist generateN1ModeCapabilityPayload(B)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .registers 5
    .param p0, "pduSessionId"    # B

    .line 43
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 44
    .local v0, "payloadData":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 47
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 48
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const v3, 0xc747

    invoke-direct {v1, v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    .line 47
    return-object v1
.end method

.method static blacklist getSnssaiFromNotifyData([B)[B
    .registers 5
    .param p0, "notifyData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 59
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 63
    .local v1, "snssaiLen":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_17

    .line 67
    new-array v2, v1, [B

    .line 68
    .local v2, "snssai":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 69
    return-object v2

    .line 64
    .end local v2    # "snssai":[B
    :cond_17
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v3, "SNSSAI does not match expected length"

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
