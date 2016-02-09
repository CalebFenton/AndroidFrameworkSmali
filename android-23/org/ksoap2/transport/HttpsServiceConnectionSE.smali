.class public Lorg/ksoap2/transport/HttpsServiceConnectionSE;
.super Ljava/lang/Object;
.source "HttpsServiceConnectionSE.java"

# interfaces
.implements Lorg/ksoap2/transport/ServiceConnection;


# instance fields
.field private connection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/net/URL;

    #@5
    const-string/jumbo v1, "https"

    #@8
    invoke-direct {v0, v1, p1, p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@b
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    #@11
    iput-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@13
    .line 56
    invoke-direct {p0, p4}, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->updateConnectionParameters(I)V

    #@16
    .line 53
    return-void
.end method

.method private updateConnectionParameters(I)V
    .locals 3
    .param p1, "timeout"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 60
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@3
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    #@6
    .line 61
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@8
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    #@b
    .line 62
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    #@11
    .line 63
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@13
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    #@16
    .line 64
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@18
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    #@1b
    .line 59
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    #@5
    .line 67
    return-void
.end method

.method public disconnect()V
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    #@5
    .line 71
    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getResponseProperties()Ljava/util/List;
    .locals 9

    #@0
    .prologue
    .line 76
    iget-object v7, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    #@5
    move-result-object v4

    #@6
    .line 77
    .local v4, "properties":Ljava/util/Map;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@9
    move-result-object v3

    #@a
    .line 78
    .local v3, "keys":Ljava/util/Set;
    new-instance v5, Ljava/util/LinkedList;

    #@c
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    #@f
    .line 80
    .local v5, "retList":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_1

    #@19
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/String;

    #@1f
    .line 82
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    check-cast v6, Ljava/util/List;

    #@25
    .line 84
    .local v6, "values":Ljava/util/List;
    const/4 v1, 0x0

    #@26
    .local v1, "j":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@29
    move-result v7

    #@2a
    if-ge v1, v7, :cond_0

    #@2c
    .line 85
    new-instance v8, Lorg/ksoap2/HeaderProperty;

    #@2e
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v7

    #@32
    check-cast v7, Ljava/lang/String;

    #@34
    invoke-direct {v8, v2, v7}, Lorg/ksoap2/HeaderProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    .line 84
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 89
    .end local v1    # "j":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "values":Ljava/util/List;
    :cond_1
    return-object v5
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    #@5
    .line 100
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "v"    # Ljavax/net/ssl/HostnameVerifier;

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    #@5
    .line 132
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@5
    .line 96
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 92
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->connection:Ljavax/net/ssl/HttpsURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    #@5
    .line 128
    return-void
.end method
