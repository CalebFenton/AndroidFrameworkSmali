.class public final Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;
.super Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableSet$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 450
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;-><init>()V

    .line 451
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist add(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 436
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist add(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 471
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;

    return-object p0
.end method

.method public varargs blacklist add([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 486
    invoke-super {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;

    return-object p0
.end method

.method public blacklist build()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;->contents:[Ljava/lang/Object;

    .line 535
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    iget v2, p0, Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    invoke-static {v1, v2, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, p0, Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;->size:I

    const/4 v1, 0x1

    .line 537
    iput-boolean v1, p0, Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;->forceCopy:Z

    return-object v0
.end method
