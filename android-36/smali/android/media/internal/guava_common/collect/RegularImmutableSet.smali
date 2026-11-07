.class final Landroid/media/internal/guava_common/collect/RegularImmutableSet;
.super Landroid/media/internal/guava_common/collect/ImmutableSet;
.source "RegularImmutableSet.java"


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


# static fields
.field static final blacklist EMPTY:Landroid/media/internal/guava_common/collect/RegularImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/RegularImmutableSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field final transient blacklist elements:[Ljava/lang/Object;

.field private final transient blacklist hashCode:I

.field private final transient blacklist mask:I

.field private final transient blacklist size:I

.field final transient blacklist table:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    const/4 v0, 0x0

    .line 35
    new-array v2, v0, [Ljava/lang/Object;

    sput-object v2, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 36
    new-instance v1, Landroid/media/internal/guava_common/collect/RegularImmutableSet;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    invoke-direct/range {v1 .. v6}, Landroid/media/internal/guava_common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v1, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->EMPTY:Landroid/media/internal/guava_common/collect/RegularImmutableSet;

    return-void
.end method

.method constructor blacklist <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    .line 49
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    .line 51
    iput p2, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->hashCode:I

    .line 52
    iput-object p3, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 53
    iput p4, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->mask:I

    .line 54
    iput p5, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->size:I

    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->table:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    .line 60
    array-length v2, v0

    if-nez v2, :cond_9

    goto :goto_20

    .line 63
    :cond_9
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 64
    :goto_d
    iget v3, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->mask:I

    and-int/2addr v2, v3

    .line 65
    aget-object v3, v0, v2

    if-nez v3, :cond_15

    return v1

    .line 68
    :cond_15
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_20
    :goto_20
    return v1
.end method

.method blacklist copyIntoArray([Ljava/lang/Object;I)I
    .registers 6

    .line 105
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->size:I

    add-int/2addr p2, p0

    return p2
.end method

.method blacklist createAsList()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->size:I

    invoke-static {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 121
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->hashCode:I

    return p0
.end method

.method blacklist internalArray()[Ljava/lang/Object;
    .registers 1

    .line 90
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->elements:[Ljava/lang/Object;

    return-object p0
.end method

.method blacklist internalArrayEnd()I
    .registers 1

    .line 100
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->size:I

    return p0
.end method

.method blacklist internalArrayStart()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isHashCodeFast()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

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

    .line 84
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->asList()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1

    .line 31
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 76
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->size:I

    return p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 135
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
