.class public final Lcom/android/okhttp/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final greylist-max-o authenticator:Lcom/android/okhttp/Authenticator;

.field final greylist-max-o certificatePinner:Lcom/android/okhttp/CertificatePinner;

.field final greylist-max-o connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o dns:Lcom/android/okhttp/Dns;

.field final greylist-max-o hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final greylist-max-o protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o proxy:Ljava/net/Proxy;

.field final greylist-max-o proxySelector:Ljava/net/ProxySelector;

.field final greylist-max-o socketFactory:Ljavax/net/SocketFactory;

.field final greylist-max-o sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final greylist-max-o url:Lcom/android/okhttp/HttpUrl;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;ILcom/android/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/CertificatePinner;Lcom/android/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/okhttp/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/android/okhttp/CertificatePinner;",
            "Lcom/android/okhttp/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    if-eqz p5, :cond_d

    .line 58
    const-string v1, "https"

    goto :goto_f

    :cond_d
    const-string v1, "http"

    :goto_f
    invoke-virtual {v0, v1}, Lcom/android/okhttp/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->host(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p2}, Lcom/android/okhttp/HttpUrl$Builder;->port(I)Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    if-eqz p3, :cond_72

    .line 64
    iput-object p3, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    if-eqz p4, :cond_6a

    .line 67
    iput-object p4, p0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_62

    .line 70
    iput-object p8, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    if-eqz p10, :cond_5a

    .line 73
    invoke-static {p10}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    if-eqz p11, :cond_52

    .line 76
    invoke-static {p11}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    if-eqz p12, :cond_4a

    .line 79
    iput-object p12, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 81
    iput-object p9, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    .line 82
    iput-object p5, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 83
    iput-object p6, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 84
    iput-object p7, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    return-void

    .line 78
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "proxySelector == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionSpecs == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "protocols == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "authenticator == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "socketFactory == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dns == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 175
    instance-of v0, p1, Lcom/android/okhttp/Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    .line 176
    check-cast p1, Lcom/android/okhttp/Address;

    .line 177
    iget-object v0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    iget-object v2, p1, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    iget-object v2, p1, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    iget-object v2, p1, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    iget-object v2, p1, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    iget-object v2, p1, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v2, p1, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    .line 183
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 184
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 185
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object p0, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    iget-object p1, p1, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    .line 186
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6d

    const/4 p0, 0x1

    return p0

    :cond_6d
    return v1
.end method

.method public greylist-max-o getAuthenticator()Lcom/android/okhttp/Authenticator;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    return-object p0
.end method

.method public greylist-max-o getCertificatePinner()Lcom/android/okhttp/CertificatePinner;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    return-object p0
.end method

.method public greylist-max-o getConnectionSpecs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o getDns()Lcom/android/okhttp/Dns;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    return-object p0
.end method

.method public greylist-max-o getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public greylist-max-o getProtocols()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o getProxy()Ljava/net/Proxy;
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public greylist-max-o getProxySelector()Ljava/net/ProxySelector;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public greylist-max-o getSocketFactory()Ljavax/net/SocketFactory;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public greylist-max-o getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public greylist-max-o getUriHost()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getUriPort()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    iget-object p0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 194
    iget-object v0, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 195
    iget-object v0, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 196
    iget-object v0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 197
    iget-object v0, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 198
    iget-object v0, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 199
    iget-object v0, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_43

    :cond_42
    move v0, v2

    :goto_43
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 200
    iget-object v0, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_50

    :cond_4f
    move v0, v2

    :goto_50
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 201
    iget-object v0, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5d

    :cond_5c
    move v0, v2

    :goto_5d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 202
    iget-object p0, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    if-eqz p0, :cond_68

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_68
    add-int/2addr v1, v2

    return v1
.end method

.method public greylist-max-o url()Lcom/android/okhttp/HttpUrl;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    return-object p0
.end method
