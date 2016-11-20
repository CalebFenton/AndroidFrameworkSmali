.class public Lsun/net/www/protocol/http/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# instance fields
.field protected proxy:Ljava/lang/String;

.field protected proxyPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    .line 46
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/net/www/protocol/http/Handler;->proxy:Ljava/lang/String;

    #@6
    .line 47
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lsun/net/www/protocol/http/Handler;->proxyPort:I

    #@9
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Lsun/net/www/protocol/http/Handler;->proxy:Ljava/lang/String;

    #@5
    .line 52
    iput p2, p0, Lsun/net/www/protocol/http/Handler;->proxyPort:I

    #@7
    .line 50
    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 42
    const/16 v0, 0x50

    #@2
    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    nop

    #@2
    nop

    #@3
    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/http/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    new-instance v0, Lsun/net/www/protocol/http/HttpURLConnection;

    #@2
    invoke-direct {v0, p1, p2, p0}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    #@5
    return-object v0
.end method
