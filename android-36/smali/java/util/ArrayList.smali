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
        Ljava/util/ArrayList$ListItr;,
        Ljava/util/ArrayList$Itr;,
        Ljava/util/ArrayList$SubList;,
        Ljava/util/ArrayList$ArrayListSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

.field private static final greylist-max-o DEFAULT_CAPACITY:I = 0xa

.field private static final greylist-max-o EMPTY_ELEMENTDATA:[Ljava/lang/Object;

.field private static final whitelist serialVersionUID:J = 0x7881d21d99c7619dL


# instance fields
.field transient greylist elementData:[Ljava/lang/Object;

.field private greylist size:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetsize(Ljava/util/ArrayList;)I
    .registers 1

    iget p0, p0, Ljava/util/ArrayList;->size:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreplaceAllRange(Ljava/util/ArrayList;Ljava/util/function/UnaryOperator;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/ArrayList;->replaceAllRange(Ljava/util/function/UnaryOperator;II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 129
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    .line 136
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 175
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 176
    sget-object v0, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 5
    .param p1, "initialCapacity"    # I

    .line 161
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 162
    if-lez p1, :cond_a

    .line 163
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    goto :goto_10

    .line 164
    :cond_a
    if-nez p1, :cond_11

    .line 165
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 170
    :goto_10
    return-void

    .line 167
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 187
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 188
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    iput v1, p0, Ljava/util/ArrayList;->size:I

    if-eqz v1, :cond_22

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    if-ne v1, v2, :cond_17

    .line 191
    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    goto :goto_26

    .line 193
    :cond_17
    iget v1, p0, Ljava/util/ArrayList;->size:I

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    goto :goto_26

    .line 197
    :cond_22
    sget-object v1, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 199
    :goto_26
    return-void
.end method

.method private blacklist add(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 5
    .param p2, "elementData"    # [Ljava/lang/Object;
    .param p3, "s"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 489
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    array-length v0, p2

    if-ne p3, v0, :cond_7

    .line 490
    invoke-direct {p0}, Ljava/util/ArrayList;->grow()[Ljava/lang/Object;

    move-result-object p2

    .line 491
    :cond_7
    aput-object p1, p2, p3

    .line 492
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Ljava/util/ArrayList;->size:I

    .line 493
    return-void
.end method

.method private blacklist checkForComodification(I)V
    .registers 3
    .param p1, "expectedModCount"    # I

    .line 661
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v0, p1, :cond_5

    .line 664
    return-void

    .line 662
    :cond_5
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method static blacklist elementAt([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .param p0, "es"    # [Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 423
    aget-object v0, p0, p1

    return-object v0
.end method

.method private blacklist equalsArrayList(Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)Z"
        }
    .end annotation

    .line 640
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget v0, p1, Ljava/util/ArrayList;->modCount:I

    .line 641
    .local v0, "otherModCount":I
    iget v1, p0, Ljava/util/ArrayList;->size:I

    .line 643
    .local v1, "s":I
    iget v2, p1, Ljava/util/ArrayList;->size:I

    if-ne v1, v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    move v3, v2

    .local v3, "equal":Z
    if-eqz v2, :cond_30

    .line 644
    iget-object v2, p1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 645
    .local v2, "otherEs":[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 646
    .local v4, "es":[Ljava/lang/Object;
    array-length v5, v4

    if-gt v1, v5, :cond_2a

    array-length v5, v2

    if-gt v1, v5, :cond_2a

    .line 649
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    if-ge v5, v1, :cond_30

    .line 650
    aget-object v6, v4, v5

    aget-object v7, v2, v5

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 651
    const/4 v3, 0x0

    .line 652
    goto :goto_30

    .line 649
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 647
    .end local v5    # "i":I
    :cond_2a
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 656
    .end local v2    # "otherEs":[Ljava/lang/Object;
    .end local v4    # "es":[Ljava/lang/Object;
    :cond_30
    :goto_30
    invoke-direct {p1, v0}, Ljava/util/ArrayList;->checkForComodification(I)V

    .line 657
    return v3
.end method

.method private blacklist fastRemove([Ljava/lang/Object;I)V
    .registers 6
    .param p1, "es"    # [Ljava/lang/Object;
    .param p2, "i"    # I

    .line 727
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 729
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .local v1, "newSize":I
    if-le v0, p2, :cond_14

    .line 730
    add-int/lit8 v0, p2, 0x1

    sub-int v2, v1, p2

    invoke-static {p1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 731
    :cond_14
    iput v1, p0, Ljava/util/ArrayList;->size:I

    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 732
    return-void
.end method

.method private blacklist grow()[Ljava/lang/Object;
    .registers 2

    .line 251
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;->grow(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist grow(I)[Ljava/lang/Object;
    .registers 5
    .param p1, "minCapacity"    # I

    .line 239
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    .line 240
    .local v0, "oldCapacity":I
    if-gtz v0, :cond_17

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    sget-object v2, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    if-eq v1, v2, :cond_c

    goto :goto_17

    .line 246
    :cond_c
    const/16 v1, 0xa

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    return-object v1

    .line 241
    :cond_17
    :goto_17
    sub-int v1, p1, v0

    shr-int/lit8 v2, v0, 0x1

    invoke-static {v0, v1, v2}, Ljdk/internal/util/ArraysSupport;->newLength(III)I

    move-result v1

    .line 244
    .local v1, "newCapacity":I
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    return-object v2
.end method

.method private static blacklist isClear([JI)Z
    .registers 6
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 1752
    shr-int/lit8 v0, p1, 0x6

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static blacklist nBits(I)[J
    .registers 2
    .param p0, "n"    # I

    .line 1746
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method private greylist-max-o outOfBoundsMsg(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 854
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
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

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist outOfBoundsMsg(II)Ljava/lang/String;
    .registers 4
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "From Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > To Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist rangeCheckForAdd(I)V
    .registers 4
    .param p1, "index"    # I

    .line 844
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v0, :cond_7

    if-ltz p1, :cond_7

    .line 846
    return-void

    .line 845
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 976
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 979
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 981
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-lez v0, :cond_2a

    .line 983
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-interface {v0, p1, v1, v2}, Ljdk/internal/access/JavaObjectInputStreamAccess;->checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V

    .line 984
    iget v0, p0, Ljava/util/ArrayList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 987
    .local v0, "elements":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_27

    .line 988
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 987
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 991
    .end local v1    # "i":I
    :cond_27
    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 992
    .end local v0    # "elements":[Ljava/lang/Object;
    goto :goto_32

    :cond_2a
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-nez v0, :cond_33

    .line 993
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 997
    :goto_32
    return-void

    .line 995
    :cond_33
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist replaceAllRange(Ljava/util/function/UnaryOperator;II)V
    .registers 7
    .param p2, "i"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;II)V"
        }
    .end annotation

    .line 1808
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1810
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1811
    .local v1, "es":[Ljava/lang/Object;
    :goto_7
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v2, v0, :cond_1a

    if-ge p2, p3, :cond_1a

    .line 1812
    invoke-static {v1, p2}, Ljava/util/ArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p2

    .line 1811
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 1813
    :cond_1a
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v2, v0, :cond_1f

    .line 1815
    return-void

    .line 1814
    :cond_1f
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method private static blacklist setBit([JI)V
    .registers 7
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 1749
    shr-int/lit8 v0, p1, 0x6

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 1750
    return-void
.end method

.method private blacklist shiftTailOverGap([Ljava/lang/Object;II)V
    .registers 7
    .param p1, "es"    # [Ljava/lang/Object;
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    .line 835
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    sub-int/2addr v0, p3

    invoke-static {p1, p3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    iget v0, p0, Ljava/util/ArrayList;->size:I

    .local v0, "to":I
    iget v1, p0, Ljava/util/ArrayList;->size:I

    sub-int v2, p3, p2

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayList;->size:I

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_17

    .line 837
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 838
    .end local v0    # "to":I
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 948
    .local v0, "expectedModCount":I
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 951
    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 954
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_19

    .line 955
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 958
    .end local v1    # "i":I
    :cond_19
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v1, v0, :cond_1e

    .line 961
    return-void

    .line 959
    :cond_1e
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
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

    .line 517
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->rangeCheckForAdd(I)V

    .line 518
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 521
    iget v0, p0, Ljava/util/ArrayList;->size:I

    move v1, v0

    .local v1, "s":I
    iget-object v2, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    move-object v3, v2

    .local v3, "elementData":[Ljava/lang/Object;
    array-length v2, v2

    if-ne v0, v2, :cond_16

    .line 522
    invoke-direct {p0}, Ljava/util/ArrayList;->grow()[Ljava/lang/Object;

    move-result-object v3

    .line 523
    :cond_16
    add-int/lit8 v0, p1, 0x1

    sub-int v2, v1, p1

    invoke-static {v3, p1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    aput-object p2, v3, p1

    .line 527
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Ljava/util/ArrayList;->size:I

    .line 528
    return-void
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 502
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 503
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-direct {p0, p1, v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 504
    return v1
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 11
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 789
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->rangeCheckForAdd(I)V

    .line 791
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 792
    .local v0, "a":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 793
    array-length v1, v0

    .line 794
    .local v1, "numNew":I
    const/4 v3, 0x0

    if-nez v1, :cond_12

    .line 795
    return v3

    .line 798
    :cond_12
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    move-object v5, v4

    .local v5, "elementData":[Ljava/lang/Object;
    array-length v4, v4

    iget v6, p0, Ljava/util/ArrayList;->size:I

    move v7, v6

    .local v7, "s":I
    sub-int/2addr v4, v6

    if-le v1, v4, :cond_22

    .line 799
    add-int v4, v7, v1

    invoke-direct {p0, v4}, Ljava/util/ArrayList;->grow(I)[Ljava/lang/Object;

    move-result-object v5

    .line 801
    :cond_22
    sub-int v4, v7, p1

    .line 802
    .local v4, "numMoved":I
    if-lez v4, :cond_2b

    .line 803
    add-int v6, p1, v1

    invoke-static {v5, p1, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    :cond_2b
    invoke-static {v0, v3, v5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    add-int v3, v7, v1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    .line 808
    return v2
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 759
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 760
    .local v0, "a":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 761
    array-length v1, v0

    .line 762
    .local v1, "numNew":I
    const/4 v3, 0x0

    if-nez v1, :cond_f

    .line 763
    return v3

    .line 766
    :cond_f
    iget-object v4, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    move-object v5, v4

    .local v5, "elementData":[Ljava/lang/Object;
    array-length v4, v4

    iget v6, p0, Ljava/util/ArrayList;->size:I

    move v7, v6

    .local v7, "s":I
    sub-int/2addr v4, v6

    if-le v1, v4, :cond_1f

    .line 767
    add-int v4, v7, v1

    invoke-direct {p0, v4}, Ljava/util/ArrayList;->grow(I)[Ljava/lang/Object;

    move-result-object v5

    .line 768
    :cond_1f
    invoke-static {v0, v3, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    add-int v3, v7, v1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    .line 770
    return v2
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 536
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 537
    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 545
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    return-void
.end method

.method blacklist batchRemove(Ljava/util/Collection;ZII)Z
    .registers 12
    .param p2, "complement"    # Z
    .param p3, "from"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;ZII)Z"
        }
    .end annotation

    .line 905
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 909
    .local v0, "es":[Ljava/lang/Object;
    move v1, p3

    .line 910
    .local v1, "r":I
    :goto_6
    if-ne v1, p4, :cond_a

    .line 911
    const/4 v2, 0x0

    return v2

    .line 912
    :cond_a
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, p2, :cond_52

    .line 913
    nop

    .line 915
    add-int/lit8 v2, v1, 0x1

    .line 917
    .local v1, "w":I
    .local v2, "r":I
    :goto_15
    if-ge v2, p4, :cond_45

    .line 918
    :try_start_17
    aget-object v3, v0, v2

    move-object v4, v3

    .local v4, "e":Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2b

    if-ne v3, p2, :cond_28

    .line 919
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "w":I
    .local v3, "w":I
    :try_start_22
    aput-object v4, v0, v1
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_26

    move v1, v3

    goto :goto_28

    .line 920
    .end local v4    # "e":Ljava/lang/Object;
    :catchall_26
    move-exception v1

    goto :goto_2f

    .line 917
    .end local v3    # "w":I
    .restart local v1    # "w":I
    .restart local v4    # "e":Ljava/lang/Object;
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 920
    .end local v4    # "e":Ljava/lang/Object;
    :catchall_2b
    move-exception v3

    move-object v6, v3

    move v3, v1

    move-object v1, v6

    .line 923
    .local v1, "ex":Ljava/lang/Throwable;
    .restart local v3    # "w":I
    :goto_2f
    sub-int v4, p4, v2

    :try_start_31
    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 924
    sub-int v4, p4, v2

    add-int/2addr v3, v4

    .line 925
    nop

    .end local v0    # "es":[Ljava/lang/Object;
    .end local v2    # "r":I
    .end local v3    # "w":I
    .end local p0    # "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local p2    # "complement":Z
    .end local p3    # "from":I
    .end local p4    # "end":I
    throw v1
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 927
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "es":[Ljava/lang/Object;
    .restart local v2    # "r":I
    .restart local v3    # "w":I
    .restart local p0    # "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p2    # "complement":Z
    .restart local p3    # "from":I
    .restart local p4    # "end":I
    :catchall_39
    move-exception v1

    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    sub-int v5, p4, v3

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/ArrayList;->modCount:I

    .line 928
    invoke-direct {p0, v0, v3, p4}, Ljava/util/ArrayList;->shiftTailOverGap([Ljava/lang/Object;II)V

    .line 929
    throw v1

    .line 927
    .end local v3    # "w":I
    .local v1, "w":I
    :cond_45
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    sub-int v4, p4, v1

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/ArrayList;->modCount:I

    .line 928
    invoke-direct {p0, v0, v1, p4}, Ljava/util/ArrayList;->shiftTailOverGap([Ljava/lang/Object;II)V

    .line 929
    nop

    .line 930
    const/4 v3, 0x1

    return v3

    .line 909
    .end local v2    # "r":I
    .local v1, "r":I
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method blacklist checkInvariants()V
    .registers 1

    .line 1830
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 5

    .line 739
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 740
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 741
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayList;->size:I

    .local v1, "to":I
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/ArrayList;->size:I

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_15

    .line 742
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 741
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 743
    .end local v1    # "to":I
    .end local v2    # "i":I
    :cond_15
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 351
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 352
    .local v0, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 353
    const/4 v1, 0x0

    iput v1, v0, Ljava/util/ArrayList;->modCount:I
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 354
    return-object v0

    .line 355
    .end local v0    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :catch_14
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 282
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist elementData(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 418
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist test-api ensureCapacity(I)V
    .registers 4
    .param p1, "minCapacity"    # I

    .line 223
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_18

    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    sget-object v1, Ljava/util/ArrayList;->DEFAULTCAPACITY_EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    if-ne v0, v1, :cond_f

    const/16 v0, 0xa

    if-le p1, v0, :cond_18

    .line 226
    :cond_f
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 227
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->grow(I)[Ljava/lang/Object;

    .line 229
    :cond_18
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 606
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-ne p1, p0, :cond_4

    .line 607
    const/4 v0, 0x1

    return v0

    .line 610
    :cond_4
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 611
    return v1

    .line 614
    :cond_a
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 617
    .local v0, "expectedModCount":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/ArrayList;

    if-ne v2, v3, :cond_1c

    .line 618
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;->equalsArrayList(Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_25

    .line 619
    :cond_1c
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    iget v3, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p0, v2, v1, v3}, Ljava/util/ArrayList;->equalsRange(Ljava/util/List;II)Z

    move-result v1

    :goto_25
    nop

    .line 621
    .local v1, "equal":Z
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->checkForComodification(I)V

    .line 622
    return v1
.end method

.method blacklist equalsRange(Ljava/util/List;II)Z
    .registers 8
    .param p2, "from"    # I
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;II)Z"
        }
    .end annotation

    .line 626
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "other":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 627
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    if-gt p3, v1, :cond_2a

    .line 630
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 631
    .local v1, "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_9
    if-ge p2, p3, :cond_23

    .line 632
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    aget-object v2, v0, p2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_21

    .line 631
    :cond_1e
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 633
    :cond_21
    :goto_21
    const/4 v2, 0x0

    return v2

    .line 636
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 628
    .end local v1    # "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2a
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1608
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1610
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1611
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 1612
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    iget v4, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v4, v0, :cond_1a

    if-ge v3, v2, :cond_1a

    .line 1613
    invoke-static {v1, v3}, Ljava/util/ArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1612
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1614
    .end local v3    # "i":I
    :cond_1a
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v3, v0, :cond_1f

    .line 1616
    return-void

    .line 1615
    :cond_1f
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 434
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 435
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 445
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-eqz v0, :cond_a

    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 446
    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 459
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 460
    .local v0, "last":I
    if-ltz v0, :cond_b

    .line 463
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 461
    :cond_b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 670
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 671
    .local v0, "expectedModCount":I
    const/4 v1, 0x0

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p0, v1, v2}, Ljava/util/ArrayList;->hashCodeRange(II)I

    move-result v1

    .line 672
    .local v1, "hash":I
    invoke-direct {p0, v0}, Ljava/util/ArrayList;->checkForComodification(I)V

    .line 673
    return v1
.end method

.method blacklist hashCodeRange(II)I
    .registers 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 677
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 678
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    if-gt p2, v1, :cond_1b

    .line 681
    const/4 v1, 0x1

    .line 682
    .local v1, "hashCode":I
    move v2, p1

    .local v2, "i":I
    :goto_7
    if-ge v2, p2, :cond_1a

    .line 683
    aget-object v3, v0, v2

    .line 684
    .local v3, "e":Ljava/lang/Object;
    mul-int/lit8 v4, v1, 0x1f

    if-nez v3, :cond_11

    const/4 v5, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_15
    add-int v1, v4, v5

    .line 682
    .end local v3    # "e":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 686
    .end local v2    # "i":I
    :cond_1a
    return v1

    .line 679
    .end local v1    # "hashCode":I
    :cond_1b
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 293
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/ArrayList;->indexOfRange(Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method blacklist indexOfRange(Ljava/lang/Object;II)I
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 297
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 298
    .local v0, "es":[Ljava/lang/Object;
    if-nez p1, :cond_10

    .line 299
    move v1, p2

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_f

    .line 300
    aget-object v2, v0, v1

    if-nez v2, :cond_c

    .line 301
    return v1

    .line 299
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "i":I
    :cond_f
    goto :goto_1f

    .line 305
    :cond_10
    move v1, p2

    .restart local v1    # "i":I
    :goto_11
    if-ge v1, p3, :cond_1f

    .line 306
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 307
    return v1

    .line 305
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 311
    .end local v1    # "i":I
    :cond_1f
    :goto_1f
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 269
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
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

    .line 1036
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$Itr;

    invoke-direct {v0, p0}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 322
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/ArrayList;->lastIndexOfRange(Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method blacklist lastIndexOfRange(Ljava/lang/Object;II)I
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 326
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 327
    .local v0, "es":[Ljava/lang/Object;
    if-nez p1, :cond_11

    .line 328
    add-int/lit8 v1, p3, -0x1

    .local v1, "i":I
    :goto_6
    if-lt v1, p2, :cond_10

    .line 329
    aget-object v2, v0, v1

    if-nez v2, :cond_d

    .line 330
    return v1

    .line 328
    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .end local v1    # "i":I
    :cond_10
    goto :goto_21

    .line 334
    :cond_11
    add-int/lit8 v1, p3, -0x1

    .restart local v1    # "i":I
    :goto_13
    if-lt v1, p2, :cond_21

    .line 335
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 336
    return v1

    .line 334
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 340
    .end local v1    # "i":I
    :cond_21
    :goto_21
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1025
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$ListItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    return-object v0
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

    .line 1012
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;->rangeCheckForAdd(I)V

    .line 1013
    new-instance v0, Ljava/util/ArrayList$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/ArrayList$ListItr;-><init>(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 558
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 559
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 561
    .local v0, "es":[Ljava/lang/Object;
    aget-object v1, v0, p1

    .line 562
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v0, p1}, Ljava/util/ArrayList;->fastRemove([Ljava/lang/Object;I)V

    .line 564
    return-object v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 703
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 704
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayList;->size:I

    .line 705
    .local v1, "size":I
    const/4 v2, 0x0

    .line 707
    .local v2, "i":I
    if-nez p1, :cond_11

    .line 708
    :goto_7
    if-ge v2, v1, :cond_24

    .line 709
    aget-object v3, v0, v2

    if-nez v3, :cond_e

    .line 710
    goto :goto_1c

    .line 708
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 712
    :cond_11
    :goto_11
    if-ge v2, v1, :cond_24

    .line 713
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 714
    nop

    .line 718
    :goto_1c
    invoke-direct {p0, v0, v2}, Ljava/util/ArrayList;->fastRemove([Ljava/lang/Object;I)V

    .line 719
    const/4 v3, 0x1

    return v3

    .line 712
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 716
    :cond_24
    const/4 v3, 0x0

    return v3
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 880
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p0, p1, v0, v0, v1}, Ljava/util/ArrayList;->batchRemove(Ljava/util/Collection;ZII)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 574
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-eqz v0, :cond_d

    .line 577
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 578
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 579
    .local v2, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v0, v1}, Ljava/util/ArrayList;->fastRemove([Ljava/lang/Object;I)V

    .line 580
    return-object v2

    .line 575
    .end local v0    # "es":[Ljava/lang/Object;
    .end local v2    # "oldValue":Ljava/lang/Object;, "TE;"
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1760
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    const/4 v0, 0x0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;II)Z

    move-result v0

    return v0
.end method

.method blacklist removeIf(Ljava/util/function/Predicate;II)Z
    .registers 12
    .param p2, "i"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;II)Z"
        }
    .end annotation

    .line 1768
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1770
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1772
    .local v1, "es":[Ljava/lang/Object;
    :goto_7
    if-ge p2, p3, :cond_16

    invoke-static {v1, p2}, Ljava/util/ArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 1777
    :cond_16
    const/4 v2, 0x0

    if-ge p2, p3, :cond_64

    .line 1778
    move v3, p2

    .line 1779
    .local v3, "beg":I
    sub-int v4, p3, v3

    invoke-static {v4}, Ljava/util/ArrayList;->nBits(I)[J

    move-result-object v4

    .line 1780
    .local v4, "deathRow":[J
    const-wide/16 v5, 0x1

    aput-wide v5, v4, v2

    .line 1781
    add-int/lit8 p2, v3, 0x1

    :goto_26
    if-ge p2, p3, :cond_3a

    .line 1782
    invoke-static {v1, p2}, Ljava/util/ArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1783
    sub-int v2, p2, v3

    invoke-static {v4, v2}, Ljava/util/ArrayList;->setBit([JI)V

    .line 1781
    :cond_37
    add-int/lit8 p2, p2, 0x1

    goto :goto_26

    .line 1784
    :cond_3a
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v2, v0, :cond_5e

    .line 1786
    iget v2, p0, Ljava/util/ArrayList;->modCount:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, p0, Ljava/util/ArrayList;->modCount:I

    .line 1787
    move v2, v3

    .line 1788
    .local v2, "w":I
    move p2, v3

    :goto_46
    if-ge p2, p3, :cond_5a

    .line 1789
    sub-int v6, p2, v3

    invoke-static {v4, v6}, Ljava/util/ArrayList;->isClear([JI)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 1790
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "w":I
    .local v6, "w":I
    aget-object v7, v1, p2

    aput-object v7, v1, v2

    move v2, v6

    .line 1788
    .end local v6    # "w":I
    .restart local v2    # "w":I
    :cond_57
    add-int/lit8 p2, p2, 0x1

    goto :goto_46

    .line 1791
    :cond_5a
    invoke-direct {p0, v1, v2, p3}, Ljava/util/ArrayList;->shiftTailOverGap([Ljava/lang/Object;II)V

    .line 1792
    return v5

    .line 1785
    .end local v2    # "w":I
    :cond_5e
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1794
    .end local v3    # "beg":I
    .end local v4    # "deathRow":[J
    :cond_64
    iget v3, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v3, v0, :cond_69

    .line 1796
    return v2

    .line 1795
    :cond_69
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 591
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 592
    .local v0, "last":I
    if-ltz v0, :cond_e

    .line 595
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 596
    .local v1, "es":[Ljava/lang/Object;
    aget-object v2, v1, v0

    .line 597
    .local v2, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v1, v0}, Ljava/util/ArrayList;->fastRemove([Ljava/lang/Object;I)V

    .line 598
    return-object v2

    .line 593
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "oldValue":Ljava/lang/Object;, "TE;"
    :cond_e
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected whitelist test-api removeRange(II)V
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 825
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    if-gt p1, p2, :cond_e

    .line 829
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 830
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1, p2}, Ljava/util/ArrayList;->shiftTailOverGap([Ljava/lang/Object;II)V

    .line 831
    return-void

    .line 826
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 827
    invoke-static {p1, p2}, Ljava/util/ArrayList;->outOfBoundsMsg(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 1802
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    const/4 v0, 0x0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-direct {p0, p1, v0, v1}, Ljava/util/ArrayList;->replaceAllRange(Ljava/util/function/UnaryOperator;II)V

    .line 1804
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1805
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

    .line 900
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Ljava/util/ArrayList;->batchRemove(Ljava/util/Collection;ZII)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 477
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 478
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 479
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 480
    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 260
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    return v0
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1820
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 1821
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v1, v2, v3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1822
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    if-ne v1, v0, :cond_15

    .line 1824
    iget v1, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList;->modCount:I

    .line 1825
    return-void

    .line 1823
    :cond_15
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
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

    .line 1633
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$ArrayListSpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    return-object v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1207
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ArrayList;->subListRangeCheck(III)V

    .line 1208
    new-instance v0, Ljava/util/ArrayList$SubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/ArrayList$SubList;-><init>(Ljava/util/ArrayList;II)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 376
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 405
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_12

    .line 407
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 408
    :cond_12
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    array-length v0, p1

    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-le v0, v1, :cond_24

    .line 410
    iget v0, p0, Ljava/util/ArrayList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 411
    :cond_24
    return-object p1
.end method

.method public whitelist test-api trimToSize()V
    .registers 3

    .line 207
    .local p0, "this":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 208
    iget v0, p0, Ljava/util/ArrayList;->size:I

    iget-object v1, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 209
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-nez v0, :cond_14

    .line 210
    sget-object v0, Ljava/util/ArrayList;->EMPTY_ELEMENTDATA:[Ljava/lang/Object;

    goto :goto_1c

    .line 211
    :cond_14
    iget-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_1c
    iput-object v0, p0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 213
    :cond_1e
    return-void
.end method
