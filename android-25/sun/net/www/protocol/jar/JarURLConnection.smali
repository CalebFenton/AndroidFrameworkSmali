.class public Lsun/net/www/protocol/jar/JarURLConnection;
.super Ljava/net/JarURLConnection;
.source "JarURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;
    }
.end annotation


# static fields
.field private static final debug:Z

.field private static final factory:Lsun/net/www/protocol/jar/JarFileFactory;


# instance fields
.field private contentType:Ljava/lang/String;

.field private entryName:Ljava/lang/String;

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field private jarFileURL:Ljava/net/URL;

.field private jarFileURLConnection:Ljava/net/URLConnection;

.field private permission:Ljava/security/Permission;


# direct methods
.method static synthetic -get0(Lsun/net/www/protocol/jar/JarURLConnection;)Ljava/util/jar/JarFile;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-static {}, Lsun/net/www/protocol/jar/JarFileFactory;->getInstance()Lsun/net/www/protocol/jar/JarFileFactory;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    #@6
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/jar/Handler;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/jar/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 83
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURL:Ljava/net/URL;

    #@9
    .line 84
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURL:Ljava/net/URL;

    #@b
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@11
    .line 85
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getEntryName()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    #@17
    .line 80
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 262
    return-void
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-boolean v1, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-nez v1, :cond_3

    #@4
    .line 122
    sget-object v1, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    #@6
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    #@d
    move-result v3

    #@e
    invoke-virtual {v1, v2, v3}, Lsun/net/www/protocol/jar/JarFileFactory;->get(Ljava/net/URL;Z)Ljava/util/jar/JarFile;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@14
    .line 127
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 128
    sget-object v1, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    #@1c
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@1e
    invoke-virtual {v1, v2}, Lsun/net/www/protocol/jar/JarFileFactory;->getConnection(Ljava/util/jar/JarFile;)Ljava/net/URLConnection;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@24
    .line 131
    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 132
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@2a
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    #@2c
    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Ljava/util/jar/JarEntry;

    #@32
    iput-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    #@34
    .line 133
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    #@36
    if-nez v1, :cond_2

    #@38
    .line 135
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    #@3b
    move-result v1

    #@3c
    if-nez v1, :cond_1

    #@3e
    .line 136
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@40
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 140
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileNotFoundException;

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v3, "JAR entry "

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    .line 141
    const-string/jumbo v3, " not found in "

    #@5a
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    .line 142
    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@60
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v1

    #@70
    .line 145
    :cond_2
    const/4 v1, 0x1

    #@71
    iput-boolean v1, p0, Ljava/net/URLConnection;->connected:Z

    #@73
    .line 119
    :cond_3
    return-void

    #@74
    .line 138
    :catch_0
    move-exception v0

    #@75
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 300
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    const/4 v0, 0x0

    #@1
    .line 193
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    #@4
    .line 194
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 195
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@a
    .line 199
    :goto_0
    return-object v0

    #@b
    .line 197
    :cond_0
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public getContentLength()I
    .locals 4

    #@0
    .prologue
    .line 168
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getContentLengthLong()J

    #@3
    move-result-wide v0

    #@4
    .line 169
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    #@7
    cmp-long v2, v0, v2

    #@9
    if-lez v2, :cond_0

    #@b
    .line 170
    const/4 v2, -0x1

    #@c
    return v2

    #@d
    .line 171
    :cond_0
    long-to-int v2, v0

    #@e
    return v2
.end method

.method public getContentLengthLong()J
    .locals 4

    #@0
    .prologue
    .line 175
    const-wide/16 v2, -0x1

    #@2
    .line 177
    .local v2, "result":J
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    #@5
    .line 178
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 180
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@b
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLengthLong()J

    #@e
    move-result-wide v2

    #@f
    .line 187
    :goto_0
    return-wide v2

    #@10
    .line 183
    :cond_0
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-wide v2

    #@18
    goto :goto_0

    #@19
    .line 185
    :catch_0
    move-exception v0

    #@1a
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 203
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 204
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    #@6
    if-nez v2, :cond_2

    #@8
    .line 205
    const-string/jumbo v2, "x-java/jar"

    #@b
    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    #@d
    .line 217
    :goto_0
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    #@f
    if-nez v2, :cond_0

    #@11
    .line 218
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    #@13
    invoke-static {v2}, Lsun/net/www/protocol/jar/JarURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    #@19
    .line 220
    :cond_0
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 221
    const-string/jumbo v2, "content/unknown"

    #@20
    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    #@22
    .line 224
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    #@24
    return-object v2

    #@25
    .line 208
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    #@28
    .line 209
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@2a
    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    #@2c
    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@2f
    move-result-object v1

    #@30
    .line 211
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    #@32
    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@35
    .line 210
    invoke-static {v2}, Lsun/net/www/protocol/jar/JarURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    iput-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    #@3b
    .line 212
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    goto :goto_0

    #@3f
    .line 213
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@40
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    #@3
    .line 152
    const/4 v0, 0x0

    #@4
    .line 154
    .local v0, "result":Ljava/io/InputStream;
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 155
    new-instance v1, Ljava/io/IOException;

    #@a
    const-string/jumbo v2, "no entry name specified"

    #@d
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 157
    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    #@13
    if-nez v1, :cond_1

    #@15
    .line 158
    new-instance v1, Ljava/io/FileNotFoundException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "JAR entry "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 159
    const-string/jumbo v3, " not found in "

    #@2c
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 160
    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@32
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1

    #@42
    .line 162
    :cond_1
    new-instance v0, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;

    #@44
    .end local v0    # "result":Ljava/io/InputStream;
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@46
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    #@48
    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, p0, v1}, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;-><init>(Lsun/net/www/protocol/jar/JarURLConnection;Ljava/io/InputStream;)V

    #@4f
    .line 164
    .local v0, "result":Ljava/io/InputStream;
    return-object v0
.end method

.method public getJarEntry()Ljava/util/jar/JarEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    #@3
    .line 95
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    #@5
    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    #@3
    .line 90
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    #@5
    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "allowuserinteraction"    # Z

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    #@5
    .line 287
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "defaultusecaches"    # Z

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    #@5
    .line 355
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "ifmodifiedsince"    # J

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    #@5
    .line 344
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 238
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "usecaches"    # Z

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    #@5
    .line 321
    return-void
.end method
