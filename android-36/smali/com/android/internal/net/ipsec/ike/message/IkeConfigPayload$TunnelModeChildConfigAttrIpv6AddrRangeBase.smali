.class abstract Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;
.source "IkeConfigPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TunnelModeChildConfigAttrIpv6AddrRangeBase"
.end annotation


# static fields
.field private static final blacklist VALUE_LEN:I = 0x11


# instance fields
.field public final blacklist linkAddress:Landroid/net/LinkAddress;


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 3
    .param p1, "attributeType"    # I

    .line 982
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;-><init>(I)V

    .line 983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    .line 984
    return-void
.end method

.method protected constructor blacklist <init>(ILandroid/net/LinkAddress;)V
    .registers 3
    .param p1, "attributeType"    # I
    .param p2, "ipv6LinkAddress"    # Landroid/net/LinkAddress;

    .line 975
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;-><init>(I)V

    .line 977
    invoke-direct {p0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->validateIpv6LinkAddressTypeOrThrow(Landroid/net/LinkAddress;)V

    .line 978
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    .line 979
    return-void
.end method

.method protected constructor blacklist <init>(I[B)V
    .registers 8
    .param p1, "attributeType"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 988
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;-><init>(II)V

    .line 990
    array-length v0, p2

    if-nez v0, :cond_b

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    .line 992
    return-void

    .line 996
    :cond_b
    :try_start_b
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 997
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 998
    .local v1, "ip6AddrBytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 999
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .line 1001
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    .line 1003
    .local v3, "prefixLen":I
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    .line 1004
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    invoke-direct {p0, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->validateIpv6LinkAddressTypeOrThrow(Landroid/net/LinkAddress;)V
    :try_end_2e
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_2e} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_2e} :catch_30

    .line 1007
    .end local v0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "ip6AddrBytes":[B
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v3    # "prefixLen":I
    nop

    .line 1008
    return-void

    .line 1005
    :catch_30
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Invalid attribute value"

    invoke-direct {v1, v2, v0}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist validateIpv6LinkAddressTypeOrThrow(Landroid/net/LinkAddress;)V
    .registers 4
    .param p1, "address"    # Landroid/net/LinkAddress;

    .line 1011
    invoke-virtual {p1}, Landroid/net/LinkAddress;->isIpv6()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1014
    return-void

    .line 1012
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input LinkAddress is not IPv6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist encodeValueToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1018
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    if-nez v0, :cond_b

    .line 1019
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1020
    return-void

    .line 1023
    :cond_b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    .line 1024
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1025
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1044
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;

    if-nez v0, :cond_b

    goto :goto_17

    .line 1048
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;

    .line 1051
    .local v0, "other":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1045
    .end local v0    # "other":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getValueLength()I
    .registers 2

    .line 1029
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    const/16 v0, 0x11

    :goto_8
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1039
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->linkAddress:Landroid/net/LinkAddress;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist isLengthValid(I)Z
    .registers 3
    .param p1, "length"    # I

    .line 1034
    const/16 v0, 0x11

    if-eq p1, v0, :cond_9

    if-nez p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method
