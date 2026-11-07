.class public final Lcom/android/org/conscrypt/FileClientSessionCache;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/FileClientSessionCache$Impl;,
        Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
    }
.end annotation


# static fields
.field public static final blacklist MAX_SIZE:I = 0xc

.field static final blacklist caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lcom/android/org/conscrypt/FileClientSessionCache$Impl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetlogger()Ljava/util/logging/Logger;
    .registers 1

    sget-object v0, Lcom/android/org/conscrypt/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/android/org/conscrypt/FileClientSessionCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/FileClientSessionCache;->logger:Ljava/util/logging/Logger;

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized blacklist reset()V
    .registers 2

    const-class v0, Lcom/android/org/conscrypt/FileClientSessionCache;

    monitor-enter v0

    .line 350
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 351
    monitor-exit v0

    return-void

    .line 349
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static declared-synchronized greylist test-api usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;
    .registers 4
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/android/org/conscrypt/FileClientSessionCache;

    monitor-enter v0

    .line 340
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;

    .line 341
    .local v1, "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    if-nez v1, :cond_18

    .line 342
    new-instance v2, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 343
    sget-object v2, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 345
    :cond_18
    monitor-exit v0

    return-object v1

    .line 339
    .end local v1    # "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    .end local p0    # "directory":Ljava/io/File;
    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method
