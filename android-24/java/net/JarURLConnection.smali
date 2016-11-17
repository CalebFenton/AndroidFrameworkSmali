.class public abstract Ljava/net/JarURLConnection;
.super Ljava/net/URLConnection;
.source "JarURLConnection.java"


# instance fields
.field private entryName:Ljava/lang/String;

.field private jarFileURL:Ljava/net/URL;

.field protected jarFileURLConnection:Ljava/net/URLConnection;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 162
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;->parseSpecs(Ljava/net/URL;)V

    #@6
    .line 160
    return-void
.end method

.method private parseSpecs(Ljava/net/URL;)V
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 171
    .local v2, "spec":Ljava/lang/String;
    const-string/jumbo v3, "!/"

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 175
    .local v0, "separator":I
    const/4 v3, -0x1

    #@c
    if-ne v0, v3, :cond_0

    #@e
    .line 176
    new-instance v3, Ljava/net/MalformedURLException;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "no !/ found in url spec:"

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 179
    :cond_0
    new-instance v3, Ljava/net/URL;

    #@2a
    add-int/lit8 v1, v0, 0x1

    #@2c
    .end local v0    # "separator":I
    .local v1, "separator":I
    const/4 v4, 0x0

    #@2d
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@34
    iput-object v3, p0, Ljava/net/JarURLConnection;->jarFileURL:Ljava/net/URL;

    #@36
    .line 180
    const/4 v3, 0x0

    #@37
    iput-object v3, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@39
    .line 183
    add-int/lit8 v0, v1, 0x1

    #@3b
    .end local v1    # "separator":I
    .restart local v0    # "separator":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3e
    move-result v3

    #@3f
    if-eq v0, v3, :cond_1

    #@41
    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@44
    move-result v3

    #@45
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    iput-object v3, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@4b
    .line 185
    iget-object v3, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@4d
    invoke-static {v3}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    iput-object v3, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@53
    .line 168
    :cond_1
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 269
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    #@4
    move-result-object v0

    #@5
    .line 270
    .local v0, "e":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 310
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    #@4
    move-result-object v0

    #@5
    .line 311
    .local v0, "e":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public abstract getJarFile()Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getJarFileURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURL:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 287
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getManifest()Ljava/util/jar/Manifest;

    #@4
    move-result-object v0

    #@5
    .line 288
    .local v0, "man":Ljava/util/jar/Manifest;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
