.class public Ljava/util/ArrayList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayList$ArrayListSpliterator;,
        Ljava/util/ArrayList$Itr;,
        Ljava/util/ArrayList$ListItr;,
        Ljava/util/ArrayList$SubList;
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
.field private static final DEFAULT_CAPACITY:I = 0xa

.field private static final EMPTY_ELEMENTDATA:[Ljava/lang/Object;

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final serialVersionUID:J = 0x7881d21d99c7619dL


# instance fields
.field transient elementData:[Ljava/lang/Object;

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/ArrayList;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    sput-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    #@5
    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 158
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 159
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    #@5
    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@7
    .line 157
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 147
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 148
    if-gez p1, :cond_0

    #@5
    .line 149
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
    .line 151
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    #@21
    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@23
    .line 146
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
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 171
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@9
    .line 172
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@b
    array-length v0, v0

    #@c
    iput v0, p0, Ljava/util/ArrayList;->size:I

    #@e
    .line 174
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

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
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@1a
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@1c
    const-class v2, [Ljava/lang/Object;

    #@1e
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@24
    .line 170
    :cond_0
    return-void
.end method

.method private batchRemove(Ljava/util/Collection;Z)Z
    .locals 9
    .param p2, "complement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;Z)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v8, 0x0

    #@1
    .line 687
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@3
    .line 688
    .local v0, "elementData":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@4
    .local v3, "r":I
    const/4 v4, 0x0

    #@5
    .line 689
    .local v4, "w":I
    const/4 v2, 0x0

    #@6
    .local v2, "modified":Z
    move v5, v4

    #@7
    .line 691
    .end local v4    # "w":I
    .local v5, "w":I
    :goto_0
    :try_start_0
    iget v6, p0, Ljava/util/ArrayList;->size:I

    #@9
    if-ge v3, v6, :cond_0

    #@b
    .line 692
    aget-object v6, v0, v3

    #@d
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v6

    #@11
    if-ne v6, p2, :cond_7

    #@13
    .line 693
    add-int/lit8 v4, v5, 0x1

    #@15
    .end local v5    # "w":I
    .restart local v4    # "w":I
    :try_start_1
    aget-object v6, v0, v3

    #@17
    aput-object v6, v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@19
    .line 691
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1b
    move v5, v4

    #@1c
    .end local v4    # "w":I
    .restart local v5    # "w":I
    goto :goto_0

    #@1d
    .line 697
    :cond_0
    iget v6, p0, Ljava/util/ArrayList;->size:I

    #@1f
    if-eq v3, v6, :cond_6

    #@21
    .line 700
    iget v6, p0, Ljava/util/ArrayList;->size:I

    #@23
    sub-int/2addr v6, v3

    #@24
    .line 698
    invoke-static {v0, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@27
    .line 701
    iget v6, p0, Ljava/util/ArrayList;->size:I

    #@29
    sub-int/2addr v6, v3

    #@2a
    add-int v4, v5, v6

    #@2c
    .line 703
    .end local v5    # "w":I
    .restart local v4    # "w":I
    :goto_2
    iget v6, p0, Ljava/util/ArrayList;->size:I

    #@2e
    if-eq v4, v6, :cond_2

    #@30
    .line 705
    move v1, v4

    #@31
    .local v1, "i":I
    :goto_3
    iget v6, p0, Ljava/util/ArrayList;->size:I

    #@33
    if-ge v1, v6, :cond_1

    #@35
    .line 706
    aput-object v8, v0, v1

    #@37
    .line 705
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_3

    #@3a
    .line 707
    :cond_1
    iget v6, p0, Ljava/util/ArrayList;->modCount:I

    #@3c
    iget v7, p0, Ljava/util/ArrayList;->size:I

    #@3e
    sub-int/2addr v7, v4

    #@3f
    add-int/2addr v6, v7

    #@40
    iput v6, p0, Ljava/util/ArrayList;->modCount:I

    #@42
    .line 708
    iput v4, p0, Ljava/util/ArrayList;->size:I

    #@44
    .line 709
    const/4 v2, 0x1

    #@45
    .line 712
    .end local v1    # "i":I
    :cond_2
    return v2

    #@46
    .line 694
    .end local v4    # "w":I
    .restart local v5    # "w":I
    :catchall_0
    move-exception v6

    #@47
    move v4, v5

    #@48
    .line 697
    .end local v5    # "w":I
    .restart local v4    # "w":I
    :goto_4
    iget v7, p0, Ljava/util/ArrayList;->size:I

    #@4a
    if-eq v3, v7, :cond_3

    #@4c
    .line 700
    iget v7, p0, Ljava/util/ArrayList;->size:I

    #@4e
    sub-int/2addr v7, v3

    #@4f
    .line 698
    invoke-static {v0, v3, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@52
    .line 701
    iget v7, p0, Ljava/util/ArrayList;->size:I

    #@54
    sub-int/2addr v7, v3

    #@55
    add-int/2addr v4, v7

    #@56
    .line 703
    :cond_3
    iget v7, p0, Ljava/util/ArrayList;->size:I

    #@58
    if-eq v4, v7, :cond_5

    #@5a
    .line 705
    move v1, v4

    #@5b
    .restart local v1    # "i":I
    :goto_5
    iget v7, p0, Ljava/util/ArrayList;->size:I

    #@5d
    if-ge v1, v7, :cond_4

    #@5f
    .line 706
    aput-object v8, v0, v1

    #@61
    .line 705
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_5

    #@64
    .line 707
    :cond_4
    iget v7, p0, Ljava/util/ArrayList;->modCount:I

    #@66
    iget v8, p0, Ljava/util/ArrayList;->size:I

    #@68
    sub-int/2addr v8, v4

    #@69
    add-int/2addr v7, v8

    #@6a
    iput v7, p0, Ljava/util/ArrayList;->modCount:I

    #@6c
    .line 708
    iput v4, p0, Ljava/util/ArrayList;->size:I

    #@6e
    .line 709
    const/4 v2, 0x1

    #@6f
    .line 694
    .end local v1    # "i":I
    :cond_5
    throw v6

    #@70
    :catchall_1
    move-exception v6

    #@71
    goto :goto_4

    #@72
    .end local v4    # "w":I
    .restart local v5    # "w":I
    :cond_6
    move v4, v5

    #@73
    .end local v5    # "w":I
    .restart local v4    # "w":I
    goto :goto_2

    #@74
    .end local v4    # "w":I
    .restart local v5    # "w":I
    :cond_7
    move v4, v5

    #@75
    .end local v5    # "w":I
    .restart local v4    # "w":I
    goto :goto_1
.end method

.method private ensureCapacityInternal(I)V
    .locals 2
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 211
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@2
    sget-object v1, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 212
    const/16 v0, 0xa

    #@8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@b
    move-result p1

    #@c
    .line 215
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->ensureExplicitCapacity(I)V

    #@f
    .line 210
    return-void
.end method

.method private ensureExplicitCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 219
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    #@6
    .line 222
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@8
    array-length v0, v0

    #@9
    sub-int v0, p1, v0

    #@b
    if-lez v0, :cond_0

    #@d
    .line 223
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->grow(I)V

    #@10
    .line 218
    :cond_0
    return-void
.end method

.method private fastRemove(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 526
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    #@2
    add-int/lit8 v1, v1, 0x1

    #@4
    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    #@6
    .line 527
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@8
    sub-int/2addr v1, p1

    #@9
    add-int/lit8 v0, v1, -0x1

    #@b
    .line 528
    .local v0, "numMoved":I
    if-lez v0, :cond_0

    #@d
    .line 529
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@f
    add-int/lit8 v2, p1, 0x1

    #@11
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@13
    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 531
    :cond_0
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@18
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@1a
    add-int/lit8 v2, v2, -0x1

    #@1c
    iput v2, p0, Ljava/util/ArrayList;->size:I

    #@1e
    const/4 v3, 0x0

    #@1f
    aput-object v3, v1, v2

    #@21
    .line 525
    return-void
.end method

.method private grow(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 242
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@2
    array-length v1, v2

    #@3
    .line 243
    .local v1, "oldCapacity":I
    shr-int/lit8 v2, v1, 0x1

    #@5
    add-int v0, v1, v2

    #@7
    .line 244
    .local v0, "newCapacity":I
    sub-int v2, v0, p1

    #@9
    if-gez v2, :cond_0

    #@b
    .line 245
    move v0, p1

    #@c
    .line 246
    :cond_0
    const v2, 0x7ffffff7

    #@f
    sub-int v2, v0, v2

    #@11
    if-lez v2, :cond_1

    #@13
    .line 247
    invoke-static {p1}, Ljava/util/ArrayList;->hugeCapacity(I)I

    #@16
    move-result v0

    #@17
    .line 249
    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@19
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@1f
    .line 240
    return-void
.end method

.method private static hugeCapacity(I)I
    .locals 1
    .param p0, "minCapacity"    # I

    #@0
    .prologue
    const v0, 0x7ffffff7

    #@3
    .line 253
    if-gez p0, :cond_0

    #@5
    .line 254
    new-instance v0, Ljava/lang/OutOfMemoryError;

    #@7
    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    #@a
    throw v0

    #@b
    .line 255
    :cond_0
    if-le p0, v0, :cond_1

    #@d
    .line 256
    const v0, 0x7fffffff

    #@10
    .line 255
    :cond_1
    return v0
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 644
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
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
    iget v1, p0, Ljava/util/ArrayList;->size:I

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
    .line 748
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    sget-object v2, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    #@2
    iput-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@4
    .line 751
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@7
    .line 754
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@a
    .line 756
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@c
    if-lez v2, :cond_0

    #@e
    .line 758
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@10
    invoke-direct {p0, v2}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    #@13
    .line 760
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@15
    .line 762
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@18
    if-ge v1, v2, :cond_0

    #@1a
    .line 763
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, v0, v1

    #@20
    .line 762
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 747
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static subListRangeCheck(III)V
    .locals 3
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "size"    # I

    #@0
    .prologue
    .line 984
    if-gez p0, :cond_0

    #@2
    .line 985
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "fromIndex = "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 986
    :cond_0
    if-le p1, p2, :cond_1

    #@1e
    .line 987
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "toIndex = "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 988
    :cond_1
    if-le p0, p1, :cond_2

    #@3a
    .line 989
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3c
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v2, "fromIndex("

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 990
    const-string/jumbo v2, ") > toIndex("

    #@4f
    .line 989
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    .line 990
    const-string/jumbo v2, ")"

    #@5a
    .line 989
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v0

    #@66
    .line 983
    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 726
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    #@2
    .line 727
    .local v0, "expectedModCount":I
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@5
    .line 730
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@7
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@a
    .line 733
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 734
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@11
    aget-object v2, v2, v1

    #@13
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@16
    .line 733
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 737
    :cond_0
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    #@1b
    if-eq v2, v0, :cond_1

    #@1d
    .line 738
    new-instance v2, Ljava/util/ConcurrentModificationException;

    #@1f
    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@22
    throw v2

    #@23
    .line 724
    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 456
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@2
    if-gt p1, v0, :cond_0

    #@4
    if-gez p1, :cond_1

    #@6
    .line 457
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 459
    :cond_1
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    #@17
    .line 460
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@19
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@1b
    add-int/lit8 v2, p1, 0x1

    #@1d
    .line 461
    iget v3, p0, Ljava/util/ArrayList;->size:I

    #@1f
    sub-int/2addr v3, p1

    #@20
    .line 460
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 462
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@25
    aput-object p2, v0, p1

    #@27
    .line 463
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    iput v0, p0, Ljava/util/ArrayList;->size:I

    #@2d
    .line 455
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 441
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    #@7
    .line 442
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@9
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@b
    add-int/lit8 v2, v1, 0x1

    #@d
    iput v2, p0, Ljava/util/ArrayList;->size:I

    #@f
    aput-object p1, v0, v1

    #@11
    .line 443
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
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
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v3, 0x0

    #@1
    .line 586
    iget v4, p0, Ljava/util/ArrayList;->size:I

    #@3
    if-gt p1, v4, :cond_0

    #@5
    if-gez p1, :cond_1

    #@7
    .line 587
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 589
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .line 590
    .local v0, "a":[Ljava/lang/Object;
    array-length v2, v0

    #@16
    .line 591
    .local v2, "numNew":I
    iget v4, p0, Ljava/util/ArrayList;->size:I

    #@18
    add-int/2addr v4, v2

    #@19
    invoke-direct {p0, v4}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    #@1c
    .line 593
    iget v4, p0, Ljava/util/ArrayList;->size:I

    #@1e
    sub-int v1, v4, p1

    #@20
    .line 594
    .local v1, "numMoved":I
    if-lez v1, :cond_2

    #@22
    .line 595
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@24
    iget-object v5, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@26
    add-int v6, p1, v2

    #@28
    invoke-static {v4, p1, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2b
    .line 598
    :cond_2
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@2d
    invoke-static {v0, v3, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    .line 599
    iget v4, p0, Ljava/util/ArrayList;->size:I

    #@32
    add-int/2addr v4, v2

    #@33
    iput v4, p0, Ljava/util/ArrayList;->size:I

    #@35
    .line 600
    if-eqz v2, :cond_3

    #@37
    const/4 v3, 0x1

    #@38
    :cond_3
    return v3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    #@1
    .line 562
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 563
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    #@6
    .line 564
    .local v1, "numNew":I
    iget v3, p0, Ljava/util/ArrayList;->size:I

    #@8
    add-int/2addr v3, v1

    #@9
    invoke-direct {p0, v3}, Ljava/util/ArrayList;->ensureCapacityInternal(I)V

    #@c
    .line 565
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@e
    iget v4, p0, Ljava/util/ArrayList;->size:I

    #@10
    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@13
    .line 566
    iget v3, p0, Ljava/util/ArrayList;->size:I

    #@15
    add-int/2addr v3, v1

    #@16
    iput v3, p0, Ljava/util/ArrayList;->size:I

    #@18
    .line 567
    if-eqz v1, :cond_0

    #@1a
    const/4 v2, 0x1

    #@1b
    :cond_0
    return v2
.end method

.method public clear()V
    .locals 3

    #@0
    .prologue
    .line 539
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    #@2
    add-int/lit8 v1, v1, 0x1

    #@4
    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    #@6
    .line 542
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 543
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v2, v1, v0

    #@10
    .line 542
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 545
    :cond_0
    const/4 v1, 0x0

    #@14
    iput v1, p0, Ljava/util/ArrayList;->size:I

    #@16
    .line 538
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 339
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractList;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/util/ArrayList;

    #@6
    .line 340
    .local v1, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@8
    iget v3, p0, Ljava/util/ArrayList;->size:I

    #@a
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    iput-object v2, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@10
    .line 341
    const/4 v2, 0x0

    #@11
    iput v2, v1, Ljava/util/ArrayList;->modCount:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 342
    return-object v1

    #@14
    .line 343
    .end local v1    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :catch_0
    move-exception v0

    #@15
    .line 345
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@17
    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 288
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

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

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 198
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@2
    sget-object v2, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    #@4
    if-eq v1, v2, :cond_1

    #@6
    .line 200
    const/4 v0, 0x0

    #@7
    .line 205
    .local v0, "minExpand":I
    :goto_0
    if-le p1, v0, :cond_0

    #@9
    .line 206
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->ensureExplicitCapacity(I)V

    #@c
    .line 197
    :cond_0
    return-void

    #@d
    .line 203
    .end local v0    # "minExpand":I
    :cond_1
    const/16 v0, 0xa

    #@f
    goto :goto_0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
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
    .line 1227
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1228
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    #@5
    .line 1230
    .local v1, "expectedModCount":I
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@7
    .line 1231
    .local v0, "elementData":[Ljava/lang/Object;, "[TE;"
    iget v3, p0, Ljava/util/ArrayList;->size:I

    #@9
    .line 1232
    .local v3, "size":I
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    #@c
    if-ne v4, v1, :cond_0

    #@e
    if-ge v2, v3, :cond_0

    #@10
    .line 1233
    aget-object v4, v0, v2

    #@12
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@15
    .line 1232
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1238
    :cond_0
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    #@1a
    if-eq v4, v1, :cond_1

    #@1c
    .line 1239
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@1e
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@21
    throw v4

    #@22
    .line 1226
    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 410
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    .line 411
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 413
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@10
    aget-object v0, v0, p1

    #@12
    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 299
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez p1, :cond_1

    #@2
    .line 300
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@5
    if-ge v0, v1, :cond_3

    #@7
    .line 301
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@9
    aget-object v1, v1, v0

    #@b
    if-nez v1, :cond_0

    #@d
    .line 302
    return v0

    #@e
    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 304
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    #@12
    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@14
    if-ge v0, v1, :cond_3

    #@16
    .line 305
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@18
    aget-object v1, v1, v0

    #@1a
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 306
    return v0

    #@21
    .line 304
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_1

    #@24
    .line 308
    :cond_3
    const/4 v1, -0x1

    #@25
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 275
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
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
    .line 806
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$Itr;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$Itr;)V

    #@6
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 319
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-nez p1, :cond_1

    #@2
    .line 320
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@8
    .line 321
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@a
    aget-object v1, v1, v0

    #@c
    if-nez v1, :cond_0

    #@e
    .line 322
    return v0

    #@f
    .line 320
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_0

    #@12
    .line 324
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@14
    add-int/lit8 v0, v1, -0x1

    #@16
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    #@18
    .line 325
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@1a
    aget-object v1, v1, v0

    #@1c
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 326
    return v0

    #@23
    .line 324
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@25
    goto :goto_1

    #@26
    .line 328
    :cond_3
    const/4 v1, -0x1

    #@27
    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
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
    .line 795
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$ListItr;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    #@6
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
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
    .line 781
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 782
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Index: "

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
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 783
    :cond_1
    new-instance v0, Ljava/util/ArrayList$ListItr;

    #@22
    invoke-direct {v0, p0, p1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    #@25
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 476
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@2
    if-lt p1, v2, :cond_0

    #@4
    .line 477
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 479
    :cond_0
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    #@10
    add-int/lit8 v2, v2, 0x1

    #@12
    iput v2, p0, Ljava/util/ArrayList;->modCount:I

    #@14
    .line 480
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@16
    aget-object v1, v2, p1

    #@18
    .line 482
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@1a
    sub-int/2addr v2, p1

    #@1b
    add-int/lit8 v0, v2, -0x1

    #@1d
    .line 483
    .local v0, "numMoved":I
    if-lez v0, :cond_1

    #@1f
    .line 484
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@21
    add-int/lit8 v3, p1, 0x1

    #@23
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@25
    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 486
    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@2a
    iget v3, p0, Ljava/util/ArrayList;->size:I

    #@2c
    add-int/lit8 v3, v3, -0x1

    #@2e
    iput v3, p0, Ljava/util/ArrayList;->size:I

    #@30
    const/4 v4, 0x0

    #@31
    aput-object v4, v2, v3

    #@33
    .line 488
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 505
    if-nez p1, :cond_1

    #@3
    .line 506
    const/4 v0, 0x0

    #@4
    .local v0, "index":I
    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@6
    if-ge v0, v1, :cond_3

    #@8
    .line 507
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@a
    aget-object v1, v1, v0

    #@c
    if-nez v1, :cond_0

    #@e
    .line 508
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->fastRemove(I)V

    #@11
    .line 509
    return v2

    #@12
    .line 506
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 512
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    #@16
    .restart local v0    # "index":I
    :goto_1
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@18
    if-ge v0, v1, :cond_3

    #@1a
    .line 513
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@1c
    aget-object v1, v1, v0

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 514
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->fastRemove(I)V

    #@27
    .line 515
    return v2

    #@28
    .line 512
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 518
    :cond_3
    const/4 v1, 0x0

    #@2c
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
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
    .line 663
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList;->batchRemove(Ljava/util/Collection;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
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
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    const/4 v0, 0x0

    #@1
    .line 1381
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 1385
    const/4 v7, 0x0

    #@5
    .line 1386
    .local v7, "removeCount":I
    new-instance v8, Ljava/util/BitSet;

    #@7
    iget v10, p0, Ljava/util/ArrayList;->size:I

    #@9
    invoke-direct {v8, v10}, Ljava/util/BitSet;-><init>(I)V

    #@c
    .line 1387
    .local v8, "removeSet":Ljava/util/BitSet;
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    #@e
    .line 1388
    .local v2, "expectedModCount":I
    iget v9, p0, Ljava/util/ArrayList;->size:I

    #@10
    .line 1389
    .local v9, "size":I
    const/4 v3, 0x0

    #@11
    .local v3, "i":I
    :goto_0
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    #@13
    if-ne v10, v2, :cond_1

    #@15
    if-ge v3, v9, :cond_1

    #@17
    .line 1391
    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@19
    aget-object v1, v10, v3

    #@1b
    .line 1392
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@1e
    move-result v10

    #@1f
    if-eqz v10, :cond_0

    #@21
    .line 1393
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    #@24
    .line 1394
    add-int/lit8 v7, v7, 0x1

    #@26
    .line 1389
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1397
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    #@2b
    if-eq v10, v2, :cond_2

    #@2d
    .line 1398
    new-instance v10, Ljava/util/ConcurrentModificationException;

    #@2f
    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@32
    throw v10

    #@33
    .line 1402
    :cond_2
    if-lez v7, :cond_3

    #@35
    const/4 v0, 0x1

    #@36
    .line 1403
    .local v0, "anyToRemove":Z
    :cond_3
    if-eqz v0, :cond_7

    #@38
    .line 1404
    sub-int v6, v9, v7

    #@3a
    .line 1405
    .local v6, "newSize":I
    const/4 v3, 0x0

    #@3b
    const/4 v4, 0x0

    #@3c
    .local v4, "j":I
    :goto_1
    if-ge v3, v9, :cond_4

    #@3e
    if-ge v4, v6, :cond_4

    #@40
    .line 1406
    invoke-virtual {v8, v3}, Ljava/util/BitSet;->nextClearBit(I)I

    #@43
    move-result v3

    #@44
    .line 1407
    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@46
    iget-object v11, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@48
    aget-object v11, v11, v3

    #@4a
    aput-object v11, v10, v4

    #@4c
    .line 1405
    add-int/lit8 v3, v3, 0x1

    #@4e
    add-int/lit8 v4, v4, 0x1

    #@50
    goto :goto_1

    #@51
    .line 1409
    :cond_4
    move v5, v6

    #@52
    .local v5, "k":I
    :goto_2
    if-ge v5, v9, :cond_5

    #@54
    .line 1410
    iget-object v10, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@56
    const/4 v11, 0x0

    #@57
    aput-object v11, v10, v5

    #@59
    .line 1409
    add-int/lit8 v5, v5, 0x1

    #@5b
    goto :goto_2

    #@5c
    .line 1412
    :cond_5
    iput v6, p0, Ljava/util/ArrayList;->size:I

    #@5e
    .line 1413
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    #@60
    if-eq v10, v2, :cond_6

    #@62
    .line 1414
    new-instance v10, Ljava/util/ConcurrentModificationException;

    #@64
    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@67
    throw v10

    #@68
    .line 1416
    :cond_6
    iget v10, p0, Ljava/util/ArrayList;->modCount:I

    #@6a
    add-int/lit8 v10, v10, 0x1

    #@6c
    iput v10, p0, Ljava/util/ArrayList;->modCount:I

    #@6e
    .line 1419
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "newSize":I
    :cond_7
    return v0
.end method

.method protected removeRange(II)V
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 621
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-ge p2, p1, :cond_0

    #@2
    .line 622
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@4
    const-string/jumbo v4, "toIndex < fromIndex"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 625
    :cond_0
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    #@d
    add-int/lit8 v3, v3, 0x1

    #@f
    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    #@11
    .line 626
    iget v3, p0, Ljava/util/ArrayList;->size:I

    #@13
    sub-int v2, v3, p2

    #@15
    .line 627
    .local v2, "numMoved":I
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@17
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@19
    invoke-static {v3, p2, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 631
    iget v3, p0, Ljava/util/ArrayList;->size:I

    #@1e
    sub-int v4, p2, p1

    #@20
    sub-int v1, v3, v4

    #@22
    .line 632
    .local v1, "newSize":I
    move v0, v1

    #@23
    .local v0, "i":I
    :goto_0
    iget v3, p0, Ljava/util/ArrayList;->size:I

    #@25
    if-ge v0, v3, :cond_1

    #@27
    .line 633
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@29
    const/4 v4, 0x0

    #@2a
    aput-object v4, v3, v0

    #@2c
    .line 632
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 635
    :cond_1
    iput v1, p0, Ljava/util/ArrayList;->size:I

    #@31
    .line 617
    return-void
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
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
    .line 1425
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1426
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    #@5
    .line 1427
    .local v0, "expectedModCount":I
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@7
    .line 1428
    .local v2, "size":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    #@a
    if-ne v3, v0, :cond_0

    #@c
    if-ge v1, v2, :cond_0

    #@e
    .line 1429
    iget-object v3, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@10
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@12
    aget-object v4, v4, v1

    #@14
    invoke-interface {p1, v4}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    aput-object v4, v3, v1

    #@1a
    .line 1428
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1431
    :cond_0
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    #@1f
    if-eq v3, v0, :cond_1

    #@21
    .line 1432
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@23
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@26
    throw v3

    #@27
    .line 1434
    :cond_1
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    #@29
    add-int/lit8 v3, v3, 0x1

    #@2b
    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    #@2d
    .line 1424
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
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
    .line 683
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList;->batchRemove(Ljava/util/Collection;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 426
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@2
    if-lt p1, v1, :cond_0

    #@4
    .line 427
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 429
    :cond_0
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@10
    aget-object v0, v1, p1

    #@12
    .line 430
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@14
    aput-object p2, v1, p1

    #@16
    .line 431
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 266
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@2
    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
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
    .line 1440
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    #@2
    .line 1441
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@4
    iget v2, p0, Ljava/util/ArrayList;->size:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    #@a
    .line 1442
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    #@c
    if-eq v1, v0, :cond_0

    #@e
    .line 1443
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@10
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@13
    throw v1

    #@14
    .line 1445
    :cond_0
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    #@1a
    .line 1439
    return-void
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
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 1258
    new-instance v0, Ljava/util/ArrayList$ArrayListSpliterator;

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {v0, p0, v2, v1, v2}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    #@7
    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
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
    .line 979
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@2
    invoke-static {p1, p2, v0}, Ljava/util/ArrayList;->subListRangeCheck(III)V

    #@5
    .line 980
    new-instance v0, Ljava/util/ArrayList$SubList;

    #@7
    const/4 v3, 0x0

    #@8
    move-object v1, p0

    #@9
    move-object v2, p0

    #@a
    move v4, p1

    #@b
    move v5, p2

    #@c
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayList$SubList;-><init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V

    #@f
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 364
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@2
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    #@1
    .line 393
    array-length v0, p1

    #@2
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 395
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@8
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 396
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@15
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@17
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a
    .line 397
    array-length v0, p1

    #@1b
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@1d
    if-le v0, v1, :cond_1

    #@1f
    .line 398
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@21
    const/4 v1, 0x0

    #@22
    aput-object v1, p1, v0

    #@24
    .line 399
    :cond_1
    return-object p1
.end method

.method public trimToSize()V
    .locals 2

    #@0
    .prologue
    .line 184
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    #@6
    .line 185
    iget v0, p0, Ljava/util/ArrayList;->size:I

    #@8
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@a
    array-length v1, v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 186
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@f
    iget v1, p0, Ljava/util/ArrayList;->size:I

    #@11
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    #@17
    .line 183
    :cond_0
    return-void
.end method
