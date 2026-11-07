.class public abstract Lsun/security/util/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/Cache$CacheVisitor;,
        Lsun/security/util/Cache$EqualByteArray;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor greylist <init>()V
    .registers 1

    .line 74
    .local p0, "this":Lsun/security/util/Cache;, "Lsun/security/util/Cache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static greylist-max-r newHardMemoryCache(I)Lsun/security/util/Cache;
    .registers 3
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lsun/security/util/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 145
    new-instance v0, Lsun/security/util/MemoryCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lsun/security/util/MemoryCache;-><init>(ZI)V

    return-object v0
.end method

.method public static blacklist newHardMemoryCache(II)Lsun/security/util/Cache;
    .registers 4
    .param p0, "size"    # I
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lsun/security/util/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Lsun/security/util/MemoryCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lsun/security/util/MemoryCache;-><init>(ZII)V

    return-object v0
.end method

.method public static blacklist newNullCache()Lsun/security/util/Cache;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lsun/security/util/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 153
    sget-object v0, Lsun/security/util/NullCache;->INSTANCE:Lsun/security/util/Cache;

    return-object v0
.end method

.method public static blacklist newSoftMemoryCache(I)Lsun/security/util/Cache;
    .registers 3
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lsun/security/util/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lsun/security/util/MemoryCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lsun/security/util/MemoryCache;-><init>(ZI)V

    return-object v0
.end method

.method public static blacklist newSoftMemoryCache(II)Lsun/security/util/Cache;
    .registers 4
    .param p0, "size"    # I
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lsun/security/util/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Lsun/security/util/MemoryCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lsun/security/util/MemoryCache;-><init>(ZII)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist accept(Lsun/security/util/Cache$CacheVisitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/Cache$CacheVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract greylist clear()V
.end method

.method public abstract greylist get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract blacklist pull(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract greylist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public abstract blacklist remove(Ljava/lang/Object;)V
.end method

.method public abstract blacklist setCapacity(I)V
.end method

.method public abstract blacklist setTimeout(I)V
.end method

.method public abstract blacklist size()I
.end method
