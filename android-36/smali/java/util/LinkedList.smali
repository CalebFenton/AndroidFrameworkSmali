.class public Ljava/util/LinkedList;
.super Ljava/util/AbstractSequentialList;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedList$Node;,
        Ljava/util/LinkedList$ListItr;,
        Ljava/util/LinkedList$DescendingIterator;,
        Ljava/util/LinkedList$LLSpliterator;,
        Ljava/util/LinkedList$ReverseOrderLinkedListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/Deque<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field transient greylist first:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient greylist-max-o last:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient greylist size:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 117
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    .line 118
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 130
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 131
    return-void
.end method

.method private greylist-max-o checkElementIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .line 565
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->isElementIndex(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 567
    return-void

    .line 566
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkPositionIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .line 570
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->isPositionIndex(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 572
    return-void

    .line 571
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/LinkedList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isElementIndex(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 544
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    if-ltz p1, :cond_8

    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o isPositionIndex(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 552
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    if-ltz p1, :cond_8

    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o linkFirst(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 138
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    new-instance v1, Ljava/util/LinkedList$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v0}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    .line 139
    .local v1, "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 140
    if-nez v0, :cond_f

    .line 141
    iput-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    goto :goto_11

    .line 143
    :cond_f
    iput-object v1, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 144
    :goto_11
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 145
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 146
    return-void
.end method

.method private greylist-max-o outOfBoundsMsg(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 561
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/LinkedList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1156
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1159
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1162
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 1163
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    .line 1162
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1164
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method private greylist-max-o superClone()Ljava/util/LinkedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation

    .line 1019
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1020
    :catch_7
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList$Node<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 184
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v0, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 185
    .local v0, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 186
    .local v1, "next":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    const/4 v2, 0x0

    iput-object v2, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 187
    iput-object v2, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 188
    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 189
    if-nez v1, :cond_10

    .line 190
    iput-object v2, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    goto :goto_12

    .line 192
    :cond_10
    iput-object v2, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 193
    :goto_12
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 194
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 195
    return-object v0
.end method

.method private greylist-max-o unlinkLast(Ljava/util/LinkedList$Node;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList$Node<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 203
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v0, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 204
    .local v0, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 205
    .local v1, "prev":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    const/4 v2, 0x0

    iput-object v2, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 206
    iput-object v2, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 207
    iput-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .line 208
    if-nez v1, :cond_10

    .line 209
    iput-object v2, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    goto :goto_12

    .line 211
    :cond_10
    iput-object v2, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 212
    :goto_12
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 213
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 214
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1137
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1140
    iget v0, p0, Ljava/util/LinkedList;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1143
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .local v0, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_a
    if-eqz v0, :cond_14

    .line 1144
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1143
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_a

    .line 1145
    .end local v0    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_14
    return-void
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 518
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkPositionIndex(I)V

    .line 520
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-ne p1, v0, :cond_b

    .line 521
    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    goto :goto_12

    .line 523
    :cond_b
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/LinkedList;->linkBefore(Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    .line 524
    :goto_12
    return-void
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 349
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 13
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 417
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkPositionIndex(I)V

    .line 419
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 420
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 421
    .local v1, "numNew":I
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 422
    return v2

    .line 425
    :cond_c
    iget v3, p0, Ljava/util/LinkedList;->size:I

    if-ne p1, v3, :cond_14

    .line 426
    const/4 v3, 0x0

    .line 427
    .local v3, "succ":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v4, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .local v4, "pred":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    goto :goto_1a

    .line 429
    .end local v3    # "succ":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .end local v4    # "pred":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_14
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v3

    .line 430
    .restart local v3    # "succ":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v4, v3, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 433
    .restart local v4    # "pred":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_1a
    array-length v5, v0

    :goto_1b
    if-ge v2, v5, :cond_31

    aget-object v6, v0, v2

    .line 434
    .local v6, "o":Ljava/lang/Object;
    move-object v7, v6

    .line 435
    .local v7, "e":Ljava/lang/Object;, "TE;"
    new-instance v8, Ljava/util/LinkedList$Node;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v7, v9}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    .line 436
    .local v8, "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v4, :cond_2b

    .line 437
    iput-object v8, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    goto :goto_2d

    .line 439
    :cond_2b
    iput-object v8, v4, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 440
    :goto_2d
    move-object v4, v8

    .line 433
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "e":Ljava/lang/Object;, "TE;"
    .end local v8    # "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 443
    :cond_31
    if-nez v3, :cond_36

    .line 444
    iput-object v4, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    goto :goto_3a

    .line 446
    :cond_36
    iput-object v3, v4, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 447
    iput-object v4, v3, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 450
    :goto_3a
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 451
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 452
    return v5
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 398
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 304
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->linkFirst(Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 315
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 4

    .line 464
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .local v0, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 465
    iget-object v2, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 466
    .local v2, "next":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iput-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 467
    iput-object v1, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 468
    iput-object v1, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 469
    move-object v0, v2

    .line 470
    .end local v2    # "next":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    goto :goto_2

    .line 471
    .end local v0    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_f
    iput-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    .line 473
    iget v0, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList;->modCount:I

    .line 474
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 1032
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->superClone()Ljava/util/LinkedList;

    move-result-object v0

    .line 1035
    .local v0, "clone":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    iput-object v1, v0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 1036
    const/4 v1, 0x0

    iput v1, v0, Ljava/util/LinkedList;->size:I

    .line 1037
    iput v1, v0, Ljava/util/LinkedList;->modCount:I

    .line 1040
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_10
    if-eqz v1, :cond_1a

    .line 1041
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_10

    .line 1043
    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_1a
    return-object v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 328
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 997
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedList$DescendingIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList-IA;)V

    return-object v0
.end method

.method public whitelist test-api element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 674
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 487
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkElementIndex(I)V

    .line 488
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v0

    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 253
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 254
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-eqz v0, :cond_7

    .line 256
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v1

    .line 255
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 266
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .line 267
    .local v0, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-eqz v0, :cond_7

    .line 269
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v1

    .line 268
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 607
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v0, 0x0

    .line 608
    .local v0, "index":I
    if-nez p1, :cond_12

    .line 609
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_5
    if-eqz v1, :cond_11

    .line 610
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    if-nez v2, :cond_c

    .line 611
    return v0

    .line 612
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 609
    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_5

    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_11
    goto :goto_24

    .line 615
    :cond_12
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .restart local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_14
    if-eqz v1, :cond_24

    .line 616
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 617
    return v0

    .line 618
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    .line 615
    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_14

    .line 621
    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_24
    :goto_24
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 636
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .line 637
    .local v0, "index":I
    if-nez p1, :cond_13

    .line 638
    iget-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_6
    if-eqz v1, :cond_12

    .line 639
    add-int/lit8 v0, v0, -0x1

    .line 640
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    if-nez v2, :cond_f

    .line 641
    return v0

    .line 638
    :cond_f
    iget-object v1, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_6

    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_12
    goto :goto_25

    .line 644
    :cond_13
    iget-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .restart local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_15
    if-eqz v1, :cond_25

    .line 645
    add-int/lit8 v0, v0, -0x1

    .line 646
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 647
    return v0

    .line 644
    :cond_22
    iget-object v1, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_15

    .line 650
    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_25
    :goto_25
    const/4 v1, -0x1

    return v1
.end method

.method greylist-max-o linkBefore(Ljava/lang/Object;Ljava/util/LinkedList$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/LinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    .local p2, "succ":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v0, p2, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 169
    .local v0, "pred":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    new-instance v1, Ljava/util/LinkedList$Node;

    invoke-direct {v1, v0, p1, p2}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    .line 170
    .local v1, "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iput-object v1, p2, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 171
    if-nez v0, :cond_e

    .line 172
    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    goto :goto_10

    .line 174
    :cond_e
    iput-object v1, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 175
    :goto_10
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 176
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 177
    return-void
.end method

.method greylist-max-o linkLast(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .line 153
    .local v0, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    new-instance v1, Ljava/util/LinkedList$Node;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    .line 154
    .local v1, "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iput-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .line 155
    if-nez v0, :cond_f

    .line 156
    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    goto :goto_11

    .line 158
    :cond_f
    iput-object v1, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 159
    :goto_11
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 160
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 161
    return-void
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 878
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkPositionIndex(I)V

    .line 879
    new-instance v0, Ljava/util/LinkedList$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/LinkedList$ListItr;-><init>(Ljava/util/LinkedList;I)V

    return-object v0
.end method

.method greylist-max-o node(I)Ljava/util/LinkedList$Node;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 580
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    shr-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_11

    .line 581
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 582
    .local v0, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, p1, :cond_10

    .line 583
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 584
    .end local v1    # "i":I
    :cond_10
    return-object v0

    .line 586
    .end local v0    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_11
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .line 587
    .restart local v0    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget v1, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_17
    if-le v1, p1, :cond_1e

    .line 588
    iget-object v0, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 587
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 589
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 707
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 719
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 720
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 731
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 732
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 662
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 663
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    :goto_8
    return-object v1
.end method

.method public whitelist test-api peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 744
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 745
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    :goto_8
    return-object v1
.end method

.method public whitelist test-api peekLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 757
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .line 758
    .local v0, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    :goto_8
    return-object v1
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 684
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 685
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v1

    :goto_a
    return-object v1
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 770
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 771
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v1

    :goto_a
    return-object v1
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 783
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .line 784
    .local v0, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkLast(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v1

    :goto_a
    return-object v1
.end method

.method public whitelist test-api pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 812
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api push(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 797
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 798
    return-void
.end method

.method public whitelist test-api remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 696
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 536
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkElementIndex(I)V

    .line 537
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 367
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v0, 0x1

    if-nez p1, :cond_13

    .line 368
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_5
    if-eqz v1, :cond_12

    .line 369
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    if-nez v2, :cond_f

    .line 370
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    .line 371
    return v0

    .line 368
    :cond_f
    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_5

    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_12
    goto :goto_26

    .line 375
    :cond_13
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .restart local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_15
    if-eqz v1, :cond_26

    .line 376
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 377
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    .line 378
    return v0

    .line 375
    :cond_23
    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    goto :goto_15

    .line 382
    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 279
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .line 280
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-eqz v0, :cond_9

    .line 282
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 281
    :cond_9
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 825
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 292
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .line 293
    .local v0, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-eqz v0, :cond_9

    .line 295
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkLast(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 294
    :cond_9
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 838
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v0, 0x1

    if-nez p1, :cond_13

    .line 839
    iget-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_5
    if-eqz v1, :cond_12

    .line 840
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    if-nez v2, :cond_f

    .line 841
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    .line 842
    return v0

    .line 839
    :cond_f
    iget-object v1, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_5

    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_12
    goto :goto_26

    .line 846
    :cond_13
    iget-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    .restart local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_15
    if-eqz v1, :cond_26

    .line 847
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 848
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    .line 849
    return v0

    .line 846
    :cond_23
    iget-object v1, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_15

    .line 853
    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/Deque;
    .registers 2

    .line 90
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->reversed()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/LinkedList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation

    .line 1286
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$ReverseOrderLinkedListView;

    invoke-super {p0}, Ljava/util/AbstractSequentialList;->reversed()Ljava/util/List;

    move-result-object v1

    invoke-super {p0}, Ljava/util/Deque;->reversed()Ljava/util/Deque;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/LinkedList$ReverseOrderLinkedListView;-><init>(Ljava/util/LinkedList;Ljava/util/List;Ljava/util/Deque;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/List;
    .registers 2

    .line 90
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->reversed()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 90
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->reversed()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 501
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkElementIndex(I)V

    .line 502
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v0

    .line 503
    .local v0, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 504
    .local v1, "oldVal":Ljava/lang/Object;, "TE;"
    iput-object p2, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 505
    return-object v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 337
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1184
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$LLSpliterator;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/LinkedList$LLSpliterator;-><init>(Ljava/util/LinkedList;II)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 6

    .line 1061
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 1062
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1063
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .local v2, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_7
    if-eqz v2, :cond_13

    .line 1064
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    iget-object v4, v2, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    aput-object v4, v0, v1

    .line 1063
    iget-object v2, v2, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    move v1, v3

    goto :goto_7

    .line 1065
    .end local v2    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1108
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Ljava/util/LinkedList;->size:I

    if-ge v0, v1, :cond_17

    .line 1109
    nop

    .line 1110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Ljava/util/LinkedList;->size:I

    .line 1109
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [Ljava/lang/Object;

    .line 1111
    :cond_17
    const/4 v0, 0x0

    .line 1112
    .local v0, "i":I
    move-object v1, p1

    .line 1113
    .local v1, "result":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    .local v2, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_1b
    if-eqz v2, :cond_27

    .line 1114
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    iget-object v4, v2, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    aput-object v4, v1, v0

    .line 1113
    iget-object v2, v2, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    move v0, v3

    goto :goto_1b

    .line 1116
    .end local v2    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_27
    array-length v2, p1

    iget v3, p0, Ljava/util/LinkedList;->size:I

    if-le v2, v3, :cond_31

    .line 1117
    iget v2, p0, Ljava/util/LinkedList;->size:I

    const/4 v3, 0x0

    aput-object v3, p1, v2

    .line 1119
    :cond_31
    return-object p1
.end method

.method greylist-max-o unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList$Node<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 222
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v0, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 223
    .local v0, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 224
    .local v1, "next":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v2, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 226
    .local v2, "prev":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_c

    .line 227
    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    goto :goto_10

    .line 229
    :cond_c
    iput-object v1, v2, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 230
    iput-object v3, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 233
    :goto_10
    if-nez v1, :cond_15

    .line 234
    iput-object v2, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    goto :goto_19

    .line 236
    :cond_15
    iput-object v2, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    .line 237
    iput-object v3, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 240
    :goto_19
    iput-object v3, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 241
    iget v3, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/LinkedList;->size:I

    .line 242
    iget v3, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/LinkedList;->modCount:I

    .line 243
    return-object v0
.end method
