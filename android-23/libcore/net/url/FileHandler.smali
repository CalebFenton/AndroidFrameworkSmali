.class public Llibcore/net/url/FileHandler;
.super Ljava/net/URLStreamHandler;
.source "FileHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Llibcore/net/url/FileHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    if-nez p1, :cond_0

    #@2
    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "url == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 70
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    const-string/jumbo v2, "localhost"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 71
    :cond_1
    new-instance v2, Llibcore/net/url/FileURLConnection;

    #@22
    invoke-direct {v2, p1}, Llibcore/net/url/FileURLConnection;-><init>(Ljava/net/URL;)V

    #@25
    return-object v2

    #@26
    .line 75
    :cond_2
    new-instance v0, Ljava/net/URL;

    #@28
    const-string/jumbo v2, "ftp"

    #@2b
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {v0, v2, v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 76
    .local v0, "ftpURL":Ljava/net/URL;
    if-nez p2, :cond_3

    #@34
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@37
    move-result-object v2

    #@38
    :goto_0
    return-object v2

    #@39
    :cond_3
    invoke-virtual {v0, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@3c
    move-result-object v2

    #@3d
    goto :goto_0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 98
    if-ge p4, p3, :cond_0

    #@2
    .line 99
    return-void

    #@3
    .line 101
    :cond_0
    const-string/jumbo v0, ""

    #@6
    .line 102
    .local v0, "parseString":Ljava/lang/String;
    if-ge p3, p4, :cond_1

    #@8
    .line 103
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    const/16 v2, 0x5c

    #@e
    const/16 v3, 0x2f

    #@10
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 105
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@17
    move-result v1

    #@18
    const/4 v2, 0x0

    #@19
    invoke-super {p0, p1, v0, v2, v1}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    #@1c
    .line 97
    return-void
.end method
