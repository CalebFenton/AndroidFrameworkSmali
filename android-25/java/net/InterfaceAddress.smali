.class public Ljava/net/InterfaceAddress;
.super Ljava/lang/Object;
.source "InterfaceAddress.java"


# instance fields
.field private address:Ljava/net/InetAddress;

.field private broadcast:Ljava/net/Inet4Address;

.field private maskLength:S


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    iput-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@6
    .line 39
    iput-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    #@8
    .line 40
    const/4 v0, 0x0

    #@9
    iput-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    #@b
    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 102
    instance-of v1, p1, Ljava/net/InterfaceAddress;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 103
    return v3

    #@7
    :cond_0
    move-object v0, p1

    #@8
    .line 105
    check-cast v0, Ljava/net/InterfaceAddress;

    #@a
    .line 106
    .local v0, "cmp":Ljava/net/InterfaceAddress;
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@c
    if-nez v1, :cond_2

    #@e
    iget-object v1, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@10
    if-nez v1, :cond_1

    #@12
    move v1, v2

    #@13
    :goto_0
    if-nez v1, :cond_3

    #@15
    .line 107
    return v3

    #@16
    :cond_1
    move v1, v3

    #@17
    .line 106
    goto :goto_0

    #@18
    :cond_2
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@1a
    iget-object v4, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@1c
    invoke-virtual {v1, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    goto :goto_0

    #@21
    .line 108
    :cond_3
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    #@23
    if-nez v1, :cond_5

    #@25
    iget-object v1, v0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    #@27
    if-nez v1, :cond_4

    #@29
    move v1, v2

    #@2a
    :goto_1
    if-nez v1, :cond_6

    #@2c
    .line 109
    return v3

    #@2d
    :cond_4
    move v1, v3

    #@2e
    .line 108
    goto :goto_1

    #@2f
    :cond_5
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    #@31
    iget-object v4, v0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    #@33
    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    goto :goto_1

    #@38
    .line 110
    :cond_6
    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

    #@3a
    iget-short v4, v0, Ljava/net/InterfaceAddress;->maskLength:S

    #@3c
    if-eq v1, v4, :cond_7

    #@3e
    .line 111
    return v3

    #@3f
    .line 112
    :cond_7
    return v2
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getBroadcast()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    #@2
    return-object v0
.end method

.method public getNetworkPrefixLength()S
    .locals 1

    #@0
    .prologue
    .line 83
    iget-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    #@2
    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    #@5
    move-result v1

    #@6
    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    #@c
    invoke-virtual {v0}, Ljava/net/Inet4Address;->hashCode()I

    #@f
    move-result v0

    #@10
    :goto_0
    add-int/2addr v0, v1

    #@11
    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

    #@13
    add-int/2addr v0, v1

    #@14
    return v0

    #@15
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 131
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
    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

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
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

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
