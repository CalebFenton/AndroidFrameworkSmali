.class public abstract Ljava/net/JarURLConnection;
.super Ljava/net/URLConnection;
.source "JarURLConnection.java"


# instance fields
.field private entryName:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private fileURL:Ljava/net/URL;

.field protected jarFileURLConnection:Ljava/net/URLConnection;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 68
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    #@4
    .line 69
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Ljava/net/JarURLConnection;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    #@e
    .line 72
    iget-object v1, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    #@10
    const-string/jumbo v2, "!/"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    .local v0, "sepIdx":I
    if-gez v0, :cond_0

    #@19
    .line 73
    new-instance v1, Ljava/net/MalformedURLException;

    #@1b
    invoke-direct {v1}, Ljava/net/MalformedURLException;-><init>()V

    #@1e
    throw v1

    #@1f
    .line 75
    :cond_0
    new-instance v1, Ljava/net/URL;

    #@21
    iget-object v2, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    #@23
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@2a
    iput-object v1, p0, Ljava/net/JarURLConnection;->fileURL:Ljava/net/URL;

    #@2c
    .line 76
    add-int/lit8 v0, v0, 0x2

    #@2e
    .line 77
    iget-object v1, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    #@30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@33
    move-result v1

    #@34
    if-ne v1, v0, :cond_1

    #@36
    .line 78
    return-void

    #@37
    .line 80
    :cond_1
    iget-object v1, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    #@39
    iget-object v2, p0, Ljava/net/JarURLConnection;->file:Ljava/lang/String;

    #@3b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3e
    move-result v2

    #@3f
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@45
    .line 81
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    if-eqz v1, :cond_2

    #@4b
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    iget-object v2, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    const-string/jumbo v2, "#"

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    iput-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@6b
    .line 67
    :cond_2
    return-void
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    const/4 v0, 0x0

    #@1
    .line 202
    .local v0, "convertPlus":Z
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v4, 0x1

    #@5
    .line 201
    invoke-static {p0, v3, v2, v4}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v2

    #@9
    return-object v2

    #@a
    .line 203
    :catch_0
    move-exception v1

    #@b
    .line 204
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/net/MalformedURLException;

    #@d
    const-string/jumbo v3, "Unable to decode URL"

    #@10
    invoke-direct {v2, v3, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v2
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
    .line 96
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    #@4
    move-result-object v0

    #@5
    .line 97
    .local v0, "jEntry":Ljava/util/jar/JarEntry;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    #@b
    move-result-object v1

    #@c
    goto :goto_0
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
    .line 111
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    #@4
    move-result-object v0

    #@5
    .line 112
    .local v0, "jEntry":Ljava/util/jar/JarEntry;
    if-nez v0, :cond_0

    #@7
    .line 113
    return-object v1

    #@8
    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 127
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
    const/4 v1, 0x0

    #@1
    .line 140
    iget-boolean v0, p0, Ljava/net/JarURLConnection;->connected:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 141
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->connect()V

    #@8
    .line 143
    :cond_0
    iget-object v0, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 144
    return-object v1

    #@d
    .line 147
    :cond_1
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@16
    move-result-object v0

    #@17
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
    .line 178
    iget-object v0, p0, Ljava/net/JarURLConnection;->fileURL:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 192
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@8
    move-result-object v0

    #@9
    .line 193
    .local v0, "m":Ljava/util/jar/Manifest;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@f
    move-result-object v1

    #@10
    goto :goto_0
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
    .line 158
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/jar/Manifest;

    #@e
    return-object v0
.end method
