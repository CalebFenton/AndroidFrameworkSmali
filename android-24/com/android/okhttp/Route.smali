.class public final Lcom/android/okhttp/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final address:Lcom/android/okhttp/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "address"    # Lcom/android/okhttp/Address;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "inetSocketAddress"    # Ljava/net/InetSocketAddress;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    if-nez p1, :cond_0

    #@5
    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "address == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 43
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "proxy == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 46
    :cond_1
    if-nez p3, :cond_2

    #@1b
    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    const-string/jumbo v1, "inetSocketAddress == null"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 49
    :cond_2
    iput-object p1, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@26
    .line 50
    iput-object p2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    #@28
    .line 51
    iput-object p3, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    #@2a
    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    instance-of v2, p1, Lcom/android/okhttp/Route;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 83
    check-cast v0, Lcom/android/okhttp/Route;

    #@8
    .line 84
    .local v0, "other":Lcom/android/okhttp/Route;
    iget-object v2, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@a
    iget-object v3, v0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@c
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Address;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 85
    iget-object v2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    #@14
    iget-object v3, v0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    #@16
    invoke-virtual {v2, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    .line 84
    if-eqz v2, :cond_0

    #@1c
    .line 86
    iget-object v1, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    #@1e
    iget-object v2, v0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    #@20
    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    .line 84
    :cond_0
    return v1

    #@25
    .line 88
    .end local v0    # "other":Lcom/android/okhttp/Route;
    :cond_1
    return v1
.end method

.method public getAddress()Lcom/android/okhttp/Address;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@2
    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    #@2
    return-object v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@2
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit16 v0, v1, 0x20f

    #@8
    .line 94
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget-object v2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    #@c
    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    #@f
    move-result v2

    #@10
    add-int v0, v1, v2

    #@12
    .line 95
    mul-int/lit8 v1, v0, 0x1f

    #@14
    iget-object v2, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    #@16
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->hashCode()I

    #@19
    move-result v2

    #@1a
    add-int v0, v1, v2

    #@1c
    .line 96
    return v0
.end method

.method public requiresTunnel()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    iget-object v1, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    #@3
    iget-object v1, v1, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    #@9
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@f
    if-ne v1, v2, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method
