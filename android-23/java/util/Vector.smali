.class public Ljava/util/Vector;
.super Ljava/util/AbstractList;
.source "Vector.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0xa

.field private static final serialVersionUID:J = -0x266882a47fc450ffL


# instance fields
.field protected capacityIncrement:I

.field protected elementCount:I

.field protected elementData:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 67
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/16 v0, 0xa

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Ljava/util/Vector;-><init>(II)V

    #@6
    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 79
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/Vector;-><init>(II)V

    #@4
    .line 78
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "capacityIncrement"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 93
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@4
    .line 94
    if-gez p1, :cond_0

    #@6
    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "capacity < 0: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 97
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@26
    .line 98
    iput v1, p0, Ljava/util/Vector;->elementCount:I

    #@28
    .line 99
    iput p2, p0, Ljava/util/Vector;->capacityIncrement:I

    #@2a
    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 111
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, v1, v2}, Ljava/util/Vector;-><init>(II)V

    #@8
    .line 112
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    .line 113
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 114
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@14
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@16
    add-int/lit8 v3, v2, 0x1

    #@18
    iput v3, p0, Ljava/util/Vector;->elementCount:I

    #@1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    aput-object v3, v1, v2

    #@20
    goto :goto_0

    #@21
    .line 110
    :cond_0
    return-void
.end method

.method private static arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;
    .locals 1
    .param p0, "index"    # I
    .param p1, "size"    # I

    #@0
    .prologue
    .line 907
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@2
    invoke-direct {v0, p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    #@5
    throw v0
.end method

.method private grow(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 446
    invoke-direct {p0, p1}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 449
    .local v0, "newData":[Ljava/lang/Object;, "[TE;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@7
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@9
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 450
    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@e
    .line 445
    return-void
.end method

.method private growBy(I)V
    .locals 5
    .param p1, "required"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 472
    const/4 v0, 0x0

    #@2
    .line 473
    .local v0, "adding":I
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    #@4
    if-gtz v2, :cond_1

    #@6
    .line 474
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@8
    array-length v0, v2

    #@9
    if-nez v0, :cond_0

    #@b
    .line 475
    move v0, p1

    #@c
    .line 477
    :cond_0
    :goto_0
    if-ge v0, p1, :cond_2

    #@e
    .line 478
    add-int/2addr v0, v0

    #@f
    goto :goto_0

    #@10
    .line 481
    :cond_1
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    #@12
    div-int v2, p1, v2

    #@14
    iget v3, p0, Ljava/util/Vector;->capacityIncrement:I

    #@16
    mul-int v0, v2, v3

    #@18
    .line 482
    if-ge v0, p1, :cond_2

    #@1a
    .line 483
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    #@1c
    add-int/2addr v0, v2

    #@1d
    .line 486
    :cond_2
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1f
    array-length v2, v2

    #@20
    add-int/2addr v2, v0

    #@21
    invoke-direct {p0, v2}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    .line 487
    .local v1, "newData":[Ljava/lang/Object;, "[TE;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@27
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@29
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c
    .line 488
    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@2e
    .line 471
    return-void
.end method

.method private growByOne()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 457
    const/4 v0, 0x0

    #@2
    .line 458
    .local v0, "adding":I
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    #@4
    if-gtz v2, :cond_1

    #@6
    .line 459
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@8
    array-length v0, v2

    #@9
    if-nez v0, :cond_0

    #@b
    .line 460
    const/4 v0, 0x1

    #@c
    .line 466
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@e
    array-length v2, v2

    #@f
    add-int/2addr v2, v0

    #@10
    invoke-direct {p0, v2}, Ljava/util/Vector;->newElementArray(I)[Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 467
    .local v1, "newData":[Ljava/lang/Object;, "[TE;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@16
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@18
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    .line 468
    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1d
    .line 456
    return-void

    #@1e
    .line 463
    .end local v1    # "newData":[Ljava/lang/Object;, "[TE;"
    :cond_1
    iget v0, p0, Ljava/util/Vector;->capacityIncrement:I

    #@20
    goto :goto_0
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 120
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    new-array v0, p1, [Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 1051
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 1050
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 140
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@3
    .line 139
    return-void
.end method

.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 152
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@5
    array-length v1, v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 153
    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    #@b
    .line 155
    :cond_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@d
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@f
    add-int/lit8 v2, v1, 0x1

    #@11
    iput v2, p0, Ljava/util/Vector;->elementCount:I

    #@13
    aput-object p1, v0, v1

    #@15
    .line 156
    iget v0, p0, Ljava/util/Vector;->modCount:I

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    iput v0, p0, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 157
    const/4 v0, 0x1

    #@1c
    monitor-exit p0

    #@1d
    return v0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .locals 8
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
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v6, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 177
    if-ltz p1, :cond_4

    #@4
    :try_start_0
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    #@6
    if-gt p1, v5, :cond_4

    #@8
    .line 178
    invoke-interface {p2}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v4

    #@c
    .line 179
    .local v4, "size":I
    if-nez v4, :cond_0

    #@e
    monitor-exit p0

    #@f
    .line 180
    return v6

    #@10
    .line 182
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@12
    array-length v5, v5

    #@13
    iget v6, p0, Ljava/util/Vector;->elementCount:I

    #@15
    sub-int/2addr v5, v6

    #@16
    sub-int v3, v4, v5

    #@18
    .line 183
    .local v3, "required":I
    if-lez v3, :cond_1

    #@1a
    .line 184
    invoke-direct {p0, v3}, Ljava/util/Vector;->growBy(I)V

    #@1d
    .line 186
    :cond_1
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    #@1f
    sub-int v0, v5, p1

    #@21
    .line 187
    .local v0, "count":I
    if-lez v0, :cond_2

    #@23
    .line 188
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@25
    iget-object v6, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@27
    add-int v7, p1, v4

    #@29
    invoke-static {v5, p1, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c
    .line 191
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    move-result-object v1

    #@30
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    move v2, p1

    #@31
    .line 192
    .end local p1    # "location":I
    .local v2, "location":I
    :goto_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_3

    #@37
    .line 193
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@39
    add-int/lit8 p1, v2, 0x1

    #@3b
    .end local v2    # "location":I
    .restart local p1    # "location":I
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v6

    #@3f
    aput-object v6, v5, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    move v2, p1

    #@42
    .end local p1    # "location":I
    .restart local v2    # "location":I
    goto :goto_0

    #@43
    .line 195
    :cond_3
    :try_start_4
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    #@45
    add-int/2addr v5, v4

    #@46
    iput v5, p0, Ljava/util/Vector;->elementCount:I

    #@48
    .line 196
    iget v5, p0, Ljava/util/Vector;->modCount:I

    #@4a
    add-int/lit8 v5, v5, 0x1

    #@4c
    iput v5, p0, Ljava/util/Vector;->modCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4e
    .line 197
    const/4 v5, 0x1

    #@4f
    monitor-exit p0

    #@50
    return v5

    #@51
    .line 199
    .end local v0    # "count":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .end local v2    # "location":I
    .end local v3    # "required":I
    .end local v4    # "size":I
    .restart local p1    # "location":I
    :cond_4
    :try_start_5
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    #@53
    invoke-static {p1, v5}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    #@56
    move-result-object v5

    #@57
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@58
    :catchall_0
    move-exception v5

    #@59
    :goto_1
    monitor-exit p0

    #@5a
    throw v5

    #@5b
    .end local p1    # "location":I
    .restart local v0    # "count":I
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .restart local v2    # "location":I
    .restart local v3    # "required":I
    .restart local v4    # "size":I
    :catchall_1
    move-exception v5

    #@5c
    move p1, v2

    #@5d
    .end local v2    # "location":I
    .restart local p1    # "location":I
    goto :goto_1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
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
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    #@1
    .line 211
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    invoke-virtual {p0, v0, p1}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized addElement(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 221
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@5
    array-length v1, v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 222
    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    #@b
    .line 224
    :cond_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@d
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@f
    add-int/lit8 v2, v1, 0x1

    #@11
    iput v2, p0, Ljava/util/Vector;->elementCount:I

    #@13
    aput-object p1, v0, v1

    #@15
    .line 225
    iget v0, p0, Ljava/util/Vector;->modCount:I

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    iput v0, p0, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    .line 220
    return-void

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public declared-synchronized capacity()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 236
    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@3
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    return v0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public clear()V
    .locals 0

    #@0
    .prologue
    .line 247
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    #@3
    .line 246
    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 261
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Ljava/util/Vector;

    #@7
    .line 262
    .local v1, "vector":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@9
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, [Ljava/lang/Object;

    #@f
    iput-object v2, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 263
    return-object v1

    #@13
    .line 264
    .end local v1    # "vector":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catch_0
    move-exception v0

    #@14
    .line 265
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    #@16
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@19
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit p0

    #@1c
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 282
    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    #@4
    move-result v1

    #@5
    const/4 v2, -0x1

    #@6
    if-eq v1, v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    #@1
    .line 295
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized copyInto([Ljava/lang/Object;)V
    .locals 4
    .param p1, "elements"    # [Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 310
    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@3
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@5
    const/4 v2, 0x0

    #@6
    const/4 v3, 0x0

    #@7
    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 309
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized elementAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 325
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-ge p1, v0, :cond_0

    #@5
    .line 326
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@7
    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    .line 328
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@d
    invoke-static {p1, v0}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    move-result-object v0

    #@11
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 340
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    new-instance v0, Ljava/util/Vector$1;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Vector$1;-><init>(Ljava/util/Vector;)V

    #@5
    return-object v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .locals 3
    .param p1, "minimumCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 369
    :try_start_0
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@3
    array-length v1, v1

    #@4
    if-ge v1, p1, :cond_0

    #@6
    .line 370
    iget v1, p0, Ljava/util/Vector;->capacityIncrement:I

    #@8
    if-gtz v1, :cond_1

    #@a
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@c
    array-length v1, v1

    #@d
    .line 372
    :goto_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@f
    array-length v2, v2

    #@10
    .line 370
    add-int v0, v1, v2

    #@12
    .line 373
    .local v0, "next":I
    if-le p1, v0, :cond_2

    #@14
    .end local p1    # "minimumCapacity":I
    :goto_1
    invoke-direct {p0, p1}, Ljava/util/Vector;->grow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .end local v0    # "next":I
    :cond_0
    monitor-exit p0

    #@18
    .line 368
    return-void

    #@19
    .line 371
    .restart local p1    # "minimumCapacity":I
    :cond_1
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->capacityIncrement:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .restart local v0    # "next":I
    :cond_2
    move p1, v0

    #@1d
    .line 373
    goto :goto_1

    #@1e
    .end local v0    # "next":I
    .end local p1    # "minimumCapacity":I
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit p0

    #@20
    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 390
    if-ne p0, p1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 391
    return v8

    #@7
    .line 393
    :cond_0
    :try_start_0
    instance-of v7, p1, Ljava/util/List;

    #@9
    if-eqz v7, :cond_6

    #@b
    .line 394
    move-object v0, p1

    #@c
    check-cast v0, Ljava/util/List;

    #@e
    move-object v6, v0

    #@f
    .line 395
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@12
    move-result v7

    #@13
    iget v10, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-eq v7, v10, :cond_1

    #@17
    monitor-exit p0

    #@18
    .line 396
    return v9

    #@19
    .line 399
    :cond_1
    const/4 v3, 0x0

    #@1a
    .line 400
    .local v3, "index":I
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v5

    #@1e
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move v4, v3

    #@1f
    .line 401
    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_5

    #@25
    .line 402
    iget-object v7, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@27
    add-int/lit8 v3, v4, 0x1

    #@29
    .end local v4    # "index":I
    .restart local v3    # "index":I
    aget-object v1, v7, v4

    #@2b
    .local v1, "e1":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result-object v2

    #@2f
    .line 403
    .local v2, "e2":Ljava/lang/Object;
    if-nez v1, :cond_3

    #@31
    if-nez v2, :cond_2

    #@33
    move v7, v8

    #@34
    :goto_1
    if-nez v7, :cond_4

    #@36
    monitor-exit p0

    #@37
    .line 404
    return v9

    #@38
    :cond_2
    move v7, v9

    #@39
    .line 403
    goto :goto_1

    #@3a
    :cond_3
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    move-result v7

    #@3e
    goto :goto_1

    #@3f
    :cond_4
    move v4, v3

    #@40
    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    #@41
    .end local v1    # "e1":Ljava/lang/Object;
    .end local v2    # "e2":Ljava/lang/Object;
    :cond_5
    monitor-exit p0

    #@42
    .line 407
    return v8

    #@43
    .end local v4    # "index":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_6
    monitor-exit p0

    #@44
    .line 409
    return v9

    #@45
    :catchall_0
    move-exception v7

    #@46
    monitor-exit p0

    #@47
    throw v7
.end method

.method public declared-synchronized firstElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 424
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 425
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@7
    const/4 v1, 0x0

    #@8
    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    .line 427
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    #@e
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@11
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 442
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 500
    const/4 v1, 0x1

    #@2
    .line 501
    .local v1, "result":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 502
    mul-int/lit8 v3, v1, 0x1f

    #@9
    .line 503
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@b
    aget-object v2, v2, v0

    #@d
    if-nez v2, :cond_0

    #@f
    const/4 v2, 0x0

    #@10
    .line 502
    :goto_1
    add-int v1, v3, v2

    #@12
    .line 501
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 503
    :cond_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@17
    aget-object v2, v2, v0

    #@19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    goto :goto_1

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 505
    return v1

    #@20
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 523
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "location"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 544
    if-eqz p1, :cond_1

    #@3
    .line 545
    move v0, p2

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@6
    if-ge v0, v1, :cond_3

    #@8
    .line 546
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@a
    aget-object v1, v1, v0

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    monitor-exit p0

    #@13
    .line 547
    return v0

    #@14
    .line 545
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 551
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    #@18
    .restart local v0    # "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@1a
    if-ge v0, v1, :cond_3

    #@1c
    .line 552
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1e
    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    if-nez v1, :cond_2

    #@22
    monitor-exit p0

    #@23
    .line 553
    return v0

    #@24
    .line 551
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_1

    #@27
    .line 557
    :cond_3
    const/4 v1, -0x1

    #@28
    monitor-exit p0

    #@29
    return v1

    #@2a
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit p0

    #@2c
    throw v1
.end method

.method public declared-synchronized insertElementAt(Ljava/lang/Object;I)V
    .locals 4
    .param p2, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 577
    if-ltz p2, :cond_2

    #@3
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@5
    if-gt p2, v1, :cond_2

    #@7
    .line 578
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@9
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@b
    array-length v2, v2

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 579
    invoke-direct {p0}, Ljava/util/Vector;->growByOne()V

    #@11
    .line 581
    :cond_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@13
    sub-int v0, v1, p2

    #@15
    .line 582
    .local v0, "count":I
    if-lez v0, :cond_1

    #@17
    .line 583
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@19
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1b
    .line 584
    add-int/lit8 v3, p2, 0x1

    #@1d
    .line 583
    invoke-static {v1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@20
    .line 586
    :cond_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@22
    aput-object p1, v1, p2

    #@24
    .line 587
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@26
    add-int/lit8 v1, v1, 0x1

    #@28
    iput v1, p0, Ljava/util/Vector;->elementCount:I

    #@2a
    .line 588
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@2c
    add-int/lit8 v1, v1, 0x1

    #@2e
    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit p0

    #@31
    .line 576
    return-void

    #@32
    .line 590
    .end local v0    # "count":I
    :cond_2
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@34
    invoke-static {p2, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    #@37
    move-result-object v1

    #@38
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit p0

    #@3b
    throw v1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 603
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized lastElement()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 619
    :try_start_0
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@3
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@5
    add-int/lit8 v2, v2, -0x1

    #@7
    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-object v1

    #@b
    .line 620
    :catch_0
    move-exception v0

    #@c
    .line 621
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    new-instance v1, Ljava/util/NoSuchElementException;

    #@e
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@11
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 640
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->lastIndexOf(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit p0

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "location"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 661
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-ge p2, v1, :cond_4

    #@5
    .line 662
    if-eqz p1, :cond_1

    #@7
    .line 663
    move v0, p2

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@a
    .line 664
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    monitor-exit p0

    #@15
    .line 665
    return v0

    #@16
    .line 663
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 669
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    #@1a
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    #@1c
    .line 670
    :try_start_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1e
    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    if-nez v1, :cond_2

    #@22
    monitor-exit p0

    #@23
    .line 671
    return v0

    #@24
    .line 669
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_1

    #@27
    .line 675
    :cond_3
    const/4 v1, -0x1

    #@28
    monitor-exit p0

    #@29
    return v1

    #@2a
    .line 677
    .end local v0    # "i":I
    :cond_4
    :try_start_2
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@2c
    invoke-static {p2, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    #@2f
    move-result-object v1

    #@30
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    :catchall_0
    move-exception v1

    #@32
    monitor-exit p0

    #@33
    throw v1
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 694
    :try_start_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-ge p1, v2, :cond_1

    #@5
    .line 695
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@7
    aget-object v0, v2, p1

    #@9
    .line 696
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@b
    add-int/lit8 v2, v2, -0x1

    #@d
    iput v2, p0, Ljava/util/Vector;->elementCount:I

    #@f
    .line 697
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@11
    sub-int v1, v2, p1

    #@13
    .line 698
    .local v1, "size":I
    if-lez v1, :cond_0

    #@15
    .line 699
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@17
    add-int/lit8 v3, p1, 0x1

    #@19
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1b
    invoke-static {v2, v3, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e
    .line 702
    :cond_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@20
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@22
    const/4 v4, 0x0

    #@23
    aput-object v4, v2, v3

    #@25
    .line 703
    iget v2, p0, Ljava/util/Vector;->modCount:I

    #@27
    add-int/lit8 v2, v2, 0x1

    #@29
    iput v2, p0, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit p0

    #@2c
    .line 704
    return-object v0

    #@2d
    .line 706
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    .end local v1    # "size":I
    :cond_1
    :try_start_1
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@2f
    invoke-static {p1, v2}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    #@32
    move-result-object v2

    #@33
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    :catchall_0
    move-exception v2

    #@35
    monitor-exit p0

    #@36
    throw v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 725
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    #@1
    .line 740
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized removeAllElements()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 751
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 752
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v2, v1, v0

    #@b
    .line 751
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 754
    :cond_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    iput v1, p0, Ljava/util/Vector;->modCount:I

    #@14
    .line 755
    const/4 v1, 0x0

    #@15
    iput v1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 750
    return-void

    #@19
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit p0

    #@1b
    throw v1
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 774
    const/4 v1, 0x0

    #@3
    :try_start_0
    invoke-virtual {p0, p1, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    .local v0, "index":I
    const/4 v1, -0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    monitor-exit p0

    #@b
    .line 775
    return v2

    #@c
    .line 777
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 778
    const/4 v1, 0x1

    #@10
    monitor-exit p0

    #@11
    return v1

    #@12
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method

.method public declared-synchronized removeElementAt(I)V
    .locals 4
    .param p1, "location"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 795
    if-ltz p1, :cond_1

    #@3
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@5
    if-ge p1, v1, :cond_1

    #@7
    .line 796
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    iput v1, p0, Ljava/util/Vector;->elementCount:I

    #@d
    .line 797
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@f
    sub-int v0, v1, p1

    #@11
    .line 798
    .local v0, "size":I
    if-lez v0, :cond_0

    #@13
    .line 799
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@15
    add-int/lit8 v2, p1, 0x1

    #@17
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@19
    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 802
    :cond_0
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1e
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@20
    const/4 v3, 0x0

    #@21
    aput-object v3, v1, v2

    #@23
    .line 803
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    .line 794
    return-void

    #@2b
    .line 805
    .end local v0    # "size":I
    :cond_1
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@2d
    invoke-static {p1, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    #@30
    move-result-object v1

    #@31
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    :catchall_0
    move-exception v1

    #@33
    monitor-exit p0

    #@34
    throw v1
.end method

.method protected removeRange(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 824
    if-ltz p1, :cond_2

    #@3
    if-gt p1, p2, :cond_2

    #@5
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@7
    if-gt p2, v1, :cond_2

    #@9
    .line 825
    if-ne p1, p2, :cond_0

    #@b
    .line 826
    return-void

    #@c
    .line 828
    :cond_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@e
    if-eq p2, v1, :cond_1

    #@10
    .line 829
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@12
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@14
    .line 830
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@16
    sub-int/2addr v3, p2

    #@17
    .line 829
    invoke-static {v1, p2, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a
    .line 831
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@1c
    sub-int v2, p2, p1

    #@1e
    sub-int v0, v1, v2

    #@20
    .line 832
    .local v0, "newCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@22
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@24
    invoke-static {v1, v0, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@27
    .line 833
    iput v0, p0, Ljava/util/Vector;->elementCount:I

    #@29
    .line 838
    .end local v0    # "newCount":I
    :goto_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@2b
    add-int/lit8 v1, v1, 0x1

    #@2d
    iput v1, p0, Ljava/util/Vector;->modCount:I

    #@2f
    .line 823
    return-void

    #@30
    .line 835
    :cond_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@32
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@34
    invoke-static {v1, p1, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@37
    .line 836
    iput p1, p0, Ljava/util/Vector;->elementCount:I

    #@39
    goto :goto_0

    #@3a
    .line 840
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@3c
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@3f
    throw v1
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    #@1
    .line 855
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 874
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-ge p1, v1, :cond_0

    #@5
    .line 875
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@7
    aget-object v0, v1, p1

    #@9
    .line 876
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@b
    aput-object p2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 877
    return-object v0

    #@f
    .line 879
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@11
    invoke-static {p1, v1}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    #@14
    move-result-object v1

    #@15
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1
.end method

.method public declared-synchronized setElementAt(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 895
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-ge p2, v0, :cond_0

    #@5
    .line 896
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@7
    aput-object p1, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 894
    return-void

    #@b
    .line 898
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@d
    invoke-static {p2, v0}, Ljava/util/Vector;->arrayIndexOutOfBoundsException(II)Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    move-result-object v0

    #@11
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public declared-synchronized setSize(I)V
    .locals 3
    .param p1, "length"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 921
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-ne p1, v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 922
    return-void

    #@7
    .line 924
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->ensureCapacity(I)V

    #@a
    .line 925
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@c
    if-le v0, p1, :cond_1

    #@e
    .line 926
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@10
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@12
    const/4 v2, 0x0

    #@13
    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@16
    .line 928
    :cond_1
    iput p1, p0, Ljava/util/Vector;->elementCount:I

    #@18
    .line 929
    iget v0, p0, Ljava/util/Vector;->modCount:I

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    iput v0, p0, Ljava/util/Vector;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 920
    return-void

    #@20
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 941
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized subList(II)Ljava/util/List;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 961
    :try_start_0
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    #@3
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v1, p0}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 972
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@3
    new-array v0, v1, [Ljava/lang/Object;

    #@5
    .line 973
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@7
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 974
    return-object v0

    #@10
    .end local v0    # "result":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
    monitor-enter p0

    #@1
    .line 994
    :try_start_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@3
    array-length v3, p1

    #@4
    if-le v2, v3, :cond_0

    #@6
    .line 995
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    .line 996
    .local v1, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@10
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    move-object v0, v2

    #@15
    check-cast v0, [Ljava/lang/Object;

    #@17
    move-object p1, v0

    #@18
    .line 998
    .end local v1    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1a
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@1c
    const/4 v4, 0x0

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-static {v2, v4, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    .line 999
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@23
    array-length v3, p1

    #@24
    if-ge v2, v3, :cond_1

    #@26
    .line 1000
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@28
    const/4 v3, 0x0

    #@29
    aput-object v3, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    :cond_1
    monitor-exit p0

    #@2c
    .line 1002
    return-object p1

    #@2d
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit p0

    #@2f
    throw v2
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 1013
    :try_start_0
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1014
    const-string/jumbo v3, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v3

    #@a
    .line 1016
    :cond_0
    :try_start_1
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@c
    add-int/lit8 v2, v3, -0x1

    #@e
    .line 1017
    .local v2, "length":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@12
    mul-int/lit8 v3, v3, 0x10

    #@14
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@17
    .line 1018
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    #@19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 1019
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@1f
    .line 1020
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@21
    aget-object v3, v3, v1

    #@23
    if-ne v3, p0, :cond_1

    #@25
    .line 1021
    const-string/jumbo v3, "(this Collection)"

    #@28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 1025
    :goto_1
    const-string/jumbo v3, ", "

    #@2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 1019
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1023
    :cond_1
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@36
    aget-object v3, v3, v1

    #@38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_1

    #@3c
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catchall_0
    move-exception v3

    #@3d
    monitor-exit p0

    #@3e
    throw v3

    #@3f
    .line 1027
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_2
    :try_start_2
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@41
    aget-object v3, v3, v2

    #@43
    if-ne v3, p0, :cond_3

    #@45
    .line 1028
    const-string/jumbo v3, "(this Collection)"

    #@48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 1032
    :goto_2
    const/16 v3, 0x5d

    #@4d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@50
    .line 1033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    move-result-object v3

    #@54
    monitor-exit p0

    #@55
    return-object v3

    #@56
    .line 1030
    :cond_3
    :try_start_3
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@58
    aget-object v3, v3, v2

    #@5a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5d
    goto :goto_2
.end method

.method public declared-synchronized trimToSize()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 1044
    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@3
    array-length v0, v0

    #@4
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 1045
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@a
    invoke-direct {p0, v0}, Ljava/util/Vector;->grow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 1043
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method
