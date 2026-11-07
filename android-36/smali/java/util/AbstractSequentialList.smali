.class public abstract Ljava/util/AbstractSequentialList;
.super Ljava/util/AbstractList;
.source "AbstractSequentialList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 76
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_7} :catch_9

    .line 151
    nop

    .line 152
    return-void

    .line 149
    :catch_9
    move-exception v0

    .line 150
    .local v0, "exc":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 216
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 217
    .local v0, "modified":Z
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 218
    .local v1, "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 219
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_16} :catch_19

    .line 220
    const/4 v0, 0x1

    .line 221
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_9

    .line 222
    :cond_18
    return v0

    .line 223
    .end local v0    # "modified":Z
    .end local v1    # "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    :catch_19
    move-exception v0

    .line 224
    .local v0, "exc":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 90
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 91
    :catch_9
    move-exception v0

    .line 92
    .local v0, "exc":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 240
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractSequentialList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 173
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 174
    .local v0, "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 175
    .local v1, "outCast":Ljava/lang/Object;, "TE;"
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_b} :catch_c

    .line 176
    return-object v1

    .line 177
    .end local v0    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .end local v1    # "outCast":Ljava/lang/Object;, "TE;"
    :catch_c
    move-exception v0

    .line 178
    .local v0, "exc":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 117
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 118
    .local v0, "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 119
    .local v1, "oldVal":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_b} :catch_c

    .line 120
    return-object v1

    .line 121
    .end local v0    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .end local v1    # "oldVal":Ljava/lang/Object;, "TE;"
    :catch_c
    move-exception v0

    .line 122
    .local v0, "exc":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
