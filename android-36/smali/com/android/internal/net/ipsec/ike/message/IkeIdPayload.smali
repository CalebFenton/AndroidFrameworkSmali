.class public final Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeIdPayload.java"


# static fields
.field private static final blacklist ID_HEADER_LEN:I = 0x4

.field private static final blacklist ID_HEADER_RESERVED_LEN:I = 0x3


# instance fields
.field public final blacklist ikeId:Landroid/net/ipsec/ike/IkeIdentification;


# direct methods
.method public constructor blacklist <init>(ZLandroid/net/ipsec/ike/IkeIdentification;)V
    .registers 5
    .param p1, "isInitiator"    # Z
    .param p2, "ikeId"    # Landroid/net/ipsec/ike/IkeIdentification;

    .line 109
    if-eqz p1, :cond_5

    const/16 v0, 0x23

    goto :goto_7

    :cond_5
    const/16 v0, 0x24

    :goto_7
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 110
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    .line 111
    return-void
.end method

.method constructor blacklist <init>(Z[BZ)V
    .registers 10
    .param p1, "critical"    # Z
    .param p2, "payloadBody"    # [B
    .param p3, "isInitiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 62
    if-eqz p3, :cond_5

    const/16 v0, 0x23

    goto :goto_7

    :cond_5
    const/16 v0, 0x24

    :goto_7
    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 64
    array-length v0, p2

    const/4 v1, 0x4

    if-le v0, v1, :cond_73

    .line 68
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    .line 72
    .local v2, "idType":I
    const/4 v3, 0x3

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 74
    array-length v3, p2

    sub-int/2addr v3, v1

    new-array v1, v3, [B

    .line 75
    .local v1, "idData":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 77
    packed-switch v2, :pswitch_data_90

    .line 97
    :pswitch_2a
    new-instance v3, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported ID type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :pswitch_43
    new-instance v3, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-direct {v3, v1}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    .line 95
    return-void

    .line 91
    :pswitch_4b
    new-instance v3, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    invoke-direct {v3, v1}, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;-><init>([B)V

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    .line 92
    return-void

    .line 88
    :pswitch_53
    new-instance v3, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    invoke-direct {v3, v1}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>([B)V

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    .line 89
    return-void

    .line 85
    :pswitch_5b
    new-instance v3, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    invoke-direct {v3, v1}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>([B)V

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    .line 86
    return-void

    .line 82
    :pswitch_63
    new-instance v3, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    invoke-direct {v3, v1}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>([B)V

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    .line 83
    return-void

    .line 79
    :pswitch_6b
    new-instance v3, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    invoke-direct {v3, v1}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>([B)V

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    .line 80
    return-void

    .line 65
    .end local v0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "idData":[B
    .end local v2    # "idType":I
    :cond_73
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too short."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_63
        :pswitch_5b
        :pswitch_2a
        :pswitch_53
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_4b
        :pswitch_2a
        :pswitch_43
    .end packed-switch
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->getEncodedPayloadBody()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 144
    return-void
.end method

.method public blacklist getEncodedPayloadBody()[B
    .registers 4

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->getPayloadLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 121
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    iget v1, v1, Landroid/net/ipsec/ike/IkeIdentification;->idType:I

    int-to-byte v1, v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 123
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    .line 124
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeIdentification;->getEncodedIdData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getPayloadLength()I
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeIdentification;->getEncodedIdData()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 3

    .line 163
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->payloadType:I

    packed-switch v0, :pswitch_data_14

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Payload Type for Identification Payload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :pswitch_d
    const-string v0, "IDr"

    return-object v0

    .line 165
    :pswitch_10
    const-string v0, "IDi"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x23
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist validateEndCertIdOrThrow(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "endCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;->ikeId:Landroid/net/ipsec/ike/IkeIdentification;

    invoke-virtual {v0, p1}, Landroid/net/ipsec/ike/IkeIdentification;->validateEndCertIdOrThrow(Ljava/security/cert/X509Certificate;)V

    .line 132
    return-void
.end method
