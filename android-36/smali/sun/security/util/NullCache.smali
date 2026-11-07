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
        "Lsun/security/util/Cache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final blacklist INSTANCE:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 206
    new-instance v0, Lsun/security/util/NullCache;

    invoke-direct {v0}, Lsun/security/util/NullCache;-><init>()V

    sput-object v0, Lsun/security/util/NullCache;->INSTANCE:Lsun/security/util/Cache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 208
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    .line 210
    return-void
.end method


# virtual methods
.method public blacklist accept(Lsun/security/util/Cache$CacheVisitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/Cache$CacheVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    .local p1, "visitor":Lsun/security/util/Cache$CacheVisitor;, "Lsun/security/util/Cache$CacheVisitor<TK;TV;>;"
    return-void
.end method

.method public blacklist clear()V
    .registers 1

    .line 218
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist pull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public blacklist remove(Ljava/lang/Object;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 230
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public blacklist setCapacity(I)V
    .registers 2
    .param p1, "size"    # I

    .line 238
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public blacklist setTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I

    .line 242
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 213
    .local p0, "this":Lsun/security/util/NullCache;, "Lsun/security/util/NullCache<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
