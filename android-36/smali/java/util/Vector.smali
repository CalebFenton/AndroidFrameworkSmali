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
        Ljava/util/Vector$ListItr;,
        Ljava/util/Vector$Itr;,
        Ljava/util/Vector$VectorSpliterator;
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
.field private static final whitelist serialVersionUID:J = -0x266882a47fc450ffL


# instance fields
.field protected whitelist test-api capacityIncrement:I

.field protected whitelist test-api elementCount:I

.field protected whitelist test-api elementData:[Ljava/lang/Object;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 168
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Vector;-><init>(I)V

    .line 169
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 159
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Vector;-><init>(II)V

    .line 160
    return-void
.end method

.method public constructor whitelist test-api <init>(II)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "capacityIncrement"    # I

    .line 142
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 143
    if-ltz p1, :cond_c

    .line 146
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 147
    iput p2, p0, Ljava/util/Vector;->capacityIncrement:I

    .line 148
    return-void

    .line 144
    :cond_c
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

    .line 181
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 182
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    if-ne v1, v2, :cond_15

    .line 185
    iput-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    goto :goto_1f

    .line 187
    :cond_15
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 189
    :goto_1f
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

    .line 781
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    array-length v0, p2

    if-ne p3, v0, :cond_7

    .line 782
    invoke-direct {p0}, Ljava/util/Vector;->grow()[Ljava/lang/Object;

    move-result-object p2

    .line 783
    :cond_7
    aput-object p1, p2, p3

    .line 784
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Ljava/util/Vector;->elementCount:I

    .line 785
    return-void
.end method

.method private declared-synchronized blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    monitor-enter p0

    .line 980
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    .line 981
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 982
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    .line 985
    .local v2, "end":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_17

    invoke-static {v1, v3}, Ljava/util/Vector;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 990
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_17
    const/4 v4, 0x0

    if-ge v3, v2, :cond_6e

    .line 991
    move v5, v3

    .line 992
    .local v5, "beg":I
    sub-int v6, v2, v5

    invoke-static {v6}, Ljava/util/Vector;->nBits(I)[J

    move-result-object v6

    .line 993
    .local v6, "deathRow":[J
    const-wide/16 v7, 0x1

    aput-wide v7, v6, v4

    .line 994
    add-int/lit8 v3, v5, 0x1

    :goto_27
    if-ge v3, v2, :cond_3b

    .line 995
    invoke-static {v1, v3}, Ljava/util/Vector;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 996
    sub-int v4, v3, v5

    invoke-static {v6, v4}, Ljava/util/Vector;->setBit([JI)V

    .line 994
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 997
    :cond_3b
    iget v4, p0, Ljava/util/Vector;->modCount:I

    if-ne v4, v0, :cond_68

    .line 999
    iget v4, p0, Ljava/util/Vector;->modCount:I

    const/4 v7, 0x1

    add-int/2addr v4, v7

    iput v4, p0, Ljava/util/Vector;->modCount:I

    .line 1000
    move v4, v5

    .line 1001
    .local v4, "w":I
    move v3, v5

    :goto_47
    if-ge v3, v2, :cond_5b

    .line 1002
    sub-int v8, v3, v5

    invoke-static {v6, v8}, Ljava/util/Vector;->isClear([JI)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 1003
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "w":I
    .local v8, "w":I
    aget-object v9, v1, v3

    aput-object v9, v1, v4

    move v4, v8

    .line 1001
    .end local v8    # "w":I
    .restart local v4    # "w":I
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 1004
    :cond_5b
    iput v4, p0, Ljava/util/Vector;->elementCount:I

    move v3, v4

    :goto_5e
    if-ge v3, v2, :cond_66

    .line 1005
    const/4 v8, 0x0

    aput-object v8, v1, v3
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_7a

    .line 1004
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 1006
    :cond_66
    monitor-exit p0

    return v7

    .line 998
    .end local v4    # "w":I
    :cond_68
    :try_start_68
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1008
    .end local v5    # "beg":I
    .end local v6    # "deathRow":[J
    :cond_6e
    iget v5, p0, Ljava/util/Vector;->modCount:I
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_7a

    if-ne v5, v0, :cond_74

    .line 1010
    monitor-exit p0

    return v4

    .line 1009
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_74
    :try_start_74
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 979
    .end local v0    # "expectedModCount":I
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    :catchall_7a
    move-exception p1

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_7a

    throw p1
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

    .line 736
    aget-object v0, p0, p1

    return-object v0
.end method

.method private blacklist grow()[Ljava/lang/Object;
    .registers 2

    .line 266
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/Vector;->grow(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist grow(I)[Ljava/lang/Object;
    .registers 5
    .param p1, "minCapacity"    # I

    .line 257
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    .line 258
    .local v0, "oldCapacity":I
    sub-int v1, p1, v0

    .line 260
    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    if-lez v2, :cond_c

    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    goto :goto_d

    :cond_c
    move v2, v0

    .line 258
    :goto_d
    invoke-static {v0, v1, v2}, Ljdk/internal/util/ArraysSupport;->newLength(III)I

    move-result v1

    .line 262
    .local v1, "newCapacity":I
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    return-object v2
.end method

.method private static blacklist isClear([JI)Z
    .registers 6
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 976
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

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 931
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 955
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist nBits(I)[J
    .registers 2
    .param p0, "n"    # I

    .line 970
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1166
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1167
    .local v0, "gfields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "elementCount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 1168
    .local v1, "count":I
    const-string v2, "elementData"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 1169
    .local v2, "data":[Ljava/lang/Object;
    if-ltz v1, :cond_26

    if-eqz v2, :cond_26

    array-length v3, v2

    if-gt v1, v3, :cond_26

    .line 1172
    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 1173
    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 1174
    return-void

    .line 1170
    :cond_26
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "Inconsistent vector internals"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist setBit([JI)V
    .registers 7
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 973
    shr-int/lit8 v0, p1, 0x6

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 974
    return-void
.end method

.method private blacklist shiftTailOverGap([Ljava/lang/Object;II)V
    .registers 7
    .param p1, "es"    # [Ljava/lang/Object;
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    .line 1147
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v0, p3

    invoke-static {p1, p3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    .local v0, "to":I
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int v2, p3, p2

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_17

    .line 1149
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1150
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

    .line 1188
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1190
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    monitor-enter p0

    .line 1191
    :try_start_5
    const-string v1, "capacityIncrement"

    iget v2, p0, Ljava/util/Vector;->capacityIncrement:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1192
    const-string v1, "elementCount"

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1193
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1194
    .local v1, "data":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_25

    .line 1195
    const-string v2, "elementData"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1196
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1197
    return-void

    .line 1194
    .end local v1    # "data":[Ljava/lang/Object;
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 827
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 828
    return-void
.end method

.method public declared-synchronized whitelist test-api add(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 795
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 796
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-direct {p0, p1, v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;[Ljava/lang/Object;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 797
    monitor-exit p0

    return v1

    .line 794
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 11
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    monitor-enter p0

    .line 1032
    if-ltz p1, :cond_38

    :try_start_3
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-gt p1, v0, :cond_38

    .line 1035
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1036
    .local v0, "a":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/Vector;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/Vector;->modCount:I

    .line 1037
    array-length v1, v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_3e

    .line 1038
    .local v1, "numNew":I
    const/4 v3, 0x0

    if-nez v1, :cond_17

    .line 1039
    monitor-exit p0

    return v3

    .line 1040
    :cond_17
    :try_start_17
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 1041
    .local v4, "elementData":[Ljava/lang/Object;
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    .line 1042
    .local v5, "s":I
    array-length v6, v4

    sub-int/2addr v6, v5

    if-le v1, v6, :cond_26

    .line 1043
    add-int v6, v5, v1

    invoke-direct {p0, v6}, Ljava/util/Vector;->grow(I)[Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 1045
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_26
    sub-int v6, v5, p1

    .line 1046
    .local v6, "numMoved":I
    if-lez v6, :cond_2f

    .line 1047
    add-int v7, p1, v1

    invoke-static {v4, p1, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1050
    :cond_2f
    invoke-static {v0, v3, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1051
    add-int v3, v5, v1

    iput v3, p0, Ljava/util/Vector;->elementCount:I
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_3e

    .line 1052
    monitor-exit p0

    return v2

    .line 1033
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "numNew":I
    .end local v4    # "elementData":[Ljava/lang/Object;
    .end local v5    # "s":I
    .end local v6    # "numMoved":I
    :cond_38
    :try_start_38
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 1031
    .end local p1    # "index":I
    .end local p2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :catchall_3e
    move-exception p1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 896
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 897
    .local v0, "a":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/Vector;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/Vector;->modCount:I

    .line 898
    array-length v1, v0

    .line 899
    .local v1, "numNew":I
    const/4 v3, 0x0

    if-nez v1, :cond_f

    .line 900
    return v3

    .line 901
    :cond_f
    monitor-enter p0

    .line 902
    :try_start_10
    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 903
    .local v4, "elementData":[Ljava/lang/Object;
    iget v5, p0, Ljava/util/Vector;->elementCount:I

    .line 904
    .local v5, "s":I
    array-length v6, v4

    sub-int/2addr v6, v5

    if-le v1, v6, :cond_1f

    .line 905
    add-int v6, v5, v1

    invoke-direct {p0, v6}, Ljava/util/Vector;->grow(I)[Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 906
    :cond_1f
    invoke-static {v0, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    add-int v3, v5, v1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    .line 908
    monitor-exit p0

    return v2

    .line 909
    .end local v4    # "elementData":[Ljava/lang/Object;
    .end local v5    # "s":I
    :catchall_28
    move-exception v2

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public declared-synchronized whitelist test-api addElement(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 616
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 617
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;[Ljava/lang/Object;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 618
    monitor-exit p0

    return-void

    .line 615
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "obj":Ljava/lang/Object;, "TE;"
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized whitelist test-api capacity()I
    .registers 2

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 296
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return v0

    .line 296
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method blacklist checkInvariants()V
    .registers 1

    .line 1507
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 1

    .line 863
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    .line 864
    return-void
.end method

.method public declared-synchronized whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 668
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 669
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 670
    const/4 v1, 0x0

    iput v1, v0, Ljava/util/Vector;->modCount:I
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_14} :catch_18
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 671
    monitor-exit p0

    return-object v0

    .line 667
    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_16
    move-exception v0

    goto :goto_1f

    .line 672
    :catch_18
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_19
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 667
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    throw v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 359
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public declared-synchronized whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    .line 879
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->containsAll(Ljava/util/Collection;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 879
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized whitelist test-api copyInto([Ljava/lang/Object;)V
    .registers 5
    .param p1, "anArray"    # [Ljava/lang/Object;

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 206
    monitor-exit p0

    return-void

    .line 204
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "anArray":[Ljava/lang/Object;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api elementAt(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 465
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_b

    .line 469
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2a

    monitor-exit p0

    return-object v0

    .line 466
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    .end local p1    # "index":I
    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method greylist-max-r elementData(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 731
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist test-api elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TE;>;"
        }
    .end annotation

    .line 331
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    new-instance v0, Ljava/util/Vector$1;

    invoke-direct {v0, p0}, Ljava/util/Vector$1;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public declared-synchronized whitelist test-api ensureCapacity(I)V
    .registers 3
    .param p1, "minCapacity"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 242
    if-lez p1, :cond_15

    .line 243
    :try_start_3
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 244
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_15

    .line 245
    invoke-direct {p0, p1}, Ljava/util/Vector;->grow(I)[Ljava/lang/Object;

    goto :goto_15

    .line 241
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "minCapacity":I
    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1

    .line 247
    .restart local p1    # "minCapacity":I
    :cond_15
    :goto_15
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1068
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 1068
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized whitelist test-api firstElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 480
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-eqz v0, :cond_c

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    monitor-exit p0

    return-object v0

    .line 481
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 479
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    monitor-enter p0

    .line 1380
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    iget v0, p0, Ljava/util/Vector;->modCount:I

    .line 1382
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 1383
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    .line 1384
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget v4, p0, Ljava/util/Vector;->modCount:I

    if-ne v4, v0, :cond_1b

    if-ge v3, v2, :cond_1b

    .line 1385
    invoke-static {v1, v3}, Ljava/util/Vector;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1384
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1386
    .end local v3    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_1b
    iget v3, p0, Ljava/util/Vector;->modCount:I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_27

    if-ne v3, v0, :cond_21

    .line 1388
    monitor-exit p0

    return-void

    .line 1387
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_21
    :try_start_21
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1379
    .end local v0    # "expectedModCount":I
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "size":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public declared-synchronized whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 749
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_b

    .line 752
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    monitor-exit p0

    return-object v0

    .line 750
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 748
    .end local p1    # "index":I
    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw p1
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .registers 2

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1075
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractList;->hashCode()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 1075
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 374
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api indexOf(Ljava/lang/Object;I)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 394
    if-nez p1, :cond_14

    .line 395
    move v0, p2

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_13

    .line 396
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_2b

    if-nez v1, :cond_10

    .line 397
    monitor-exit p0

    return v0

    .line 395
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_13
    goto :goto_28

    .line 399
    :cond_14
    move v0, p2

    .restart local v0    # "i":I
    :goto_15
    :try_start_15
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_28

    .line 400
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_2b

    if-eqz v1, :cond_25

    .line 401
    monitor-exit p0

    return v0

    .line 399
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 403
    .end local v0    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_28
    :goto_28
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 393
    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "index":I
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public declared-synchronized whitelist test-api insertElementAt(Ljava/lang/Object;I)V
    .registers 7
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 588
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-gt p2, v0, :cond_26

    .line 592
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 593
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    .line 594
    .local v0, "s":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 595
    .local v1, "elementData":[Ljava/lang/Object;
    array-length v2, v1

    if-ne v0, v2, :cond_17

    .line 596
    invoke-direct {p0}, Ljava/util/Vector;->grow()[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 597
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_17
    add-int/lit8 v2, p2, 0x1

    sub-int v3, v0, p2

    invoke-static {v1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    aput-object p1, v1, p2

    .line 601
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/Vector;->elementCount:I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_45

    .line 602
    monitor-exit p0

    return-void

    .line 589
    .end local v0    # "s":I
    .end local v1    # "elementData":[Ljava/lang/Object;
    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    .end local p1    # "obj":Ljava/lang/Object;, "TE;"
    .end local p2    # "index":I
    :catchall_45
    move-exception p1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public declared-synchronized whitelist test-api isEmpty()Z
    .registers 2

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 316
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 316
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1237
    :try_start_1
    new-instance v0, Ljava/util/Vector$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;Ljava/util/Vector-IA;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1237
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api lastElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 494
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-eqz v0, :cond_f

    .line 497
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    monitor-exit p0

    return-object v0

    .line 495
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_f
    :try_start_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 493
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_15

    throw v0
.end method

.method public declared-synchronized whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 418
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Vector;->lastIndexOf(Ljava/lang/Object;I)I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 418
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api lastIndexOf(Ljava/lang/Object;I)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 438
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p2, v0, :cond_2b

    .line 441
    if-nez p1, :cond_16

    .line 442
    move v0, p2

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_15

    .line 443
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_4a

    if-nez v1, :cond_12

    .line 444
    monitor-exit p0

    return v0

    .line 442
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_15
    goto :goto_28

    .line 446
    :cond_16
    move v0, p2

    .restart local v0    # "i":I
    :goto_17
    if-ltz v0, :cond_28

    .line 447
    :try_start_19
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_4a

    if-eqz v1, :cond_25

    .line 448
    monitor-exit p0

    return v0

    .line 446
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 450
    .end local v0    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_28
    :goto_28
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 439
    .restart local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "index":I
    :catchall_4a
    move-exception p1

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public declared-synchronized whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1226
    :try_start_1
    new-instance v0, Ljava/util/Vector$ListItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Vector$ListItr;-><init>(Ljava/util/Vector;I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1226
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1212
    if-ltz p1, :cond_e

    :try_start_3
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-gt p1, v0, :cond_e

    .line 1214
    new-instance v0, Ljava/util/Vector$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/Vector$ListItr;-><init>(Ljava/util/Vector;I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_27

    monitor-exit p0

    return-object v0

    .line 1213
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    .end local p1    # "index":I
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_27

    throw p1
.end method

.method public declared-synchronized whitelist test-api remove(I)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 842
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 843
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_2c

    .line 845
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 847
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 848
    .local v1, "numMoved":I
    if-lez v1, :cond_1f

    .line 849
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_1f
    iget-object v2, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/Vector;->elementCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_32

    .line 853
    monitor-exit p0

    return-object v0

    .line 844
    .end local v0    # "oldValue":Ljava/lang/Object;, "TE;"
    .end local v1    # "numMoved":I
    :cond_2c
    :try_start_2c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 841
    .end local p1    # "index":I
    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_32

    throw p1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 812
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 930
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    new-instance v0, Ljava/util/Vector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/Vector$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/Vector;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api removeAllElements()V
    .registers 5

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 652
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 653
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    .local v1, "to":I
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/Vector;->elementCount:I

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_10

    .line 654
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 655
    .end local v1    # "to":I
    .end local v2    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_10
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 656
    monitor-exit p0

    return-void

    .line 651
    .end local v0    # "es":[Ljava/lang/Object;
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized whitelist test-api removeElement(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 636
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 637
    invoke-virtual {p0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 638
    .local v0, "i":I
    if-ltz v0, :cond_12

    .line 639
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    .line 640
    monitor-exit p0

    return v1

    .line 642
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_12
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 635
    .end local v0    # "i":I
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public declared-synchronized whitelist test-api removeElementAt(I)V
    .registers 6
    .param p1, "index"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 548
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_32

    .line 552
    if-ltz p1, :cond_2c

    .line 555
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 556
    .local v0, "j":I
    if-lez v0, :cond_17

    .line 557
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_17
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I

    .line 560
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/Vector;->elementCount:I

    .line 561
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_51

    .line 562
    monitor-exit p0

    return-void

    .line 553
    .end local v0    # "j":I
    :cond_2c
    :try_start_2c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 549
    :cond_32
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    .end local p1    # "index":I
    :catchall_51
    move-exception p1

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_2c .. :try_end_53} :catchall_51

    throw p1
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

    .line 963
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    invoke-direct {p0, p1}, Ljava/util/Vector;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized whitelist test-api removeRange(II)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1135
    if-gt p1, p2, :cond_12

    .line 1141
    :try_start_3
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 1142
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1, p2}, Ljava/util/Vector;->shiftTailOverGap([Ljava/lang/Object;II)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1143
    monitor-exit p0

    return-void

    .line 1134
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    :catchall_10
    move-exception p1

    goto :goto_35

    .line 1136
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > To Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_10

    throw p1
.end method

.method public declared-synchronized whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    monitor-enter p0

    .line 1395
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    iget v0, p0, Ljava/util/Vector;->modCount:I

    .line 1397
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 1398
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/Vector;->elementCount:I

    .line 1399
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget v4, p0, Ljava/util/Vector;->modCount:I

    if-ne v4, v0, :cond_1e

    if-ge v3, v2, :cond_1e

    .line 1400
    invoke-static {v1, v3}, Ljava/util/Vector;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1399
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1401
    .end local v3    # "i":I
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_1e
    iget v3, p0, Ljava/util/Vector;->modCount:I

    if-ne v3, v0, :cond_2a

    .line 1404
    iget v3, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/Vector;->modCount:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_30

    .line 1405
    monitor-exit p0

    return-void

    .line 1402
    :cond_2a
    :try_start_2a
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1394
    .end local v0    # "expectedModCount":I
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "size":I
    .end local p1    # "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_30

    throw p1
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 954
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    new-instance v0, Ljava/util/Vector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/Vector$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/Vector;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 767
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p1, v0, :cond_f

    .line 770
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 771
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    .line 772
    monitor-exit p0

    return-object v0

    .line 768
    .end local v0    # "oldValue":Ljava/lang/Object;, "TE;"
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 766
    .end local p1    # "index":I
    .end local p2    # "element":Ljava/lang/Object;, "TE;"
    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_15

    throw p1
.end method

.method public declared-synchronized whitelist test-api setElementAt(Ljava/lang/Object;I)V
    .registers 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 521
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    if-ge p2, v0, :cond_b

    .line 525
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    aput-object p1, v0, p2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2a

    .line 526
    monitor-exit p0

    return-void

    .line 522
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    .end local p1    # "obj":Ljava/lang/Object;, "TE;"
    .end local p2    # "index":I
    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public declared-synchronized whitelist test-api setSize(I)V
    .registers 6
    .param p1, "newSize"    # I

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 279
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 280
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_f

    .line 281
    invoke-direct {p0, p1}, Ljava/util/Vector;->grow(I)[Ljava/lang/Object;

    .line 282
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_f
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 283
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    .local v1, "to":I
    move v2, p1

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_1c

    .line 284
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 285
    .end local v1    # "to":I
    .end local v2    # "i":I
    :cond_1c
    iput p1, p0, Ljava/util/Vector;->elementCount:I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 286
    monitor-exit p0

    return-void

    .line 278
    .end local v0    # "es":[Ljava/lang/Object;
    .end local p1    # "newSize":I
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public declared-synchronized whitelist test-api size()I
    .registers 2

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 305
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 305
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    monitor-enter p0

    .line 1410
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    .line 1411
    .local v0, "expectedModCount":I
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1412
    iget v1, p0, Ljava/util/Vector;->modCount:I

    if-ne v1, v0, :cond_17

    .line 1414
    iget v1, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector;->modCount:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    .line 1415
    monitor-exit p0

    return-void

    .line 1413
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_17
    :try_start_17
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1409
    .end local v0    # "expectedModCount":I
    .end local p1    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1432
    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    new-instance v0, Ljava/util/Vector$VectorSpliterator;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    return-object v0
.end method

.method public declared-synchronized whitelist test-api subList(II)Ljava/util/List;
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

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1121
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 1121
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 685
    :try_start_1
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 685
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    monitor-enter p0

    .line 716
    :try_start_1
    array-length v0, p1

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_14

    .line 717
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    monitor-exit p0

    return-object v0

    .line 719
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_14
    :try_start_14
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    array-length v0, p1

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-le v0, v1, :cond_26

    .line 722
    iget v0, p0, Ljava/util/Vector;->elementCount:I

    const/4 v1, 0x0

    aput-object v1, p1, v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_28

    .line 724
    :cond_26
    monitor-exit p0

    return-object p1

    .line 715
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 1083
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 1083
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized whitelist test-api trimToSize()V
    .registers 4

    .local p0, "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    monitor-enter p0

    .line 217
    :try_start_1
    iget v0, p0, Ljava/util/Vector;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Vector;->modCount:I

    .line 218
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    .line 219
    .local v0, "oldCapacity":I
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    if-ge v1, v0, :cond_18

    .line 220
    iget-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 222
    .end local p0    # "this":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    :cond_18
    monitor-exit p0

    return-void

    .line 216
    .end local v0    # "oldCapacity":I
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method
