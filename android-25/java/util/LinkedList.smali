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
        Ljava/util/LinkedList$DescendingIterator;,
        Ljava/util/LinkedList$LLSpliterator;,
        Ljava/util/LinkedList$ListItr;,
        Ljava/util/LinkedList$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field transient first:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient last:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 106
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    #@3
    .line 87
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/LinkedList;->size:I

    #@6
    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 118
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    #@3
    .line 119
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    #@6
    .line 117
    return-void
.end method

.method private checkElementIndex(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 554
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->isElementIndex(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 555
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 553
    :cond_0
    return-void
.end method

.method private checkPositionIndex(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 559
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->isPositionIndex(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 560
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 558
    :cond_0
    return-void
.end method

.method private isElementIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 533
    if-ltz p1, :cond_0

    #@3
    iget v1, p0, Ljava/util/LinkedList;->size:I

    #@5
    if-ge p1, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private isPositionIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 541
    if-ltz p1, :cond_0

    #@3
    iget v1, p0, Ljava/util/LinkedList;->size:I

    #@5
    if-gt p1, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private linkFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    #@1
    .line 126
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@3
    .line 127
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    new-instance v1, Ljava/util/LinkedList$Node;

    #@5
    invoke-direct {v1, v2, p1, v0}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    #@8
    .line 128
    .local v1, "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@a
    .line 129
    if-nez v0, :cond_0

    #@c
    .line 130
    iput-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@e
    .line 133
    :goto_0
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@10
    add-int/lit8 v2, v2, 0x1

    #@12
    iput v2, p0, Ljava/util/LinkedList;->size:I

    #@14
    .line 134
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    #@16
    add-int/lit8 v2, v2, 0x1

    #@18
    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1a
    .line 125
    return-void

    #@1b
    .line 132
    :cond_0
    iput-object v1, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@1d
    goto :goto_0
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 550
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Index: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ", Size: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget v1, p0, Ljava/util/LinkedList;->size:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1143
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1146
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v1

    #@7
    .line 1149
    .local v1, "size":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 1150
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    #@11
    .line 1149
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1141
    :cond_0
    return-void
.end method

.method private superClone()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1009
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSequentialList;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/LinkedList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 1010
    :catch_0
    move-exception v0

    #@8
    .line 1011
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method private unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList$Node",
            "<TE;>;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 173
    iget-object v0, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@3
    .line 174
    .local v0, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@5
    .line 175
    .local v1, "next":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iput-object v2, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@7
    .line 176
    iput-object v2, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@9
    .line 177
    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@b
    .line 178
    if-nez v1, :cond_0

    #@d
    .line 179
    iput-object v2, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@f
    .line 182
    :goto_0
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    iput v2, p0, Ljava/util/LinkedList;->size:I

    #@15
    .line 183
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1b
    .line 184
    return-object v0

    #@1c
    .line 181
    :cond_0
    iput-object v2, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@1e
    goto :goto_0
.end method

.method private unlinkLast(Ljava/util/LinkedList$Node;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList$Node",
            "<TE;>;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 192
    iget-object v0, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@3
    .line 193
    .local v0, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@5
    .line 194
    .local v1, "prev":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iput-object v2, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@7
    .line 195
    iput-object v2, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@9
    .line 196
    iput-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@b
    .line 197
    if-nez v1, :cond_0

    #@d
    .line 198
    iput-object v2, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@f
    .line 201
    :goto_0
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    iput v2, p0, Ljava/util/LinkedList;->size:I

    #@15
    .line 202
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1b
    .line 203
    return-object v0

    #@1c
    .line 200
    :cond_0
    iput-object v2, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@1e
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1125
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 1128
    iget v1, p0, Ljava/util/LinkedList;->size:I

    #@5
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@8
    .line 1131
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@a
    .local v0, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@c
    .line 1132
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@e
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@11
    .line 1131
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@13
    goto :goto_0

    #@14
    .line 1123
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 507
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkPositionIndex(I)V

    #@3
    .line 509
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@5
    if-ne p1, v0, :cond_0

    #@7
    .line 510
    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    #@a
    .line 506
    :goto_0
    return-void

    #@b
    .line 512
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, p2, v0}, Ljava/util/LinkedList;->linkBefore(Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    #@12
    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 338
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    #@3
    .line 339
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v9, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 406
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkPositionIndex(I)V

    #@5
    .line 408
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 409
    .local v0, "a":[Ljava/lang/Object;
    array-length v3, v0

    #@a
    .line 410
    .local v3, "numNew":I
    if-nez v3, :cond_0

    #@c
    .line 411
    return v7

    #@d
    .line 414
    :cond_0
    iget v8, p0, Ljava/util/LinkedList;->size:I

    #@f
    if-ne p1, v8, :cond_1

    #@11
    .line 415
    const/4 v6, 0x0

    #@12
    .line 416
    .local v6, "succ":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v5, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@14
    .line 422
    .end local v6    # "succ":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .local v5, "pred":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_0
    array-length v8, v0

    #@15
    :goto_1
    if-ge v7, v8, :cond_3

    #@17
    aget-object v4, v0, v7

    #@19
    .line 423
    .local v4, "o":Ljava/lang/Object;
    move-object v1, v4

    #@1a
    .line 424
    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v2, Ljava/util/LinkedList$Node;

    #@1c
    invoke-direct {v2, v5, v4, v9}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    #@1f
    .line 425
    .local v2, "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v5, :cond_2

    #@21
    .line 426
    iput-object v2, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@23
    .line 429
    :goto_2
    move-object v5, v2

    #@24
    .line 422
    add-int/lit8 v7, v7, 0x1

    #@26
    goto :goto_1

    #@27
    .line 418
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "pred":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    #@2a
    move-result-object v6

    #@2b
    .line 419
    .local v6, "succ":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v5, v6, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@2d
    .restart local v5    # "pred":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    goto :goto_0

    #@2e
    .line 428
    .end local v6    # "succ":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_2
    iput-object v2, v5, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@30
    goto :goto_2

    #@31
    .line 432
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    .end local v4    # "o":Ljava/lang/Object;
    :cond_3
    if-nez v6, :cond_4

    #@33
    .line 433
    iput-object v5, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@35
    .line 439
    :goto_3
    iget v7, p0, Ljava/util/LinkedList;->size:I

    #@37
    add-int/2addr v7, v3

    #@38
    iput v7, p0, Ljava/util/LinkedList;->size:I

    #@3a
    .line 440
    iget v7, p0, Ljava/util/LinkedList;->modCount:I

    #@3c
    add-int/lit8 v7, v7, 0x1

    #@3e
    iput v7, p0, Ljava/util/LinkedList;->modCount:I

    #@40
    .line 441
    const/4 v7, 0x1

    #@41
    return v7

    #@42
    .line 435
    :cond_4
    iput-object v6, v5, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@44
    .line 436
    iput-object v5, v6, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@46
    goto :goto_3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 387
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@2
    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 293
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->linkFirst(Ljava/lang/Object;)V

    #@3
    .line 292
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 304
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    #@3
    .line 303
    return-void
.end method

.method public clear()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 453
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@3
    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    #@5
    .line 454
    iget-object v0, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@7
    .line 455
    .local v0, "next":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iput-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@9
    .line 456
    iput-object v2, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@b
    .line 457
    iput-object v2, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@d
    .line 458
    move-object v1, v0

    #@e
    goto :goto_0

    #@f
    .line 460
    .end local v0    # "next":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_0
    iput-object v2, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@11
    iput-object v2, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@13
    .line 461
    const/4 v2, 0x0

    #@14
    iput v2, p0, Ljava/util/LinkedList;->size:I

    #@16
    .line 462
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1c
    .line 448
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1022
    invoke-direct {p0}, Ljava/util/LinkedList;->superClone()Ljava/util/LinkedList;

    #@5
    move-result-object v0

    #@6
    .line 1025
    .local v0, "clone":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iput-object v2, v0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@8
    iput-object v2, v0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@a
    .line 1026
    iput v3, v0, Ljava/util/LinkedList;->size:I

    #@c
    .line 1027
    iput v3, v0, Ljava/util/LinkedList;->modCount:I

    #@e
    .line 1030
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@10
    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    #@12
    .line 1031
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@14
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@17
    .line 1030
    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@19
    goto :goto_0

    #@1a
    .line 1033
    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 317
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 987
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$DescendingIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/LinkedList$DescendingIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList$DescendingIterator;)V

    #@6
    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 663
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 476
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkElementIndex(I)V

    #@3
    .line 477
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    #@6
    move-result-object v0

    #@7
    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@9
    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 242
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@2
    .line 243
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    #@4
    .line 244
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v1

    #@a
    .line 245
    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@c
    return-object v1
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 255
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@2
    .line 256
    .local v0, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    #@4
    .line 257
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v1

    #@a
    .line 258
    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@c
    return-object v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 596
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 597
    .local v0, "index":I
    if-nez p1, :cond_1

    #@3
    .line 598
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@5
    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_3

    #@7
    .line 599
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@9
    if-nez v2, :cond_0

    #@b
    .line 600
    return v0

    #@c
    .line 601
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@e
    .line 598
    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@10
    goto :goto_0

    #@11
    .line 604
    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_1
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@13
    .restart local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_3

    #@15
    .line 605
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@17
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 606
    return v0

    #@1e
    .line 607
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@20
    .line 604
    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@22
    goto :goto_1

    #@23
    .line 610
    :cond_3
    const/4 v2, -0x1

    #@24
    return v2
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 625
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@2
    .line 626
    .local v0, "index":I
    if-nez p1, :cond_1

    #@4
    .line 627
    iget-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@6
    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_3

    #@8
    .line 628
    add-int/lit8 v0, v0, -0x1

    #@a
    .line 629
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@c
    if-nez v2, :cond_0

    #@e
    .line 630
    return v0

    #@f
    .line 627
    :cond_0
    iget-object v1, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@11
    goto :goto_0

    #@12
    .line 633
    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_1
    iget-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@14
    .restart local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_3

    #@16
    .line 634
    add-int/lit8 v0, v0, -0x1

    #@18
    .line 635
    iget-object v2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 636
    return v0

    #@21
    .line 633
    :cond_2
    iget-object v1, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@23
    goto :goto_1

    #@24
    .line 639
    :cond_3
    const/4 v2, -0x1

    #@25
    return v2
.end method

.method linkBefore(Ljava/lang/Object;Ljava/util/LinkedList$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/LinkedList$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 157
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    .local p2, "succ":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v1, p2, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@2
    .line 158
    .local v1, "pred":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    new-instance v0, Ljava/util/LinkedList$Node;

    #@4
    invoke-direct {v0, v1, p1, p2}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    #@7
    .line 159
    .local v0, "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iput-object v0, p2, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@9
    .line 160
    if-nez v1, :cond_0

    #@b
    .line 161
    iput-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@d
    .line 164
    :goto_0
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    iput v2, p0, Ljava/util/LinkedList;->size:I

    #@13
    .line 165
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    #@15
    add-int/lit8 v2, v2, 0x1

    #@17
    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    #@19
    .line 155
    return-void

    #@1a
    .line 163
    :cond_0
    iput-object v0, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@1c
    goto :goto_0
.end method

.method linkLast(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    #@1
    .line 141
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@3
    .line 142
    .local v0, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    new-instance v1, Ljava/util/LinkedList$Node;

    #@5
    invoke-direct {v1, v0, p1, v2}, Ljava/util/LinkedList$Node;-><init>(Ljava/util/LinkedList$Node;Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    #@8
    .line 143
    .local v1, "newNode":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iput-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@a
    .line 144
    if-nez v0, :cond_0

    #@c
    .line 145
    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@e
    .line 148
    :goto_0
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@10
    add-int/lit8 v2, v2, 0x1

    #@12
    iput v2, p0, Ljava/util/LinkedList;->size:I

    #@14
    .line 149
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    #@16
    add-int/lit8 v2, v2, 0x1

    #@18
    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1a
    .line 140
    return-void

    #@1b
    .line 147
    :cond_0
    iput-object v1, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@1d
    goto :goto_0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 867
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkPositionIndex(I)V

    #@3
    .line 868
    new-instance v0, Ljava/util/LinkedList$ListItr;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/LinkedList$ListItr;-><init>(Ljava/util/LinkedList;I)V

    #@8
    return-object v0
.end method

.method node(I)Ljava/util/LinkedList$Node;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 569
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@2
    shr-int/lit8 v2, v2, 0x1

    #@4
    if-ge p1, v2, :cond_1

    #@6
    .line 570
    iget-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@8
    .line 571
    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@b
    .line 572
    iget-object v1, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@d
    .line 571
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 573
    :cond_0
    return-object v1

    #@11
    .line 575
    .end local v0    # "i":I
    .end local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_1
    iget-object v1, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@13
    .line 576
    .restart local v1    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@15
    add-int/lit8 v0, v2, -0x1

    #@17
    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_2

    #@19
    .line 577
    iget-object v1, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@1b
    .line 576
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_1

    #@1e
    .line 578
    :cond_2
    return-object v1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 696
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 708
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@3
    .line 709
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 720
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@3
    .line 721
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 651
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@3
    .line 652
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    #@5
    :goto_0
    return-object v1

    #@6
    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@8
    goto :goto_0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 733
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@3
    .line 734
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    #@5
    :goto_0
    return-object v1

    #@6
    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@8
    goto :goto_0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 746
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@3
    .line 747
    .local v0, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    #@5
    :goto_0
    return-object v1

    #@6
    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@8
    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 673
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@3
    .line 674
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    #@5
    :goto_0
    return-object v1

    #@6
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    goto :goto_0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 759
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@3
    .line 760
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    #@5
    :goto_0
    return-object v1

    #@6
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 772
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@3
    .line 773
    .local v0, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    #@5
    :goto_0
    return-object v1

    #@6
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkLast(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 801
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 786
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@3
    .line 785
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 685
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 525
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkElementIndex(I)V

    #@3
    .line 526
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 356
    if-nez p1, :cond_1

    #@3
    .line 357
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@5
    .local v0, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_3

    #@7
    .line 358
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 359
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@e
    .line 360
    return v2

    #@f
    .line 357
    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@11
    goto :goto_0

    #@12
    .line 364
    .end local v0    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_1
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@14
    .restart local v0    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_1
    if-eqz v0, :cond_3

    #@16
    .line 365
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 366
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@21
    .line 367
    return v2

    #@22
    .line 364
    :cond_2
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@24
    goto :goto_1

    #@25
    .line 371
    :cond_3
    const/4 v1, 0x0

    #@26
    return v1
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 268
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@2
    .line 269
    .local v0, "f":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    #@4
    .line 270
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v1

    #@a
    .line 271
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkFirst(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 814
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 281
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@2
    .line 282
    .local v0, "l":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    #@4
    .line 283
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v1

    #@a
    .line 284
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/LinkedList;->unlinkLast(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 827
    if-nez p1, :cond_1

    #@3
    .line 828
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@5
    .local v0, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_3

    #@7
    .line 829
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 830
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@e
    .line 831
    return v2

    #@f
    .line 828
    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@11
    goto :goto_0

    #@12
    .line 835
    .end local v0    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_1
    iget-object v0, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@14
    .restart local v0    # "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :goto_1
    if-eqz v0, :cond_3

    #@16
    .line 836
    iget-object v1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 837
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    #@21
    .line 838
    return v2

    #@22
    .line 835
    :cond_2
    iget-object v0, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@24
    goto :goto_1

    #@25
    .line 842
    :cond_3
    const/4 v1, 0x0

    #@26
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 490
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->checkElementIndex(I)V

    #@3
    .line 491
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    #@6
    move-result-object v1

    #@7
    .line 492
    .local v1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v0, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@9
    .line 493
    .local v0, "oldVal":Ljava/lang/Object;, "TE;"
    iput-object p2, v1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@b
    .line 494
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 326
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@2
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1171
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$LLSpliterator;

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, p0, v1, v2}, Ljava/util/LinkedList$LLSpliterator;-><init>(Ljava/util/LinkedList;II)V

    #@7
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 1051
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@2
    new-array v2, v4, [Ljava/lang/Object;

    #@4
    .line 1052
    .local v2, "result":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@5
    .line 1053
    .local v0, "i":I
    iget-object v3, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@7
    .local v3, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    move v1, v0

    #@8
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-eqz v3, :cond_0

    #@a
    .line 1054
    add-int/lit8 v0, v1, 0x1

    #@c
    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v4, v3, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@e
    aput-object v4, v2, v1

    #@10
    .line 1053
    iget-object v3, v3, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@12
    move v1, v0

    #@13
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@14
    .line 1055
    :cond_0
    return-object v2
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    #@1
    .line 1098
    array-length v4, p1

    #@2
    iget v5, p0, Ljava/util/LinkedList;->size:I

    #@4
    if-ge v4, v5, :cond_0

    #@6
    .line 1100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@d
    move-result-object v4

    #@e
    iget v5, p0, Ljava/util/LinkedList;->size:I

    #@10
    .line 1099
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@13
    move-result-object p1

    #@14
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@16
    .line 1101
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v0, 0x0

    #@17
    .line 1102
    .local v0, "i":I
    move-object v2, p1

    #@18
    .line 1103
    .local v2, "result":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@1a
    .local v3, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    move v1, v0

    #@1b
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-eqz v3, :cond_1

    #@1d
    .line 1104
    add-int/lit8 v0, v1, 0x1

    #@1f
    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v4, v3, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@21
    aput-object v4, v2, v1

    #@23
    .line 1103
    iget-object v3, v3, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@25
    move v1, v0

    #@26
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@27
    .line 1106
    :cond_1
    array-length v4, p1

    #@28
    iget v5, p0, Ljava/util/LinkedList;->size:I

    #@2a
    if-le v4, v5, :cond_2

    #@2c
    .line 1107
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@2e
    aput-object v6, p1, v4

    #@30
    .line 1109
    :cond_2
    return-object p1
.end method

.method unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList$Node",
            "<TE;>;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "x":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 211
    iget-object v0, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@3
    .line 212
    .local v0, "element":Ljava/lang/Object;, "TE;"
    iget-object v1, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@5
    .line 213
    .local v1, "next":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v2, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@7
    .line 215
    .local v2, "prev":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    if-nez v2, :cond_0

    #@9
    .line 216
    iput-object v1, p0, Ljava/util/LinkedList;->first:Ljava/util/LinkedList$Node;

    #@b
    .line 222
    :goto_0
    if-nez v1, :cond_1

    #@d
    .line 223
    iput-object v2, p0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    #@f
    .line 229
    :goto_1
    iput-object v3, p1, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    #@11
    .line 230
    iget v3, p0, Ljava/util/LinkedList;->size:I

    #@13
    add-int/lit8 v3, v3, -0x1

    #@15
    iput v3, p0, Ljava/util/LinkedList;->size:I

    #@17
    .line 231
    iget v3, p0, Ljava/util/LinkedList;->modCount:I

    #@19
    add-int/lit8 v3, v3, 0x1

    #@1b
    iput v3, p0, Ljava/util/LinkedList;->modCount:I

    #@1d
    .line 232
    return-object v0

    #@1e
    .line 218
    :cond_0
    iput-object v1, v2, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@20
    .line 219
    iput-object v3, p1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@22
    goto :goto_0

    #@23
    .line 225
    :cond_1
    iput-object v2, v1, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    #@25
    .line 226
    iput-object v3, p1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    #@27
    goto :goto_1
.end method
