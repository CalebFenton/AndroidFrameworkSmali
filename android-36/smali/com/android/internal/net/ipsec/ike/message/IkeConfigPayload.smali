.class public final Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeConfigPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeAppVersion;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Subnet;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv6AddressBase;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddressBase;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dns;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dhcp;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv4AddressBase;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigType;,
        Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttr;
    }
.end annotation


# static fields
.field public static final blacklist CONFIG_ATTR_APPLICATION_VERSION:I = 0x7

.field public static final blacklist CONFIG_ATTR_INTERNAL_IP4_ADDRESS:I = 0x1

.field public static final blacklist CONFIG_ATTR_INTERNAL_IP4_DHCP:I = 0x6

.field public static final blacklist CONFIG_ATTR_INTERNAL_IP4_DNS:I = 0x3

.field public static final blacklist CONFIG_ATTR_INTERNAL_IP4_NETMASK:I = 0x2

.field public static final blacklist CONFIG_ATTR_INTERNAL_IP4_SUBNET:I = 0xd

.field public static final blacklist CONFIG_ATTR_INTERNAL_IP6_ADDRESS:I = 0x8

.field public static final blacklist CONFIG_ATTR_INTERNAL_IP6_DNS:I = 0xa

.field public static final blacklist CONFIG_ATTR_INTERNAL_IP6_SUBNET:I = 0xf

.field public static final blacklist CONFIG_ATTR_IP4_PCSCF:I = 0x14

.field public static final blacklist CONFIG_ATTR_IP6_PCSCF:I = 0x15

.field public static final blacklist CONFIG_ATTR_SUPPORTED_ATTRIBUTES:I = 0xe

.field private static final blacklist CONFIG_HEADER_LEN:I = 0x4

.field private static final blacklist CONFIG_HEADER_RESERVED_LEN:I = 0x3

.field public static final blacklist CONFIG_TYPE_REPLY:I = 0x2

.field public static final blacklist CONFIG_TYPE_REQUEST:I = 0x1


# instance fields
.field public final blacklist configType:I

.field public final blacklist recognizedAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ZLjava/util/List;)V
    .registers 5
    .param p1, "isReply"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p2, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;>;"
    const/16 v0, 0x2f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 131
    if-eqz p1, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    iput v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    .line 132
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->recognizedAttributeList:Ljava/util/List;

    .line 133
    return-void
.end method

.method constructor blacklist <init>(Z[B)V
    .registers 6
    .param p1, "critical"    # Z
    .param p2, "payloadBody"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 112
    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 114
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    .line 116
    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 118
    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->decodeAttributesFrom(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->recognizedAttributeList:Ljava/util/List;

    .line 123
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 124
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->validateNetmaskInReply()V

    .line 126
    :cond_27
    return-void
.end method

.method private blacklist validateNetmaskInReply()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "hasIpv4Address":Z
    const/4 v1, 0x0

    .line 139
    .local v1, "numNetmask":I
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->recognizedAttributeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    .line 140
    .local v3, "attr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->isEmptyValue()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 141
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found empty attribute in a Config Payload reply "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->attributeType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    const-string v6, "IkeConfigPayload"

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_38
    iget v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->attributeType:I

    packed-switch v4, :pswitch_data_68

    .line 155
    goto :goto_8

    .line 152
    :pswitch_3e
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->isEmptyValue()Z

    move-result v4

    if-nez v4, :cond_4e

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 149
    :pswitch_47
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->isEmptyValue()Z

    move-result v4

    if-nez v4, :cond_4e

    const/4 v0, 0x1

    .line 157
    .end local v3    # "attr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    :cond_4e
    :goto_4e
    goto :goto_8

    .line 159
    :cond_4f
    if-nez v0, :cond_5c

    if-gtz v1, :cond_54

    goto :goto_5c

    .line 160
    :cond_54
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v3, "Found INTERNAL_IP4_NETMASK attribute but no INTERNAL_IP4_ADDRESS attribute"

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_5c
    :goto_5c
    const/4 v2, 0x1

    if-gt v1, v2, :cond_60

    .line 167
    return-void

    .line 165
    :cond_60
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v3, "Found more than one INTERNAL_IP4_NETMASK"

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_47
        :pswitch_3e
    .end packed-switch
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1240
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 1241
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1243
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->recognizedAttributeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    .line 1244
    .local v1, "attr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    invoke-virtual {v1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->encodeAttributeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 1245
    .end local v1    # "attr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    goto :goto_1a

    .line 1246
    :cond_2a
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .registers 5

    .line 1255
    const/16 v0, 0x8

    .line 1257
    .local v0, "len":I
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->recognizedAttributeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    .line 1258
    .local v2, "attr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->getAttributeLen()I

    move-result v3

    add-int/2addr v0, v3

    .line 1259
    .end local v2    # "attr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    goto :goto_8

    .line 1261
    :cond_1a
    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 3

    .line 1271
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    packed-switch v0, :pswitch_data_28

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1275
    :pswitch_21
    const-string v0, "CP(Reply)"

    return-object v0

    .line 1273
    :pswitch_24
    const-string v0, "CP(Req)"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method
