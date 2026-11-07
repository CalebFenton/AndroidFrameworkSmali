.class abstract Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ViewCachingAbstractMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient blacklist entrySet:Ljava/util/Set;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist values:Ljava/util/Collection;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 3656
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist createEntrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method blacklist createValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 3694
    new-instance v0, Landroid/media/internal/guava_common/collect/Maps$Values;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3669
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_a

    .line 3670
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap;->entrySet:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 3689
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_a

    .line 3690
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/Maps$ViewCachingAbstractMap;->values:Ljava/util/Collection;

    :cond_a
    return-object v0
.end method
