.class Ljava/net/URLClassLoader$IndexFile;
.super Ljava/lang/Object;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexFile"
.end annotation


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 136
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 137
    iput-object p1, p0, Ljava/net/URLClassLoader$IndexFile;->map:Ljava/util/HashMap;

    #@5
    .line 136
    return-void
.end method

.method private static getParentURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 7
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x2f

    #@2
    .line 124
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@5
    move-result-object v4

    #@6
    check-cast v4, Ljava/net/JarURLConnection;

    #@8
    invoke-virtual {v4}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    #@b
    move-result-object v1

    #@c
    .line 125
    .local v1, "fileURL":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 126
    .local v0, "file":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    #@12
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 127
    .local v2, "parentFile":Ljava/lang/String;
    sget-char v4, Ljava/io/File;->separatorChar:C

    #@1b
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 128
    const/4 v4, 0x0

    #@20
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v4

    #@24
    if-eq v4, v5, :cond_0

    #@26
    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v5, "/"

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 131
    :cond_0
    new-instance v3, Ljava/net/URL;

    #@3c
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    .line 132
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    #@47
    move-result v6

    #@48
    .line 131
    invoke-direct {v3, v4, v5, v6, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@4b
    .line 133
    .local v3, "parentURL":Ljava/net/URL;
    return-object v3
.end method

.method static readIndexFile(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/net/URL;)Ljava/net/URLClassLoader$IndexFile;
    .locals 13
    .param p0, "jf"    # Ljava/util/jar/JarFile;
    .param p1, "indexEntry"    # Ljava/util/jar/JarEntry;
    .param p2, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 72
    const/4 v2, 0x0

    #@1
    .line 73
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    #@2
    .line 76
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p2}, Ljava/net/URLClassLoader$IndexFile;->getParentURL(Ljava/net/URL;)Ljava/net/URL;

    #@5
    move-result-object v11

    #@6
    invoke-virtual {v11}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    #@9
    move-result-object v8

    #@a
    .line 77
    .local v8, "parentURLString":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v12, "jar:"

    #@12
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v11

    #@16
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v11

    #@1a
    const-string/jumbo v12, "/"

    #@1d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v11

    #@21
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v10

    #@25
    .line 78
    .local v10, "prefix":Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@28
    move-result-object v4

    #@29
    .line 79
    .local v4, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    #@2b
    new-instance v11, Ljava/io/InputStreamReader;

    #@2d
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2f
    invoke-direct {v11, v4, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@32
    invoke-direct {v3, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 80
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v9, Ljava/util/HashMap;

    #@37
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@3a
    .line 82
    .local v9, "pre_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3d
    move-result-object v11

    #@3e
    if-nez v11, :cond_0

    #@40
    const/4 v11, 0x0

    #@41
    .line 117
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@44
    .line 118
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@47
    .line 82
    return-object v11

    #@48
    .line 83
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4b
    move-result-object v11

    #@4c
    if-nez v11, :cond_2

    #@4e
    const/4 v11, 0x0

    #@4f
    .line 117
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@52
    .line 118
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@55
    .line 83
    return-object v11

    #@56
    .line 96
    .local v5, "jar":Ljava/net/URL;
    .local v6, "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@59
    move-result v11

    #@5a
    if-eqz v11, :cond_4

    #@5c
    .line 86
    .end local v5    # "jar":Ljava/net/URL;
    .end local v6    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    .line 87
    .restart local v6    # "line":Ljava/lang/String;
    if-nez v6, :cond_3

    #@62
    .line 109
    :goto_0
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    #@65
    move-result v11

    #@66
    if-nez v11, :cond_6

    #@68
    .line 110
    new-instance v11, Ljava/net/URLClassLoader$IndexFile;

    #@6a
    invoke-direct {v11, v9}, Ljava/net/URLClassLoader$IndexFile;-><init>(Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6d
    .line 117
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@70
    .line 118
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@73
    .line 110
    return-object v11

    #@74
    .line 90
    :cond_3
    :try_start_4
    new-instance v5, Ljava/net/URL;

    #@76
    new-instance v11, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v11

    #@7f
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v11

    #@83
    const-string/jumbo v12, "!/"

    #@86
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v11

    #@8a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v11

    #@8e
    invoke-direct {v5, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@91
    .line 92
    .restart local v5    # "jar":Ljava/net/URL;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@94
    move-result-object v6

    #@95
    .line 93
    if-nez v6, :cond_1

    #@97
    goto :goto_0

    #@98
    .line 100
    :cond_4
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9b
    move-result v11

    #@9c
    if-eqz v11, :cond_5

    #@9e
    .line 101
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a1
    move-result-object v7

    #@a2
    check-cast v7, Ljava/util/ArrayList;

    #@a4
    .line 106
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    :goto_2
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a7
    goto :goto_1

    #@a8
    .line 112
    .end local v5    # "jar":Ljava/net/URL;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    .end local v9    # "pre_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    :catch_0
    move-exception v1

    #@a9
    .local v1, "e":Ljava/net/MalformedURLException;
    move-object v2, v3

    #@aa
    .line 117
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v8    # "parentURLString":Ljava/lang/String;
    .end local v10    # "prefix":Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ad
    .line 118
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@b0
    .line 120
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :goto_4
    const/4 v11, 0x0

    #@b1
    return-object v11

    #@b2
    .line 103
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "jar":Ljava/net/URL;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "parentURLString":Ljava/lang/String;
    .restart local v9    # "pre_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .restart local v10    # "prefix":Ljava/lang/String;
    :cond_5
    :try_start_5
    new-instance v7, Ljava/util/ArrayList;

    #@b4
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@b7
    .line 104
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ba
    goto :goto_2

    #@bb
    .line 114
    .end local v5    # "jar":Ljava/net/URL;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    .end local v9    # "pre_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    :catch_1
    move-exception v0

    #@bc
    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    #@bd
    .line 117
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v8    # "parentURLString":Ljava/lang/String;
    .end local v10    # "prefix":Ljava/lang/String;
    :goto_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c0
    .line 118
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c3
    goto :goto_4

    #@c4
    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "parentURLString":Ljava/lang/String;
    .restart local v9    # "pre_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .restart local v10    # "prefix":Ljava/lang/String;
    :cond_6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c7
    .line 118
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ca
    move-object v2, v3

    #@cb
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_4

    #@cc
    .line 116
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "parentURLString":Ljava/lang/String;
    .end local v9    # "pre_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/net/URL;>;>;"
    .end local v10    # "prefix":Ljava/lang/String;
    .local v2, "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v11

    #@cd
    .line 117
    .end local v2    # "in":Ljava/io/BufferedReader;
    :goto_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d0
    .line 118
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d3
    .line 116
    throw v11

    #@d4
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v8    # "parentURLString":Ljava/lang/String;
    .restart local v10    # "prefix":Ljava/lang/String;
    :catchall_1
    move-exception v11

    #@d5
    move-object v2, v3

    #@d6
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_6

    #@d7
    .line 112
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v8    # "parentURLString":Ljava/lang/String;
    .end local v10    # "prefix":Ljava/lang/String;
    .local v2, "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    #@d8
    .restart local v1    # "e":Ljava/net/MalformedURLException;
    goto :goto_3

    #@d9
    .line 114
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v0

    #@da
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_5
.end method


# virtual methods
.method get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Ljava/net/URLClassLoader$IndexFile;->map:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    return-object v0
.end method
