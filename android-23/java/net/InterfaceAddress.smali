.class public Ljava/net/InterfaceAddress;
.super Ljava/lang/Object;
.source "InterfaceAddress.java"


# instance fields
.field private final address:Ljava/net/InetAddress;

.field private final broadcastAddress:Ljava/net/InetAddress;

.field private final prefixLength:S


# direct methods
.method constructor <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)V
    .locals 1
    .param p1, "address"    # Ljava/net/Inet4Address;
    .param p2, "broadcastAddress"    # Ljava/net/Inet4Address;
    .param p3, "mask"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@5
    .line 44
    iput-object p2, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    #@7
    .line 45
    invoke-static {p3}, Ljava/net/InterfaceAddress;->countPrefixLength(Ljava/net/Inet4Address;)S

    #@a
    move-result v0

    #@b
    iput-short v0, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    #@d
    .line 42
    return-void
.end method

.method constructor <init>(Ljava/net/Inet6Address;S)V
    .locals 1
    .param p1, "address"    # Ljava/net/Inet6Address;
    .param p2, "prefixLength"    # S

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@5
    .line 53
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    #@8
    .line 54
    iput-short p2, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    #@a
    .line 51
    return-void
.end method

.method private static countPrefixLength(Ljava/net/Inet4Address;)S
    .locals 7
    .param p0, "mask"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 58
    const/4 v1, 0x0

    #@2
    .line 59
    .local v1, "count":S
    iget-object v4, p0, Ljava/net/Inet4Address;->ipaddress:[B

    #@4
    array-length v5, v4

    #@5
    .end local v1    # "count":S
    :goto_0
    if-ge v3, v5, :cond_2

    #@7
    aget-byte v0, v4, v3

    #@9
    .line 60
    .local v0, "b":B
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_1
    const/16 v6, 0x8

    #@c
    if-ge v2, v6, :cond_1

    #@e
    .line 61
    const/4 v6, 0x1

    #@f
    shl-int/2addr v6, v2

    #@10
    and-int/2addr v6, v0

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 62
    add-int/lit8 v6, v1, 0x1

    #@15
    int-to-short v1, v6

    #@16
    .line 60
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_1

    #@19
    .line 59
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 66
    .end local v0    # "b":B
    .end local v2    # "i":I
    :cond_2
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 78
    if-ne p1, p0, :cond_0

    #@4
    .line 79
    return v1

    #@5
    .line 81
    :cond_0
    instance-of v3, p1, Ljava/net/InterfaceAddress;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 82
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 84
    check-cast v0, Ljava/net/InterfaceAddress;

    #@d
    .line 85
    .local v0, "rhs":Ljava/net/InterfaceAddress;
    iget-object v3, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@f
    if-nez v3, :cond_3

    #@11
    iget-object v3, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@13
    if-nez v3, :cond_4

    #@15
    .line 86
    :cond_2
    iget-short v3, v0, Ljava/net/InterfaceAddress;->prefixLength:S

    #@17
    iget-short v4, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    #@19
    if-ne v3, v4, :cond_4

    #@1b
    .line 87
    iget-object v3, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    #@1d
    if-nez v3, :cond_6

    #@1f
    iget-object v3, v0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    #@21
    if-nez v3, :cond_5

    #@23
    .line 85
    :goto_0
    return v1

    #@24
    :cond_3
    iget-object v3, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@26
    iget-object v4, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@28
    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_2

    #@2e
    :cond_4
    move v1, v2

    #@2f
    goto :goto_0

    #@30
    :cond_5
    move v1, v2

    #@31
    .line 87
    goto :goto_0

    #@32
    :cond_6
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    #@34
    iget-object v2, v0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    #@36
    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    goto :goto_0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getBroadcast()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getNetworkPrefixLength()S
    .locals 1

    #@0
    .prologue
    .line 127
    iget-short v0, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 92
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 93
    .local v0, "hashCode":I
    :goto_0
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    #@7
    if-nez v1, :cond_1

    #@9
    const/4 v1, 0x0

    #@a
    :goto_1
    add-int/2addr v0, v1

    #@b
    .line 94
    iget-short v1, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    #@d
    add-int/2addr v0, v1

    #@e
    .line 95
    return v0

    #@f
    .line 92
    .end local v0    # "hashCode":I
    :cond_0
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@11
    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    #@14
    move-result v1

    #@15
    neg-int v0, v1

    #@16
    .restart local v0    # "hashCode":I
    goto :goto_0

    #@17
    .line 93
    :cond_1
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    #@19
    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    #@1c
    move-result v1

    #@1d
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "/"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-short v1, p0, Ljava/net/InterfaceAddress;->prefixLength:S

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " ["

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcastAddress:Ljava/net/InetAddress;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, "]"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method
