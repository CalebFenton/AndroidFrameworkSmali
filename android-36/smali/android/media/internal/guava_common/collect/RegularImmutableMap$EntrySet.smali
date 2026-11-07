.class Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;
.super Landroid/media/internal/guava_common/collect/ImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient blacklist alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient blacklist keyOffset:I

.field private final transient blacklist map:Landroid/media/internal/guava_common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient blacklist size:I


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ImmutableMap;[Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/ImmutableMap<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 396
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;-><init>()V

    .line 397
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;->map:Landroid/media/internal/guava_common/collect/ImmutableMap;

    .line 398
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 399
    iput p3, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;->keyOffset:I

    .line 400
    iput p4, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;->size:I

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;)I
    .registers 1

    .line 386
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;->size:I

    return p0
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;)[Ljava/lang/Object;
    .registers 1

    .line 386
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;->alternatingKeysAndValues:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;)I
    .registers 1

    .line 386
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;->keyOffset:I

    return p0
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 452
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 453
    check-cast p1, Ljava/util/Map$Entry;

    .line 454
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 455
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 456
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;->map:Landroid/media/internal/guava_common/collect/ImmutableMap;

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method

.method blacklist copyIntoArray([Ljava/lang/Object;I)I
    .registers 3

    .line 410
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->asList()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method blacklist createAsList()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 415
    new-instance v0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet$1;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet$1;-><init>(Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;)V

    return-object v0
.end method

.method public blacklist iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->asList()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1

    .line 386
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 468
    iget p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableMap$EntrySet;->size:I

    return p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 477
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
