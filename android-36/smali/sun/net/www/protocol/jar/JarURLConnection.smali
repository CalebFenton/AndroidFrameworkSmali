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
.field private static final blacklist debug:Z = false

.field private static final blacklist factory:Lsun/net/www/protocol/jar/JarFileFactory;


# instance fields
.field private blacklist contentType:Ljava/lang/String;

.field private blacklist entryName:Ljava/lang/String;

.field private blacklist jarEntry:Ljava/util/jar/JarEntry;

.field private blacklist jarFile:Ljava/util/jar/JarFile;

.field private blacklist jarFileURL:Ljava/net/URL;

.field private blacklist jarFileURLConnection:Ljava/net/URLConnection;

.field private blacklist permission:Ljava/security/Permission;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetjarFile(Lsun/net/www/protocol/jar/JarURLConnection;)Ljava/util/jar/JarFile;
    .registers 1

    iget-object p0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    invoke-static {}, Lsun/net/www/protocol/jar/JarFileFactory;->getInstance()Lsun/net/www/protocol/jar/JarFileFactory;

    move-result-object v0

    sput-object v0, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/URL;Lsun/net/www/protocol/jar/Handler;)V
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/jar/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    .line 83
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURL:Ljava/net/URL;

    .line 84
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 85
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public whitelist test-api connect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-boolean v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->connected:Z

    if-nez v0, :cond_7e

    .line 122
    sget-object v0, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsun/net/www/protocol/jar/JarFileFactory;->get(Ljava/net/URL;Z)Ljava/util/jar/JarFile;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    .line 127
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 131
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    .line 132
    .local v0, "oldUseCaches":Z
    sget-object v1, Lsun/net/www/protocol/jar/JarURLConnection;->factory:Lsun/net/www/protocol/jar/JarFileFactory;

    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v1, v2}, Lsun/net/www/protocol/jar/JarFileFactory;->getConnection(Ljava/util/jar/JarFile;)Ljava/net/URLConnection;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    .line 134
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 137
    .end local v0    # "oldUseCaches":Z
    :cond_2f
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-eqz v0, :cond_7b

    .line 138
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    .line 139
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_7b

    .line 141
    :try_start_43
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 142
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4e} :catch_4f

    .line 145
    :cond_4e
    goto :goto_50

    .line 144
    :catch_4f
    move-exception v0

    .line 146
    :goto_50
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAR entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    .line 148
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_7b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->connected:Z

    .line 153
    :cond_7e
    return-void
.end method

.method public whitelist test-api getAllowUserInteraction()Z
    .registers 2

    .line 306
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getContent()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 200
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 201
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    goto :goto_f

    .line 203
    :cond_b
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 205
    :goto_f
    return-object v0
.end method

.method public whitelist test-api getContentLength()I
    .registers 5

    .line 174
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getContentLengthLong()J

    move-result-wide v0

    .line 175
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 176
    const/4 v2, -0x1

    return v2

    .line 177
    :cond_d
    long-to-int v2, v0

    return v2
.end method

.method public whitelist test-api getContentLengthLong()J
    .registers 5

    .line 181
    const-wide/16 v0, -0x1

    .line 183
    .local v0, "result":J
    :try_start_2
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 184
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-nez v2, :cond_11

    .line 186
    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "result":J
    .local v2, "result":J
    goto :goto_1a

    .line 189
    .end local v2    # "result":J
    .restart local v0    # "result":J
    :cond_11
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_1b

    move-wide v0, v2

    .line 192
    :goto_1a
    goto :goto_1c

    .line 191
    :catch_1b
    move-exception v2

    .line 193
    :goto_1c
    return-wide v0
.end method

.method public whitelist test-api getContentType()Ljava/lang/String;
    .registers 3

    .line 209
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_3c

    .line 210
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 211
    const-string v0, "x-java/jar"

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    goto :goto_28

    .line 214
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 215
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 216
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lsun/net/www/protocol/jar/JarURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 218
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_26} :catch_27

    .line 221
    .end local v0    # "in":Ljava/io/InputStream;
    goto :goto_28

    .line 219
    :catch_27
    move-exception v0

    .line 223
    :goto_28
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_34

    .line 224
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-static {v0}, Lsun/net/www/protocol/jar/JarURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 226
    :cond_34
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    if-nez v0, :cond_3c

    .line 227
    const-string v0, "content/unknown"

    iput-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    .line 230
    :cond_3c
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDefaultUseCaches()Z
    .registers 2

    .line 378
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "result":Ljava/io/InputStream;
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 163
    iget-object v1, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    if-eqz v1, :cond_1a

    .line 168
    new-instance v1, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;

    iget-object v2, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lsun/net/www/protocol/jar/JarURLConnection$JarURLInputStream;-><init>(Lsun/net/www/protocol/jar/JarURLConnection;Ljava/io/InputStream;)V

    .line 170
    .end local v0    # "result":Ljava/io/InputStream;
    .local v1, "result":Ljava/io/InputStream;
    return-object v1

    .line 164
    .end local v1    # "result":Ljava/io/InputStream;
    .restart local v0    # "result":Ljava/io/InputStream;
    :cond_1a
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JAR entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    .line 166
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_45
    new-instance v1, Ljava/io/IOException;

    const-string v2, "no entry name specified"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getJarEntry()Ljava/util/jar/JarEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 95
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarEntry:Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public whitelist test-api getJarFile()Ljava/util/jar/JarFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/JarURLConnection;->connect()V

    .line 90
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method public whitelist test-api getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getUseCaches()Z
    .registers 2

    .line 340
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setAllowUserInteraction(Z)V
    .registers 3
    .param p1, "allowuserinteraction"    # Z

    .line 294
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 295
    return-void
.end method

.method public whitelist test-api setDefaultUseCaches(Z)V
    .registers 3
    .param p1, "defaultusecaches"    # Z

    .line 362
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 363
    return-void
.end method

.method public whitelist test-api setIfModifiedSince(J)V
    .registers 4
    .param p1, "ifmodifiedsince"    # J

    .line 351
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 352
    return-void
.end method

.method public whitelist test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public whitelist test-api setUseCaches(Z)V
    .registers 3
    .param p1, "usecaches"    # Z

    .line 328
    iget-object v0, p0, Lsun/net/www/protocol/jar/JarURLConnection;->jarFileURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 329
    return-void
.end method
