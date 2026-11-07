.class public Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;
.source "IkeConfigPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigAttributeIpv4Subnet"
.end annotation


# static fields
.field private static final blacklist VALUE_LEN:I = 0x8


# instance fields
.field public final blacklist linkAddress:Landroid/net/LinkAddress;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 709
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;-><init>(I)V

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    .line 711
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/LinkAddress;)V
    .registers 4
    .param p1, "ipv4LinkAddress"    # Landroid/net/LinkAddress;

    .line 694
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;-><init>(I)V

    .line 696
    invoke-virtual {p1}, Landroid/net/LinkAddress;->isIpv4()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 700
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    .line 701
    return-void

    .line 697
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input LinkAddress is not IPv4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([B)V
    .registers 9
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 716
    const/16 v0, 0xd

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;-><init>(II)V

    .line 718
    array-length v0, p1

    if-nez v0, :cond_d

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    .line 720
    return-void

    .line 724
    :cond_d
    :try_start_d
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 725
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 726
    .local v2, "ipBytes":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 727
    new-array v1, v1, [B

    .line 728
    .local v1, "netmaskBytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 730
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    .line 731
    .local v3, "address":Ljava/net/InetAddress;
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    .line 732
    .local v4, "netmask":Ljava/net/InetAddress;
    invoke-direct {p0, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->validateInet4AddressTypeOrThrow(Ljava/net/InetAddress;)V

    .line 733
    invoke-direct {p0, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->validateInet4AddressTypeOrThrow(Ljava/net/InetAddress;)V

    .line 735
    new-instance v5, Landroid/net/LinkAddress;

    move-object v6, v4

    check-cast v6, Ljava/net/Inet4Address;

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->netmaskToPrefixLen(Ljava/net/Inet4Address;)I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;
    :try_end_38
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_38} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_38} :catch_3a

    .line 738
    .end local v0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "netmaskBytes":[B
    .end local v2    # "ipBytes":[B
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v4    # "netmask":Ljava/net/InetAddress;
    nop

    .line 739
    return-void

    .line 736
    :catch_3a
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Invalid attribute value"

    invoke-direct {v1, v2, v0}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist validateInet4AddressTypeOrThrow(Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 742
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_5

    .line 745
    return-void

    .line 743
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input InetAddress is not IPv4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist encodeValueToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 749
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    if-nez v0, :cond_b

    .line 750
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 751
    return-void

    .line 753
    :cond_b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->prefixToNetmaskBytes(I)[B

    move-result-object v0

    .line 754
    .local v0, "netmaskBytes":[B
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 755
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 774
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;

    if-nez v0, :cond_b

    goto :goto_17

    .line 778
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;

    .line 780
    .local v0, "other":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 775
    .end local v0    # "other":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getValueLength()I
    .registers 2

    .line 759
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    const/16 v0, 0x8

    :goto_8
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 769
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist isLengthValid(I)Z
    .registers 3
    .param p1, "length"    # I

    .line 764
    const/16 v0, 0x8

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
