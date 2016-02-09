.class public Ljava/net/InetSocketAddress;
.super Ljava/net/SocketAddress;
.source "InetSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = 0x467194616ff9aa45L


# instance fields
.field private final addr:Ljava/net/InetAddress;

.field private final hostname:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 39
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    #@4
    .line 41
    iput-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@6
    .line 42
    iput-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    #@8
    .line 43
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ljava/net/InetSocketAddress;->port:I

    #@b
    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/net/InetAddress;

    #@3
    invoke-direct {p0, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@6
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 85
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;IZ)V

    #@4
    .line 84
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "needResolved"    # Z

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    #@3
    .line 93
    if-eqz p1, :cond_0

    #@5
    if-gez p2, :cond_1

    #@7
    .line 94
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "host="

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    const-string/jumbo v4, ", port="

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 93
    :cond_1
    const v2, 0xffff

    #@2f
    if-gt p2, v2, :cond_0

    #@31
    .line 97
    const/4 v0, 0x0

    #@32
    .line 98
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz p3, :cond_2

    #@34
    .line 100
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    move-result-object v0

    #@38
    .line 101
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 p1, 0x0

    #@39
    .line 105
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local p1    # "hostname":Ljava/lang/String;
    :cond_2
    :goto_0
    iput-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@3b
    .line 106
    iput-object p1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    #@3d
    .line 107
    iput p2, p0, Ljava/net/InetSocketAddress;->port:I

    #@3f
    .line 92
    return-void

    #@40
    .line 102
    .local v0, "addr":Ljava/net/InetAddress;
    .restart local p1    # "hostname":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@41
    .local v1, "ignored":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 66
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    #@4
    .line 67
    if-ltz p2, :cond_0

    #@6
    const v0, 0xffff

    #@9
    if-le p2, v0, :cond_1

    #@b
    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "port="

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 70
    :cond_1
    if-nez p1, :cond_2

    #@27
    sget-object p1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@29
    .end local p1    # "address":Ljava/net/InetAddress;
    :cond_2
    iput-object p1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@2b
    .line 71
    iput-object v1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    #@2d
    .line 72
    iput p2, p0, Ljava/net/InetSocketAddress;->port:I

    #@2f
    .line 66
    return-void
.end method

.method public static createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    #@0
    .prologue
    .line 122
    new-instance v0, Ljava/net/InetSocketAddress;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;IZ)V

    #@6
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 223
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "socketAddr"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 187
    if-ne p0, p1, :cond_0

    #@3
    .line 188
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 190
    :cond_0
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 191
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 193
    check-cast v0, Ljava/net/InetSocketAddress;

    #@d
    .line 196
    .local v0, "iSockAddr":Ljava/net/InetSocketAddress;
    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    #@f
    iget v2, v0, Ljava/net/InetSocketAddress;->port:I

    #@11
    if-eq v1, v2, :cond_2

    #@13
    .line 197
    return v3

    #@14
    .line 202
    :cond_2
    iget-object v1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@16
    if-nez v1, :cond_3

    #@18
    iget-object v1, v0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@1a
    if-nez v1, :cond_3

    #@1c
    .line 203
    iget-object v1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    #@1e
    iget-object v2, v0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    return v1

    #@25
    .line 207
    :cond_3
    iget-object v1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@27
    if-nez v1, :cond_4

    #@29
    .line 210
    return v3

    #@2a
    .line 212
    :cond_4
    iget-object v1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@2c
    iget-object v2, v0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@2e
    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    return v1
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@6
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    #@d
    goto :goto_0
.end method

.method public final getHostString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@9
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public final getPort()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Ljava/net/InetSocketAddress;->port:I

    #@2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 218
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    #@c
    add-int/2addr v0, v1

    #@d
    return v0

    #@e
    .line 220
    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@10
    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    #@13
    move-result v0

    #@14
    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    #@16
    add-int/2addr v0, v1

    #@17
    return v0
.end method

.method public final isUnresolved()Z
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

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

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    #@b
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, ":"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    #@27
    goto :goto_0
.end method
