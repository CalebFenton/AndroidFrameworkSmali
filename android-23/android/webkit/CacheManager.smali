.class public final Landroid/webkit/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CacheManager$CacheResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/webkit/CacheManager;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/webkit/CacheManager;->-assertionsDisabled:Z

    #@b
    .line 41
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static cacheDisabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 248
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static endCacheTransaction()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 273
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 292
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 237
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method static saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "postIdentifier"    # J
    .param p3, "cacheRet"    # Landroid/webkit/CacheManager$CacheResult;

    #@0
    .prologue
    .line 311
    :try_start_0
    iget-object v1, p3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 333
    sget-boolean v1, Landroid/webkit/CacheManager;->-assertionsDisabled:Z

    #@7
    if-nez v1, :cond_0

    #@9
    new-instance v1, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v1

    #@f
    .line 312
    :catch_0
    move-exception v0

    #@10
    .line 313
    .local v0, "e":Ljava/io/IOException;
    return-void

    #@11
    .line 309
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method public static saveCacheFile(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cacheResult"    # Landroid/webkit/CacheManager$CacheResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 305
    const-wide/16 v0, 0x0

    #@2
    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V

    #@5
    .line 304
    return-void
.end method

.method public static startCacheTransaction()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 261
    const/4 v0, 0x0

    #@1
    return v0
.end method
