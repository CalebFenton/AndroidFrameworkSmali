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
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 42
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist cacheDisabled()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist endCacheTransaction()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist getCacheFileBaseDir()Ljava/io/File;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "postIdentifier"    # J
    .param p3, "cacheRet"    # Landroid/webkit/CacheManager$CacheResult;

    .line 357
    :try_start_0
    iget-object v0, p3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_8

    .line 360
    nop

    .line 379
    nop

    .line 380
    return-void

    .line 358
    :catch_8
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/IOException;
    return-void
.end method

.method public static greylist saveCacheFile(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cacheResult"    # Landroid/webkit/CacheManager$CacheResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V

    .line 351
    return-void
.end method

.method public static greylist startCacheTransaction()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    const/4 v0, 0x0

    return v0
.end method
