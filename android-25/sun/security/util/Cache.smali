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
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 74
    .local p0, "this":Lsun/security/util/Cache;, "Lsun/security/util/Cache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newHardMemoryCache(I)Lsun/security/util/Cache;
    .locals 2
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lsun/security/util/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 140
    new-instance v0, Lsun/security/util/MemoryCache;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p0}, Lsun/security/util/MemoryCache;-><init>(ZI)V

    #@6
    return-object v0
.end method

.method public static newHardMemoryCache(II)Lsun/security/util/Cache;
    .locals 2
    .param p0, "size"    # I
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lsun/security/util/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 157
    new-instance v0, Lsun/security/util/MemoryCache;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p0, p1}, Lsun/security/util/MemoryCache;-><init>(ZII)V

    #@6
    return-object v0
.end method

.method public static newNullCache()Lsun/security/util/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lsun/security/util/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 148
    sget-object v0, Lsun/security/util/NullCache;->INSTANCE:Lsun/security/util/Cache;

    #@2
    return-object v0
.end method

.method public static newSoftMemoryCache(I)Lsun/security/util/Cache;
    .locals 2
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lsun/security/util/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    new-instance v0, Lsun/security/util/MemoryCache;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1, p0}, Lsun/security/util/MemoryCache;-><init>(ZI)V

    #@6
    return-object v0
.end method

.method public static newSoftMemoryCache(II)Lsun/security/util/Cache;
    .locals 2
    .param p0, "size"    # I
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lsun/security/util/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 132
    new-instance v0, Lsun/security/util/MemoryCache;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1, p0, p1}, Lsun/security/util/MemoryCache;-><init>(ZII)V

    #@6
    return-object v0
.end method


# virtual methods
.method public abstract accept(Lsun/security/util/Cache$CacheVisitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/Cache$CacheVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)V
.end method

.method public abstract setCapacity(I)V
.end method

.method public abstract setTimeout(I)V
.end method

.method public abstract size()I
.end method
