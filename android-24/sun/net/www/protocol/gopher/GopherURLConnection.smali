.class Lsun/net/www/protocol/gopher/GopherURLConnection;
.super Lsun/net/www/URLConnection;
.source "Handler.java"


# instance fields
.field permission:Ljava/security/Permission;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "u"    # Ljava/net/URL;

    #@0
    .prologue
    .line 81
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 80
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    new-instance v0, Lsun/net/www/protocol/gopher/GopherClient;

    #@2
    invoke-direct {v0, p0}, Lsun/net/www/protocol/gopher/GopherClient;-><init>(Lsun/net/www/URLConnection;)V

    #@5
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@7
    invoke-virtual {v0, v1}, Lsun/net/www/protocol/gopher/GopherClient;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4

    #@0
    .prologue
    .line 92
    iget-object v2, p0, Lsun/net/www/protocol/gopher/GopherURLConnection;->permission:Ljava/security/Permission;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 93
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@6
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    #@9
    move-result v1

    #@a
    .line 94
    .local v1, "port":I
    if-gez v1, :cond_0

    #@c
    const/16 v1, 0x46

    #@e
    .line 95
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@15
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, ":"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@26
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    #@29
    move-result v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 96
    .local v0, "host":Ljava/lang/String;
    new-instance v2, Ljava/net/SocketPermission;

    #@34
    const-string/jumbo v3, "connect"

    #@37
    invoke-direct {v2, v0, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    iput-object v2, p0, Lsun/net/www/protocol/gopher/GopherURLConnection;->permission:Ljava/security/Permission;

    #@3c
    .line 98
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "port":I
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/gopher/GopherURLConnection;->permission:Ljava/security/Permission;

    #@3e
    return-object v2
.end method
