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
.field blacklist accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist directory:Ljava/io/File;

.field blacklist initialFiles:[Ljava/lang/String;

.field blacklist size:I


# direct methods
.method constructor blacklist <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 89
    .local v0, "exists":Z
    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2f

    .line 90
    :cond_16
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_2f
    :goto_2f
    if-eqz v0, :cond_5f

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 106
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    goto :goto_68

    .line 104
    :cond_46
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists but cannot list contents."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_5f
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 116
    :goto_68
    iput-object p1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    .line 117
    return-void

    .line 111
    :cond_6b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " directory failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist delete(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .line 302
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_31

    .line 303
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileClientSessionCache: Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache;->-$$Nest$sfgetlogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    iget v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 308
    return-void
.end method

.method private static blacklist fileName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 130
    if-eqz p0, :cond_1a

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist indexFiles()V
    .registers 8

    .line 272
    iget-object v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 273
    .local v0, "initialFiles":[Ljava/lang/String;
    if-eqz v0, :cond_4e

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 278
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 279
    .local v1, "diskOnly":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 281
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 282
    new-instance v5, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    iget-object v6, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v4    # "name":Ljava/lang/String;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 286
    :cond_27
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 289
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v2

    .line 290
    .local v2, "newOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;

    .line 291
    .local v4, "cacheFile":Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    iget-object v5, v4, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v4    # "cacheFile":Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    goto :goto_35

    .line 293
    :cond_47
    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 295
    iput-object v2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 298
    .end local v1    # "diskOnly":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;>;"
    .end local v2    # "newOrder":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_4e
    return-void
.end method

.method static blacklist logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 187
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache;->-$$Nest$sfgetlogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileClientSessionCache: Error reading session data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    return-void
.end method

.method static blacklist logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 311
    invoke-static {}, Lcom/android/org/conscrypt/FileClientSessionCache;->-$$Nest$sfgetlogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileClientSessionCache: Error writing session data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    return-void
.end method

.method private blacklist makeRoom()V
    .registers 4

    .line 252
    iget v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_7

    .line 253
    return-void

    .line 256
    :cond_7
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->indexFiles()V

    .line 259
    iget v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    sub-int/2addr v0, v1

    .line 260
    .local v0, "removals":I
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 262
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 264
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_17

    .line 265
    return-void
.end method

.method private static blacklist newAccessOrder()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized greylist getSessionData(Ljava/lang/String;I)[B
    .registers 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    monitor-enter p0

    .line 145
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 148
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_2d

    .line 150
    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_5e

    if-nez v3, :cond_16

    .line 152
    monitor-exit p0

    return-object v2

    .line 156
    :cond_16
    :try_start_16
    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_5e

    if-gez v3, :cond_20

    .line 158
    monitor-exit p0

    return-object v2

    .line 162
    :cond_20
    :try_start_20
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 163
    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_5e

    .line 168
    .end local p0    # "this":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    :cond_2d
    :try_start_2d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_32} :catch_58
    .catchall {:try_start_2d .. :try_end_32} :catchall_5e

    .line 172
    .local v3, "in":Ljava/io/FileInputStream;
    nop

    .line 174
    :try_start_33
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    .line 175
    .local v4, "size":I
    new-array v5, v4, [B

    .line 176
    .local v5, "data":[B
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6, v5}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_42} :catch_4a
    .catchall {:try_start_33 .. :try_end_42} :catchall_48

    .line 177
    nop

    .line 182
    :try_start_43
    invoke-static {v3}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_5e

    .line 177
    monitor-exit p0

    return-object v5

    .line 182
    .end local v4    # "size":I
    .end local v5    # "data":[B
    :catchall_48
    move-exception v2

    goto :goto_54

    .line 178
    :catch_4a
    move-exception v4

    .line 179
    .local v4, "e":Ljava/io/IOException;
    :try_start_4b
    invoke-static {p1, v1, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_48

    .line 180
    nop

    .line 182
    :try_start_4f
    invoke-static {v3}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5e

    .line 180
    monitor-exit p0

    return-object v2

    .line 182
    .end local v4    # "e":Ljava/io/IOException;
    :goto_54
    :try_start_54
    invoke-static {v3}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 183
    throw v2

    .line 169
    .end local v3    # "in":Ljava/io/FileInputStream;
    :catch_58
    move-exception v3

    .line 170
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-static {p1, v1, v3}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5e

    .line 171
    monitor-exit p0

    return-object v2

    .line 144
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public declared-synchronized blacklist putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .registers 12
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "sessionData"    # [B

    monitor-enter p0

    .line 195
    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "host":Ljava/lang/String;
    if-eqz p2, :cond_d3

    .line 200
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_db

    .line 208
    .local v3, "existedBefore":Z
    :try_start_1a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_cd
    .catchall {:try_start_1a .. :try_end_1f} :catchall_db

    .line 213
    .local v4, "out":Ljava/io/FileOutputStream;
    nop

    .line 216
    if-nez v3, :cond_2b

    .line 217
    :try_start_22
    iget v5, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 220
    invoke-direct {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_db

    .line 223
    .end local p0    # "this":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    :cond_2b
    const/4 v5, 0x0

    .line 225
    .local v5, "writeSuccessful":Z
    :try_start_2c
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_64
    .catchall {:try_start_2c .. :try_end_2f} :catchall_62

    .line 226
    const/4 v5, 0x1

    .line 230
    const/4 v6, 0x0

    .line 232
    .local v6, "closeSuccessful":Z
    :try_start_31
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_46
    .catchall {:try_start_31 .. :try_end_34} :catchall_44

    .line 233
    const/4 v6, 0x1

    .line 237
    if-eqz v5, :cond_40

    if-nez v6, :cond_3a

    goto :goto_40

    .line 242
    :cond_3a
    :try_start_3a
    iget-object v7, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    :goto_3c
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_3f
    goto :goto_52

    .line 239
    :cond_40
    :goto_40
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_db

    goto :goto_52

    .line 237
    :catchall_44
    move-exception v7

    goto :goto_53

    .line 234
    :catch_46
    move-exception v7

    .line 235
    .local v7, "e":Ljava/io/IOException;
    :try_start_47
    invoke-static {v0, v2, v7}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    .line 237
    .end local v7    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_40

    if-nez v6, :cond_4f

    goto :goto_40

    .line 242
    :cond_4f
    :try_start_4f
    iget-object v7, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    goto :goto_3c

    .line 245
    .end local v6    # "closeSuccessful":Z
    :goto_52
    goto :goto_8a

    .line 237
    .restart local v6    # "closeSuccessful":Z
    :goto_53
    if-eqz v5, :cond_5e

    if-nez v6, :cond_58

    goto :goto_5e

    .line 242
    :cond_58
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 239
    :cond_5e
    :goto_5e
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 244
    :goto_61
    throw v7
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_db

    .line 230
    .end local v6    # "closeSuccessful":Z
    :catchall_62
    move-exception v6

    goto :goto_9b

    .line 227
    :catch_64
    move-exception v6

    .line 228
    .local v6, "e":Ljava/io/IOException;
    :try_start_65
    invoke-static {v0, v2, v6}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_62

    .line 230
    .end local v6    # "e":Ljava/io/IOException;
    const/4 v6, 0x0

    .line 232
    .local v6, "closeSuccessful":Z
    :try_start_69
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_7e
    .catchall {:try_start_69 .. :try_end_6c} :catchall_7c

    .line 233
    const/4 v6, 0x1

    .line 237
    if-eqz v5, :cond_78

    if-nez v6, :cond_72

    goto :goto_78

    .line 242
    :cond_72
    :try_start_72
    iget-object v7, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    :goto_74
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 239
    :cond_78
    :goto_78
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_db

    goto :goto_52

    .line 237
    :catchall_7c
    move-exception v7

    goto :goto_8c

    .line 234
    :catch_7e
    move-exception v7

    .line 235
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_7f
    invoke-static {v0, v2, v7}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_7c

    .line 237
    .end local v7    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_78

    if-nez v6, :cond_87

    goto :goto_78

    .line 242
    :cond_87
    :try_start_87
    iget-object v7, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;
    :try_end_89
    .catchall {:try_start_87 .. :try_end_89} :catchall_db

    goto :goto_74

    .line 246
    .end local v6    # "closeSuccessful":Z
    :goto_8a
    monitor-exit p0

    return-void

    .line 237
    .restart local v6    # "closeSuccessful":Z
    :goto_8c
    if-eqz v5, :cond_97

    if-nez v6, :cond_91

    goto :goto_97

    .line 242
    :cond_91
    :try_start_91
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 239
    :cond_97
    :goto_97
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_db

    goto :goto_61

    .line 230
    .end local v6    # "closeSuccessful":Z
    :goto_9b
    const/4 v7, 0x0

    .line 232
    .local v7, "closeSuccessful":Z
    :try_start_9c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_b1
    .catchall {:try_start_9c .. :try_end_9f} :catchall_af

    .line 233
    const/4 v7, 0x1

    .line 237
    if-eqz v5, :cond_ab

    if-nez v7, :cond_a5

    goto :goto_ab

    .line 242
    :cond_a5
    :try_start_a5
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    :goto_a7
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    goto :goto_bd

    .line 239
    :cond_ab
    :goto_ab
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_ae
    .catchall {:try_start_a5 .. :try_end_ae} :catchall_db

    goto :goto_bd

    .line 237
    :catchall_af
    move-exception v6

    goto :goto_be

    .line 234
    :catch_b1
    move-exception v8

    .line 235
    .local v8, "e":Ljava/io/IOException;
    :try_start_b2
    invoke-static {v0, v2, v8}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_af

    .line 237
    .end local v8    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_ab

    if-nez v7, :cond_ba

    goto :goto_ab

    .line 242
    :cond_ba
    :try_start_ba
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    goto :goto_a7

    .line 245
    .end local v7    # "closeSuccessful":Z
    :goto_bd
    throw v6

    .line 237
    .restart local v7    # "closeSuccessful":Z
    :goto_be
    if-eqz v5, :cond_c9

    if-nez v7, :cond_c3

    goto :goto_c9

    .line 242
    :cond_c3
    iget-object v8, p0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cc

    .line 239
    :cond_c9
    :goto_c9
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 244
    :goto_cc
    throw v6

    .line 209
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "writeSuccessful":Z
    .end local v7    # "closeSuccessful":Z
    :catch_cd
    move-exception v4

    .line 211
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0, v2, v4}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_d1
    .catchall {:try_start_ba .. :try_end_d1} :catchall_db

    .line 212
    monitor-exit p0

    return-void

    .line 197
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "existedBefore":Z
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_d3
    :try_start_d3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "sessionData == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    .end local v0    # "host":Ljava/lang/String;
    .end local p1    # "session":Ljavax/net/ssl/SSLSession;
    .end local p2    # "sessionData":[B
    :catchall_db
    move-exception p1

    monitor-exit p0
    :try_end_dd
    .catchall {:try_start_d3 .. :try_end_dd} :catchall_db

    throw p1
.end method
