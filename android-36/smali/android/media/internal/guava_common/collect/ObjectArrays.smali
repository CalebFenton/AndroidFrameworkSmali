.class public final Landroid/media/internal/guava_common/collect/ObjectArrays;
.super Ljava/lang/Object;
.source "ObjectArrays.java"


# direct methods
.method static blacklist checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eqz p0, :cond_3

    return-object p0

    .line 234
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static varargs blacklist checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2

    .line 217
    array-length v0, p0

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;

    return-object p0
.end method

.method static blacklist checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    .line 224
    aget-object v1, p0, v0

    invoke-static {v1, v0}, Landroid/media/internal/guava_common/collect/ObjectArrays;->checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-object p0
.end method

.method private static blacklist fillArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 202
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 203
    aput-object v1, p1, v0

    move v0, v2

    goto :goto_5

    :cond_15
    return-object p1
.end method

.method public static blacklist newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 63
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Platform;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static blacklist toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 182
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/ObjectArrays;->fillArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static blacklist toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "*>;[TT;)[TT;"
        }
    .end annotation

    .line 133
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 134
    array-length v1, p1

    if-ge v1, v0, :cond_b

    .line 135
    invoke-static {p1, v0}, Landroid/media/internal/guava_common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 137
    :cond_b
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/ObjectArrays;->fillArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    array-length p0, p1

    if-le p0, v0, :cond_14

    const/4 p0, 0x0

    .line 140
    aput-object p0, p1, v0

    :cond_14
    return-object p1
.end method

.method static blacklist toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "II[TT;)[TT;"
        }
    .end annotation

    add-int v0, p1, p2

    .line 158
    array-length v1, p0

    invoke-static {p1, v0, v1}, Landroid/media/internal/guava_common/base/Preconditions;->checkPositionIndexes(III)V

    .line 159
    array-length v0, p3

    if-ge v0, p2, :cond_e

    .line 160
    invoke-static {p3, p2}, Landroid/media/internal/guava_common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    goto :goto_14

    .line 161
    :cond_e
    array-length v0, p3

    if-le v0, p2, :cond_14

    const/4 v0, 0x0

    .line 163
    aput-object v0, p3, p2

    :cond_14
    :goto_14
    const/4 v0, 0x0

    .line 165
    invoke-static {p0, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3
.end method
