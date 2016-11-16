.class public Llibcore/io/ClassPathURLStreamHandler;
.super Lsun/net/www/protocol/jar/Handler;
.source "ClassPathURLStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;
    }
.end annotation


# instance fields
.field private final fileUri:Ljava/lang/String;

.field private final jarFile:Ljava/util/jar/JarFile;


# direct methods
.method static synthetic -get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;
    .locals 1

    #@0
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "jarFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Lsun/net/www/protocol/jar/Handler;-><init>()V

    #@3
    .line 47
    new-instance v0, Ljava/util/jar/JarFile;

    #@5
    invoke-direct {v0, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    #@a
    .line 52
    new-instance v0, Ljava/io/File;

    #@c
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->fileUri:Ljava/lang/String;

    #@19
    .line 46
    return-void
.end method

.method static findEntryWithDirectoryFallback(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 3
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "entryName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@3
    move-result-object v0

    #@4
    .line 99
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v1, "/"

    #@9
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 102
    :cond_0
    :goto_0
    return-object v0

    #@10
    .line 100
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "/"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@27
    move-result-object v0

    #@28
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    #@2
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    #@5
    .line 88
    return-void
.end method

.method public getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;
    .locals 8
    .param p1, "entryName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 60
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    #@3
    invoke-static {v0, p1}, Llibcore/io/ClassPathURLStreamHandler;->findEntryWithDirectoryFallback(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 64
    const/4 v0, 0x0

    #@a
    :try_start_0
    invoke-static {p1, v0}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    #@d
    move-result-object v7

    #@e
    .line 65
    .local v7, "encodedName":Ljava/lang/String;
    new-instance v0, Ljava/net/URL;

    #@10
    const-string/jumbo v1, "jar"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    iget-object v3, p0, Llibcore/io/ClassPathURLStreamHandler;->fileUri:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, "!/"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    const/4 v2, 0x0

    #@2e
    const/4 v3, -0x1

    #@2f
    move-object v5, p0

    #@30
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    return-object v0

    #@34
    .line 66
    .end local v7    # "encodedName":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@35
    .line 67
    .local v6, "e":Ljava/net/MalformedURLException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@37
    const-string/jumbo v1, "Invalid entry name"

    #@3a
    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3d
    throw v0

    #@3e
    .line 70
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :cond_0
    return-object v1
.end method

.method public isEntryStored(Ljava/lang/String;)Z
    .locals 3
    .param p1, "entryName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 78
    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@6
    move-result-object v0

    #@7
    .line 79
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :cond_0
    return v1
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    new-instance v0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    #@2
    invoke-direct {v0, p0, p1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;-><init>(Llibcore/io/ClassPathURLStreamHandler;Ljava/net/URL;)V

    #@5
    return-object v0
.end method
