.class Landroid/media/internal/guava_common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;,
        Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;,
        Landroid/media/internal/guava_common/collect/CompactHashMap$ValuesView;,
        Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;,
        Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist HASH_FLOODING_FPP:D = 0.001

.field private static final blacklist NOT_FOUND:Ljava/lang/Object;


# instance fields
.field transient blacklist entries:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist entrySetView:Ljava/util/Set;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist keySetView:Ljava/util/Set;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient blacklist keys:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist metadata:I

.field private transient blacklist size:I

.field private transient blacklist table:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient blacklist values:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist valuesView:Ljava/util/Collection;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 2

    .line 245
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 246
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->init(I)V

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/guava_common/collect/CompactHashMap;)I
    .registers 1

    .line 82
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I

    return p0
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/guava_common/collect/CompactHashMap;I)Ljava/lang/Object;
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$1000(Landroid/media/internal/guava_common/collect/CompactHashMap;)[Ljava/lang/Object;
    .registers 1

    .line 82
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$1100(Landroid/media/internal/guava_common/collect/CompactHashMap;)[Ljava/lang/Object;
    .registers 1

    .line 82
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$1210(Landroid/media/internal/guava_common/collect/CompactHashMap;)I
    .registers 3

    .line 82
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    return v0
.end method

.method static synthetic blacklist access$1300(Landroid/media/internal/guava_common/collect/CompactHashMap;ILjava/lang/Object;)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactHashMap;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/guava_common/collect/CompactHashMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$300()Ljava/lang/Object;
    .registers 1

    .line 82
    sget-object v0, Landroid/media/internal/guava_common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$500(Landroid/media/internal/guava_common/collect/CompactHashMap;Ljava/lang/Object;)I
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$600(Landroid/media/internal/guava_common/collect/CompactHashMap;I)Ljava/lang/Object;
    .registers 2

    .line 82
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$700(Landroid/media/internal/guava_common/collect/CompactHashMap;)I
    .registers 1

    .line 82
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->hashTableMask()I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$800(Landroid/media/internal/guava_common/collect/CompactHashMap;)Ljava/lang/Object;
    .registers 1

    .line 82
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$900(Landroid/media/internal/guava_common/collect/CompactHashMap;)[I
    .registers 1

    .line 82
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I

    move-result-object p0

    return-object p0
.end method

.method private blacklist entry(I)I
    .registers 2

    .line 1075
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I

    move-result-object p0

    aget p0, p0, p1

    return p0
.end method

.method private blacklist hashTableMask()I
    .registers 2

    .line 316
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I

    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    shl-int p0, v0, p0

    sub-int/2addr p0, v0

    return p0
.end method

.method private blacklist indexOf(Ljava/lang/Object;)I
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 479
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    .line 482
    :cond_8
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 483
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->hashTableMask()I

    move-result v2

    .line 484
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v3

    and-int v4, v0, v2

    invoke-static {v3, v4}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1d

    return v1

    .line 488
    :cond_1d
    invoke-static {v0, v2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v0

    :cond_21
    add-int/lit8 v3, v3, -0x1

    .line 491
    invoke-direct {p0, v3}, Landroid/media/internal/guava_common/collect/CompactHashMap;->entry(I)I

    move-result v4

    .line 492
    invoke-static {v4, v2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v5

    if-ne v5, v0, :cond_38

    .line 493
    invoke-direct {p0, v3}, Landroid/media/internal/guava_common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    return v3

    .line 496
    :cond_38
    invoke-static {v4, v2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getNext(II)I

    move-result v3

    if-nez v3, :cond_21

    return v1
.end method

.method private blacklist key(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 1066
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1015
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1016
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1e

    .line 1020
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->init(I)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 1022
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1023
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1024
    invoke-virtual {p0, v2, v3}, Landroid/media/internal/guava_common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    return-void

    .line 1018
    :cond_1e
    new-instance p0, Ljava/io/InvalidObjectException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist removeHelper(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 536
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 537
    sget-object p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object p0

    .line 539
    :cond_9
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->hashTableMask()I

    move-result v2

    .line 545
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v3

    .line 546
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v4

    .line 547
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    .line 541
    invoke-static/range {v0 .. v6}, Landroid/media/internal/guava_common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_26

    .line 550
    sget-object p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object p0

    .line 553
    :cond_26
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v0

    .line 555
    invoke-virtual {p0, p1, v2}, Landroid/media/internal/guava_common/collect/CompactHashMap;->moveLastEntry(II)V

    .line 556
    iget p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    .line 557
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->incrementModCount()V

    return-object v0
.end method

.method private blacklist requireEntries()[I
    .registers 1

    .line 1045
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->entries:[I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private blacklist requireKeys()[Ljava/lang/Object;
    .registers 1

    .line 1049
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private blacklist requireTable()Ljava/lang/Object;
    .registers 1

    .line 1041
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private blacklist requireValues()[Ljava/lang/Object;
    .registers 1

    .line 1053
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private blacklist resizeMeMaybe(I)V
    .registers 4

    .line 410
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    array-length v0, v0

    if-le p1, v0, :cond_1c

    ushr-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 414
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    or-int/2addr p1, v1

    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eq p1, v0, :cond_1c

    .line 416
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->resizeEntries(I)V

    :cond_1c
    return-void
.end method

.method private blacklist resizeTable(IIII)I
    .registers 13

    .line 433
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_e

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 438
    invoke-static {v0, p3, p4}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 441
    :cond_e
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object p3

    .line 442
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I

    move-result-object p4

    const/4 v1, 0x0

    :goto_17
    if-gt v1, p1, :cond_3f

    .line 450
    invoke-static {p3, v1}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v2

    :goto_1d
    if-eqz v2, :cond_3c

    add-int/lit8 v3, v2, -0x1

    .line 459
    aget v4, p4, v3

    .line 462
    invoke-static {v4, p1}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v5

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 465
    invoke-static {v0, v6}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v7

    .line 466
    invoke-static {v0, v6, v2}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 467
    invoke-static {v5, v7, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result v2

    aput v2, p4, v3

    .line 469
    invoke-static {v4, p1}, Landroid/media/internal/guava_common/collect/CompactHashing;->getNext(II)I

    move-result v2

    goto :goto_1d

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 473
    :cond_3f
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 474
    invoke-direct {p0, p2}, Landroid/media/internal/guava_common/collect/CompactHashMap;->setHashTableMask(I)V

    return p2
.end method

.method private blacklist setEntry(II)V
    .registers 3

    .line 1087
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I

    move-result-object p0

    aput p2, p0, p1

    return-void
.end method

.method private blacklist setHashTableMask(I)V
    .registers 4

    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 310
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I

    const/16 v1, 0x1f

    .line 311
    invoke-static {v0, p1, v1}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result p1

    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I

    return-void
.end method

.method private blacklist setKey(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    .line 1079
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object p0

    aput-object p2, p0, p1

    return-void
.end method

.method private blacklist setValue(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 1083
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object p0

    aput-object p2, p0, p1

    return-void
.end method

.method private blacklist value(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1071
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1003
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1004
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1005
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1006
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1007
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1008
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_e

    :cond_29
    return-void
.end method


# virtual methods
.method blacklist accessEntry(I)V
    .registers 2

    .line 0
    return-void
.end method

.method blacklist adjustAfterRemove(II)I
    .registers 3

    .line 0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method blacklist allocArrays()I
    .registers 4

    .line 265
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 267
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I

    .line 268
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSize(I)I

    move-result v1

    .line 269
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->table:Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 270
    invoke-direct {p0, v1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->setHashTableMask(I)V

    .line 272
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->entries:[I

    .line 273
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 274
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 7

    .line 980
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 983
    :cond_7
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->incrementModCount()V

    .line 984
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 987
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Landroid/media/internal/guava_common/primitives/Ints;->constrainToRange(III)I

    move-result v3

    iput v3, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I

    .line 988
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 989
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 990
    iput v2, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    return-void

    .line 992
    :cond_28
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 993
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 994
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableClear(Ljava/lang/Object;)V

    .line 995
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    iget v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 996
    iput v2, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    return-void
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 503
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 504
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 897
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 899
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    .line 901
    :goto_d
    iget v2, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    if-ge v1, v2, :cond_20

    .line 902
    invoke-direct {p0, v1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_20
    return v0
.end method

.method blacklist convertToHashFloodingResistantImplementation()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->createHashFloodingResistantDelegate(I)Ljava/util/Map;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->firstEntryIndex()I

    move-result v1

    :goto_e
    if-ltz v1, :cond_20

    .line 297
    invoke-direct {p0, v1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0, v1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v1

    goto :goto_e

    .line 299
    :cond_20
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->table:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 300
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->entries:[I

    .line 301
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 302
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 303
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->incrementModCount()V

    return-object v0
.end method

.method blacklist createEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 737
    new-instance v0, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$EntrySetView;-><init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V

    return-object v0
.end method

.method blacklist createHashFloodingResistantDelegate(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 290
    new-instance p0, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-object p0
.end method

.method blacklist createKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 681
    new-instance v0, Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$KeySetView;-><init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V

    return-object v0
.end method

.method blacklist createValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 917
    new-instance v0, Landroid/media/internal/guava_common/collect/CompactHashMap$ValuesView;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$ValuesView;-><init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V

    return-object v0
.end method

.method blacklist delegateOrNull()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 283
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->table:Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 284
    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method blacklist entrySetIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 806
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 808
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 810
    :cond_f
    new-instance v0, Landroid/media/internal/guava_common/collect/CompactHashMap$2;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$2;-><init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V

    return-object v0
.end method

.method blacklist firstEntryIndex()I
    .registers 1

    .line 610
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 510
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 512
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 514
    :cond_b
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 518
    :cond_14
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->accessEntry(I)V

    .line 519
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method blacklist getSuccessor(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    .line 614
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    if-ge p1, p0, :cond_7

    return p1

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method blacklist incrementModCount()V
    .registers 2

    .line 320
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I

    return-void
.end method

.method blacklist init(I)V
    .registers 5

    const/4 v0, 0x1

    if-ltz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 251
    :goto_6
    const-string v2, "Expected size must be >= 0"

    invoke-static {v1, v2}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const v1, 0x3fffffff    # 1.9999999f

    .line 254
    invoke-static {p1, v0, v1}, Landroid/media/internal/guava_common/primitives/Ints;->constrainToRange(III)I

    move-result p1

    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->metadata:I

    return-void
.end method

.method blacklist insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 403
    invoke-static {p4, v0, p5}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result p4

    invoke-direct {p0, p1, p4}, Landroid/media/internal/guava_common/collect/CompactHashMap;->setEntry(II)V

    .line 404
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactHashMap;->setKey(ILjava/lang/Object;)V

    .line 405
    invoke-direct {p0, p1, p3}, Landroid/media/internal/guava_common/collect/CompactHashMap;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 1

    .line 892
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method blacklist keySetIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 716
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 718
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 720
    :cond_f
    new-instance v0, Landroid/media/internal/guava_common/collect/CompactHashMap$1;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$1;-><init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V

    return-object v0
.end method

.method blacklist moveLastEntry(II)V
    .registers 12

    .line 566
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v0

    .line 567
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v1

    .line 568
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v2

    .line 569
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v3

    .line 570
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->size()I

    move-result p0

    add-int/lit8 v4, p0, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ge p1, v4, :cond_52

    .line 573
    aget-object v7, v2, v4

    .line 574
    aput-object v7, v2, p1

    .line 575
    aget-object v8, v3, v4

    aput-object v8, v3, p1

    .line 576
    aput-object v6, v2, v4

    .line 577
    aput-object v6, v3, v4

    .line 580
    aget v2, v1, v4

    aput v2, v1, p1

    .line 581
    aput v5, v1, v4

    .line 584
    invoke-static {v7}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, p2

    .line 585
    invoke-static {v0, v2}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v3

    if-ne v3, p0, :cond_3d

    add-int/lit8 p1, p1, 0x1

    .line 589
    invoke-static {v0, v2, p1}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    return-void

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, -0x1

    .line 596
    aget v0, v1, v3

    .line 597
    invoke-static {v0, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getNext(II)I

    move-result v2

    if-ne v2, p0, :cond_50

    add-int/lit8 p1, p1, 0x1

    .line 600
    invoke-static {v0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result p0

    aput p0, v1, v3

    return-void

    :cond_50
    move v3, v2

    goto :goto_3d

    .line 603
    :cond_52
    aput-object v6, v2, p1

    .line 604
    aput-object v6, v3, p1

    .line 605
    aput v5, v1, p1

    return-void
.end method

.method blacklist needsAllocArrays()Z
    .registers 1

    .line 259
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->table:Ljava/lang/Object;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 335
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 336
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->allocArrays()I

    .line 338
    :cond_9
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 340
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 342
    :cond_14
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    .line 343
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v1

    .line 344
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v2

    .line 346
    iget v4, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    add-int/lit8 v9, v4, 0x1

    .line 348
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v7

    .line 349
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->hashTableMask()I

    move-result v3

    and-int v5, v7, v3

    .line 351
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v6

    if-nez v6, :cond_4c

    if-le v9, v3, :cond_44

    .line 355
    invoke-static {v3}, Landroid/media/internal/guava_common/collect/CompactHashing;->newCapacity(I)I

    move-result v0

    invoke-direct {p0, v3, v0, v7, v4}, Landroid/media/internal/guava_common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v3

    :goto_42
    move v8, v3

    goto :goto_92

    .line 357
    :cond_44
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireTable()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5, v9}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_42

    .line 362
    :cond_4c
    invoke-static {v7, v3}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v5

    const/4 v8, 0x0

    :goto_51
    add-int/lit8 v6, v6, -0x1

    .line 366
    aget v10, v0, v6

    .line 367
    invoke-static {v10, v3}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v11

    if-ne v11, v5, :cond_6b

    aget-object v11, v1, v6

    .line 368
    invoke-static {p1, v11}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 370
    aget-object p1, v2, v6

    .line 372
    aput-object p2, v2, v6

    .line 373
    invoke-virtual {p0, v6}, Landroid/media/internal/guava_common/collect/CompactHashMap;->accessEntry(I)V

    return-object p1

    .line 376
    :cond_6b
    invoke-static {v10, v3}, Landroid/media/internal/guava_common/collect/CompactHashing;->getNext(II)I

    move-result v11

    add-int/lit8 v8, v8, 0x1

    if-nez v11, :cond_a2

    const/16 v1, 0x9

    if-lt v8, v1, :cond_80

    .line 381
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->convertToHashFloodingResistantImplementation()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_80
    if-le v9, v3, :cond_8b

    .line 386
    invoke-static {v3}, Landroid/media/internal/guava_common/collect/CompactHashing;->newCapacity(I)I

    move-result v0

    invoke-direct {p0, v3, v0, v7, v4}, Landroid/media/internal/guava_common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v3

    goto :goto_42

    .line 388
    :cond_8b
    invoke-static {v10, v9, v3}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result v1

    aput v1, v0, v6

    goto :goto_42

    .line 391
    :goto_92
    invoke-direct {p0, v9}, Landroid/media/internal/guava_common/collect/CompactHashMap;->resizeMeMaybe(I)V

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    .line 392
    invoke-virtual/range {v3 .. v8}, Landroid/media/internal/guava_common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 393
    iput v9, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    .line 394
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->incrementModCount()V

    const/4 p0, 0x0

    return-object p0

    :cond_a2
    move v6, v11

    goto :goto_51
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 527
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 529
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 531
    :cond_b
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 532
    sget-object p1, Landroid/media/internal/guava_common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_14

    const/4 p0, 0x0

    :cond_14
    return-object p0
.end method

.method blacklist resizeEntries(I)V
    .registers 3

    .line 426
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->entries:[I

    .line 427
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 428
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 886
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 887
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    :cond_b
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->size:I

    return p0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    :cond_a
    return-object v0
.end method

.method blacklist valuesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 941
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 943
    :cond_f
    new-instance v0, Landroid/media/internal/guava_common/collect/CompactHashMap$3;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/CompactHashMap$3;-><init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V

    return-object v0
.end method
