.class public Ljava/util/Vector;
.super Ljava/util/AbstractList;
.source "Vector.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Vector$Itr;,
        Ljava/util/Vector$ListItr;,
        Ljava/util/Vector$VectorSpliterator;
    }
.end annotation

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
.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final serialVersionUID:J = -0x266882a47fc450ffL


# instance fields
.field protected capacityIncrement:I

.field protected elementCount:I

.field protected elementData:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 157
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, v0}, Ljava/util/Vector;-><init>(I)V

    #@5
    .line 156
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 148
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/Vector;-><init>(II)V

    #@4
    .line 147
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "capacityIncrement"    # I

    #@0
    .prologue
    .line 131
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 132
    if-gez p1, :cond_0

    #@5
    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Illegal Capacity: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 135
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    #@21
    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@23
    .line 136
    iput p2, p0, Ljava/util/Vector;->capacityIncrement:I

    #@25
    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 170
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 171
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@9
    .line 172
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@b
    array-length v0, v0

    #@c
    iput v0, p0, Ljava/util/Vector;->elementCount:I

    #@e
    .line 174
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v0

    #@14
    const-class v1, [Ljava/lang/Object;

    #@16
    if-eq v0, v1, :cond_0

    #@18
    .line 175
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1a
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@1c
    const-class v2, [Ljava/lang/Object;

    #@1e
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@24
    .line 170
    :cond_0
    return-void
.end method

.method private ensureCapacityHelper(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 245
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    sub-int v0, p1, v0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 246
    invoke-direct {p0, p1}, Ljava/util/Vector;->grow(I)V

    #@a
    .line 243
    :cond_0
    return-void
.end method

.method private grow(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 259
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@2
    array-length v1, v2

    #@3
    .line 260
    .local v1, "oldCapacity":I
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    #@5
    if-lez v2, :cond_2

    #@7
    .line 261
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    #@9
    .line 260
    :goto_0
    add-int v0, v1, v2

    #@b
    .line 262
    .local v0, "newCapacity":I
    sub-int v2, v0, p1

    #@d
    if-gez v2, :cond_0

    #@f
    .line 263
    move v0, p1

    #@10
    .line 264
    :cond_0
    const v2, 0x7ffffff7

    #@13
    sub-int v2, v0, v2

    #@15
    if-lez v2, :cond_1

    #@17
    .line 265
    invoke-static {p1}, Ljava/util/Vector;->hugeCapacity(I)I

    #@1a
    move-result v0

    #@1b
    .line 266
    :cond_1
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1d
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    iput-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@23
    .line 257
    return-void

    #@24
    .end local v0    # "newCapacity":I
    :cond_2
    move v2, v1

    #@25
    .line 261
    goto :goto_0
.end method

.method private static hugeCapacity(I)I
    .locals 1
    .param p0, "minCapacity"    # I

    #@0
    .prologue
    const v0, 0x7ffffff7

    #@3
    .line 270
    if-gez p0, :cond_0

    #@5
    .line 271
    new-instance v0, Ljava/lang/OutOfMemoryError;

    #@7
    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    #@a
    throw v0

    #@b
    .line 272
    :cond_0
    if-le p0, v0, :cond_1

    #@d
    .line 273
    const v0, 0x7fffffff

    #@10
    .line 272
    :cond_1
    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1069
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v1

    #@4
    .line 1071
    .local v1, "fields":Ljava/io/ObjectOutputStream$PutField;
    monitor-enter p0

    #@5
    .line 1072
    :try_start_0
    const-string/jumbo v2, "capacityIncrement"

    #@8
    iget v3, p0, Ljava/util/Vector;->capacityIncrement:I

    #@a
    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@d
    .line 1073
    const-string/jumbo v2, "elementCount"

    #@10
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@12
    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@15
    .line 1074
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@17
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .local v0, "data":[Ljava/lang/Object;
    monitor-exit p0

    #@1e
    .line 1076
    const-string/jumbo v2, "elementData"

    #@21
    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@24
    .line 1077
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@27
    .line 1068
    return-void

    #@28
    .line 1071
    .end local v0    # "data":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    #@29
    monitor-exit p0

    #@2a
    throw v2
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 814
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@3
    .line 813
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
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 781
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->modCount:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Ljava/util/Vector;->modCount:I

    #@7
    .line 782
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    #@e
    .line 783
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@10
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@12
    add-int/lit8 v2, v1, 0x1

    #@14
    iput v2, p0, Ljava/util/Vector;->elementCount:I

    #@16
    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 784
    const/4 v0, 0x1

    #@19
    monitor-exit p0

    #@1a
    return v0

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .locals 7
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
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 954
    :try_start_0
    iget v4, p0, Ljava/util/Vector;->modCount:I

    #@4
    add-int/lit8 v4, v4, 0x1

    #@6
    iput v4, p0, Ljava/util/Vector;->modCount:I

    #@8
    .line 955
    if-ltz p1, :cond_0

    #@a
    iget v4, p0, Ljava/util/Vector;->elementCount:I

    #@c
    if-le p1, v4, :cond_1

    #@e
    .line 956
    :cond_0
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@10
    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@13
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :catchall_0
    move-exception v3

    #@15
    monitor-exit p0

    #@16
    throw v3

    #@17
    .line 958
    :cond_1
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .line 959
    .local v0, "a":[Ljava/lang/Object;
    array-length v2, v0

    #@1c
    .line 960
    .local v2, "numNew":I
    iget v4, p0, Ljava/util/Vector;->elementCount:I

    #@1e
    add-int/2addr v4, v2

    #@1f
    invoke-direct {p0, v4}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    #@22
    .line 962
    iget v4, p0, Ljava/util/Vector;->elementCount:I

    #@24
    sub-int v1, v4, p1

    #@26
    .line 963
    .local v1, "numMoved":I
    if-lez v1, :cond_2

    #@28
    .line 964
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@2a
    iget-object v5, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@2c
    add-int v6, p1, v2

    #@2e
    invoke-static {v4, p1, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@31
    .line 967
    :cond_2
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@33
    const/4 v5, 0x0

    #@34
    invoke-static {v0, v5, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@37
    .line 968
    iget v4, p0, Ljava/util/Vector;->elementCount:I

    #@39
    add-int/2addr v4, v2

    #@3a
    iput v4, p0, Ljava/util/Vector;->elementCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 969
    if-eqz v2, :cond_3

    #@3e
    const/4 v3, 0x1

    #@3f
    :cond_3
    monitor-exit p0

    #@40
    return v3
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 6
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
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 883
    :try_start_0
    iget v3, p0, Ljava/util/Vector;->modCount:I

    #@4
    add-int/lit8 v3, v3, 0x1

    #@6
    iput v3, p0, Ljava/util/Vector;->modCount:I

    #@8
    .line 884
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 885
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    #@d
    .line 886
    .local v1, "numNew":I
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@f
    add-int/2addr v3, v1

    #@10
    invoke-direct {p0, v3}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    #@13
    .line 887
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@15
    iget v4, p0, Ljava/util/Vector;->elementCount:I

    #@17
    const/4 v5, 0x0

    #@18
    invoke-static {v0, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    .line 888
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@1d
    add-int/2addr v3, v1

    #@1e
    iput v3, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 889
    if-eqz v1, :cond_0

    #@22
    const/4 v2, 0x1

    #@23
    :cond_0
    monitor-exit p0

    #@24
    return v2

    #@25
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "numNew":I
    :catchall_0
    move-exception v2

    #@26
    monitor-exit p0

    #@27
    throw v2
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
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 619
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->modCount:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Ljava/util/Vector;->modCount:I

    #@7
    .line 620
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    #@e
    .line 621
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@10
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@12
    add-int/lit8 v2, v1, 0x1

    #@14
    iput v2, p0, Ljava/util/Vector;->elementCount:I

    #@16
    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 618
    return-void

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method public declared-synchronized capacity()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 306
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
    .line 850
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    #@3
    .line 849
    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 674
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Ljava/util/Vector;

    #@7
    .line 675
    .local v1, "v":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@9
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@b
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    iput-object v2, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@11
    .line 676
    const/4 v2, 0x0

    #@12
    iput v2, v1, Ljava/util/Vector;->modCount:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 677
    return-object v1

    #@16
    .line 678
    .end local v1    # "v":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catch_0
    move-exception v0

    #@17
    .line 680
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_1
    new-instance v2, Ljava/lang/InternalError;

    #@19
    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    #@1c
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit p0

    #@1f
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 367
    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    #@4
    move-result v1

    #@5
    if-ltz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
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
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    #@1
    .line 866
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
    .param p1, "anArray"    # [Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 192
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
    .line 191
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
    .locals 3
    .param p1, "index"    # I
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
    .line 473
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-lt p1, v0, :cond_0

    #@5
    .line 474
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, " >= "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0

    #@28
    .line 477
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result-object v0

    #@2c
    monitor-exit p0

    #@2d
    return-object v0
.end method

.method elementData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 734
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
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
    .line 339
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    new-instance v0, Ljava/util/Vector$1;

    #@2
    invoke-direct {v0, p0}, Ljava/util/Vector$1;-><init>(Ljava/util/Vector;)V

    #@5
    return-object v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 229
    if-lez p1, :cond_0

    #@3
    .line 230
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->modCount:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Ljava/util/Vector;->modCount:I

    #@9
    .line 231
    invoke-direct {p0, p1}, Ljava/util/Vector;->ensureCapacityHelper(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit p0

    #@d
    .line 228
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 985
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z
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

.method public declared-synchronized firstElement()Ljava/lang/Object;
    .locals 1
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
    .line 488
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 489
    new-instance v0, Ljava/util/NoSuchElementException;

    #@7
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0

    #@e
    .line 491
    :cond_0
    const/4 v0, 0x0

    #@f
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result-object v0

    #@13
    monitor-exit p0

    #@14
    return-object v0
.end method

.method public declared-synchronized forEach(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    monitor-enter p0

    #@1
    .line 1249
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 1250
    iget v2, p0, Ljava/util/Vector;->modCount:I

    #@6
    .line 1252
    .local v2, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@8
    .line 1253
    .local v1, "elementData":[Ljava/lang/Object;, "[TE;"
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@a
    .line 1254
    .local v0, "elementCount":I
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    iget v4, p0, Ljava/util/Vector;->modCount:I

    #@d
    if-ne v4, v2, :cond_0

    #@f
    if-ge v3, v0, :cond_0

    #@11
    .line 1255
    aget-object v4, v1, v3

    #@13
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@16
    .line 1254
    add-int/lit8 v3, v3, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1257
    :cond_0
    iget v4, p0, Ljava/util/Vector;->modCount:I

    #@1b
    if-eq v4, v2, :cond_1

    #@1d
    .line 1258
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@1f
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@22
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .end local v0    # "elementCount":I
    .end local v1    # "elementData":[Ljava/lang/Object;, "[TE;"
    .end local v2    # "expectedModCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@24
    monitor-exit p0

    #@25
    throw v4

    #@26
    .restart local v0    # "elementCount":I
    .restart local v1    # "elementData":[Ljava/lang/Object;, "[TE;"
    .restart local v2    # "expectedModCount":I
    .restart local v3    # "i":I
    :cond_1
    monitor-exit p0

    #@27
    .line 1248
    return-void
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
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
    .line 747
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-lt p1, v0, :cond_0

    #@5
    .line 748
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0

    #@e
    .line 750
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result-object v0

    #@12
    monitor-exit p0

    #@13
    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 992
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->hashCode()I
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

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 382
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
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 402
    if-nez p1, :cond_1

    #@3
    .line 403
    move v0, p2

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@6
    if-ge v0, v1, :cond_3

    #@8
    .line 404
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@a
    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-nez v1, :cond_0

    #@e
    monitor-exit p0

    #@f
    .line 405
    return v0

    #@10
    .line 403
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 407
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    #@14
    .restart local v0    # "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@16
    if-ge v0, v1, :cond_3

    #@18
    .line 408
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1a
    aget-object v1, v1, v0

    #@1c
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    monitor-exit p0

    #@23
    .line 409
    return v0

    #@24
    .line 407
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_1

    #@27
    .line 411
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
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 596
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->modCount:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Ljava/util/Vector;->modCount:I

    #@7
    .line 597
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@9
    if-le p2, v0, :cond_0

    #@b
    .line 598
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 599
    const-string/jumbo v2, " > "

    #@19
    .line 598
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 599
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@1f
    .line 598
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit p0

    #@2d
    throw v0

    #@2e
    .line 601
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    invoke-direct {p0, v0}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    #@35
    .line 602
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@37
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@39
    add-int/lit8 v2, p2, 0x1

    #@3b
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@3d
    sub-int/2addr v3, p2

    #@3e
    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@41
    .line 603
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@43
    aput-object p1, v0, p2

    #@45
    .line 604
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@47
    add-int/lit8 v0, v0, 0x1

    #@49
    iput v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    monitor-exit p0

    #@4c
    .line 595
    return-void
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
    .line 326
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

.method public declared-synchronized iterator()Ljava/util/Iterator;
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
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 1118
    :try_start_0
    new-instance v0, Ljava/util/Vector$Itr;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, p0, v1}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;Ljava/util/Vector$Itr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized lastElement()Ljava/lang/Object;
    .locals 1
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
    .line 502
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 503
    new-instance v0, Ljava/util/NoSuchElementException;

    #@7
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0

    #@e
    .line 505
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@10
    add-int/lit8 v0, v0, -0x1

    #@12
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-object v0

    #@16
    monitor-exit p0

    #@17
    return-object v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 426
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
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 446
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-lt p2, v1, :cond_0

    #@5
    .line 447
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, " >= "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1

    #@28
    .line 449
    :cond_0
    if-nez p1, :cond_2

    #@2a
    .line 450
    move v0, p2

    #@2b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    #@2d
    .line 451
    :try_start_1
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@2f
    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    if-nez v1, :cond_1

    #@33
    monitor-exit p0

    #@34
    .line 452
    return v0

    #@35
    .line 450
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@37
    goto :goto_0

    #@38
    .line 454
    .end local v0    # "i":I
    :cond_2
    move v0, p2

    #@39
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    #@3b
    .line 455
    :try_start_2
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@3d
    aget-object v1, v1, v0

    #@3f
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_3

    #@45
    monitor-exit p0

    #@46
    .line 456
    return v0

    #@47
    .line 454
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@49
    goto :goto_1

    #@4a
    .line 458
    :cond_4
    const/4 v1, -0x1

    #@4b
    monitor-exit p0

    #@4c
    return v1
.end method

.method public declared-synchronized listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 1107
    :try_start_0
    new-instance v0, Ljava/util/Vector$ListItr;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, p0, v1}, Ljava/util/Vector$ListItr;-><init>(Ljava/util/Vector;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized listIterator(I)Ljava/util/ListIterator;
    .locals 3
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
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 1093
    if-ltz p1, :cond_0

    #@3
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 1094
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Index: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0

    #@24
    .line 1095
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/Vector$ListItr;

    #@26
    invoke-direct {v0, p0, p1}, Ljava/util/Vector$ListItr;-><init>(Ljava/util/Vector;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    return-object v0
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
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
    .line 829
    :try_start_0
    iget v2, p0, Ljava/util/Vector;->modCount:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Ljava/util/Vector;->modCount:I

    #@7
    .line 830
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@9
    if-lt p1, v2, :cond_0

    #@b
    .line 831
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@d
    invoke-direct {v2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@10
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :catchall_0
    move-exception v2

    #@12
    monitor-exit p0

    #@13
    throw v2

    #@14
    .line 832
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    .line 834
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@1a
    sub-int/2addr v2, p1

    #@1b
    add-int/lit8 v0, v2, -0x1

    #@1d
    .line 835
    .local v0, "numMoved":I
    if-lez v0, :cond_1

    #@1f
    .line 836
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@21
    add-int/lit8 v3, p1, 0x1

    #@23
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@25
    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 838
    :cond_1
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@2a
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@2c
    add-int/lit8 v3, v3, -0x1

    #@2e
    iput v3, p0, Ljava/util/Vector;->elementCount:I

    #@30
    const/4 v4, 0x0

    #@31
    aput-object v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 840
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 799
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
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    #@1
    .line 910
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
    .line 656
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iput v1, p0, Ljava/util/Vector;->modCount:I

    #@7
    .line 658
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 659
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v2, v1, v0

    #@11
    .line 658
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 661
    :cond_0
    const/4 v1, 0x0

    #@15
    iput v1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 655
    return-void

    #@19
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit p0

    #@1b
    throw v1
.end method

.method public declared-synchronized removeElement(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 640
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    iput v1, p0, Ljava/util/Vector;->modCount:I

    #@8
    .line 641
    invoke-virtual {p0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    .line 642
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@e
    .line 643
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 644
    const/4 v1, 0x1

    #@12
    monitor-exit p0

    #@13
    return v1

    #@14
    :cond_0
    monitor-exit p0

    #@15
    .line 646
    return v2

    #@16
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1
.end method

.method public declared-synchronized removeElementAt(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 556
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iput v1, p0, Ljava/util/Vector;->modCount:I

    #@7
    .line 557
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@9
    if-lt p1, v1, :cond_0

    #@b
    .line 558
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, " >= "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 559
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@1f
    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit p0

    #@2d
    throw v1

    #@2e
    .line 561
    :cond_0
    if-gez p1, :cond_1

    #@30
    .line 562
    :try_start_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@32
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@35
    throw v1

    #@36
    .line 564
    :cond_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@38
    sub-int/2addr v1, p1

    #@39
    add-int/lit8 v0, v1, -0x1

    #@3b
    .line 565
    .local v0, "j":I
    if-lez v0, :cond_2

    #@3d
    .line 566
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@3f
    add-int/lit8 v2, p1, 0x1

    #@41
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@43
    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@46
    .line 568
    :cond_2
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@48
    add-int/lit8 v1, v1, -0x1

    #@4a
    iput v1, p0, Ljava/util/Vector;->elementCount:I

    #@4c
    .line 569
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@4e
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@50
    const/4 v3, 0x0

    #@51
    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    monitor-exit p0

    #@54
    .line 555
    return-void
.end method

.method public declared-synchronized removeIf(Ljava/util/function/Predicate;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 1370
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 1374
    const/4 v7, 0x0

    #@6
    .line 1375
    .local v7, "removeCount":I
    iget v9, p0, Ljava/util/Vector;->elementCount:I

    #@8
    .line 1376
    .local v9, "size":I
    new-instance v8, Ljava/util/BitSet;

    #@a
    invoke-direct {v8, v9}, Ljava/util/BitSet;-><init>(I)V

    #@d
    .line 1377
    .local v8, "removeSet":Ljava/util/BitSet;
    iget v2, p0, Ljava/util/Vector;->modCount:I

    #@f
    .line 1378
    .local v2, "expectedModCount":I
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    :goto_0
    iget v10, p0, Ljava/util/Vector;->modCount:I

    #@12
    if-ne v10, v2, :cond_1

    #@14
    if-ge v3, v9, :cond_1

    #@16
    .line 1380
    iget-object v10, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@18
    aget-object v1, v10, v3

    #@1a
    .line 1381
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@1d
    move-result v10

    #@1e
    if-eqz v10, :cond_0

    #@20
    .line 1382
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    #@23
    .line 1383
    add-int/lit8 v7, v7, 0x1

    #@25
    .line 1378
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1386
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    iget v10, p0, Ljava/util/Vector;->modCount:I

    #@2a
    if-eq v10, v2, :cond_2

    #@2c
    .line 1387
    new-instance v10, Ljava/util/ConcurrentModificationException;

    #@2e
    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@31
    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .end local v2    # "expectedModCount":I
    .end local v3    # "i":I
    .end local v7    # "removeCount":I
    .end local v8    # "removeSet":Ljava/util/BitSet;
    .end local v9    # "size":I
    :catchall_0
    move-exception v10

    #@33
    monitor-exit p0

    #@34
    throw v10

    #@35
    .line 1391
    .restart local v2    # "expectedModCount":I
    .restart local v3    # "i":I
    .restart local v7    # "removeCount":I
    .restart local v8    # "removeSet":Ljava/util/BitSet;
    .restart local v9    # "size":I
    :cond_2
    if-lez v7, :cond_3

    #@37
    const/4 v0, 0x1

    #@38
    .line 1392
    .local v0, "anyToRemove":Z
    :cond_3
    if-eqz v0, :cond_7

    #@3a
    .line 1393
    sub-int v6, v9, v7

    #@3c
    .line 1394
    .local v6, "newSize":I
    const/4 v3, 0x0

    #@3d
    const/4 v4, 0x0

    #@3e
    .local v4, "j":I
    :goto_1
    if-ge v3, v9, :cond_4

    #@40
    if-ge v4, v6, :cond_4

    #@42
    .line 1395
    :try_start_1
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->nextClearBit(I)I

    #@45
    move-result v3

    #@46
    .line 1396
    iget-object v10, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@48
    iget-object v11, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@4a
    aget-object v11, v11, v3

    #@4c
    aput-object v11, v10, v4

    #@4e
    .line 1394
    add-int/lit8 v3, v3, 0x1

    #@50
    add-int/lit8 v4, v4, 0x1

    #@52
    goto :goto_1

    #@53
    .line 1398
    :cond_4
    move v5, v6

    #@54
    .local v5, "k":I
    :goto_2
    if-ge v5, v9, :cond_5

    #@56
    .line 1399
    iget-object v10, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@58
    const/4 v11, 0x0

    #@59
    aput-object v11, v10, v5

    #@5b
    .line 1398
    add-int/lit8 v5, v5, 0x1

    #@5d
    goto :goto_2

    #@5e
    .line 1401
    :cond_5
    iput v6, p0, Ljava/util/Vector;->elementCount:I

    #@60
    .line 1402
    iget v10, p0, Ljava/util/Vector;->modCount:I

    #@62
    if-eq v10, v2, :cond_6

    #@64
    .line 1403
    new-instance v10, Ljava/util/ConcurrentModificationException;

    #@66
    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@69
    throw v10

    #@6a
    .line 1405
    :cond_6
    iget v10, p0, Ljava/util/Vector;->modCount:I

    #@6c
    add-int/lit8 v10, v10, 0x1

    #@6e
    iput v10, p0, Ljava/util/Vector;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "newSize":I
    :cond_7
    monitor-exit p0

    #@71
    .line 1408
    return v0
.end method

.method protected declared-synchronized removeRange(II)V
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 1050
    :try_start_0
    iget v2, p0, Ljava/util/Vector;->modCount:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Ljava/util/Vector;->modCount:I

    #@7
    .line 1051
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@9
    sub-int v1, v2, p2

    #@b
    .line 1052
    .local v1, "numMoved":I
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@d
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@f
    invoke-static {v2, p2, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@12
    .line 1056
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@14
    sub-int v3, p2, p1

    #@16
    sub-int v0, v2, v3

    #@18
    .line 1057
    .local v0, "newElementCount":I
    :goto_0
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@1a
    if-eq v2, v0, :cond_0

    #@1c
    .line 1058
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@1e
    iget v3, p0, Ljava/util/Vector;->elementCount:I

    #@20
    add-int/lit8 v3, v3, -0x1

    #@22
    iput v3, p0, Ljava/util/Vector;->elementCount:I

    #@24
    const/4 v4, 0x0

    #@25
    aput-object v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .end local v0    # "newElementCount":I
    .end local v1    # "numMoved":I
    :catchall_0
    move-exception v2

    #@29
    monitor-exit p0

    #@2a
    throw v2

    #@2b
    .restart local v0    # "newElementCount":I
    .restart local v1    # "numMoved":I
    :cond_0
    monitor-exit p0

    #@2c
    .line 1049
    return-void
.end method

.method public declared-synchronized replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    monitor-enter p0

    #@1
    .line 1414
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 1415
    iget v0, p0, Ljava/util/Vector;->modCount:I

    #@6
    .line 1416
    .local v0, "expectedModCount":I
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@8
    .line 1417
    .local v2, "size":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljava/util/Vector;->modCount:I

    #@b
    if-ne v3, v0, :cond_0

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 1418
    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@11
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@13
    aget-object v4, v4, v1

    #@15
    invoke-interface {p1, v4}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    aput-object v4, v3, v1

    #@1b
    .line 1417
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1420
    :cond_0
    iget v3, p0, Ljava/util/Vector;->modCount:I

    #@20
    if-eq v3, v0, :cond_1

    #@22
    .line 1421
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@24
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@27
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "expectedModCount":I
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@29
    monitor-exit p0

    #@2a
    throw v3

    #@2b
    .line 1423
    .restart local v0    # "expectedModCount":I
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_1
    :try_start_1
    iget v3, p0, Ljava/util/Vector;->modCount:I

    #@2d
    add-int/lit8 v3, v3, 0x1

    #@2f
    iput v3, p0, Ljava/util/Vector;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    monitor-exit p0

    #@32
    .line 1413
    return-void
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
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    #@1
    .line 933
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
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 765
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-lt p1, v1, :cond_0

    #@5
    .line 766
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@a
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v1

    #@c
    monitor-exit p0

    #@d
    throw v1

    #@e
    .line 768
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 769
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@14
    aput-object p2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 770
    return-object v0
.end method

.method public declared-synchronized setElementAt(Ljava/lang/Object;I)V
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    #@1
    .line 529
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@3
    if-lt p2, v0, :cond_0

    #@5
    .line 530
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, " >= "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 531
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@19
    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0

    #@28
    .line 533
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@2a
    aput-object p1, v0, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 528
    return-void
.end method

.method public declared-synchronized setSize(I)V
    .locals 3
    .param p1, "newSize"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 287
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iput v1, p0, Ljava/util/Vector;->modCount:I

    #@7
    .line 288
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@9
    if-le p1, v1, :cond_1

    #@b
    .line 289
    invoke-direct {p0, p1}, Ljava/util/Vector;->ensureCapacityHelper(I)V

    #@e
    .line 295
    :cond_0
    iput p1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 286
    return-void

    #@12
    .line 291
    :cond_1
    move v0, p1

    #@13
    .local v0, "i":I
    :goto_0
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@15
    if-ge v0, v1, :cond_0

    #@17
    .line 292
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@19
    const/4 v2, 0x0

    #@1a
    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 291
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@20
    monitor-exit p0

    #@21
    throw v1
.end method

.method public declared-synchronized size()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 315
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

.method public declared-synchronized sort(Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    monitor-enter p0

    #@1
    .line 1429
    :try_start_0
    iget v0, p0, Ljava/util/Vector;->modCount:I

    #@3
    .line 1430
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@5
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@7
    const/4 v3, 0x0

    #@8
    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    #@b
    .line 1431
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@d
    if-eq v1, v0, :cond_0

    #@f
    .line 1432
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@11
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@14
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .end local v0    # "expectedModCount":I
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1

    #@18
    .line 1434
    .restart local v0    # "expectedModCount":I
    :cond_0
    :try_start_1
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 1428
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 1277
    new-instance v0, Ljava/util/Vector$VectorSpliterator;

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v4, -0x1

    #@5
    move-object v1, p0

    #@6
    move v5, v3

    #@7
    invoke-direct/range {v0 .. v5}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    #@a
    return-object v0
.end method

.method public declared-synchronized subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
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
    .line 1038
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 691
    :try_start_0
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@3
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
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
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    monitor-enter p0

    #@1
    .line 719
    :try_start_0
    array-length v0, p1

    #@2
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 720
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@8
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v0

    #@12
    monitor-exit p0

    #@13
    return-object v0

    #@14
    .line 722
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@16
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@18
    const/4 v2, 0x0

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 724
    array-length v0, p1

    #@1e
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@20
    if-le v0, v1, :cond_1

    #@22
    .line 725
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    #@24
    const/4 v1, 0x0

    #@25
    aput-object v1, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 727
    return-object p1

    #@29
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 1000
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized trimToSize()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    #@1
    .line 204
    :try_start_0
    iget v1, p0, Ljava/util/Vector;->modCount:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iput v1, p0, Ljava/util/Vector;->modCount:I

    #@7
    .line 205
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@9
    array-length v0, v1

    #@a
    .line 206
    .local v0, "oldCapacity":I
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    #@c
    if-ge v1, v0, :cond_0

    #@e
    .line 207
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    #@10
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    #@12
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit p0

    #@19
    .line 203
    return-void

    #@1a
    .end local v0    # "oldCapacity":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method
