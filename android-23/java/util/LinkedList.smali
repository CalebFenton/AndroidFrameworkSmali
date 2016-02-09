.class public Ljava/util/LinkedList;
.super Ljava/util/AbstractSequentialList;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/Deque;
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedList$Link;,
        Ljava/util/LinkedList$LinkIterator;,
        Ljava/util/LinkedList$ReverseLinkIterator;
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
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field transient size:I

.field transient voidLink:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 244
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    #@4
    .line 44
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/util/LinkedList;->size:I

    #@7
    .line 245
    new-instance v0, Ljava/util/LinkedList$Link;

    #@9
    invoke-direct {v0, v1, v1, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    #@c
    iput-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@e
    .line 246
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@10
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@12
    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@14
    .line 247
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@16
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@18
    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@1a
    .line 244
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
    .line 260
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    #@3
    .line 261
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    #@6
    .line 259
    return-void
.end method

.method private addFirstImpl(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 417
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@2
    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@4
    .line 418
    .local v1, "oldFirst":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    #@6
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@8
    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    #@b
    .line 419
    .local v0, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@d
    iput-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@f
    .line 420
    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@11
    .line 421
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    iput v2, p0, Ljava/util/LinkedList;->size:I

    #@17
    .line 422
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1d
    .line 423
    const/4 v2, 0x1

    #@1e
    return v2
.end method

.method private addLastImpl(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 314
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@2
    iget-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@4
    .line 315
    .local v1, "oldLast":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    #@6
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@8
    invoke-direct {v0, p1, v1, v2}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    #@b
    .line 316
    .local v0, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@d
    iput-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@f
    .line 317
    iput-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@11
    .line 318
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    iput v2, p0, Ljava/util/LinkedList;->size:I

    #@17
    .line 319
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1d
    .line 320
    const/4 v2, 0x1

    #@1e
    return v2
.end method

.method private getFirstImpl()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 534
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@2
    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@4
    .line 535
    .local v0, "first":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 536
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@a
    return-object v1

    #@b
    .line 538
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@d
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@10
    throw v1
.end method

.method private peekFirstImpl()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 907
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@2
    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@4
    .line 908
    .local v0, "first":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@c
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 979
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 980
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@7
    move-result v3

    #@8
    iput v3, p0, Ljava/util/LinkedList;->size:I

    #@a
    .line 981
    new-instance v3, Ljava/util/LinkedList$Link;

    #@c
    invoke-direct {v3, v4, v4, v4}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    #@f
    iput-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@11
    .line 982
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@13
    .line 983
    .local v1, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@15
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@17
    if-ltz v0, :cond_0

    #@19
    .line 984
    new-instance v2, Ljava/util/LinkedList$Link;

    #@1b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3, v1, v4}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    #@22
    .line 985
    .local v2, "nextLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@24
    .line 986
    move-object v1, v2

    #@25
    goto :goto_0

    #@26
    .line 988
    .end local v2    # "nextLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@28
    iput-object v3, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@2a
    .line 989
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@2c
    iput-object v1, v3, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@2e
    .line 978
    return-void
.end method

.method private removeFirstImpl()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 680
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@2
    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@4
    .line 681
    .local v0, "first":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 682
    iget-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@a
    .line 683
    .local v1, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@c
    iput-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@e
    .line 684
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@10
    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@12
    .line 685
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    iput v2, p0, Ljava/util/LinkedList;->size:I

    #@18
    .line 686
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1e
    .line 687
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@20
    return-object v2

    #@21
    .line 689
    .end local v1    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    #@23
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@26
    throw v2
.end method

.method private removeFirstOccurrenceImpl(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 829
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$LinkIterator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/LinkedList$LinkIterator;-><init>(Ljava/util/LinkedList;I)V

    #@6
    .line 830
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0, p1, v0}, Ljava/util/LinkedList;->removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z

    #@9
    move-result v1

    #@a
    return v1
.end method

.method private removeLastImpl()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 704
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@2
    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@4
    .line 705
    .local v0, "last":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 706
    iget-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@a
    .line 707
    .local v1, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@c
    iput-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@e
    .line 708
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@10
    iput-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@12
    .line 709
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    iput v2, p0, Ljava/util/LinkedList;->size:I

    #@18
    .line 710
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    #@1e
    .line 711
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@20
    return-object v2

    #@21
    .line 713
    .end local v1    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    #@23
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@26
    throw v2
.end method

.method private removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 834
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 835
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 836
    .local v0, "element":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_1

    #@c
    if-nez v0, :cond_0

    #@e
    .line 837
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    #@11
    .line 838
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 836
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    goto :goto_0

    #@1a
    .line 841
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 968
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 969
    iget v1, p0, Ljava/util/LinkedList;->size:I

    #@5
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@8
    .line 970
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    .line 971
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 972
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@19
    goto :goto_0

    #@1a
    .line 967
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 279
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_2

    #@2
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@4
    if-gt p1, v4, :cond_2

    #@6
    .line 280
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@8
    .line 281
    .local v1, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@a
    div-int/lit8 v4, v4, 0x2

    #@c
    if-ge p1, v4, :cond_0

    #@e
    .line 282
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    #@11
    .line 283
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@13
    .line 282
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 286
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@18
    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_1

    #@1a
    .line 287
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@1c
    .line 286
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_1

    #@1f
    .line 290
    :cond_1
    iget-object v3, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@21
    .line 291
    .local v3, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    new-instance v2, Ljava/util/LinkedList$Link;

    #@23
    invoke-direct {v2, p2, v3, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    #@26
    .line 292
    .local v2, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@28
    .line 293
    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@2a
    .line 294
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@2c
    add-int/lit8 v4, v4, 0x1

    #@2e
    iput v4, p0, Ljava/util/LinkedList;->size:I

    #@30
    .line 295
    iget v4, p0, Ljava/util/LinkedList;->modCount:I

    #@32
    add-int/lit8 v4, v4, 0x1

    #@34
    iput v4, p0, Ljava/util/LinkedList;->modCount:I

    #@36
    .line 278
    return-void

    #@37
    .line 297
    .end local v0    # "i":I
    .end local v1    # "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v2    # "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v3    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@39
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@3c
    throw v4
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
    .line 310
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 10
    .param p1, "location"    # I
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
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v9, 0x0

    #@1
    .line 343
    if-ltz p1, :cond_0

    #@3
    iget v8, p0, Ljava/util/LinkedList;->size:I

    #@5
    if-le p1, v8, :cond_1

    #@7
    .line 344
    :cond_0
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v8

    #@d
    .line 346
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@10
    move-result v0

    #@11
    .line 347
    .local v0, "adding":I
    if-nez v0, :cond_2

    #@13
    .line 348
    return v9

    #@14
    .line 350
    :cond_2
    if-ne p2, p0, :cond_3

    #@16
    .line 351
    new-instance v3, Ljava/util/ArrayList;

    #@18
    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1b
    .line 353
    .local v3, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :goto_0
    iget-object v7, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@1d
    .line 354
    .local v7, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v8, p0, Ljava/util/LinkedList;->size:I

    #@1f
    div-int/lit8 v8, v8, 0x2

    #@21
    if-ge p1, v8, :cond_4

    #@23
    .line 355
    const/4 v4, 0x0

    #@24
    .local v4, "i":I
    :goto_1
    if-ge v4, p1, :cond_5

    #@26
    .line 356
    iget-object v7, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@28
    .line 355
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 351
    .end local v3    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .end local v4    # "i":I
    .end local v7    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_3
    move-object v3, p2

    #@2c
    .restart local v3    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    goto :goto_0

    #@2d
    .line 359
    .restart local v7    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_4
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@2f
    .restart local v4    # "i":I
    :goto_2
    if-lt v4, p1, :cond_5

    #@31
    .line 360
    iget-object v7, v7, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@33
    .line 359
    add-int/lit8 v4, v4, -0x1

    #@35
    goto :goto_2

    #@36
    .line 363
    :cond_5
    iget-object v6, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@38
    .line 364
    .local v6, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v2

    #@3c
    .local v2, "e$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_6

    #@42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    .line 365
    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v5, Ljava/util/LinkedList$Link;

    #@48
    const/4 v8, 0x0

    #@49
    invoke-direct {v5, v1, v7, v8}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    #@4c
    .line 366
    .local v5, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iput-object v5, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@4e
    .line 367
    move-object v7, v5

    #@4f
    goto :goto_3

    #@50
    .line 369
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v5    # "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_6
    iput-object v6, v7, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@52
    .line 370
    iput-object v7, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@54
    .line 371
    iget v8, p0, Ljava/util/LinkedList;->size:I

    #@56
    add-int/2addr v8, v0

    #@57
    iput v8, p0, Ljava/util/LinkedList;->size:I

    #@59
    .line 372
    iget v8, p0, Ljava/util/LinkedList;->modCount:I

    #@5b
    add-int/lit8 v8, v8, 0x1

    #@5d
    iput v8, p0, Ljava/util/LinkedList;->modCount:I

    #@5f
    .line 373
    const/4 v8, 0x1

    #@60
    return v8
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v6, 0x0

    #@1
    .line 386
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@4
    move-result v0

    #@5
    .line 387
    .local v0, "adding":I
    if-nez v0, :cond_0

    #@7
    .line 388
    return v6

    #@8
    .line 390
    :cond_0
    if-ne p1, p0, :cond_1

    #@a
    .line 391
    new-instance v3, Ljava/util/ArrayList;

    #@c
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@f
    .line 393
    .local v3, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :goto_0
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@11
    iget-object v5, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@13
    .line 394
    .local v5, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .local v2, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_2

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    .line 395
    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v4, Ljava/util/LinkedList$Link;

    #@23
    const/4 v6, 0x0

    #@24
    invoke-direct {v4, v1, v5, v6}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    #@27
    .line 396
    .local v4, "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iput-object v4, v5, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@29
    .line 397
    move-object v5, v4

    #@2a
    goto :goto_1

    #@2b
    .line 391
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "e$iterator":Ljava/util/Iterator;
    .end local v3    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .end local v4    # "newLink":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v5    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_1
    move-object v3, p1

    #@2c
    .restart local v3    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    goto :goto_0

    #@2d
    .line 399
    .restart local v2    # "e$iterator":Ljava/util/Iterator;
    .restart local v5    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_2
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@2f
    iput-object v6, v5, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@31
    .line 400
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@33
    iput-object v5, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@35
    .line 401
    iget v6, p0, Ljava/util/LinkedList;->size:I

    #@37
    add-int/2addr v6, v0

    #@38
    iput v6, p0, Ljava/util/LinkedList;->size:I

    #@3a
    .line 402
    iget v6, p0, Ljava/util/LinkedList;->modCount:I

    #@3c
    add-int/lit8 v6, v6, 0x1

    #@3e
    iput v6, p0, Ljava/util/LinkedList;->modCount:I

    #@40
    .line 403
    const/4 v6, 0x1

    #@41
    return v6
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
    .line 413
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    #@3
    .line 412
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
    .line 433
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    #@3
    .line 432
    return-void
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 444
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 445
    iput v1, p0, Ljava/util/LinkedList;->size:I

    #@7
    .line 446
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@9
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@b
    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@d
    .line 447
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@f
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@11
    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@13
    .line 448
    iget v0, p0, Ljava/util/LinkedList;->modCount:I

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    iput v0, p0, Ljava/util/LinkedList;->modCount:I

    #@19
    .line 443
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 463
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractSequentialList;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/LinkedList;

    #@6
    .line 464
    .local v1, "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v2, 0x0

    #@7
    iput v2, v1, Ljava/util/LinkedList;->size:I

    #@9
    .line 465
    new-instance v2, Ljava/util/LinkedList$Link;

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    #@11
    iput-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@13
    .line 466
    iget-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@15
    iget-object v3, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@17
    iput-object v3, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@19
    .line 467
    iget-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@1b
    iget-object v3, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@1d
    iput-object v3, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@1f
    .line 468
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 469
    return-object v1

    #@23
    .line 470
    .end local v1    # "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    :catch_0
    move-exception v0

    #@24
    .line 471
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@29
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 485
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@3
    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@5
    .line 486
    .local v0, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_2

    #@7
    .line 487
    :goto_0
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@9
    if-eq v0, v1, :cond_3

    #@b
    .line 488
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 489
    return v2

    #@14
    .line 491
    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@16
    goto :goto_0

    #@17
    .line 498
    :cond_1
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@19
    .line 494
    :cond_2
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@1b
    if-eq v0, v1, :cond_3

    #@1d
    .line 495
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 496
    return v2

    #@22
    .line 501
    :cond_3
    const/4 v1, 0x0

    #@23
    return v1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 723
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$ReverseLinkIterator;

    #@2
    invoke-direct {v0, p0, p0}, Ljava/util/LinkedList$ReverseLinkIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    #@5
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
    .line 912
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->getFirstImpl()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 506
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    if-ltz p1, :cond_2

    #@2
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@4
    if-ge p1, v2, :cond_2

    #@6
    .line 507
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@8
    .line 508
    .local v1, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v2, p0, Ljava/util/LinkedList;->size:I

    #@a
    div-int/lit8 v2, v2, 0x2

    #@c
    if-ge p1, v2, :cond_0

    #@e
    .line 509
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    #@11
    .line 510
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@13
    .line 509
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 513
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@18
    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_1

    #@1a
    .line 514
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@1c
    .line 513
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_1

    #@1f
    .line 517
    :cond_1
    iget-object v2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@21
    return-object v2

    #@22
    .line 519
    .end local v0    # "i":I
    .end local v1    # "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@24
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@27
    throw v2
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 530
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->getFirstImpl()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 549
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@2
    iget-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@4
    .line 550
    .local v0, "last":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 551
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@a
    return-object v1

    #@b
    .line 553
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@d
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@10
    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 558
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 559
    .local v1, "pos":I
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@3
    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@5
    .line 560
    .local v0, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_2

    #@7
    .line 561
    :goto_0
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@9
    if-eq v0, v2, :cond_3

    #@b
    .line 562
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@d
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 563
    return v1

    #@14
    .line 565
    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@16
    .line 566
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 573
    :cond_1
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@1b
    .line 574
    add-int/lit8 v1, v1, 0x1

    #@1d
    .line 569
    :cond_2
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@1f
    if-eq v0, v2, :cond_3

    #@21
    .line 570
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@23
    if-nez v2, :cond_1

    #@25
    .line 571
    return v1

    #@26
    .line 577
    :cond_3
    const/4 v2, -0x1

    #@27
    return v2
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 591
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v1, p0, Ljava/util/LinkedList;->size:I

    #@2
    .line 592
    .local v1, "pos":I
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@4
    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@6
    .line 593
    .local v0, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_2

    #@8
    .line 594
    :goto_0
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@a
    if-eq v0, v2, :cond_3

    #@c
    .line 595
    add-int/lit8 v1, v1, -0x1

    #@e
    .line 596
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@10
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 597
    return v1

    #@17
    .line 599
    :cond_0
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@19
    goto :goto_0

    #@1a
    .line 607
    :cond_1
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@1c
    .line 602
    :cond_2
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@1e
    if-eq v0, v2, :cond_3

    #@20
    .line 603
    add-int/lit8 v1, v1, -0x1

    #@22
    .line 604
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@24
    if-nez v2, :cond_1

    #@26
    .line 605
    return v1

    #@27
    .line 610
    :cond_3
    const/4 v2, -0x1

    #@28
    return v2
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 627
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$LinkIterator;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/LinkedList$LinkIterator;-><init>(Ljava/util/LinkedList;I)V

    #@5
    return-object v0
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
    .line 891
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

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
    .line 733
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    #@3
    move-result v0

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
    .line 743
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addLastImpl(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 903
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->peekFirstImpl()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 753
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->peekFirstImpl()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 763
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@2
    iget-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@4
    .line 764
    .local v0, "last":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@c
    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 895
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    goto :goto_0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 774
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 784
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    invoke-direct {p0}, Ljava/util/LinkedList;->removeLastImpl()Ljava/lang/Object;

    #@9
    move-result-object v0

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
    .line 794
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

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
    .line 804
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->addFirstImpl(Ljava/lang/Object;)Z

    #@3
    .line 803
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
    .line 899
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 641
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    if-ltz p1, :cond_2

    #@2
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@4
    if-ge p1, v4, :cond_2

    #@6
    .line 642
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@8
    .line 643
    .local v1, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@a
    div-int/lit8 v4, v4, 0x2

    #@c
    if-ge p1, v4, :cond_0

    #@e
    .line 644
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    #@11
    .line 645
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@13
    .line 644
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 648
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@18
    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_1

    #@1a
    .line 649
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@1c
    .line 648
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_1

    #@1f
    .line 652
    :cond_1
    iget-object v3, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@21
    .line 653
    .local v3, "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@23
    .line 654
    .local v2, "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@25
    .line 655
    iput-object v3, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@27
    .line 656
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@29
    add-int/lit8 v4, v4, -0x1

    #@2b
    iput v4, p0, Ljava/util/LinkedList;->size:I

    #@2d
    .line 657
    iget v4, p0, Ljava/util/LinkedList;->modCount:I

    #@2f
    add-int/lit8 v4, v4, 0x1

    #@31
    iput v4, p0, Ljava/util/LinkedList;->modCount:I

    #@33
    .line 658
    iget-object v4, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@35
    return-object v4

    #@36
    .line 660
    .end local v0    # "i":I
    .end local v1    # "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v2    # "next":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v3    # "previous":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@38
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@3b
    throw v4
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 665
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->removeFirstOccurrenceImpl(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 676
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeFirstImpl()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 814
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList;->removeFirstOccurrenceImpl(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 700
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;->removeLastImpl()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 824
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$ReverseLinkIterator;

    #@2
    invoke-direct {v0, p0, p0}, Ljava/util/LinkedList$ReverseLinkIterator;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    #@5
    .line 825
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0, p1, v0}, Ljava/util/LinkedList;->removeOneOccurrence(Ljava/lang/Object;Ljava/util/Iterator;)Z

    #@8
    move-result v1

    #@9
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 862
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_2

    #@2
    iget v3, p0, Ljava/util/LinkedList;->size:I

    #@4
    if-ge p1, v3, :cond_2

    #@6
    .line 863
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@8
    .line 864
    .local v1, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    iget v3, p0, Ljava/util/LinkedList;->size:I

    #@a
    div-int/lit8 v3, v3, 0x2

    #@c
    if-ge p1, v3, :cond_0

    #@e
    .line 865
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_1

    #@11
    .line 866
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@13
    .line 865
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 869
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@18
    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_1

    #@1a
    .line 870
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    #@1c
    .line 869
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_1

    #@1f
    .line 873
    :cond_1
    iget-object v2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@21
    .line 874
    .local v2, "result":Ljava/lang/Object;, "TE;"
    iput-object p2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@23
    .line 875
    return-object v2

    #@24
    .line 877
    .end local v0    # "i":I
    .end local v1    # "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    .end local v2    # "result":Ljava/lang/Object;, "TE;"
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@26
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@29
    throw v3
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 887
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    #@2
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 923
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 924
    .local v1, "index":I
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@3
    new-array v0, v4, [Ljava/lang/Object;

    #@5
    .line 925
    .local v0, "contents":[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@7
    iget-object v3, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@9
    .line 926
    .local v3, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :goto_0
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@b
    if-eq v3, v4, :cond_0

    #@d
    .line 927
    add-int/lit8 v2, v1, 0x1

    #@f
    .end local v1    # "index":I
    .local v2, "index":I
    iget-object v4, v3, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@11
    aput-object v4, v0, v1

    #@13
    .line 928
    iget-object v3, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@15
    move v1, v2

    #@16
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@17
    .line 930
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 951
    .local p0, "this":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@1
    .line 952
    .local v1, "index":I
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@3
    array-length v5, p1

    #@4
    if-le v4, v5, :cond_0

    #@6
    .line 953
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    .line 954
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    #@10
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@13
    move-result-object p1

    #@14
    .end local p1    # "contents":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@16
    .line 956
    .end local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "contents":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@18
    iget-object v3, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@1a
    .line 957
    .local v3, "link":Ljava/util/LinkedList$Link;, "Ljava/util/LinkedList$Link<TE;>;"
    :goto_0
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    #@1c
    if-eq v3, v4, :cond_1

    #@1e
    .line 958
    add-int/lit8 v2, v1, 0x1

    #@20
    .end local v1    # "index":I
    .local v2, "index":I
    iget-object v4, v3, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    #@22
    aput-object v4, p1, v1

    #@24
    .line 959
    iget-object v3, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    #@26
    move v1, v2

    #@27
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@28
    .line 961
    :cond_1
    array-length v4, p1

    #@29
    if-ge v1, v4, :cond_2

    #@2b
    .line 962
    const/4 v4, 0x0

    #@2c
    aput-object v4, p1, v1

    #@2e
    .line 964
    :cond_2
    return-object p1
.end method
