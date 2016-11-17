.class Ljava/net/InetSocketAddress$InetSocketAddressHolder;
.super Ljava/lang/Object;
.source "InetSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InetSocketAddressHolder"
.end annotation


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private hostname:Ljava/lang/String;

.field private port:I


# direct methods
.method static synthetic -get0(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->isUnresolved()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getPort()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getHostName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getHostString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getAddress()Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    iput-object p1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@5
    .line 67
    iput-object p2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@7
    .line 68
    iput p3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    #@9
    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;I)V

    #@3
    return-void
.end method

.method private getAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method private getHostName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 80
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 81
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 82
    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 83
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@e
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 84
    :cond_1
    return-object v1
.end method

.method private getHostString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 88
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 89
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 90
    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 91
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@e
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 92
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@1a
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 94
    :cond_1
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@25
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 96
    :cond_2
    return-object v1
.end method

.method private getPort()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    #@2
    return v0
.end method

.method private isUnresolved()Z
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 114
    if-eqz p1, :cond_1

    #@3
    instance-of v3, p1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@5
    if-eqz v3, :cond_1

    #@7
    move-object v1, p1

    #@8
    .line 116
    check-cast v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@a
    .line 118
    .local v1, "that":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    iget-object v3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@c
    if-eqz v3, :cond_2

    #@e
    .line 119
    iget-object v3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@10
    iget-object v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@12
    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    .line 125
    :goto_0
    if-eqz v0, :cond_0

    #@18
    iget v3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    #@1a
    iget v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    #@1c
    if-ne v3, v4, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    :cond_0
    return v2

    #@20
    .line 115
    .end local v1    # "that":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    :cond_1
    return v2

    #@21
    .line 120
    .restart local v1    # "that":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    :cond_2
    iget-object v3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@23
    if-eqz v3, :cond_4

    #@25
    .line 121
    iget-object v3, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@27
    if-nez v3, :cond_3

    #@29
    .line 122
    iget-object v3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@2b
    iget-object v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@30
    move-result v0

    #@31
    .local v0, "sameIP":Z
    goto :goto_0

    #@32
    .line 121
    .end local v0    # "sameIP":Z
    :cond_3
    const/4 v0, 0x0

    #@33
    .local v0, "sameIP":Z
    goto :goto_0

    #@34
    .line 124
    .end local v0    # "sameIP":Z
    :cond_4
    iget-object v3, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@36
    if-nez v3, :cond_5

    #@38
    iget-object v3, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@3a
    if-nez v3, :cond_5

    #@3c
    const/4 v0, 0x1

    #@3d
    .restart local v0    # "sameIP":Z
    goto :goto_0

    #@3e
    .end local v0    # "sameIP":Z
    :cond_5
    const/4 v0, 0x0

    #@3f
    .restart local v0    # "sameIP":Z
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 131
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@6
    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    #@9
    move-result v0

    #@a
    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    #@c
    add-int/2addr v0, v1

    #@d
    return v0

    #@e
    .line 132
    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 133
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@14
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@1b
    move-result v0

    #@1c
    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    #@1e
    add-int/2addr v0, v1

    #@1f
    return v0

    #@20
    .line 134
    :cond_1
    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    #@22
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->isUnresolved()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, ":"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    iget-object v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    #@2a
    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v1, ":"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method
