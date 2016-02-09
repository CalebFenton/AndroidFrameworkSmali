.class public Lorg/ksoap2/transport/ServiceConnectionSE;
.super Ljava/lang/Object;
.source "ServiceConnectionSE.java"

# interfaces
.implements Lorg/ksoap2/transport/ServiceConnection;


# instance fields
.field private connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    const/16 v1, 0x4e20

    #@3
    invoke-direct {p0, v0, p1, v1}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    #@6
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    #@4
    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    const/16 v0, 0x4e20

    #@2
    invoke-direct {p0, p1, p2, v0}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    #@5
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 3
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 65
    if-nez p1, :cond_0

    #@6
    .line 66
    new-instance v0, Ljava/net/URL;

    #@8
    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/net/HttpURLConnection;

    #@11
    .line 65
    :goto_0
    iput-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@13
    .line 68
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    #@19
    .line 69
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@1b
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    #@1e
    .line 70
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@20
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    #@23
    .line 71
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@25
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@28
    .line 72
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2a
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    #@2d
    .line 64
    return-void

    #@2e
    .line 67
    :cond_0
    new-instance v0, Ljava/net/URL;

    #@30
    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@33
    invoke-virtual {v0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Ljava/net/HttpURLConnection;

    #@39
    goto :goto_0
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
    .line 76
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    #@5
    .line 75
    return-void
.end method

.method public disconnect()V
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@5
    .line 79
    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

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
    .line 140
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

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
    .line 136
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

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
    .line 84
    iget-object v7, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    #@5
    move-result-object v4

    #@6
    .line 85
    .local v4, "properties":Ljava/util/Map;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@9
    move-result-object v3

    #@a
    .line 86
    .local v3, "keys":Ljava/util/Set;
    new-instance v5, Ljava/util/LinkedList;

    #@c
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    #@f
    .line 88
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
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/String;

    #@1f
    .line 90
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    check-cast v6, Ljava/util/List;

    #@25
    .line 92
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
    .line 93
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
    .line 92
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 97
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
    .line 124
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

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
    .line 120
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

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
    .line 116
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    #@5
    .line 115
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
    .line 105
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    #@5
    .line 104
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "soapAction"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lorg/ksoap2/transport/ServiceConnectionSE;->connection:Ljava/net/HttpURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 100
    return-void
.end method
