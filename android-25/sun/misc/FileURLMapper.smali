.class public Lsun/misc/FileURLMapper;
.super Ljava/lang/Object;
.source "FileURLMapper.java"


# instance fields
.field path:Ljava/lang/String;

.field url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Lsun/misc/FileURLMapper;->url:Ljava/net/URL;

    #@5
    .line 48
    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 3

    #@0
    .prologue
    .line 73
    invoke-virtual {p0}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 74
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 75
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 77
    :cond_0
    new-instance v0, Ljava/io/File;

    #@a
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    .line 78
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@10
    move-result v2

    #@11
    return v2
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 58
    iget-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 59
    iget-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 61
    :cond_0
    iget-object v1, p0, Lsun/misc/FileURLMapper;->url:Ljava/net/URL;

    #@9
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 62
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@f
    const-string/jumbo v1, ""

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    const-string/jumbo v1, "localhost"

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 63
    :cond_1
    iget-object v1, p0, Lsun/misc/FileURLMapper;->url:Ljava/net/URL;

    #@23
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    iput-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    #@29
    .line 64
    iget-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    #@2b
    invoke-static {v1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    #@31
    .line 66
    :cond_2
    iget-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    #@33
    return-object v1
.end method
