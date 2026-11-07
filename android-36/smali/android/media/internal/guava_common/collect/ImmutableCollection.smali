.class public abstract Landroid/media/internal/guava_common/collect/ImmutableCollection;
.super Ljava/util/AbstractCollection;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use ImmutableList.of or another implementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/ImmutableCollection$ArrayBasedBuilder;,
        Landroid/media/internal/guava_common/collect/ImmutableCollection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_ARRAY:[Ljava/lang/Object;

.field private static final whitelist serialVersionUID:J = 0xdecafL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 201
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/media/internal/guava_common/collect/ImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 393
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api clear()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public abstract whitelist test-api contains(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
.end method

.method blacklist copyIntoArray([Ljava/lang/Object;I)I
    .registers 5

    .line 378
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    .line 379
    aput-object v0, p1, p2

    move p2, v1

    goto :goto_4

    :cond_14
    return p2
.end method

.method blacklist internalArray()[Ljava/lang/Object;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist internalArrayEnd()I
    .registers 1

    .line 261
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method blacklist internalArrayStart()I
    .registers 1

    .line 253
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
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

    .line 169
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    const/16 v0, 0x510

    .line 198
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 206
    sget-object v0, Landroid/media/internal/guava_common/collect/ImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 225
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 228
    array-length v1, p1

    if-ge v1, v0, :cond_22

    .line 229
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->internalArray()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 231
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->internalArrayStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->internalArrayEnd()I

    move-result p0

    invoke-static {v1, v0, p0, p1}, Landroid/media/internal/guava_common/collect/Platform;->copy([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 233
    :cond_1d
    invoke-static {p1, v0}, Landroid/media/internal/guava_common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_28

    .line 234
    :cond_22
    array-length v1, p1

    if-le v1, v0, :cond_28

    const/4 v1, 0x0

    .line 235
    aput-object v1, p1, v0

    :cond_28
    :goto_28
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    return-object p1
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 388
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableList$SerializedForm;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableList$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
