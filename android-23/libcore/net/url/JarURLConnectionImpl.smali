.class public Llibcore/net/url/JarURLConnectionImpl;
.super Ljava/net/JarURLConnection;
.source "JarURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;
    }
.end annotation


# static fields
.field private static final jarCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/URL;",
            "Ljava/util/jar/JarFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closed:Z

.field private jarEntry:Ljava/util/jar/JarEntry;

.field private jarFile:Ljava/util/jar/JarFile;

.field private jarFileURL:Ljava/net/URL;

.field private jarInput:Ljava/io/InputStream;


# direct methods
.method static synthetic -set0(Llibcore/net/url/JarURLConnectionImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Llibcore/net/url/JarURLConnectionImpl;->closed:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    #@7
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;-><init>(Ljava/net/URL;)V

    #@3
    .line 72
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getJarFileURL()Ljava/net/URL;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    #@9
    .line 73
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    #@b
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    #@11
    .line 70
    return-void
.end method

.method private findJarEntry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 194
    return-void

    #@7
    .line 196
    :cond_0
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    #@9
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    #@13
    .line 197
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    #@15
    if-nez v0, :cond_1

    #@17
    .line 198
    new-instance v0, Ljava/io/FileNotFoundException;

    #@19
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 192
    :cond_1
    return-void
.end method

.method private findJarFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getUseCaches()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 109
    sget-object v2, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    #@8
    monitor-enter v2

    #@9
    .line 110
    :try_start_0
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    #@b
    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    #@d
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/util/jar/JarFile;

    #@13
    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v2

    #@16
    .line 112
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 113
    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    #@1d
    move-result-object v0

    #@1e
    .line 114
    .local v0, "jar":Ljava/util/jar/JarFile;
    sget-object v2, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    #@20
    monitor-enter v2

    #@21
    .line 115
    :try_start_1
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    #@23
    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    #@25
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Ljava/util/jar/JarFile;

    #@2b
    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    #@2d
    .line 116
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    #@2f
    if-nez v1, :cond_1

    #@31
    .line 117
    sget-object v1, Llibcore/net/url/JarURLConnectionImpl;->jarCache:Ljava/util/HashMap;

    #@33
    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    #@35
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 118
    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3a
    :goto_0
    monitor-exit v2

    #@3b
    .line 128
    .end local v0    # "jar":Ljava/util/jar/JarFile;
    :cond_0
    :goto_1
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    #@3d
    if-nez v1, :cond_3

    #@3f
    .line 129
    new-instance v1, Ljava/io/IOException;

    #@41
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    #@44
    throw v1

    #@45
    .line 109
    :catchall_0
    move-exception v1

    #@46
    monitor-exit v2

    #@47
    throw v1

    #@48
    .line 120
    .restart local v0    # "jar":Ljava/util/jar/JarFile;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4b
    goto :goto_0

    #@4c
    .line 114
    :catchall_1
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1

    #@4f
    .line 125
    .end local v0    # "jar":Ljava/util/jar/JarFile;
    :cond_2
    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->openJarFile()Ljava/util/jar/JarFile;

    #@52
    move-result-object v1

    #@53
    iput-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    #@55
    goto :goto_1

    #@56
    .line 107
    :cond_3
    return-void
.end method

.method private openJarFile()Ljava/util/jar/JarFile;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v13, 0x0

    #@2
    .line 134
    iget-object v10, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    #@4
    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@7
    move-result-object v10

    #@8
    const-string/jumbo v11, "file"

    #@b
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v10

    #@f
    if-eqz v10, :cond_0

    #@11
    .line 135
    iget-object v10, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    #@13
    invoke-virtual {v10}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@16
    move-result-object v10

    #@17
    invoke-static {v10}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 136
    .local v1, "decodedFile":Ljava/lang/String;
    new-instance v10, Ljava/util/jar/JarFile;

    #@1d
    new-instance v11, Ljava/io/File;

    #@1f
    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@22
    invoke-direct {v10, v11, v12, v12}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V

    #@25
    return-object v10

    #@26
    .line 138
    .end local v1    # "decodedFile":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURL:Ljava/net/URL;

    #@28
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@2b
    move-result-object v10

    #@2c
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@2f
    move-result-object v6

    #@30
    .line 140
    .local v6, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    #@31
    .line 141
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    #@32
    .line 143
    .local v8, "result":Ljava/util/jar/JarFile;
    :try_start_0
    const-string/jumbo v10, "hyjar_"

    #@35
    const-string/jumbo v11, ".tmp"

    #@38
    const/4 v12, 0x0

    #@39
    invoke-static {v10, v11, v12}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@3c
    move-result-object v9

    #@3d
    .line 144
    .local v9, "tempJar":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    #@40
    .line 145
    new-instance v5, Ljava/io/FileOutputStream;

    #@42
    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 146
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v10, 0x1000

    #@47
    :try_start_1
    new-array v0, v10, [B

    #@49
    .line 147
    .local v0, "buf":[B
    const/4 v7, 0x0

    #@4a
    .line 148
    .local v7, "nbytes":I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    #@4d
    move-result v7

    #@4e
    const/4 v10, -0x1

    #@4f
    if-le v7, v10, :cond_3

    #@51
    .line 149
    const/4 v10, 0x0

    #@52
    invoke-virtual {v5, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@55
    goto :goto_0

    #@56
    .line 153
    .end local v0    # "buf":[B
    .end local v7    # "nbytes":I
    :catch_0
    move-exception v2

    #@57
    .local v2, "e":Ljava/io/IOException;
    move-object v4, v5

    #@58
    .line 156
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "tempJar":Ljava/io/File;
    :goto_1
    if-eqz v4, :cond_1

    #@5a
    .line 158
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5d
    .line 165
    :cond_1
    if-eqz v6, :cond_2

    #@5f
    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    #@62
    .line 154
    :cond_2
    return-object v13

    #@63
    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "nbytes":I
    .restart local v9    # "tempJar":Ljava/io/File;
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    #@66
    .line 152
    new-instance v10, Ljava/util/jar/JarFile;

    #@68
    const/4 v11, 0x1

    #@69
    const/4 v12, 0x5

    #@6a
    invoke-direct {v10, v9, v11, v12}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;ZI)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@6d
    .line 156
    if-eqz v5, :cond_4

    #@6f
    .line 158
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@72
    .line 165
    :cond_4
    if-eqz v6, :cond_5

    #@74
    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    #@77
    .line 152
    :cond_5
    return-object v10

    #@78
    .line 159
    :catch_1
    move-exception v3

    #@79
    .line 165
    .local v3, "ex":Ljava/io/IOException;
    if-eqz v6, :cond_6

    #@7b
    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    #@7e
    .line 160
    :cond_6
    return-object v13

    #@7f
    .line 159
    .end local v0    # "buf":[B
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "nbytes":I
    .end local v9    # "tempJar":Ljava/io/File;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    #@80
    .line 165
    .restart local v3    # "ex":Ljava/io/IOException;
    if-eqz v6, :cond_7

    #@82
    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    #@85
    .line 160
    :cond_7
    return-object v13

    #@86
    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v10

    #@87
    .line 156
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v4, :cond_8

    #@89
    .line 158
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@8c
    .line 155
    :cond_8
    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@8d
    .line 164
    :catchall_1
    move-exception v10

    #@8e
    .line 165
    :goto_3
    if-eqz v6, :cond_9

    #@90
    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    #@93
    .line 164
    :cond_9
    throw v10

    #@94
    .line 159
    :catch_3
    move-exception v3

    #@95
    .line 165
    .restart local v3    # "ex":Ljava/io/IOException;
    if-eqz v6, :cond_a

    #@97
    .line 166
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    #@9a
    .line 160
    :cond_a
    return-object v13

    #@9b
    .line 164
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "nbytes":I
    .restart local v9    # "tempJar":Ljava/io/File;
    :catchall_2
    move-exception v10

    #@9c
    move-object v4, v5

    #@9d
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    #@9e
    .line 155
    .end local v0    # "buf":[B
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "nbytes":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v10

    #@9f
    move-object v4, v5

    #@a0
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    #@a1
    .line 153
    .end local v9    # "tempJar":Ljava/io/File;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    #@a2
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    iget-boolean v0, p0, Llibcore/net/url/JarURLConnectionImpl;->connected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 82
    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->findJarFile()V

    #@7
    .line 83
    invoke-direct {p0}, Llibcore/net/url/JarURLConnectionImpl;->findJarEntry()V

    #@a
    .line 84
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Llibcore/net/url/JarURLConnectionImpl;->connected:Z

    #@d
    .line 80
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    #@3
    .line 300
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 301
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    #@9
    return-object v0

    #@a
    .line 303
    :cond_0
    invoke-super {p0}, Ljava/net/JarURLConnection;->getContent()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getContentLength()I
    .locals 4

    #@0
    .prologue
    .line 269
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    #@3
    .line 270
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 271
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    #@9
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 273
    :cond_0
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getJarEntry()Ljava/util/jar/JarEntry;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getSize()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-wide v2

    #@16
    long-to-int v1, v2

    #@17
    return v1

    #@18
    .line 274
    :catch_0
    move-exception v0

    #@19
    .line 277
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    #@1a
    return v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 236
    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->url:Ljava/net/URL;

    #@2
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    const-string/jumbo v4, "!/"

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 238
    const-string/jumbo v3, "x-java/jar"

    #@12
    return-object v3

    #@13
    .line 240
    :cond_0
    const/4 v0, 0x0

    #@14
    .line 241
    .local v0, "cType":Ljava/lang/String;
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->getEntryName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 243
    .local v1, "entryName":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@1a
    .line 245
    invoke-static {v1}, Llibcore/net/url/JarURLConnectionImpl;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 254
    .end local v0    # "cType":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    #@20
    .line 255
    const-string/jumbo v0, "content/unknown"

    #@23
    .line 257
    :cond_1
    return-object v0

    #@24
    .line 248
    .restart local v0    # "cType":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    #@27
    .line 249
    iget-object v3, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    #@29
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v0

    #@2d
    .local v0, "cType":Ljava/lang/String;
    goto :goto_0

    #@2e
    .line 250
    .local v0, "cType":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@2f
    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    #@5
    move-result v0

    #@6
    return v0
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
    .line 212
    iget-boolean v0, p0, Llibcore/net/url/JarURLConnectionImpl;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "JarURLConnection InputStream has been closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 215
    :cond_0
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    #@10
    .line 216
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 217
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    #@16
    return-object v0

    #@17
    .line 219
    :cond_1
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 220
    new-instance v0, Ljava/io/IOException;

    #@1d
    const-string/jumbo v1, "Jar entry not specified"

    #@20
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 222
    :cond_2
    new-instance v0, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;

    #@26
    iget-object v1, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    #@28
    .line 223
    iget-object v2, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

    #@2a
    .line 222
    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@2d
    move-result-object v1

    #@2e
    .line 223
    iget-object v2, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

    #@30
    .line 222
    invoke-direct {v0, p0, v1, v2}, Llibcore/net/url/JarURLConnectionImpl$JarURLConnectionInputStream;-><init>(Llibcore/net/url/JarURLConnectionImpl;Ljava/io/InputStream;Ljava/util/jar/JarFile;)V

    #@33
    iput-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarInput:Ljava/io/InputStream;

    #@35
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
    .line 183
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    #@3
    .line 184
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarEntry:Ljava/util/jar/JarEntry;

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
    .line 97
    invoke-virtual {p0}, Llibcore/net/url/JarURLConnectionImpl;->connect()V

    #@3
    .line 98
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFile:Ljava/util/jar/JarFile;

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
    .line 320
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "defaultusecaches"    # Z

    #@0
    .prologue
    .line 340
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    #@5
    .line 339
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "usecaches"    # Z

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Llibcore/net/url/JarURLConnectionImpl;->jarFileURLConnection:Ljava/net/URLConnection;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    #@5
    .line 329
    return-void
.end method
