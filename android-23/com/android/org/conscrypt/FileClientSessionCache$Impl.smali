.class Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"

# interfaces
.implements Lcom/android/org/conscrypt/SSLClientSessionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation


# instance fields
.field accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final directory:Ljava/io/File;

.field initialFiles:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@9
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    #@c
    move-result v0

    #@d
    .line 79
    .local v0, "exists":Z
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 83
    :cond_0
    if-eqz v0, :cond_3

    #@17
    .line 90
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    #@1d
    .line 91
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    #@1f
    if-nez v1, :cond_2

    #@21
    .line 94
    new-instance v1, Ljava/io/IOException;

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, " exists but cannot list contents."

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1

    #@3b
    .line 80
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    const-string/jumbo v3, " exists but is not a directory."

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@54
    throw v1

    #@55
    .line 96
    :cond_2
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    #@57
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@5a
    .line 97
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    #@5c
    array-length v1, v1

    #@5d
    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    #@5f
    .line 106
    :goto_0
    iput-object p1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    #@61
    .line 77
    return-void

    #@62
    .line 100
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    #@65
    move-result v1

    #@66
    if-nez v1, :cond_4

    #@68
    .line 101
    new-instance v1, Ljava/io/IOException;

    #@6a
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v3, "Creation of "

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    const-string/jumbo v3, " directory failed."

    #@7d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@88
    throw v1

    #@89
    .line 103
    :cond_4
    const/4 v1, 0x0

    #@8a
    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    #@8c
    goto :goto_0
.end method

.method private delete(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 299
    new-instance v0, Ljava/io/IOException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "FileClientSessionCache: Failed to delete "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "."

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@29
    .line 301
    :cond_0
    iget v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    #@2b
    add-int/lit8 v0, v0, -0x1

    #@2d
    iput v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    #@2f
    .line 297
    return-void
.end method

.method private static fileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    #@0
    .prologue
    .line 121
    if-nez p0, :cond_0

    #@2
    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "host == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "."

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method private indexFiles()V
    .locals 10

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 268
    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    #@3
    .line 269
    .local v3, "initialFiles":[Ljava/lang/String;
    if-eqz v3, :cond_3

    #@5
    .line 270
    iput-object v6, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    #@7
    .line 274
    new-instance v2, Ljava/util/TreeSet;

    #@9
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@c
    .line 275
    .local v2, "diskOnly":Ljava/util/Set;, "Ljava/util/Set<Lorg/conscrypt/FileClientSessionCache$CacheFile;>;"
    const/4 v6, 0x0

    #@d
    array-length v7, v3

    #@e
    :goto_0
    if-ge v6, v7, :cond_1

    #@10
    aget-object v4, v3, v6

    #@12
    .line 277
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@14
    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v8

    #@18
    if-nez v8, :cond_0

    #@1a
    .line 278
    new-instance v8, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    #@1c
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    #@1e
    invoke-direct {v8, v9, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@21
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@24
    .line 275
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@26
    goto :goto_0

    #@27
    .line 282
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    #@2a
    move-result v6

    #@2b
    if-nez v6, :cond_3

    #@2d
    .line 285
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    #@30
    move-result-object v5

    #@31
    .line 286
    .local v5, "newOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v1

    #@35
    .local v1, "cacheFile$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v6

    #@39
    if-eqz v6, :cond_2

    #@3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    #@41
    .line 287
    .local v0, "cacheFile":Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    iget-object v6, v0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    #@43
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    goto :goto_1

    #@47
    .line 289
    .end local v0    # "cacheFile":Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    :cond_2
    iget-object v6, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@49
    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@4c
    .line 291
    iput-object v5, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@4e
    .line 267
    .end local v1    # "cacheFile$iterator":Ljava/util/Iterator;
    .end local v2    # "diskOnly":Ljava/util/Set;, "Ljava/util/Set<Lorg/conscrypt/FileClientSessionCache$CacheFile;>;"
    .end local v5    # "newOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_3
    return-void
.end method

.method static logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 184
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "FileClientSessionCache: Error reading session data for "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " from "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "."

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 185
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    #@2e
    .line 183
    return-void
.end method

.method static logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 305
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "FileClientSessionCache: Error writing session data for "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " to "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "."

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 306
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    #@2e
    .line 304
    return-void
.end method

.method private makeRoom()V
    .locals 4

    #@0
    .prologue
    .line 248
    iget v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    #@2
    const/16 v3, 0xc

    #@4
    if-gt v2, v3, :cond_0

    #@6
    .line 249
    return-void

    #@7
    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->indexFiles()V

    #@a
    .line 255
    iget v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    #@c
    add-int/lit8 v1, v2, -0xc

    #@e
    .line 256
    .local v1, "removals":I
    iget-object v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@10
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v0

    #@18
    .line 258
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/io/File;

    #@1e
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    #@21
    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@24
    .line 260
    add-int/lit8 v1, v1, -0x1

    #@26
    if-gtz v1, :cond_1

    #@28
    .line 247
    return-void
.end method

.method private static newAccessOrder()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    new-instance v0, Ljava/util/LinkedHashMap;

    #@2
    .line 114
    const/16 v1, 0xc

    #@4
    const/high16 v2, 0x3f400000    # 0.75f

    #@6
    const/4 v3, 0x1

    #@7
    .line 113
    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #@a
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getSessionData(Ljava/lang/String;I)[B
    .locals 13
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 135
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v6

    #@6
    .line 136
    .local v6, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@8
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Ljava/io/File;

    #@e
    .line 138
    .local v3, "file":Ljava/io/File;
    if-nez v3, :cond_2

    #@10
    .line 140
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    if-nez v9, :cond_0

    #@14
    monitor-exit p0

    #@15
    .line 142
    return-object v12

    #@16
    .line 146
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    #@18
    invoke-static {v9, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result v9

    #@1c
    if-gez v9, :cond_1

    #@1e
    monitor-exit p0

    #@1f
    .line 148
    return-object v12

    #@20
    .line 152
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/File;

    #@22
    .end local v3    # "file":Ljava/io/File;
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    #@24
    invoke-direct {v3, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@27
    .line 153
    .restart local v3    # "file":Ljava/io/File;
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@29
    invoke-interface {v9, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    .line 158
    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    #@2e
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@31
    .line 164
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    #@34
    move-result-wide v10

    #@35
    long-to-int v8, v10

    #@36
    .line 165
    .local v8, "size":I
    new-array v0, v8, [B

    #@38
    .line 166
    .local v0, "data":[B
    new-instance v9, Ljava/io/DataInputStream;

    #@3a
    invoke-direct {v9, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@3d
    invoke-virtual {v9, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@40
    .line 172
    if-eqz v5, :cond_3

    #@42
    .line 174
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@45
    :cond_3
    :goto_0
    monitor-exit p0

    #@46
    .line 167
    return-object v0

    #@47
    .line 159
    .end local v0    # "data":[B
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v8    # "size":I
    :catch_0
    move-exception v1

    #@48
    .line 160
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-static {p1, v3, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@4b
    monitor-exit p0

    #@4c
    .line 161
    return-object v12

    #@4d
    .line 177
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "data":[B
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "size":I
    :catch_1
    move-exception v4

    #@4e
    .local v4, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@4f
    .line 175
    .end local v4    # "ignored":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    #@50
    .line 176
    .local v7, "rethrown":Ljava/lang/RuntimeException;
    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@51
    .end local v0    # "data":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "rethrown":Ljava/lang/RuntimeException;
    .end local v8    # "size":I
    :catchall_0
    move-exception v9

    #@52
    monitor-exit p0

    #@53
    throw v9

    #@54
    .line 168
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "name":Ljava/lang/String;
    :catch_3
    move-exception v2

    #@55
    .line 169
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    invoke-static {p1, v3, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@58
    .line 172
    if-eqz v5, :cond_4

    #@5a
    .line 174
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@5d
    :cond_4
    :goto_1
    monitor-exit p0

    #@5e
    .line 170
    return-object v12

    #@5f
    .line 177
    :catch_4
    move-exception v4

    #@60
    .restart local v4    # "ignored":Ljava/lang/Exception;
    goto :goto_1

    #@61
    .line 175
    .end local v4    # "ignored":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    #@62
    .line 176
    .restart local v7    # "rethrown":Ljava/lang/RuntimeException;
    :try_start_a
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@63
    .line 171
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "rethrown":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v9

    #@64
    .line 172
    if-eqz v5, :cond_5

    #@66
    .line 174
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@69
    .line 171
    :cond_5
    :goto_2
    :try_start_c
    throw v9

    #@6a
    .line 177
    :catch_6
    move-exception v4

    #@6b
    .restart local v4    # "ignored":Ljava/lang/Exception;
    goto :goto_2

    #@6c
    .line 175
    .end local v4    # "ignored":Ljava/lang/Exception;
    :catch_7
    move-exception v7

    #@6d
    .line 176
    .restart local v7    # "rethrown":Ljava/lang/RuntimeException;
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public declared-synchronized putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .locals 11
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "sessionData"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 191
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    .line 192
    .local v5, "host":Ljava/lang/String;
    if-nez p2, :cond_0

    #@7
    .line 193
    new-instance v9, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v10, "sessionData == null"

    #@c
    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .end local v5    # "host":Ljava/lang/String;
    :catchall_0
    move-exception v9

    #@11
    monitor-exit p0

    #@12
    throw v9

    #@13
    .line 196
    .restart local v5    # "host":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    #@16
    move-result v9

    #@17
    invoke-static {v5, v9}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 197
    .local v6, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    #@1d
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    #@1f
    invoke-direct {v4, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@22
    .line 200
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result v3

    #@26
    .line 204
    .local v3, "existedBefore":Z
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    #@28
    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    .line 212
    .local v7, "out":Ljava/io/FileOutputStream;
    if-nez v3, :cond_1

    #@2d
    .line 213
    :try_start_3
    iget v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    #@2f
    add-int/lit8 v9, v9, 0x1

    #@31
    iput v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    #@33
    .line 216
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    .line 219
    :cond_1
    const/4 v8, 0x0

    #@37
    .line 221
    .local v8, "writeSuccessful":Z
    :try_start_4
    invoke-virtual {v7, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@3a
    .line 222
    const/4 v8, 0x1

    #@3b
    .line 226
    const/4 v0, 0x0

    #@3c
    .line 228
    .local v0, "closeSuccessful":Z
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3f
    .line 229
    const/4 v0, 0x1

    #@40
    .line 233
    if-nez v8, :cond_3

    #@42
    .line 235
    :cond_2
    :try_start_6
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@45
    :goto_0
    monitor-exit p0

    #@46
    .line 190
    return-void

    #@47
    .line 205
    .end local v0    # "closeSuccessful":Z
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "writeSuccessful":Z
    :catch_0
    move-exception v1

    #@48
    .line 207
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    invoke-static {v5, v4, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@4b
    monitor-exit p0

    #@4c
    .line 208
    return-void

    #@4d
    .line 233
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "closeSuccessful":Z
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "writeSuccessful":Z
    :cond_3
    if-eqz v0, :cond_2

    #@4f
    .line 238
    :try_start_8
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@51
    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@54
    goto :goto_0

    #@55
    .line 230
    :catch_1
    move-exception v2

    #@56
    .line 231
    .local v2, "e":Ljava/io/IOException;
    :try_start_9
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@59
    .line 233
    if-nez v8, :cond_5

    #@5b
    .line 235
    :cond_4
    :try_start_a
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    #@5e
    goto :goto_0

    #@5f
    .line 233
    :cond_5
    if-eqz v0, :cond_4

    #@61
    .line 238
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@63
    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    goto :goto_0

    #@67
    .line 232
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    #@68
    .line 233
    if-nez v8, :cond_7

    #@6a
    .line 235
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    #@6d
    .line 232
    :goto_1
    throw v9

    #@6e
    .line 233
    :cond_7
    if-eqz v0, :cond_6

    #@70
    .line 238
    iget-object v10, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@72
    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@75
    goto :goto_1

    #@76
    .line 223
    .end local v0    # "closeSuccessful":Z
    :catch_2
    move-exception v2

    #@77
    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_b
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@7a
    .line 226
    const/4 v0, 0x0

    #@7b
    .line 228
    .restart local v0    # "closeSuccessful":Z
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    #@7e
    .line 229
    const/4 v0, 0x1

    #@7f
    .line 233
    if-nez v8, :cond_9

    #@81
    .line 235
    :cond_8
    :try_start_d
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    #@84
    goto :goto_0

    #@85
    .line 233
    :cond_9
    if-eqz v0, :cond_8

    #@87
    .line 238
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@89
    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@8c
    goto :goto_0

    #@8d
    .line 230
    :catch_3
    move-exception v2

    #@8e
    .line 231
    :try_start_e
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@91
    .line 233
    if-nez v8, :cond_b

    #@93
    .line 235
    :cond_a
    :try_start_f
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    #@96
    goto :goto_0

    #@97
    .line 233
    :cond_b
    if-eqz v0, :cond_a

    #@99
    .line 238
    iget-object v9, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@9b
    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    goto :goto_0

    #@9f
    .line 232
    :catchall_2
    move-exception v9

    #@a0
    .line 233
    if-nez v8, :cond_d

    #@a2
    .line 235
    :cond_c
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    #@a5
    .line 232
    :goto_2
    throw v9

    #@a6
    .line 233
    :cond_d
    if-eqz v0, :cond_c

    #@a8
    .line 238
    iget-object v10, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@aa
    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@ad
    goto :goto_2

    #@ae
    .line 225
    .end local v0    # "closeSuccessful":Z
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v9

    #@af
    .line 226
    const/4 v0, 0x0

    #@b0
    .line 228
    .restart local v0    # "closeSuccessful":Z
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    #@b3
    .line 229
    const/4 v0, 0x1

    #@b4
    .line 233
    if-nez v8, :cond_f

    #@b6
    .line 235
    :cond_e
    :try_start_11
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    #@b9
    .line 225
    :goto_3
    throw v9

    #@ba
    .line 233
    :cond_f
    if-eqz v0, :cond_e

    #@bc
    .line 238
    iget-object v10, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@be
    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@c1
    goto :goto_3

    #@c2
    .line 230
    :catch_4
    move-exception v2

    #@c3
    .line 231
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_12
    invoke-static {v5, v4, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    #@c6
    .line 233
    if-nez v8, :cond_11

    #@c8
    .line 235
    :cond_10
    :try_start_13
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    #@cb
    goto :goto_3

    #@cc
    .line 233
    :cond_11
    if-eqz v0, :cond_10

    #@ce
    .line 238
    iget-object v10, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@d0
    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d3
    goto :goto_3

    #@d4
    .line 232
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v9

    #@d5
    .line 233
    if-nez v8, :cond_13

    #@d7
    .line 235
    :cond_12
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    #@da
    .line 232
    :goto_4
    throw v9

    #@db
    .line 233
    :cond_13
    if-eqz v0, :cond_12

    #@dd
    .line 238
    iget-object v10, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    #@df
    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@e2
    goto :goto_4
.end method
