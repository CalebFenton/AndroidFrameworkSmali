.class Landroid/media/internal/guava_common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist HASH_FLOODING_FPP:D = 0.001


# instance fields
.field transient blacklist elements:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist entries:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist metadata:I

.field private transient blacklist size:I

.field private transient blacklist table:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 210
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 211
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->init(I)V

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/guava_common/collect/CompactHashSet;)I
    .registers 1

    .line 77
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I

    return p0
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/guava_common/collect/CompactHashSet;I)Ljava/lang/Object;
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->element(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist createHashFloodingResistantDelegate(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 254
    new-instance p0, Ljava/util/LinkedHashSet;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Ljava/util/LinkedHashSet;-><init>(IF)V

    return-object p0
.end method

.method private blacklist element(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 714
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private blacklist entry(I)I
    .registers 2

    .line 718
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireEntries()[I

    move-result-object p0

    aget p0, p0, p1

    return p0
.end method

.method private blacklist hashTableMask()I
    .registers 2

    .line 284
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I

    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    shl-int p0, v0, p0

    sub-int/2addr p0, v0

    return p0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 683
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 684
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1a

    .line 688
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->init(I)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_19

    .line 690
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 691
    invoke-virtual {p0, v2}, Landroid/media/internal/guava_common/collect/CompactHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    return-void

    .line 686
    :cond_1a
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

.method private blacklist requireElements()[Ljava/lang/Object;
    .registers 1

    .line 709
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private blacklist requireEntries()[I
    .registers 1

    .line 705
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->entries:[I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private blacklist requireTable()Ljava/lang/Object;
    .registers 1

    .line 701
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->table:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private blacklist resizeMeMaybe(I)V
    .registers 4

    .line 361
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    array-length v0, v0

    if-le p1, v0, :cond_1c

    ushr-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 365
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    or-int/2addr p1, v1

    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eq p1, v0, :cond_1c

    .line 367
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->resizeEntries(I)V

    :cond_1c
    return-void
.end method

.method private blacklist resizeTable(IIII)I
    .registers 13

    .line 383
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_e

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 388
    invoke-static {v0, p3, p4}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 391
    :cond_e
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object p3

    .line 392
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireEntries()[I

    move-result-object p4

    const/4 v1, 0x0

    :goto_17
    if-gt v1, p1, :cond_3f

    .line 396
    invoke-static {p3, v1}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v2

    :goto_1d
    if-eqz v2, :cond_3c

    add-int/lit8 v3, v2, -0x1

    .line 399
    aget v4, p4, v3

    .line 402
    invoke-static {v4, p1}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v5

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 405
    invoke-static {v0, v6}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v7

    .line 406
    invoke-static {v0, v6, v2}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 407
    invoke-static {v5, v7, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result v2

    aput v2, p4, v3

    .line 409
    invoke-static {v4, p1}, Landroid/media/internal/guava_common/collect/CompactHashing;->getNext(II)I

    move-result v2

    goto :goto_1d

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 413
    :cond_3f
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 414
    invoke-direct {p0, p2}, Landroid/media/internal/guava_common/collect/CompactHashSet;->setHashTableMask(I)V

    return p2
.end method

.method private blacklist setElement(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 722
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object p0

    aput-object p2, p0, p1

    return-void
.end method

.method private blacklist setEntry(II)V
    .registers 3

    .line 726
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireEntries()[I

    move-result-object p0

    aput p2, p0, p1

    return-void
.end method

.method private blacklist setHashTableMask(I)V
    .registers 4

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 278
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I

    const/16 v1, 0x1f

    .line 279
    invoke-static {v0, p1, v1}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result p1

    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I

    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 674
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 675
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 676
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_e

    :cond_1c
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->allocArrays()I

    .line 297
    :cond_9
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 299
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 301
    :cond_14
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    .line 302
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v1

    .line 304
    iget v2, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    add-int/lit8 v3, v2, 0x1

    .line 306
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v4

    .line 307
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->hashTableMask()I

    move-result v5

    and-int v6, v4, v5

    .line 309
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_48

    if-le v3, v5, :cond_40

    .line 313
    invoke-static {v5}, Landroid/media/internal/guava_common/collect/CompactHashing;->newCapacity(I)I

    move-result v0

    invoke-direct {p0, v5, v0, v4, v2}, Landroid/media/internal/guava_common/collect/CompactHashSet;->resizeTable(IIII)I

    move-result v5

    goto :goto_85

    .line 315
    :cond_40
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6, v3}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_85

    .line 320
    :cond_48
    invoke-static {v4, v5}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v6

    const/4 v9, 0x0

    move v10, v9

    :goto_4e
    sub-int/2addr v7, v8

    .line 324
    aget v11, v0, v7

    .line 325
    invoke-static {v11, v5}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v12

    if-ne v12, v6, :cond_60

    aget-object v12, v1, v7

    .line 326
    invoke-static {p1, v12}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_60

    return v9

    .line 329
    :cond_60
    invoke-static {v11, v5}, Landroid/media/internal/guava_common/collect/CompactHashing;->getNext(II)I

    move-result v12

    add-int/2addr v10, v8

    if-nez v12, :cond_91

    const/16 v1, 0x9

    if-lt v10, v1, :cond_74

    .line 334
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->convertToHashFloodingResistantImplementation()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_74
    if-le v3, v5, :cond_7f

    .line 339
    invoke-static {v5}, Landroid/media/internal/guava_common/collect/CompactHashing;->newCapacity(I)I

    move-result v0

    invoke-direct {p0, v5, v0, v4, v2}, Landroid/media/internal/guava_common/collect/CompactHashSet;->resizeTable(IIII)I

    move-result v5

    goto :goto_85

    .line 341
    :cond_7f
    invoke-static {v11, v3, v5}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result v1

    aput v1, v0, v7

    .line 344
    :goto_85
    invoke-direct {p0, v3}, Landroid/media/internal/guava_common/collect/CompactHashSet;->resizeMeMaybe(I)V

    .line 345
    invoke-virtual {p0, v2, p1, v4, v5}, Landroid/media/internal/guava_common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;II)V

    .line 346
    iput v3, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    .line 347
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->incrementModCount()V

    return v8

    :cond_91
    move v7, v12

    goto :goto_4e
.end method

.method blacklist adjustAfterRemove(II)I
    .registers 3

    .line 0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method blacklist allocArrays()I
    .registers 4

    .line 230
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 232
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I

    .line 233
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSize(I)I

    move-result v1

    .line 234
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->table:Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 235
    invoke-direct {p0, v1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->setHashTableMask(I)V

    .line 237
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->entries:[I

    .line 238
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 7

    .line 652
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 655
    :cond_7
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->incrementModCount()V

    .line 656
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 659
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Landroid/media/internal/guava_common/primitives/Ints;->constrainToRange(III)I

    move-result v3

    iput v3, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I

    .line 660
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 661
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 662
    iput v2, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    return-void

    .line 664
    :cond_28
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 665
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableClear(Ljava/lang/Object;)V

    .line 666
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    iget v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 667
    iput v2, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 420
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 423
    :cond_8
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 425
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 427
    :cond_13
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 428
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->hashTableMask()I

    move-result v2

    .line 429
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v3

    and-int v4, v0, v2

    invoke-static {v3, v4}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_28

    return v1

    .line 433
    :cond_28
    invoke-static {v0, v2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v0

    :cond_2c
    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 436
    invoke-direct {p0, v3}, Landroid/media/internal/guava_common/collect/CompactHashSet;->entry(I)I

    move-result v5

    .line 437
    invoke-static {v5, v2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v6

    if-ne v6, v0, :cond_43

    .line 438
    invoke-direct {p0, v3}, Landroid/media/internal/guava_common/collect/CompactHashSet;->element(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    return v4

    .line 441
    :cond_43
    invoke-static {v5, v2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getNext(II)I

    move-result v3

    if-nez v3, :cond_2c

    return v1
.end method

.method blacklist convertToHashFloodingResistantImplementation()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->hashTableMask()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->createHashFloodingResistantDelegate(I)Ljava/util/Set;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->firstEntryIndex()I

    move-result v1

    :goto_e
    if-ltz v1, :cond_1c

    .line 261
    invoke-direct {p0, v1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->element(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p0, v1}, Landroid/media/internal/guava_common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v1

    goto :goto_e

    .line 263
    :cond_1c
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->table:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 264
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->entries:[I

    .line 265
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 266
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->incrementModCount()V

    return-object v0
.end method

.method blacklist delegateOrNull()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 247
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->table:Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_9

    .line 248
    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist firstEntryIndex()I
    .registers 1

    .line 521
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method blacklist getSuccessor(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    .line 525
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    if-ge p1, p0, :cond_7

    return p1

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method blacklist incrementModCount()V
    .registers 2

    .line 288
    iget v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I

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

    .line 216
    :goto_6
    const-string v2, "Expected size must be >= 0"

    invoke-static {v1, v2}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const v1, 0x3fffffff    # 1.9999999f

    .line 219
    invoke-static {p1, v0, v1}, Landroid/media/internal/guava_common/primitives/Ints;->constrainToRange(III)I

    move-result p1

    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->metadata:I

    return-void
.end method

.method blacklist insertEntry(ILjava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 355
    invoke-static {p3, v0, p4}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result p3

    invoke-direct {p0, p1, p3}, Landroid/media/internal/guava_common/collect/CompactHashSet;->setEntry(II)V

    .line 356
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactHashSet;->setElement(ILjava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 1

    .line 596
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->size()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isUsingHashFloodingResistance()Z
    .registers 1

    .line 272
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
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

    .line 539
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 541
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 543
    :cond_b
    new-instance v0, Landroid/media/internal/guava_common/collect/CompactHashSet$1;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/CompactHashSet$1;-><init>(Landroid/media/internal/guava_common/collect/CompactHashSet;)V

    return-object v0
.end method

.method blacklist moveLastEntry(II)V
    .registers 10

    .line 481
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v0

    .line 482
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v1

    .line 483
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v2

    .line 484
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->size()I

    move-result p0

    add-int/lit8 v3, p0, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge p1, v3, :cond_48

    .line 487
    aget-object v6, v2, v3

    .line 488
    aput-object v6, v2, p1

    .line 489
    aput-object v5, v2, v3

    .line 492
    aget v2, v1, v3

    aput v2, v1, p1

    .line 493
    aput v4, v1, v3

    .line 496
    invoke-static {v6}, Landroid/media/internal/guava_common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, p2

    .line 497
    invoke-static {v0, v2}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v3

    if-ne v3, p0, :cond_33

    add-int/lit8 p1, p1, 0x1

    .line 501
    invoke-static {v0, v2, p1}, Landroid/media/internal/guava_common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    return-void

    :cond_33
    :goto_33
    add-int/lit8 v3, v3, -0x1

    .line 508
    aget v0, v1, v3

    .line 509
    invoke-static {v0, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->getNext(II)I

    move-result v2

    if-ne v2, p0, :cond_46

    add-int/lit8 p1, p1, 0x1

    .line 512
    invoke-static {v0, p1, p2}, Landroid/media/internal/guava_common/collect/CompactHashing;->maskCombine(III)I

    move-result p0

    aput p0, v1, v3

    return-void

    :cond_46
    move v3, v2

    goto :goto_33

    .line 515
    :cond_48
    aput-object v5, v2, p1

    .line 516
    aput v4, v1, p1

    return-void
.end method

.method blacklist needsAllocArrays()Z
    .registers 1

    .line 224
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->table:Ljava/lang/Object;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 449
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 452
    :cond_8
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 454
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 456
    :cond_13
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->hashTableMask()I

    move-result v4

    .line 462
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireTable()Ljava/lang/Object;

    move-result-object v5

    .line 463
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v6

    .line 464
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    .line 458
    invoke-static/range {v2 .. v8}, Landroid/media/internal/guava_common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2e

    return v1

    .line 470
    :cond_2e
    invoke-virtual {p0, p1, v4}, Landroid/media/internal/guava_common/collect/CompactHashSet;->moveLastEntry(II)V

    .line 471
    iget p1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    .line 472
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->incrementModCount()V

    return v0
.end method

.method blacklist resizeEntries(I)V
    .registers 3

    .line 377
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireEntries()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->entries:[I

    .line 378
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 590
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 591
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :cond_b
    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    return p0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 601
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    .line 602
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0

    .line 604
    :cond_a
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 605
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v0

    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 613
    array-length p0, p1

    if-lez p0, :cond_d

    const/4 p0, 0x0

    .line 614
    aput-object p0, p1, v1

    :cond_d
    return-object p1

    .line 618
    :cond_e
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->delegateOrNull()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 620
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 621
    :cond_19
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v0

    iget p0, p0, Landroid/media/internal/guava_common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1, p0, p1}, Landroid/media/internal/guava_common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
