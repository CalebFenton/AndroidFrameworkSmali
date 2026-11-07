.class public Ljava/net/InterfaceAddress;
.super Ljava/lang/Object;
.source "InterfaceAddress.java"


# instance fields
.field private greylist-max-o address:Ljava/net/InetAddress;

.field private greylist-max-o broadcast:Ljava/net/Inet4Address;

.field private greylist-max-o maskLength:S


# direct methods
.method constructor greylist-max-r <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    .line 39
    iput-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    .line 40
    const/4 v0, 0x0

    iput-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    .line 47
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/net/InetAddress;Ljava/net/Inet4Address;Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "broadcast"    # Ljava/net/Inet4Address;
    .param p3, "netmask"    # Ljava/net/InetAddress;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    .line 39
    iput-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    .line 40
    const/4 v0, 0x0

    iput-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    .line 51
    iput-object p1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    .line 52
    iput-object p2, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    .line 53
    invoke-direct {p0, p3}, Ljava/net/InterfaceAddress;->countPrefixLength(Ljava/net/InetAddress;)S

    move-result v0

    iput-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    .line 54
    return-void
.end method

.method private greylist-max-o countPrefixLength(Ljava/net/InetAddress;)S
    .registers 8
    .param p1, "netmask"    # Ljava/net/InetAddress;

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "count":S
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_17

    aget-byte v4, v1, v3

    .line 65
    .local v4, "b":B
    :goto_b
    if-eqz v4, :cond_14

    shl-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    add-int/lit8 v5, v0, 0x1

    int-to-short v0, v5

    goto :goto_b

    .line 64
    .end local v4    # "b":B
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 67
    :cond_17
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 124
    instance-of v0, p1, Ljava/net/InterfaceAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 125
    return v1

    .line 127
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/net/InterfaceAddress;

    .line 128
    .local v0, "cmp":Ljava/net/InterfaceAddress;
    iget-object v2, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v2, :cond_12

    iget-object v2, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v2, :cond_1c

    goto :goto_1d

    :cond_12
    iget-object v2, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    iget-object v3, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 129
    :cond_1c
    return v1

    .line 130
    :cond_1d
    :goto_1d
    iget-object v2, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    if-nez v2, :cond_26

    iget-object v2, v0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    if-nez v2, :cond_30

    goto :goto_31

    :cond_26
    iget-object v2, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    iget-object v3, v0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 131
    :cond_30
    return v1

    .line 132
    :cond_31
    :goto_31
    iget-short v2, p0, Ljava/net/InterfaceAddress;->maskLength:S

    iget-short v3, v0, Ljava/net/InterfaceAddress;->maskLength:S

    if-eq v2, v3, :cond_38

    .line 133
    return v1

    .line 134
    :cond_38
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 77
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist test-api getBroadcast()Ljava/net/InetAddress;
    .registers 2

    .line 91
    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public whitelist test-api getNetworkPrefixLength()S
    .registers 2

    .line 105
    iget-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 143
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    if-eqz v1, :cond_11

    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    invoke-virtual {v1}, Ljava/net/Inet4Address;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
