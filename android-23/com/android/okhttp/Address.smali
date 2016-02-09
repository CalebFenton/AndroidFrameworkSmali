.class public final Lcom/android/okhttp/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final authenticator:Lcom/android/okhttp/Authenticator;

.field final certificatePinner:Lcom/android/okhttp/CertificatePinner;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final uriHost:Ljava/lang/String;

.field final uriPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/CertificatePinner;Lcom/android/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 3
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p6, "certificatePinner"    # Lcom/android/okhttp/CertificatePinner;
    .param p7, "authenticator"    # Lcom/android/okhttp/Authenticator;
    .param p8, "proxy"    # Ljava/net/Proxy;
    .param p11, "proxySelector"    # Ljava/net/ProxySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/android/okhttp/CertificatePinner;",
            "Lcom/android/okhttp/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 51
    .local p9, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    .local p10, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "uriHost == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 56
    :cond_0
    if-gtz p2, :cond_1

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "uriPort <= 0: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 57
    :cond_1
    if-nez p7, :cond_2

    #@2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v1, "authenticator == null"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 58
    :cond_2
    if-nez p9, :cond_3

    #@37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    const-string/jumbo v1, "protocols == null"

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 59
    :cond_3
    if-nez p11, :cond_4

    #@42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@44
    const-string/jumbo v1, "proxySelector == null"

    #@47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 60
    :cond_4
    iput-object p8, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    #@4d
    .line 61
    iput-object p1, p0, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    #@4f
    .line 62
    iput p2, p0, Lcom/android/okhttp/Address;->uriPort:I

    #@51
    .line 63
    iput-object p3, p0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    #@53
    .line 64
    iput-object p4, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@55
    .line 65
    iput-object p5, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@57
    .line 66
    iput-object p6, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@59
    .line 67
    iput-object p7, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    #@5b
    .line 68
    invoke-static {p9}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    #@5e
    move-result-object v0

    #@5f
    iput-object v0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    #@61
    .line 69
    invoke-static {p10}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    #@64
    move-result-object v0

    #@65
    iput-object v0, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    #@67
    .line 70
    iput-object p11, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    #@69
    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 150
    instance-of v2, p1, Lcom/android/okhttp/Address;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 151
    check-cast v0, Lcom/android/okhttp/Address;

    #@8
    .line 152
    .local v0, "that":Lcom/android/okhttp/Address;
    iget-object v2, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    #@a
    iget-object v3, v0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    #@c
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 153
    iget-object v2, p0, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    #@14
    iget-object v3, v0, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    .line 152
    if-eqz v2, :cond_0

    #@1c
    .line 154
    iget v2, p0, Lcom/android/okhttp/Address;->uriPort:I

    #@1e
    iget v3, v0, Lcom/android/okhttp/Address;->uriPort:I

    #@20
    if-ne v2, v3, :cond_0

    #@22
    .line 155
    iget-object v2, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@24
    iget-object v3, v0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@26
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    .line 152
    if-eqz v2, :cond_0

    #@2c
    .line 156
    iget-object v2, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@2e
    iget-object v3, v0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@30
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    .line 152
    if-eqz v2, :cond_0

    #@36
    .line 157
    iget-object v2, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@38
    iget-object v3, v0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@3a
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v2

    #@3e
    .line 152
    if-eqz v2, :cond_0

    #@40
    .line 158
    iget-object v2, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    #@42
    iget-object v3, v0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    #@44
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    .line 152
    if-eqz v2, :cond_0

    #@4a
    .line 159
    iget-object v2, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    #@4c
    iget-object v3, v0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    #@4e
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@51
    move-result v2

    #@52
    .line 152
    if-eqz v2, :cond_0

    #@54
    .line 160
    iget-object v2, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    #@56
    iget-object v3, v0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    #@58
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5b
    move-result v2

    #@5c
    .line 152
    if-eqz v2, :cond_0

    #@5e
    .line 161
    iget-object v1, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    #@60
    iget-object v2, v0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    #@62
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@65
    move-result v1

    #@66
    .line 152
    :cond_0
    return v1

    #@67
    .line 163
    .end local v0    # "that":Lcom/android/okhttp/Address;
    :cond_1
    return v1
.end method

.method public getAuthenticator()Lcom/android/okhttp/Authenticator;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    #@2
    return-object v0
.end method

.method public getCertificatePinner()Lcom/android/okhttp/CertificatePinner;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@2
    return-object v0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@2
    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    #@2
    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    #@2
    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    #@2
    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    return-object v0
.end method

.method public getUriHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUriPort()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget v0, p0, Lcom/android/okhttp/Address;->uriPort:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 168
    iget-object v1, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    #@7
    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    #@a
    move-result v1

    #@b
    :goto_0
    add-int/lit16 v0, v1, 0x20f

    #@d
    .line 169
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@f
    iget-object v3, p0, Lcom/android/okhttp/Address;->uriHost:Ljava/lang/String;

    #@11
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@14
    move-result v3

    #@15
    add-int v0, v1, v3

    #@17
    .line 170
    mul-int/lit8 v1, v0, 0x1f

    #@19
    iget v3, p0, Lcom/android/okhttp/Address;->uriPort:I

    #@1b
    add-int v0, v1, v3

    #@1d
    .line 171
    mul-int/lit8 v3, v0, 0x1f

    #@1f
    iget-object v1, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@21
    if-eqz v1, :cond_2

    #@23
    iget-object v1, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@25
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->hashCode()I

    #@28
    move-result v1

    #@29
    :goto_1
    add-int v0, v3, v1

    #@2b
    .line 172
    mul-int/lit8 v3, v0, 0x1f

    #@2d
    iget-object v1, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@2f
    if-eqz v1, :cond_3

    #@31
    iget-object v1, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    #@33
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@36
    move-result v1

    #@37
    :goto_2
    add-int v0, v3, v1

    #@39
    .line 173
    mul-int/lit8 v1, v0, 0x1f

    #@3b
    iget-object v3, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@3d
    if-eqz v3, :cond_0

    #@3f
    iget-object v2, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    #@41
    invoke-virtual {v2}, Lcom/android/okhttp/CertificatePinner;->hashCode()I

    #@44
    move-result v2

    #@45
    :cond_0
    add-int v0, v1, v2

    #@47
    .line 174
    mul-int/lit8 v1, v0, 0x1f

    #@49
    iget-object v2, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    #@4b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@4e
    move-result v2

    #@4f
    add-int v0, v1, v2

    #@51
    .line 175
    mul-int/lit8 v1, v0, 0x1f

    #@53
    iget-object v2, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    #@55
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    #@58
    move-result v2

    #@59
    add-int v0, v1, v2

    #@5b
    .line 176
    mul-int/lit8 v1, v0, 0x1f

    #@5d
    iget-object v2, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    #@5f
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    #@62
    move-result v2

    #@63
    add-int v0, v1, v2

    #@65
    .line 177
    mul-int/lit8 v1, v0, 0x1f

    #@67
    iget-object v2, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    #@69
    invoke-virtual {v2}, Ljava/net/ProxySelector;->hashCode()I

    #@6c
    move-result v2

    #@6d
    add-int v0, v1, v2

    #@6f
    .line 178
    return v0

    #@70
    .end local v0    # "result":I
    :cond_1
    move v1, v2

    #@71
    .line 168
    goto :goto_0

    #@72
    .restart local v0    # "result":I
    :cond_2
    move v1, v2

    #@73
    .line 171
    goto :goto_1

    #@74
    :cond_3
    move v1, v2

    #@75
    .line 172
    goto :goto_2
.end method
