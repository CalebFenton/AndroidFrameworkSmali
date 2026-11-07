.class public final Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeTsPayload.java"


# static fields
.field private static final blacklist TS_HEADER_LEN:I = 0x4

.field private static final blacklist TS_HEADER_RESERVED_LEN:I = 0x3


# instance fields
.field public final blacklist numTs:I

.field public final blacklist trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;


# direct methods
.method constructor blacklist <init>(Z[BZ)V
    .registers 7
    .param p1, "critical"    # Z
    .param p2, "payloadBody"    # [B
    .param p3, "isInitiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 49
    if-eqz p3, :cond_5

    const/16 v0, 0x2c

    goto :goto_7

    :cond_5
    const/16 v0, 0x2d

    :goto_7
    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 51
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->numTs:I

    .line 53
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->numTs:I

    if-eqz v1, :cond_34

    .line 58
    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 62
    .local v1, "tsBytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 63
    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->numTs:I

    invoke-static {v2, v1}, Landroid/net/ipsec/ike/IkeTrafficSelector;->decodeIkeTrafficSelectors(I[B)[Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 64
    return-void

    .line 54
    .end local v1    # "tsBytes":[B
    :cond_34
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Cannot find Traffic Selector in TS payload."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Z[Landroid/net/ipsec/ike/IkeTrafficSelector;)V
    .registers 5
    .param p1, "isInitiator"    # Z
    .param p2, "ikeTrafficSelectors"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 73
    if-eqz p1, :cond_5

    const/16 v0, 0x2c

    goto :goto_7

    :cond_5
    const/16 v0, 0x2d

    :goto_7
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 75
    if-eqz p2, :cond_16

    array-length v0, p2

    if-eqz v0, :cond_16

    .line 80
    array-length v0, p2

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->numTs:I

    .line 81
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 82
    return-void

    .line 76
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TS Payload requires at least one Traffic Selector."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist contains(Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;)Z
    .registers 12
    .param p1, "tsPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    .line 99
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_1f

    aget-object v4, v0, v3

    .line 100
    .local v4, "subTs":Landroid/net/ipsec/ike/IkeTrafficSelector;
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    array-length v6, v5

    move v7, v2

    :goto_d
    if-ge v7, v6, :cond_1e

    aget-object v8, v5, v7

    .line 101
    .local v8, "superTs":Landroid/net/ipsec/ike/IkeTrafficSelector;
    invoke-virtual {v8, v4}, Landroid/net/ipsec/ike/IkeTrafficSelector;->contains(Landroid/net/ipsec/ike/IkeTrafficSelector;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 102
    nop

    .line 99
    .end local v4    # "subTs":Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local v8    # "superTs":Landroid/net/ipsec/ike/IkeTrafficSelector;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 100
    .restart local v4    # "subTs":Landroid/net/ipsec/ike/IkeTrafficSelector;
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 105
    :cond_1e
    return v2

    .line 107
    .end local v4    # "subTs":Landroid/net/ipsec/ike/IkeTrafficSelector;
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 120
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->numTs:I

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 122
    .local v3, "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    invoke-virtual {v3, p2}, Landroid/net/ipsec/ike/IkeTrafficSelector;->encodeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 121
    .end local v3    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 124
    :cond_22
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .registers 7

    .line 133
    const/16 v0, 0x8

    .line 134
    .local v0, "len":I
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_10

    aget-object v4, v1, v3

    .line 135
    .local v4, "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    iget v5, v4, Landroid/net/ipsec/ike/IkeTrafficSelector;->selectorLength:I

    add-int/2addr v0, v5

    .line 134
    .end local v4    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 138
    :cond_10
    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 3

    .line 148
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->payloadType:I

    packed-switch v0, :pswitch_data_14

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Payload Type for Traffic Selector Payload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_d
    const-string v0, "TSr"

    return-object v0

    .line 150
    :pswitch_10
    const-string v0, "TSi"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x2c
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method
