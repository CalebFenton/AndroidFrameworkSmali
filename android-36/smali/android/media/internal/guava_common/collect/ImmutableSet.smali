.class public abstract Landroid/media/internal/guava_common/collect/ImmutableSet;
.super Landroid/media/internal/guava_common/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/ImmutableSet$Builder;,
        Landroid/media/internal/guava_common/collect/ImmutableSet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0xdecafL


# instance fields
.field private transient blacklist asList:Landroid/media/internal/guava_common/collect/ImmutableList;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 341
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method static blacklist chooseTableSize(I)I
    .registers 6

    const/4 v0, 0x2

    .line 236
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    const/4 v1, 0x1

    if-ge p0, v0, :cond_22

    add-int/lit8 v0, p0, -0x1

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/2addr v0, v1

    :goto_12
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_21

    shl-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_21
    return v0

    :cond_22
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 248
    :goto_28
    const-string p0, "collection too large"

    invoke-static {v1, p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return v0
.end method

.method private static varargs blacklist construct(I[Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_76

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6c

    .line 176
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v2

    .line 177
    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    move v3, v0

    move v5, v3

    move v8, v5

    :goto_11
    if-ge v3, p0, :cond_3c

    .line 182
    aget-object v4, p1, v3

    invoke-static {v4, v3}, Landroid/media/internal/guava_common/collect/ObjectArrays;->checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 183
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 184
    invoke-static {v9}, Landroid/media/internal/guava_common/collect/Hashing;->smear(I)I

    move-result v10

    :goto_21
    and-int v11, v10, v7

    .line 186
    aget-object v12, v6, v11

    if-nez v12, :cond_30

    add-int/lit8 v10, v8, 0x1

    .line 189
    aput-object v4, p1, v8

    .line 190
    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_36

    .line 193
    :cond_30
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_39

    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_39
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_3c
    const/4 v3, 0x0

    .line 198
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_4d

    .line 203
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    new-instance p1, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;

    invoke-direct {p1, p0}, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 205
    :cond_4d
    invoke-static {v8}, Landroid/media/internal/guava_common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_5a

    .line 207
    invoke-static {v8, p1}, Landroid/media/internal/guava_common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 211
    :cond_5a
    array-length p0, p1

    invoke-static {v8, p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->shouldTrim(II)Z

    move-result p0

    if-eqz p0, :cond_65

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_65
    move-object v4, p1

    .line 212
    new-instance v3, Landroid/media/internal/guava_common/collect/RegularImmutableSet;

    invoke-direct/range {v3 .. v8}, Landroid/media/internal/guava_common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object v3

    .line 171
    :cond_6c
    aget-object p0, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 167
    :cond_76
    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableSet;->of()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist copyOf([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 331
    array-length v0, p0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    .line 337
    array-length v0, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 v0, 0x0

    .line 335
    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 333
    :cond_1a
    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableSet;->of()Landroid/media/internal/guava_common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist of()Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 78
    sget-object v0, Landroid/media/internal/guava_common/collect/RegularImmutableSet;->EMPTY:Landroid/media/internal/guava_common/collect/RegularImmutableSet;

    return-object v0
.end method

.method public static blacklist of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 414
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist shouldTrim(II)Z
    .registers 3

    .line 0
    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    if-ge p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist asList()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSet;->asList:Landroid/media/internal/guava_common/collect/ImmutableList;

    if-nez v0, :cond_a

    .line 377
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->createAsList()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSet;->asList:Landroid/media/internal/guava_common/collect/ImmutableList;

    :cond_a
    return-object v0
.end method

.method blacklist createAsList()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 353
    :cond_4
    instance-of v0, p1, Landroid/media/internal/guava_common/collect/ImmutableSet;

    if-eqz v0, :cond_23

    .line 354
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Landroid/media/internal/guava_common/collect/ImmutableSet;

    .line 355
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 356
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    const/4 p0, 0x0

    return p0

    .line 359
    :cond_23
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 364
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method blacklist isHashCodeFast()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract blacklist iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1

    .line 51
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 409
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
