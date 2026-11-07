.class Landroid/media/internal/guava_common/collect/Maps$KeySet;
.super Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final blacklist map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3854
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Sets$ImprovedAbstractSet;-><init>()V

    .line 3855
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 3893
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 3879
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 1

    .line 3874
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 3864
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method blacklist map()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3859
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map:Ljava/util/Map;

    return-object p0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 3884
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3885
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 3869
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
