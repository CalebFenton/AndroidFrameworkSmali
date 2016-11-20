.class public Lsun/net/www/protocol/jar/URLJarFile;
.super Ljava/util/jar/JarFile;
.source "URLJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;,
        Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;
    }
.end annotation


# static fields
.field private static BUF_SIZE:I

.field private static callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;


# instance fields
.field private closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

.field private superAttr:Ljava/util/jar/Attributes;

.field private superEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private superMan:Ljava/util/jar/Manifest;


# direct methods
.method static synthetic -get0(Lsun/net/www/protocol/jar/URLJarFile;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lsun/net/www/protocol/jar/URLJarFile;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isSuperMan()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    sput-object v0, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    #@3
    .line 54
    const/16 v0, 0x800

    #@5
    sput v0, Lsun/net/www/protocol/jar/URLJarFile;->BUF_SIZE:I

    #@7
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    #@b
    .line 52
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    #@e
    .line 74
    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    #@10
    .line 72
    return-void
.end method

.method static copyToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    new-instance v2, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@5
    .line 209
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v3, 0x1000

    #@7
    :try_start_0
    new-array v0, v3, [B

    #@9
    .line 211
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    #@c
    move-result v1

    #@d
    .local v1, "len":I
    if-lez v1, :cond_0

    #@f
    .line 212
    const/4 v3, 0x0

    #@10
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    goto :goto_0

    #@14
    .line 214
    .end local v0    # "buf":[B
    .end local v1    # "len":I
    :catchall_0
    move-exception v3

    #@15
    .line 215
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@18
    .line 214
    throw v3

    #@19
    .line 215
    .restart local v0    # "buf":[B
    .restart local v1    # "len":I
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@1c
    .line 206
    return-void
.end method

.method static getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lsun/net/www/protocol/jar/URLJarFile;->getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static getJarFile(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    invoke-static {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isFileURL(Ljava/net/URL;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 66
    new-instance v0, Lsun/net/www/protocol/jar/URLJarFile;

    #@8
    invoke-direct {v0, p0, p1}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V

    #@b
    return-object v0

    #@c
    .line 68
    :cond_0
    invoke-static {p0, p1}, Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private static isFileURL(Ljava/net/URL;)Z
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "file"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 83
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 84
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@13
    const-string/jumbo v1, ""

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_0

    #@1c
    const-string/jumbo v1, "~"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_0

    #@25
    .line 85
    const-string/jumbo v1, "localhost"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2b
    move-result v1

    #@2c
    .line 84
    if-eqz v1, :cond_1

    #@2e
    .line 86
    :cond_0
    const/4 v1, 0x1

    #@2f
    return v1

    #@30
    .line 88
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@31
    return v1
.end method

.method private declared-synchronized isSuperMan()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 153
    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 154
    invoke-super {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    #@b
    .line 157
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 158
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    #@11
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superAttr:Ljava/util/jar/Attributes;

    #@17
    .line 159
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superMan:Ljava/util/jar/Manifest;

    #@19
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 160
    const/4 v0, 0x1

    #@20
    monitor-exit p0

    #@21
    return v0

    #@22
    .line 162
    :cond_1
    const/4 v0, 0x0

    #@23
    monitor-exit p0

    #@24
    return v0

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method

.method private static retrieve(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lsun/net/www/protocol/jar/URLJarFile;->retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static retrieve(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)Ljava/util/jar/JarFile;
    .locals 8
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "closeController"    # Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 183
    sget-object v4, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 185
    sget-object v4, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    #@7
    invoke-interface {v4, p0}, Lsun/net/www/protocol/jar/URLJarFileCallBack;->retrieve(Ljava/net/URL;)Ljava/util/jar/JarFile;

    #@a
    move-result-object v4

    #@b
    return-object v4

    #@c
    .line 191
    :cond_0
    const/4 v0, 0x0

    #@d
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@14
    move-result-object v0

    #@15
    .line 192
    .local v0, "in":Ljava/io/InputStream;
    const-string/jumbo v4, "jar_cache"

    #@18
    const/4 v6, 0x0

    #@19
    invoke-static {v4, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1c
    move-result-object v3

    #@1d
    .line 194
    .local v3, "tmpFile":Ljava/io/File;
    :try_start_1
    invoke-static {v0, v3}, Lsun/net/www/protocol/jar/URLJarFile;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)V

    #@20
    .line 195
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    #@23
    .line 196
    new-instance v1, Lsun/net/www/protocol/jar/URLJarFile;

    #@25
    invoke-virtual {v3}, Ljava/io/File;->toURL()Ljava/net/URL;

    #@28
    move-result-object v4

    #@29
    invoke-direct {v1, v4, p1}, Lsun/net/www/protocol/jar/URLJarFile;-><init>(Ljava/net/URL;Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2c
    .line 202
    .local v1, "jarFile":Ljava/util/jar/JarFile;
    if-eqz v0, :cond_1

    #@2e
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@31
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    #@33
    throw v5

    #@34
    :catch_0
    move-exception v5

    #@35
    goto :goto_0

    #@36
    .line 197
    :cond_2
    return-object v1

    #@37
    .line 198
    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v2

    #@38
    .line 199
    .local v2, "thr":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@3b
    .line 200
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3c
    .line 202
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v2    # "thr":Ljava/lang/Throwable;
    .end local v3    # "tmpFile":Ljava/io/File;
    :catch_2
    move-exception v4

    #@3d
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3e
    :catchall_0
    move-exception v5

    #@3f
    move-object v7, v5

    #@40
    move-object v5, v4

    #@41
    move-object v4, v7

    #@42
    :goto_1
    if-eqz v0, :cond_3

    #@44
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    #@47
    :cond_3
    :goto_2
    if-eqz v5, :cond_5

    #@49
    throw v5

    #@4a
    :catch_3
    move-exception v6

    #@4b
    if-nez v5, :cond_4

    #@4d
    move-object v5, v6

    #@4e
    goto :goto_2

    #@4f
    :cond_4
    if-eq v5, v6, :cond_3

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@54
    goto :goto_2

    #@55
    :cond_5
    throw v4

    #@56
    :catchall_1
    move-exception v4

    #@57
    goto :goto_1
.end method

.method public static setCallBack(Lsun/net/www/protocol/jar/URLJarFileCallBack;)V
    .locals 0
    .param p0, "cb"    # Lsun/net/www/protocol/jar/URLJarFileCallBack;

    #@0
    .prologue
    .line 225
    sput-object p0, Lsun/net/www/protocol/jar/URLJarFile;->callback:Lsun/net/www/protocol/jar/URLJarFileCallBack;

    #@2
    .line 223
    return-void
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
    .line 144
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 145
    iget-object v0, p0, Lsun/net/www/protocol/jar/URLJarFile;->closeController:Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;

    #@6
    invoke-interface {v0, p0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileCloseController;->close(Ljava/util/jar/JarFile;)V

    #@9
    .line 147
    :cond_0
    invoke-super {p0}, Ljava/util/jar/JarFile;->close()V

    #@c
    .line 143
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/URLJarFile;->close()V

    #@3
    .line 94
    return-void
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 108
    invoke-super {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@4
    move-result-object v0

    #@5
    .line 109
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    #@7
    .line 110
    instance-of v1, v0, Ljava/util/jar/JarEntry;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 111
    new-instance v1, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;

    #@d
    nop

    #@e
    nop

    #@f
    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    invoke-direct {v1, p0, v0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;-><init>(Lsun/net/www/protocol/jar/URLJarFile;Ljava/util/jar/JarEntry;)V

    #@12
    return-object v1

    #@13
    .line 113
    .restart local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    new-instance v1, Ljava/lang/InternalError;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-super {p0}, Ljava/util/jar/JarFile;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 114
    const-string/jumbo v3, " returned unexpected entry type "

    #@25
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2c
    move-result-object v3

    #@2d
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 117
    :cond_1
    return-object v1
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 122
    invoke-direct {p0}, Lsun/net/www/protocol/jar/URLJarFile;->isSuperMan()Z

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 123
    return-object v7

    #@8
    .line 126
    :cond_0
    new-instance v5, Ljava/util/jar/Manifest;

    #@a
    invoke-direct {v5}, Ljava/util/jar/Manifest;-><init>()V

    #@d
    .line 127
    .local v5, "man":Ljava/util/jar/Manifest;
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    #@10
    move-result-object v1

    #@11
    .line 128
    .local v1, "attr":Ljava/util/jar/Attributes;
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superAttr:Ljava/util/jar/Attributes;

    #@13
    invoke-virtual {v6}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    #@16
    move-result-object v6

    #@17
    check-cast v6, Ljava/util/Map;

    #@19
    invoke-virtual {v1, v6}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    #@1c
    .line 131
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    #@1e
    if-eqz v6, :cond_1

    #@20
    .line 132
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    #@23
    move-result-object v2

    #@24
    .line 133
    .local v2, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    #@26
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@29
    move-result-object v6

    #@2a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v4

    #@2e
    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_1

    #@34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Ljava/lang/String;

    #@3a
    .line 134
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lsun/net/www/protocol/jar/URLJarFile;->superEntries:Ljava/util/Map;

    #@3c
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Ljava/util/jar/Attributes;

    #@42
    .line 135
    .local v0, "at":Ljava/util/jar/Attributes;
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    #@45
    move-result-object v6

    #@46
    check-cast v6, Ljava/util/jar/Attributes;

    #@48
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    goto :goto_0

    #@4c
    .line 139
    .end local v0    # "at":Ljava/util/jar/Attributes;
    .end local v2    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v5
.end method
