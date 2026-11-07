.class final Landroid/media/internal/guava_common/collect/SingletonImmutableSet;
.super Landroid/media/internal/guava_common/collect/ImmutableSet;
.source "SingletonImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient blacklist element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;-><init>()V

    .line 42
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist asList()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 62
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 52
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method blacklist copyIntoArray([Ljava/lang/Object;I)I
    .registers 3

    .line 72
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object p0, p1, p2

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 78
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1

    .line 32
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 92
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
