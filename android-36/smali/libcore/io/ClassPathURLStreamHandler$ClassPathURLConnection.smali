.class Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;
.super Ljava/net/JarURLConnection;
.source "ClassPathURLStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/ClassPathURLStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassPathURLConnection"
.end annotation


# instance fields
.field private blacklist closed:Z

.field private blacklist connectionJarFile:Ljava/util/jar/JarFile;

.field private blacklist jarEntry:Ljava/util/zip/ZipEntry;

.field private blacklist jarInput:Ljava/io/InputStream;

.field final synthetic blacklist this$0:Llibcore/io/ClassPathURLStreamHandler;

.field private blacklist useCachedJarFile:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetconnectionJarFile(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Ljava/util/jar/JarFile;
    .registers 1

    iget-object p0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuseCachedJarFile(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Z
    .registers 1

    iget-boolean p0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->useCachedJarFile:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputclosed(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->closed:Z

    return-void
.end method

.method public constructor blacklist <init>(Llibcore/io/ClassPathURLStreamHandler;Ljava/net/URL;)V
    .registers 3
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 127
    iput-object p1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    .line 128
    invoke-direct {p0, p2}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist test-api connect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connected:Z

    if-nez v0, :cond_51

    .line 134
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler;->-$$Nest$fgetjarFile(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarEntry:Ljava/util/zip/ZipEntry;

    .line 135
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarEntry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_22

    .line 140
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getUseCaches()Z

    move-result v0

    iput-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->useCachedJarFile:Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connected:Z

    goto :goto_51

    .line 136
    :cond_22
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL does not correspond to an entry in the zip file. URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zipfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-static {v2}, Llibcore/io/ClassPathURLStreamHandler;->-$$Nest$fgetjarFile(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_51
    :goto_51
    return-void
.end method

.method public whitelist test-api getContentLength()I
    .registers 3

    .line 201
    :try_start_0
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connect()V

    .line 202
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    long-to-int v0, v0

    return v0

    .line 203
    :catch_d
    move-exception v0

    .line 206
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getContentType()Ljava/lang/String;
    .registers 2

    .line 191
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getEntryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "cType":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 193
    const-string v0, "content/unknown"

    .line 195
    :cond_c
    return-object v0
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->closed:Z

    if-nez v0, :cond_22

    .line 164
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connect()V

    .line 165
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarInput:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    .line 166
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarInput:Ljava/io/InputStream;

    return-object v0

    .line 168
    :cond_e
    new-instance v0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;

    iget-object v1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-static {v1}, Llibcore/io/ClassPathURLStreamHandler;->-$$Nest$fgetjarFile(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    move-result-object v1

    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;-><init>(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Ljava/io/InputStream;)V

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarInput:Ljava/io/InputStream;

    return-object v0

    .line 162
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JarURLConnection InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getJarFile()Ljava/util/jar/JarFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connect()V

    .line 151
    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->useCachedJarFile:Z

    if-eqz v0, :cond_10

    .line 152
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler;->-$$Nest$fgetjarFile(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    move-result-object v0

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    goto :goto_21

    .line 154
    :cond_10
    new-instance v0, Ljava/util/jar/JarFile;

    iget-object v1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    invoke-static {v1}, Llibcore/io/ClassPathURLStreamHandler;->-$$Nest$fgetjarFile(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    .line 156
    :goto_21
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    return-object v0
.end method
