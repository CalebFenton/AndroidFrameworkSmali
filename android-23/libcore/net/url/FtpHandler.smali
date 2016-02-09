.class public Llibcore/net/url/FtpHandler;
.super Ljava/net/URLStreamHandler;
.source "FtpHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 67
    const/16 v0, 0x15

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
    .line 32
    new-instance v0, Llibcore/net/url/FtpURLConnection;

    #@2
    invoke-direct {v0, p1}, Llibcore/net/url/FtpURLConnection;-><init>(Ljava/net/URL;)V

    #@5
    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "url == null || proxy == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 59
    :cond_1
    new-instance v0, Llibcore/net/url/FtpURLConnection;

    #@f
    invoke-direct {v0, p1, p2}, Llibcore/net/url/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    #@12
    return-object v0
.end method
