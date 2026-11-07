.class public Ljava/util/concurrent/CopyOnWriteArrayList;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;,
        Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;,
        Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;,
        Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x785d9fd546ab90c3L


# instance fields
.field private volatile transient blacklist array:[Ljava/lang/Object;

.field final transient greylist-max-o lock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhashCodeOfRange([Ljava/lang/Object;II)I
    .registers 3

    invoke-static {p0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->hashCodeOfRange([Ljava/lang/Object;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smindexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smlastIndexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result p0

    return p0
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 131
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    .line 132
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 133
    return-void
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

    .line 143
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v0, v1, :cond_1a

    .line 146
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .local v0, "es":[Ljava/lang/Object;
    goto :goto_2d

    .line 148
    .end local v0    # "es":[Ljava/lang/Object;
    :cond_1a
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 152
    .restart local v0    # "es":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-eq v1, v2, :cond_2d

    .line 153
    array-length v1, v0

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 155
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "toCopyIn":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    .line 166
    array-length v0, p1

    const-class v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method private greylist-max-o addIfAbsent(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 11
    .param p2, "snapshot"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 685
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 687
    .local v1, "current":[Ljava/lang/Object;
    array-length v2, v1

    .line 688
    .local v2, "len":I
    if-eq p2, v1, :cond_2e

    .line 690
    array-length v3, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 691
    .local v3, "common":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    const/4 v5, 0x0

    if-ge v4, v3, :cond_26

    .line 692
    aget-object v6, v1, v4

    aget-object v7, p2, v4

    if-eq v6, v7, :cond_23

    aget-object v6, v1, v4

    .line 693
    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 694
    monitor-exit v0

    return v5

    .line 691
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 695
    .end local v4    # "i":I
    :cond_26
    invoke-static {p1, v1, v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v4

    if-ltz v4, :cond_2e

    .line 696
    monitor-exit v0

    return v5

    .line 698
    .end local v3    # "common":I
    :cond_2e
    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 699
    .local v3, "newElements":[Ljava/lang/Object;
    aput-object p1, v3, v2

    .line 700
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 701
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 702
    .end local v1    # "current":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "newElements":[Ljava/lang/Object;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 920
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->bulkRemove(Ljava/util/function/Predicate;II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 922
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method static blacklist elementAt([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .param p0, "a"    # [Ljava/lang/Object;
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

    .line 394
    aget-object v0, p0, p1

    return-object v0
.end method

.method private static blacklist hashCodeOfRange([Ljava/lang/Object;II)I
    .registers 8
    .param p0, "es"    # [Ljava/lang/Object;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 1081
    const/4 v0, 0x1

    .line 1082
    .local v0, "hashCode":I
    move v1, p1

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_15

    .line 1083
    aget-object v2, p0, v1

    .line 1084
    .local v2, "x":Ljava/lang/Object;
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_c

    const/4 v4, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_10
    add-int v0, v3, v4

    .line 1082
    .end local v2    # "x":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1086
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method private static blacklist indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 6
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "es"    # [Ljava/lang/Object;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .line 197
    if-nez p0, :cond_e

    .line 198
    move v0, p2

    .local v0, "i":I
    :goto_3
    if-ge v0, p3, :cond_d

    .line 199
    aget-object v1, p1, v0

    if-nez v1, :cond_a

    .line 200
    return v0

    .line 198
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_d
    goto :goto_1d

    .line 202
    :cond_e
    move v0, p2

    .restart local v0    # "i":I
    :goto_f
    if-ge v0, p3, :cond_1d

    .line 203
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 204
    return v0

    .line 202
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 206
    .end local v0    # "i":I
    :cond_1d
    :goto_1d
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist isClear([JI)Z
    .registers 6
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 916
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

    .line 743
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$resetLock$2()Ljava/lang/reflect/Field;
    .registers 2

    .line 2093
    :try_start_0
    const-class v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "lock"

    .line 2094
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2095
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_c} :catch_d

    .line 2096
    return-object v0

    .line 2097
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :catch_d
    move-exception v0

    .line 2098
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 764
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist lastIndexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 6
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "es"    # [Ljava/lang/Object;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .line 218
    if-nez p0, :cond_f

    .line 219
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_4
    if-lt v0, p2, :cond_e

    .line 220
    aget-object v1, p1, v0

    if-nez v1, :cond_b

    .line 221
    return v0

    .line 219
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .end local v0    # "i":I
    :cond_e
    goto :goto_1f

    .line 223
    :cond_f
    add-int/lit8 v0, p3, -0x1

    .restart local v0    # "i":I
    :goto_11
    if-lt v0, p2, :cond_1f

    .line 224
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 225
    return v0

    .line 223
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 227
    .end local v0    # "i":I
    :cond_1f
    :goto_1f
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist nBits(I)[J
    .registers 2
    .param p0, "n"    # I

    .line 910
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method static greylist-max-o outOfBounds(II)Ljava/lang/String;
    .registers 4
    .param p0, "index"    # I
    .param p1, "size"    # I

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1021
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1024
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->resetLock()V

    .line 1027
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1028
    .local v0, "len":I
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    invoke-interface {v1, p1, v2, v0}, Ljdk/internal/access/JavaObjectInputStreamAccess;->checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V

    .line 1029
    new-array v1, v0, [Ljava/lang/Object;

    .line 1032
    .local v1, "es":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_21

    .line 1033
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1032
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1034
    .end local v2    # "i":I
    :cond_21
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 1035
    return-void
.end method

.method private greylist-max-o remove(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "snapshot"    # [Ljava/lang/Object;
    .param p3, "index"    # I

    .line 605
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 607
    .local v1, "current":[Ljava/lang/Object;
    array-length v2, v1

    .line 608
    .local v2, "len":I
    const/4 v3, 0x0

    if-eq p2, v1, :cond_37

    .line 609
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 610
    .local v4, "prefix":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    if-ge v5, v4, :cond_25

    .line 611
    aget-object v6, v1, v5

    aget-object v7, p2, v5

    if-eq v6, v7, :cond_22

    aget-object v6, v1, v5

    .line 612
    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 613
    move p3, v5

    .line 614
    goto :goto_37

    .line 610
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 617
    .end local v5    # "i":I
    :cond_25
    if-lt p3, v2, :cond_29

    .line 618
    monitor-exit v0

    return v3

    .line 619
    :cond_29
    aget-object v5, v1, p3

    if-ne v5, p1, :cond_2e

    .line 620
    goto :goto_37

    .line 621
    :cond_2e
    invoke-static {p1, v1, p3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v5

    move p3, v5

    .line 622
    if-gez p3, :cond_37

    .line 623
    monitor-exit v0

    return v3

    .line 625
    .end local v4    # "prefix":I
    :cond_37
    :goto_37
    add-int/lit8 v4, v2, -0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 626
    .local v4, "newElements":[Ljava/lang/Object;
    invoke-static {v1, v3, v4, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    add-int/lit8 v3, p3, 0x1

    sub-int v5, v2, p3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v1, v3, v4, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 631
    monitor-exit v0

    return v6

    .line 632
    .end local v1    # "current":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v4    # "newElements":[Ljava/lang/Object;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private greylist-max-o resetLock()V
    .registers 4

    .line 2090
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 2101
    .local v0, "lockField":Ljava/lang/reflect/Field;
    :try_start_b
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_13} :catch_15

    .line 2104
    nop

    .line 2105
    return-void

    .line 2102
    :catch_15
    move-exception v1

    .line 2103
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist setBit([JI)V
    .registers 7
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 913
    shr-int/lit8 v0, p1, 0x6

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 914
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1000
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1002
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1004
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1007
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 1008
    .local v3, "element":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1007
    .end local v3    # "element":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1009
    :cond_17
    return-void
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 484
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 486
    .local v1, "es":[Ljava/lang/Object;
    array-length v2, v1

    .line 487
    .local v2, "len":I
    if-gt p1, v2, :cond_2b

    if-ltz p1, :cond_2b

    .line 490
    sub-int v3, v2, p1

    .line 491
    .local v3, "numMoved":I
    if-nez v3, :cond_17

    .line 492
    add-int/lit8 v4, v2, 0x1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .local v4, "newElements":[Ljava/lang/Object;
    goto :goto_24

    .line 494
    .end local v4    # "newElements":[Ljava/lang/Object;
    :cond_17
    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 495
    .restart local v4    # "newElements":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v1, v5, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    add-int/lit8 v5, p1, 0x1

    invoke-static {v1, p1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    :goto_24
    aput-object p2, v4, p1

    .line 500
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 501
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "numMoved":I
    .end local v4    # "newElements":[Ljava/lang/Object;
    monitor-exit v0

    .line 502
    return-void

    .line 488
    .restart local v1    # "es":[Ljava/lang/Object;
    .restart local v2    # "len":I
    :cond_2b
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .end local p1    # "index":I
    .end local p2    # "element":Ljava/lang/Object;, "TE;"
    throw v3

    .line 501
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "len":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .restart local p1    # "index":I
    .restart local p2    # "element":Ljava/lang/Object;, "TE;"
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 466
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 468
    .local v1, "es":[Ljava/lang/Object;
    array-length v2, v1

    .line 469
    .local v2, "len":I
    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 470
    .end local v1    # "es":[Ljava/lang/Object;
    .local v3, "es":[Ljava/lang/Object;
    aput-object p1, v3, v2

    .line 471
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 472
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 473
    .end local v2    # "len":I
    .end local v3    # "es":[Ljava/lang/Object;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
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

    .line 863
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 864
    .local v0, "cs":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 865
    :try_start_7
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    .line 866
    .local v2, "es":[Ljava/lang/Object;
    array-length v3, v2

    .line 867
    .local v3, "len":I
    if-gt p1, v3, :cond_37

    if-ltz p1, :cond_37

    .line 869
    array-length v4, v0

    const/4 v5, 0x0

    if-nez v4, :cond_16

    .line 870
    monitor-exit v1

    return v5

    .line 871
    :cond_16
    sub-int v4, v3, p1

    .line 873
    .local v4, "numMoved":I
    if-nez v4, :cond_21

    .line 874
    array-length v6, v0

    add-int/2addr v6, v3

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .local v6, "newElements":[Ljava/lang/Object;
    goto :goto_2d

    .line 876
    .end local v6    # "newElements":[Ljava/lang/Object;
    :cond_21
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [Ljava/lang/Object;

    .line 877
    .restart local v6    # "newElements":[Ljava/lang/Object;
    invoke-static {v2, v5, v6, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    array-length v7, v0

    add-int/2addr v7, p1

    invoke-static {v2, p1, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    :goto_2d
    array-length v7, v0

    invoke-static {v0, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 883
    invoke-virtual {p0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 884
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 868
    .end local v4    # "numMoved":I
    .end local v6    # "newElements":[Ljava/lang/Object;
    :cond_37
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cs":[Ljava/lang/Object;
    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .end local p1    # "index":I
    .end local p2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    throw v4

    .line 885
    .end local v2    # "es":[Ljava/lang/Object;
    .end local v3    # "len":I
    .restart local v0    # "cs":[Ljava/lang/Object;
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .restart local p1    # "index":I
    .restart local p2    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v2
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

    .line 826
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v0, v1, :cond_10

    .line 827
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    :cond_10
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 828
    .local v0, "cs":[Ljava/lang/Object;
    :goto_14
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 829
    return v2

    .line 830
    :cond_19
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 831
    :try_start_1c
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    .line 832
    .local v3, "es":[Ljava/lang/Object;
    array-length v4, v3

    .line 834
    .local v4, "len":I
    if-nez v4, :cond_35

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eq v5, v6, :cond_33

    .line 835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/util/ArrayList;

    if-ne v5, v6, :cond_35

    .line 836
    :cond_33
    move-object v2, v0

    .local v2, "newElements":[Ljava/lang/Object;
    goto :goto_40

    .line 838
    .end local v2    # "newElements":[Ljava/lang/Object;
    :cond_35
    array-length v5, v0

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 839
    .local v5, "newElements":[Ljava/lang/Object;
    array-length v6, v0

    invoke-static {v0, v2, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    .line 841
    .end local v5    # "newElements":[Ljava/lang/Object;
    .restart local v2    # "newElements":[Ljava/lang/Object;
    :goto_40
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 842
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 843
    .end local v2    # "newElements":[Ljava/lang/Object;
    .end local v3    # "es":[Ljava/lang/Object;
    .end local v4    # "len":I
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_46

    throw v2
.end method

.method public whitelist test-api addAllAbsent(Ljava/util/Collection;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)I"
        }
    .end annotation

    .line 779
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 780
    .local v0, "cs":[Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    if-eq v1, v2, :cond_13

    .line 781
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 783
    :cond_13
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 784
    return v2

    .line 785
    :cond_18
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_1b
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    .line 787
    .local v3, "es":[Ljava/lang/Object;
    array-length v4, v3

    .line 788
    .local v4, "len":I
    const/4 v5, 0x0

    .line 790
    .local v5, "added":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_22
    array-length v7, v0

    if-ge v6, v7, :cond_3b

    .line 791
    aget-object v7, v0, v6

    .line 792
    .local v7, "e":Ljava/lang/Object;
    invoke-static {v7, v3, v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v8

    if-gez v8, :cond_38

    .line 793
    invoke-static {v7, v0, v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v8

    if-gez v8, :cond_38

    .line 794
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "added":I
    .local v8, "added":I
    aput-object v7, v0, v5

    move v5, v8

    .line 790
    .end local v7    # "e":Ljava/lang/Object;
    .end local v8    # "added":I
    .restart local v5    # "added":I
    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 796
    .end local v6    # "i":I
    :cond_3b
    if-lez v5, :cond_49

    .line 797
    add-int v6, v4, v5

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 798
    .local v6, "newElements":[Ljava/lang/Object;
    invoke-static {v0, v2, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    invoke-virtual {p0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 801
    .end local v6    # "newElements":[Ljava/lang/Object;
    :cond_49
    monitor-exit v1

    return v5

    .line 802
    .end local v3    # "es":[Ljava/lang/Object;
    .end local v4    # "len":I
    .end local v5    # "added":I
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 510
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 511
    return-void
.end method

.method public whitelist test-api addIfAbsent(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 675
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 676
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    if-gez v1, :cond_14

    .line 677
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    nop

    .line 676
    :goto_15
    return v2
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 519
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 521
    monitor-exit v0

    .line 522
    return-void

    .line 521
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method blacklist bulkRemove(Ljava/util/function/Predicate;II)Z
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

    .line 927
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 929
    .local v0, "es":[Ljava/lang/Object;
    :goto_4
    if-ge p2, p3, :cond_13

    invoke-static {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 931
    :cond_13
    const/4 v1, 0x0

    if-ge p2, p3, :cond_6c

    .line 932
    move v2, p2

    .line 933
    .local v2, "beg":I
    sub-int v3, p3, v2

    invoke-static {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->nBits(I)[J

    move-result-object v3

    .line 934
    .local v3, "deathRow":[J
    const/4 v4, 0x1

    .line 935
    .local v4, "deleted":I
    const-wide/16 v5, 0x1

    aput-wide v5, v3, v1

    .line 936
    add-int/lit8 p2, v2, 0x1

    :goto_24
    if-ge p2, p3, :cond_3a

    .line 937
    invoke-static {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 938
    sub-int v1, p2, v2

    invoke-static {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->setBit([JI)V

    .line 939
    add-int/lit8 v4, v4, 0x1

    .line 936
    :cond_37
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    .line 942
    :cond_3a
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_66

    .line 944
    array-length v1, v0

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 945
    .local v1, "newElts":[Ljava/lang/Object;
    move v5, v2

    .line 946
    .local v5, "w":I
    move p2, v2

    :goto_48
    if-ge p2, p3, :cond_5c

    .line 947
    sub-int v6, p2, v2

    invoke-static {v3, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isClear([JI)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 948
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "w":I
    .local v6, "w":I
    aget-object v7, v0, p2

    aput-object v7, v1, v5

    move v5, v6

    .line 946
    .end local v6    # "w":I
    .restart local v5    # "w":I
    :cond_59
    add-int/lit8 p2, p2, 0x1

    goto :goto_48

    .line 949
    :cond_5c
    array-length v6, v0

    sub-int/2addr v6, p2

    invoke-static {v0, p2, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 950
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 951
    const/4 v6, 0x1

    return v6

    .line 943
    .end local v1    # "newElts":[Ljava/lang/Object;
    .end local v5    # "w":I
    :cond_66
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 953
    .end local v2    # "beg":I
    .end local v3    # "deathRow":[J
    .end local v4    # "deleted":I
    :cond_6c
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_73

    .line 955
    return v1

    .line 954
    :cond_73
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api clear()V
    .registers 3

    .line 810
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    const/4 v1, 0x0

    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 812
    monitor-exit v0

    .line 813
    return-void

    .line 812
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 308
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    nop

    .line 309
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 310
    .local v0, "clone":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->resetLock()V

    .line 313
    invoke-static {}, Ljava/lang/invoke/VarHandle;->releaseFence()V
    :try_end_d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_d} :catch_e

    .line 314
    return-object v0

    .line 315
    .end local v0    # "clone":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    :catch_e
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 239
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 716
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 717
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    .line 718
    .local v1, "len":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 719
    .local v3, "e":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v5

    if-gez v5, :cond_1b

    .line 720
    return v4

    .line 721
    .end local v3    # "e":Ljava/lang/Object;
    :cond_1b
    goto :goto_9

    .line 722
    :cond_1c
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 1067
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1068
    return v0

    .line 1069
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1070
    return v2

    .line 1072
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 1073
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1074
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_17
    if-ge v6, v5, :cond_30

    aget-object v7, v4, v6

    .line 1075
    .local v7, "element":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c

    goto :goto_2f

    .line 1074
    .end local v7    # "element":Ljava/lang/Object;
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 1076
    .restart local v7    # "element":Ljava/lang/Object;
    :cond_2f
    :goto_2f
    return v2

    .line 1077
    .end local v7    # "element":Ljava/lang/Object;
    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
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

    .line 892
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 894
    .local v3, "x":Ljava/lang/Object;
    move-object v4, v3

    .line 895
    .local v4, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 893
    .end local v3    # "x":Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 897
    :cond_14
    return-void
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 407
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o getArray()[Ljava/lang/Object;
    .registers 2

    .line 118
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 417
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 418
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    if-eqz v1, :cond_d

    .line 421
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 419
    :cond_d
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

    .line 431
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    if-eqz v1, :cond_f

    .line 435
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 433
    :cond_f
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1097
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1098
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->hashCodeOfRange([Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 246
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 247
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;I)I
    .registers 5
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 266
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 267
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {p1, v0, p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 184
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1112
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 274
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "es":[Ljava/lang/Object;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;I)I
    .registers 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 295
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, "es":[Ljava/lang/Object;
    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

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

    .line 1124
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1138
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1139
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    .line 1140
    .local v1, "len":I
    if-ltz p1, :cond_f

    if-gt p1, v1, :cond_f

    .line 1143
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-direct {v2, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v2

    .line 1141
    :cond_f
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 532
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 534
    .local v1, "es":[Ljava/lang/Object;
    array-length v2, v1

    .line 535
    .local v2, "len":I
    invoke-static {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 536
    .local v3, "oldValue":Ljava/lang/Object;, "TE;"
    sub-int v4, v2, p1

    add-int/lit8 v4, v4, -0x1

    .line 538
    .local v4, "numMoved":I
    if-nez v4, :cond_19

    .line 539
    add-int/lit8 v5, v2, -0x1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .local v5, "newElements":[Ljava/lang/Object;
    goto :goto_26

    .line 541
    .end local v5    # "newElements":[Ljava/lang/Object;
    :cond_19
    add-int/lit8 v5, v2, -0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 542
    .restart local v5    # "newElements":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v5, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    :goto_26
    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 547
    monitor-exit v0

    return-object v3

    .line 548
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "oldValue":Ljava/lang/Object;, "TE;"
    .end local v4    # "numMoved":I
    .end local v5    # "newElements":[Ljava/lang/Object;
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 595
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 596
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOfRange(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    .line 597
    .local v1, "index":I
    if-ltz v1, :cond_13

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2
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

    .line 742
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$$ExternalSyntheticLambda2;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 558
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_11

    .line 562
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 560
    :cond_11
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    throw v1

    .line 563
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
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

    .line 903
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    invoke-direct {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 573
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    .line 575
    .local v1, "size":I
    if-eqz v1, :cond_12

    .line 578
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 576
    :cond_12
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    throw v2

    .line 579
    .end local v1    # "size":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method greylist-max-o removeRange(II)V
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 648
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 650
    .local v1, "es":[Ljava/lang/Object;
    array-length v2, v1

    .line 652
    .local v2, "len":I
    if-ltz p1, :cond_2c

    if-gt p2, v2, :cond_2c

    if-lt p2, p1, :cond_2c

    .line 654
    sub-int v3, p2, p1

    sub-int v3, v2, v3

    .line 655
    .local v3, "newlen":I
    sub-int v4, v2, p2

    .line 656
    .local v4, "numMoved":I
    if-nez v4, :cond_1e

    .line 657
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    goto :goto_2a

    .line 659
    :cond_1e
    new-array v5, v3, [Ljava/lang/Object;

    .line 660
    .local v5, "newElements":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    invoke-static {v1, p2, v5, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 663
    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 665
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "newlen":I
    .end local v4    # "numMoved":I
    .end local v5    # "newElements":[Ljava/lang/Object;
    :goto_2a
    monitor-exit v0

    .line 666
    return-void

    .line 653
    .restart local v1    # "es":[Ljava/lang/Object;
    .restart local v2    # "len":I
    :cond_2c
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    throw v3

    .line 665
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "len":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 960
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->replaceAllRange(Ljava/util/function/UnaryOperator;II)V

    .line 962
    monitor-exit v0

    .line 963
    return-void

    .line 962
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method blacklist replaceAllRange(Ljava/util/function/UnaryOperator;II)V
    .registers 6
    .param p2, "i"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;II)V"
        }
    .end annotation

    .line 967
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 969
    .local v0, "es":[Ljava/lang/Object;
    :goto_d
    if-ge p2, p3, :cond_1c

    .line 970
    invoke-static {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p2

    .line 969
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 971
    :cond_1c
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 972
    return-void
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

    .line 763
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api reversed()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1740
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 100
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->reversed()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 445
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 447
    .local v1, "es":[Ljava/lang/Object;
    invoke-static {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 449
    .local v2, "oldValue":Ljava/lang/Object;, "TE;"
    if-eq v2, p2, :cond_16

    .line 450
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    .line 451
    aput-object p2, v1, p1

    .line 454
    :cond_16
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 455
    monitor-exit v0

    return-object v2

    .line 456
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "oldValue":Ljava/lang/Object;, "TE;"
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method final greylist-max-o setArray([Ljava/lang/Object;)V
    .registers 2
    .param p1, "a"    # [Ljava/lang/Object;

    .line 125
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->array:[Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 175
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 975
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->sortRange(Ljava/util/Comparator;II)V

    .line 977
    monitor-exit v0

    .line 978
    return-void

    .line 977
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method blacklist sortRange(Ljava/util/Comparator;II)V
    .registers 5
    .param p2, "i"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;II)V"
        }
    .end annotation

    .line 983
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 984
    .local v0, "es":[Ljava/lang/Object;
    invoke-static {v0, p2, p3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 985
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 986
    return-void
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1161
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    nop

    .line 1162
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x410

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    .line 1161
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

    .line 1260
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1261
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 1262
    .local v1, "es":[Ljava/lang/Object;
    array-length v2, v1

    .line 1263
    .local v2, "len":I
    sub-int v3, p2, p1

    .line 1264
    .local v3, "size":I
    if-ltz p1, :cond_17

    if-gt p2, v2, :cond_17

    if-ltz v3, :cond_17

    .line 1266
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;

    invoke-direct {v4, p0, v1, p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;[Ljava/lang/Object;II)V

    monitor-exit v0

    return-object v4

    .line 1265
    :cond_17
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .end local p1    # "fromIndex":I
    .end local p2    # "toIndex":I
    throw v4

    .line 1267
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "size":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .restart local p1    # "fromIndex":I
    .restart local p2    # "toIndex":I
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 335
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

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

    .line 378
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    .line 380
    .local v1, "len":I
    array-length v2, p1

    if-ge v2, v1, :cond_11

    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 383
    :cond_11
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    array-length v2, p1

    if-le v2, v1, :cond_1b

    .line 385
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 386
    :cond_1b
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1048
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
