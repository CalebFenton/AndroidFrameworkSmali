.class public Lcom/android/org/conscrypt/FileClientSessionCache;
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
.field public static final MAX_SIZE:I = 0xc

.field static final caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lcom/android/org/conscrypt/FileClientSessionCache$Impl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 316
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 315
    sput-object v0, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    #@7
    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static declared-synchronized reset()V
    .locals 2

    #@0
    .prologue
    const-class v1, Lcom/android/org/conscrypt/FileClientSessionCache;

    #@2
    monitor-enter v1

    #@3
    .line 340
    :try_start_0
    sget-object v0, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 339
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public static declared-synchronized usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;
    .locals 3
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-class v2, Lcom/android/org/conscrypt/FileClientSessionCache;

    #@2
    monitor-enter v2

    #@3
    .line 330
    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    #@5
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;

    #@b
    .line 331
    .local v0, "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    if-nez v0, :cond_0

    #@d
    .line 332
    new-instance v0, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;

    #@f
    .end local v0    # "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/FileClientSessionCache$Impl;-><init>(Ljava/io/File;)V

    #@12
    .line 333
    .restart local v0    # "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    sget-object v1, Lcom/android/org/conscrypt/FileClientSessionCache;->caches:Ljava/util/Map;

    #@14
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 335
    return-object v0

    #@19
    .end local v0    # "cache":Lcom/android/org/conscrypt/FileClientSessionCache$Impl;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method
