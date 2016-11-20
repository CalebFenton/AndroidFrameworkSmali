.class Lsun/security/util/NullCache;
.super Lsun/security/util/Cache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lsun/security/util/Cache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 205
    new-instance v0, Lsun/security/util/NullCache;

    #@2
    invoke-direct {v0}, Lsun/security/util/NullCache;-><init>()V

    #@5
    sput-object v0, Lsun/security/util/NullCache;->INSTANCE:Lsun/security/util/Cache;

    #@7
    .line 203
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 207
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(Lsun/security/util/Cache$CacheVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/Cache$CacheVisitor",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 239
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    .local p1, "visitor":Lsun/security/util/Cache$CacheVisitor;, "Lsun/security/util/Cache$CacheVisitor<TK;TV;>;"
    return-void
.end method

.method public clear()V
    .locals 0

    #@0
    .prologue
    .line 215
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 224
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 219
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 227
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public setCapacity(I)V
    .locals 0
    .param p1, "size"    # I

    #@0
    .prologue
    .line 231
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 235
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 212
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method
