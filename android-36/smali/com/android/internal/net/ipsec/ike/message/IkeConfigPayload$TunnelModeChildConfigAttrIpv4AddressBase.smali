.class abstract Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;
.source "IkeConfigPayload.java"

# interfaces
.implements Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TunnelModeChildConfigAttrIpv4AddressBase"
.end annotation


# instance fields
.field public final blacklist address:Ljava/net/Inet4Address;


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 3
    .param p1, "attributeType"    # I

    .line 418
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;-><init>(I)V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->address:Ljava/net/Inet4Address;

    .line 420
    return-void
.end method

.method protected constructor blacklist <init>(ILjava/net/Inet4Address;)V
    .registers 3
    .param p1, "attributeType"    # I
    .param p2, "address"    # Ljava/net/Inet4Address;

    .line 413
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;-><init>(I)V

    .line 414
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->address:Ljava/net/Inet4Address;

    .line 415
    return-void
.end method

.method protected constructor blacklist <init>(I[B)V
    .registers 6
    .param p1, "attributeType"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 424
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;-><init>(II)V

    .line 426
    array-length v0, p2

    if-nez v0, :cond_b

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->address:Ljava/net/Inet4Address;

    .line 428
    return-void

    .line 432
    :cond_b
    :try_start_b
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 434
    .local v0, "netAddress":Ljava/net/InetAddress;
    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1a

    .line 437
    move-object v1, v0

    check-cast v1, Ljava/net/Inet4Address;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->address:Ljava/net/Inet4Address;

    .line 440
    .end local v0    # "netAddress":Ljava/net/InetAddress;
    nop

    .line 441
    return-void

    .line 435
    .restart local v0    # "netAddress":Ljava/net/InetAddress;
    :cond_1a
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Invalid IPv4 address."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;
    .end local p1    # "attributeType":I
    .end local p2    # "value":[B
    throw v1
    :try_end_22
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_22} :catch_22

    .line 438
    .end local v0    # "netAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;
    .restart local p1    # "attributeType":I
    .restart local p2    # "value":[B
    :catch_22
    move-exception v0

    .line 439
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Invalid attribute value"

    invoke-direct {v1, v2, v0}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected blacklist encodeValueToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 445
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->address:Ljava/net/Inet4Address;

    if-nez v0, :cond_5

    return-void

    .line 447
    :cond_5
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->address:Ljava/net/Inet4Address;

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 448
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 467
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;

    if-nez v0, :cond_b

    goto :goto_17

    .line 471
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;

    .line 474
    .local v0, "other":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->address:Ljava/net/Inet4Address;

    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->address:Ljava/net/Inet4Address;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 468
    .end local v0    # "other":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getValueLength()I
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->address:Ljava/net/Inet4Address;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x4

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 462
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->address:Ljava/net/Inet4Address;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist isLengthValid(I)Z
    .registers 3
    .param p1, "length"    # I

    .line 457
    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    if-nez p1, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method
