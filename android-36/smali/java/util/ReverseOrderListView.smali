.class Ljava/util/ReverseOrderListView;
.super Ljava/lang/Object;
.source "ReverseOrderListView.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ReverseOrderListView$Rand;,
        Ljava/util/ReverseOrderListView$DescendingIterator;,
        Ljava/util/ReverseOrderListView$DescendingListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final blacklist base:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field final blacklist modifiable:Z


# direct methods
.method private constructor blacklist <init>(Ljava/util/List;Z)V
    .registers 3
    .param p2, "modifiable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    .line 63
    iput-boolean p2, p0, Ljava/util/ReverseOrderListView;->modifiable:Z

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;ZLjava/util/ReverseOrderListView-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/ReverseOrderListView;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method static blacklist checkClosedRange(II)V
    .registers 5
    .param p0, "index"    # I
    .param p1, "size"    # I

    .line 400
    if-ltz p0, :cond_5

    if-gt p0, p1, :cond_5

    .line 403
    return-void

    .line 401
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist of(Ljava/util/List;Z)Ljava/util/List;
    .registers 4
    .param p1, "modifiable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Ljava/util/ReverseOrderListView;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Ljava/util/ReverseOrderListView;

    .line 47
    .local v0, "rolv":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TT;>;"
    iget-object v1, v0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    return-object v1

    .line 48
    .end local v0    # "rolv":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TT;>;"
    :cond_a
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_14

    .line 49
    new-instance v0, Ljava/util/ReverseOrderListView$Rand;

    invoke-direct {v0, p0, p1}, Ljava/util/ReverseOrderListView$Rand;-><init>(Ljava/util/List;Z)V

    return-object v0

    .line 51
    :cond_14
    new-instance v0, Ljava/util/ReverseOrderListView;

    invoke-direct {v0, p0, p1}, Ljava/util/ReverseOrderListView;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 318
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 319
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 320
    .local v0, "size":I
    invoke-static {p1, v0}, Ljava/util/ReverseOrderListView;->checkClosedRange(II)V

    .line 321
    iget-object v1, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    sub-int v2, v0, p1

    invoke-interface {v1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 322
    return-void
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 160
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 161
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 325
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 326
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 327
    .local v0, "size":I
    invoke-static {p1, v0}, Ljava/util/ReverseOrderListView;->checkClosedRange(II)V

    .line 329
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 330
    .local v1, "adds":[Ljava/lang/Object;, "[TE;"
    array-length v2, v1

    if-nez v2, :cond_15

    .line 331
    const/4 v2, 0x0

    return v2

    .line 333
    :cond_15
    iget-object v2, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    sub-int v3, v0, p1

    invoke-static {v1}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 334
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 166
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 169
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "adds":[Ljava/lang/Object;, "[TE;"
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 171
    return v2

    .line 173
    :cond_c
    iget-object v1, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 174
    const/4 v1, 0x1

    return v1
.end method

.method blacklist checkModifiable()V
    .registers 2

    .line 76
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    iget-boolean v0, p0, Ljava/util/ReverseOrderListView;->modifiable:Z

    if-eqz v0, :cond_5

    .line 79
    return-void

    .line 77
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 179
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 180
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 184
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 188
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 193
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 194
    return v0

    .line 195
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 196
    return v2

    .line 198
    :cond_a
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 199
    .local v1, "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 200
    .local v3, "e2":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 201
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 202
    .local v4, "o1":Ljava/lang/Object;, "TE;"
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 203
    .local v5, "o2":Ljava/lang/Object;
    if-nez v4, :cond_2e

    if-nez v5, :cond_34

    goto :goto_35

    :cond_2e
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 204
    :cond_34
    return v2

    .line 205
    .end local v4    # "o1":Ljava/lang/Object;, "TE;"
    .end local v5    # "o2":Ljava/lang/Object;
    :cond_35
    :goto_35
    goto :goto_15

    .line 206
    :cond_36
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_44

    :cond_43
    move v0, v2

    :goto_44
    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 146
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_4

    .line 147
    :cond_12
    return-void
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 339
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 340
    .local v0, "size":I
    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 341
    iget-object v1, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    sub-int v2, v0, p1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 211
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    const/4 v0, 0x1

    .line 212
    .local v0, "hashCode":I
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 213
    .local v2, "e":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_15

    const/4 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_19
    add-int v0, v3, v4

    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_5

    .line 214
    :cond_1c
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 345
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 346
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_13

    :cond_a
    iget-object v1, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_13
    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 218
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    new-instance v0, Ljava/util/ReverseOrderListView$DescendingIterator;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderListView$DescendingIterator;-><init>(Ljava/util/ReverseOrderListView;)V

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 350
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 351
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_13

    :cond_a
    iget-object v1, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_13
    return v1
.end method

.method public whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 355
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    new-instance v0, Ljava/util/ReverseOrderListView$DescendingListIterator;

    iget-object v1, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/ReverseOrderListView$DescendingListIterator;-><init>(Ljava/util/ReverseOrderListView;II)V

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 359
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 360
    .local v0, "size":I
    invoke-static {p1, v0}, Ljava/util/ReverseOrderListView;->checkClosedRange(II)V

    .line 361
    new-instance v1, Ljava/util/ReverseOrderListView$DescendingListIterator;

    invoke-direct {v1, p0, v0, p1}, Ljava/util/ReverseOrderListView$DescendingListIterator;-><init>(Ljava/util/ReverseOrderListView;II)V

    return-object v1
.end method

.method public whitelist test-api parallelStream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 222
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 365
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 366
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 367
    .local v0, "size":I
    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 368
    iget-object v1, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    sub-int v2, v0, p1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 227
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 228
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 229
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v1, 0x1

    if-nez p1, :cond_1a

    .line 230
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 233
    return v1

    .line 237
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 240
    return v1

    .line 244
    :cond_2e
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 249
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 250
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 253
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 256
    const/4 v0, 0x1

    goto :goto_b

    .line 259
    :cond_20
    return v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 372
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 373
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 377
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 378
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 379
    return-void
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 264
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 265
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 268
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 271
    const/4 v0, 0x1

    goto :goto_b

    .line 274
    :cond_20
    return v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 387
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 388
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 389
    .local v0, "size":I
    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 390
    iget-object v1, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    sub-int v2, v0, p1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 278
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 382
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 383
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 384
    return-void
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

    .line 154
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 282
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 394
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 395
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 396
    new-instance v1, Ljava/util/ReverseOrderListView;

    iget-object v2, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    sub-int v3, v0, p2

    sub-int v4, v0, p1

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/ReverseOrderListView;->modifiable:Z

    invoke-direct {v1, v2, v3}, Ljava/util/ReverseOrderListView;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 286
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 295
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 291
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-static {v0, p1}, Ljdk/internal/util/ArraysSupport;->toArrayReversed(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 300
    .local p0, "this":Ljava/util/ReverseOrderListView;, "Ljava/util/ReverseOrderListView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 301
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 302
    const-string v1, "[]"

    return-object v1

    .line 304
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 308
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-ne v2, p0, :cond_20

    const-string v3, "(this Collection)"

    goto :goto_21

    :cond_20
    move-object v3, v2

    :goto_21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_35

    .line 310
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 311
    :cond_35
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_17
.end method
