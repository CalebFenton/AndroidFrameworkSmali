.class public final Lcom/android/okhttp/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final greylist-max-o address:Lcom/android/okhttp/Address;

.field final greylist-max-o inetSocketAddress:Ljava/net/InetSocketAddress;

.field final greylist-max-o proxy:Ljava/net/Proxy;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    if-eqz p2, :cond_18

    if-eqz p3, :cond_10

    .line 51
    iput-object p1, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    .line 52
    iput-object p2, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    .line 53
    iput-object p3, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-void

    .line 49
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inetSocketAddress == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "proxy == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_20
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "address == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 84
    instance-of v0, p1, Lcom/android/okhttp/Route;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 85
    check-cast p1, Lcom/android/okhttp/Route;

    .line 86
    iget-object v0, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v2, p1, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    .line 87
    invoke-virtual {v0, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object p1, p1, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    .line 88
    invoke-virtual {p0, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    return v1
.end method

.method public greylist-max-o getAddress()Lcom/android/okhttp/Address;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    return-object p0
.end method

.method public greylist-max-o getProxy()Ljava/net/Proxy;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public greylist-max-o getSocketAddress()Ljava/net/InetSocketAddress;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 96
    iget-object v0, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 97
    iget-object p0, p0, Lcom/android/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public greylist-max-o requiresTunnel()Z
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/okhttp/Route;->address:Lcom/android/okhttp/Address;

    iget-object v0, v0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method
