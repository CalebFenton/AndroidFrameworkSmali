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
.field private final blacklist fileUri:Ljava/lang/String;

.field private final blacklist jarFile:Ljava/util/jar/JarFile;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetjarFile(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;
    .registers 1

    iget-object p0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "jarFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llibcore/io/ClassPathURLStreamHandler;-><init>(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "jarFileName"    # Ljava/lang/String;
    .param p2, "enableZipPathValidator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lsun/net/www/protocol/jar/Handler;-><init>()V

    .line 52
    new-instance v0, Ljava/util/jar/JarFile;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->fileUri:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 95
    return-void
.end method

.method public blacklist getEntryUrlOrNull(Ljava/lang/String;)Ljava/net/URL;
    .registers 9
    .param p1, "entryName"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 69
    const/4 v0, 0x0

    :try_start_9
    invoke-static {p1, v0}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "encodedName":Ljava/lang/String;
    new-instance v1, Ljava/net/URL;

    const-string v2, "jar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/io/ClassPathURLStreamHandler;->fileUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_30
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_30} :catch_31

    return-object v1

    .line 71
    .end local v0    # "encodedName":Ljava/lang/String;
    :catch_31
    move-exception v0

    .line 72
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid entry name"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 75
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isEntryStored(Ljava/lang/String;)Z
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler;->jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 84
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method protected whitelist test-api openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;

    invoke-direct {v0, p0, p1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;-><init>(Llibcore/io/ClassPathURLStreamHandler;Ljava/net/URL;)V

    return-object v0
.end method
