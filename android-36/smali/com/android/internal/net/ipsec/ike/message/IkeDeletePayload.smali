.class public final Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
.source "IkeDeletePayload.java"


# static fields
.field private static final blacklist DELETE_HEADER_LEN:I = 0x4


# instance fields
.field public final blacklist numSpi:I

.field public final blacklist protocolId:I

.field public final blacklist spiSize:B

.field public final blacklist spisToDelete:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 116
    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;-><init>(IZ)V

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->protocolId:I

    .line 118
    iput-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spiSize:B

    .line 119
    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->numSpi:I

    .line 120
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spisToDelete:[I

    .line 121
    return-void
.end method

.method constructor blacklist <init>(Z[B)V
    .registers 7
    .param p1, "critical"    # Z
    .param p2, "payloadBody"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 74
    const/16 v0, 0x2a

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;-><init>(IZ)V

    .line 76
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->protocolId:I

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spiSize:B

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->numSpi:I

    .line 81
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->numSpi:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spisToDelete:[I

    .line 83
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->protocolId:I

    packed-switch v1, :pswitch_data_78

    .line 105
    :pswitch_2e
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Unrecognized protocol in Delete Payload."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_36
    iget-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spiSize:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_59

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->numSpi:I

    if-eqz v1, :cond_59

    .line 96
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->numSpi:I

    mul-int/2addr v3, v2

    if-ne v1, v3, :cond_59

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_49
    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->numSpi:I

    if-ge v1, v2, :cond_58

    .line 101
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spisToDelete:[I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 103
    .end local v1    # "i":I
    :cond_58
    goto :goto_6f

    .line 97
    :cond_59
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Invalid Delete Child Payload."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :pswitch_61
    iget-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spiSize:B

    if-nez v1, :cond_70

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->numSpi:I

    if-nez v1, :cond_70

    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_70

    .line 107
    :goto_6f
    return-void

    .line 89
    :cond_70
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Invalid Delete IKE Payload."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_61
        :pswitch_2e
        :pswitch_36
    .end packed-switch
.end method

.method public constructor blacklist <init>([I)V
    .registers 4
    .param p1, "spis"    # [I

    .line 129
    const/16 v0, 0x2a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;-><init>(IZ)V

    .line 131
    if-eqz p1, :cond_18

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_18

    .line 135
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->protocolId:I

    .line 136
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spiSize:B

    .line 137
    array-length v0, p1

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->numSpi:I

    .line 138
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spisToDelete:[I

    .line 139
    return-void

    .line 132
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No SPIs provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 150
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->protocolId:I

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spiSize:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->numSpi:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spisToDelete:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_28

    aget v3, v0, v2

    .line 153
    .local v3, "toDelete":I
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    .end local v3    # "toDelete":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 155
    :cond_28
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spisToDelete:[I

    array-length v0, v0

    iget-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spiSize:B

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 174
    const-string v0, "Del"

    return-object v0
.end method
