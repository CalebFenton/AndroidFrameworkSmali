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
.field private closed:Z

.field private connectionJarFile:Ljava/util/jar/JarFile;

.field private jarEntry:Ljava/util/zip/ZipEntry;

.field private jarInput:Ljava/io/InputStream;

.field final synthetic this$0:Llibcore/io/ClassPathURLStreamHandler;

.field private useCachedJarFile:Z


# direct methods
.method static synthetic -get0(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Ljava/util/jar/JarFile;
    .locals 1

    #@0
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->useCachedJarFile:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->closed:Z

    #@2
    return p1
.end method

.method public constructor <init>(Llibcore/io/ClassPathURLStreamHandler;Ljava/net/URL;)V
    .locals 0
    .param p1, "this$0"    # Llibcore/io/ClassPathURLStreamHandler;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    #@2
    .line 121
    invoke-direct {p0, p2}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    #@5
    .line 120
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connected:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 127
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    #@6
    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler;->-get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    #@9
    move-result-object v0

    #@a
    .line 128
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getEntryName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 127
    invoke-static {v0, v1}, Llibcore/io/ClassPathURLStreamHandler;->findEntryWithDirectoryFallback(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarEntry:Ljava/util/zip/ZipEntry;

    #@14
    .line 129
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarEntry:Ljava/util/zip/ZipEntry;

    #@16
    if-nez v0, :cond_0

    #@18
    .line 130
    new-instance v0, Ljava/io/FileNotFoundException;

    #@1a
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "URL does not correspond to an entry in the zip file. URL="

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->url:Ljava/net/URL;

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 132
    const-string/jumbo v2, ", zipfile="

    #@2f
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 132
    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    #@35
    invoke-static {v2}, Llibcore/io/ClassPathURLStreamHandler;->-get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 130
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 134
    :cond_0
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getUseCaches()Z

    #@4c
    move-result v0

    #@4d
    iput-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->useCachedJarFile:Z

    #@4f
    .line 135
    const/4 v0, 0x1

    #@50
    iput-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connected:Z

    #@52
    .line 125
    :cond_1
    return-void
.end method

.method public getContentLength()I
    .locals 4

    #@0
    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connect()V

    #@3
    .line 195
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-wide v2

    #@b
    long-to-int v1, v2

    #@c
    return v1

    #@d
    .line 196
    :catch_0
    move-exception v0

    #@e
    .line 199
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    #@f
    return v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 184
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->getEntryName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 185
    .local v0, "cType":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 186
    const-string/jumbo v0, "content/unknown"

    #@d
    .line 188
    :cond_0
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "JarURLConnection InputStream has been closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 158
    :cond_0
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connect()V

    #@10
    .line 159
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarInput:Ljava/io/InputStream;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 160
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarInput:Ljava/io/InputStream;

    #@16
    return-object v0

    #@17
    .line 162
    :cond_1
    new-instance v0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;

    #@19
    iget-object v1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    #@1b
    invoke-static {v1}, Llibcore/io/ClassPathURLStreamHandler;->-get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarEntry:Ljava/util/zip/ZipEntry;

    #@21
    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, p0, v1}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection$1;-><init>(Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;Ljava/io/InputStream;)V

    #@28
    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->jarInput:Ljava/io/InputStream;

    #@2a
    return-object v0
.end method

.method public getJarFile()Ljava/util/jar/JarFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connect()V

    #@3
    .line 145
    iget-boolean v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->useCachedJarFile:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 146
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    #@9
    invoke-static {v0}, Llibcore/io/ClassPathURLStreamHandler;->-get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    #@f
    .line 150
    :goto_0
    iget-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    #@11
    return-object v0

    #@12
    .line 148
    :cond_0
    new-instance v0, Ljava/util/jar/JarFile;

    #@14
    iget-object v1, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->this$0:Llibcore/io/ClassPathURLStreamHandler;

    #@16
    invoke-static {v1}, Llibcore/io/ClassPathURLStreamHandler;->-get0(Llibcore/io/ClassPathURLStreamHandler;)Ljava/util/jar/JarFile;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    #@21
    iput-object v0, p0, Llibcore/io/ClassPathURLStreamHandler$ClassPathURLConnection;->connectionJarFile:Ljava/util/jar/JarFile;

    #@23
    goto :goto_0
.end method
