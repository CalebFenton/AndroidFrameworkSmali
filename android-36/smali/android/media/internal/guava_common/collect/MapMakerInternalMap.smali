.class Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Values;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$SerializationProxy;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractSerializationProxy;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntryIterator;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$ValueIterator;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeyIterator;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueSegment;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReferenceImpl;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueEntry;,
        Landroid/media/internal/guava_common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;S:",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final blacklist UNSET_WEAK_VALUE_REFERENCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x5L


# instance fields
.field final blacklist concurrencyLevel:I

.field final transient blacklist entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient blacklist entrySet:Ljava/util/Set;
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

.field final blacklist keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient blacklist keySet:Ljava/util/Set;
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

.field final transient blacklist segmentMask:I

.field final transient blacklist segmentShift:I

.field final transient blacklist segments:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient blacklist values:Ljava/util/Collection;
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

    .line 1042
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$1;

    invoke-direct {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$1;-><init>()V

    sput-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->UNSET_WEAK_VALUE_REFERENCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/internal/guava_common/collect/MapMaker;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMaker;",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper<",
            "TK;TV;TE;TS;>;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/media/internal/guava_common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->concurrencyLevel:I

    .line 168
    invoke-virtual {p1}, Landroid/media/internal/guava_common/collect/MapMaker;->getKeyEquivalence()Landroid/media/internal/guava_common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 169
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 171
    invoke-virtual {p1}, Landroid/media/internal/guava_common/collect/MapMaker;->getInitialCapacity()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    move v2, p2

    move v1, v0

    .line 177
    :goto_25
    iget v3, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->concurrencyLevel:I

    if-ge v1, v3, :cond_2e

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_2e
    rsub-int/lit8 v2, v2, 0x20

    .line 181
    iput v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentShift:I

    add-int/lit8 v2, v1, -0x1

    .line 182
    iput v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentMask:I

    .line 184
    invoke-virtual {p0, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->newSegmentArray(I)[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    iput-object v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segments:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    .line 186
    div-int v2, p1, v1

    mul-int/2addr v1, v2

    if-ge v1, p1, :cond_43

    add-int/lit8 v2, v2, 0x1

    :cond_43
    :goto_43
    if-ge v0, v2, :cond_48

    shl-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 196
    :cond_48
    :goto_48
    iget-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segments:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    array-length v1, p1

    if-ge p2, v1, :cond_56

    .line 197
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->createSegment(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_48

    :cond_56
    return-void
.end method

.method static blacklist create(Landroid/media/internal/guava_common/collect/MapMaker;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/internal/guava_common/collect/MapMaker;",
            ")",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;+",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;*>;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getKeyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_18

    .line 205
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getValueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    if-ne v0, v1, :cond_18

    .line 206
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-static {}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->instance()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;-><init>(Landroid/media/internal/guava_common/collect/MapMaker;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 208
    :cond_18
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getKeyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    if-ne v0, v1, :cond_30

    .line 209
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getValueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->WEAK:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v2, :cond_30

    .line 210
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-static {}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->instance()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;-><init>(Landroid/media/internal/guava_common/collect/MapMaker;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 212
    :cond_30
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getKeyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->WEAK:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    if-ne v0, v2, :cond_48

    .line 213
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getValueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    if-ne v0, v1, :cond_48

    .line 214
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-static {}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->instance()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;-><init>(Landroid/media/internal/guava_common/collect/MapMaker;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 216
    :cond_48
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getKeyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    if-ne v0, v2, :cond_5e

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getValueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    if-ne v0, v2, :cond_5e

    .line 217
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-static {}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->instance()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;-><init>(Landroid/media/internal/guava_common/collect/MapMaker;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 219
    :cond_5e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 2858
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializationProxy"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist rehash(I)I
    .registers 3

    .line 0
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method static blacklist unsetWeakValueReference()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;TE;>;>()",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 383
    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->UNSET_WEAK_VALUE_REFERENCE:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 4

    .line 2520
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segments:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 2521
    invoke-virtual {v2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 2406
    :cond_4
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2407
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 19
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object/from16 v2, p0

    .line 2421
    iget-object v3, v2, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segments:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    const-wide/16 v4, -0x1

    move v6, v1

    :goto_d
    const/4 v7, 0x3

    if-ge v6, v7, :cond_63

    .line 2425
    array-length v7, v3

    const-wide/16 v8, 0x0

    move v10, v1

    :goto_14
    if-ge v10, v7, :cond_56

    aget-object v11, v3, v10

    .line 2427
    iget v12, v11, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2429
    iget-object v12, v11, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v13, v1

    .line 2430
    :goto_1d
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_4b

    .line 2431
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    :goto_29
    if-eqz v14, :cond_46

    .line 2432
    invoke-virtual {v11, v14}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->getLiveValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v1

    if-eqz v15, :cond_3f

    .line 2433
    invoke-virtual {v2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->valueEquivalence()Landroid/media/internal/guava_common/base/Equivalence;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Landroid/media/internal/guava_common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v0, 0x1

    return v0

    .line 2431
    :cond_3f
    invoke-interface {v14}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getNext()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v14

    move/from16 v1, v16

    goto :goto_29

    :cond_46
    move/from16 v16, v1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    :cond_4b
    move/from16 v16, v1

    .line 2438
    iget v1, v11, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v11, v1

    add-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v16

    goto :goto_14

    :cond_56
    move/from16 v16, v1

    cmp-long v1, v8, v4

    if-nez v1, :cond_5d

    goto :goto_65

    :cond_5d
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v8

    move/from16 v1, v16

    goto :goto_d

    :cond_63
    move/from16 v16, v1

    :goto_65
    return v16
.end method

.method blacklist copyEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1113
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 1114
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->copyEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    return-object p0
.end method

.method blacklist createSegment(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {v0, p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;->newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

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

    .line 2545
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_5

    return-object v0

    .line 2546
    :cond_5
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntrySet;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    return-object v0
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

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2384
    :cond_4
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2385
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method blacklist getLiveValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1163
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1166
    :cond_8
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method blacklist hash(Ljava/lang/Object;)I
    .registers 2

    .line 1118
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result p0

    .line 1119
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->rehash(I)I

    move-result p0

    return p0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 10

    .line 2348
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segments:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    .line 2349
    :goto_7
    array-length v6, p0

    if-ge v3, v6, :cond_1a

    .line 2350
    aget-object v6, p0, v3

    iget v6, v6, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v6, :cond_11

    return v2

    .line 2353
    :cond_11
    aget-object v6, p0, v3

    iget v6, v6, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1a
    cmp-long v3, v4, v0

    const/4 v6, 0x1

    if-eqz v3, :cond_39

    move v3, v2

    .line 2357
    :goto_20
    array-length v7, p0

    if-ge v3, v7, :cond_33

    .line 2358
    aget-object v7, p0, v3

    iget v7, v7, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v7, :cond_2a

    return v2

    .line 2361
    :cond_2a
    aget-object v7, p0, v3

    iget v7, v7, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v7, v7

    sub-long/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_33
    cmp-long p0, v4, v0

    if-nez p0, :cond_38

    return v6

    :cond_38
    return v2

    :cond_39
    return v6
.end method

.method blacklist isLiveForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)Z"
        }
    .end annotation

    .line 1139
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->getLiveValueForTesting(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
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

    .line 2529
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_5

    return-object v0

    .line 2530
    :cond_5
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$KeySet;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method blacklist keyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 2323
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;->keyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object p0

    return-object p0
.end method

.method final blacklist newSegmentArray(I)[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1171
    new-array p0, p1, [Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    return-object p0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 2452
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    invoke-static {p2}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2455
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2470
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2471
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 2462
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2463
    invoke-static {p2}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2465
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method blacklist reclaimKey(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1129
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 1130
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->reclaimKey(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;I)Z

    return-void
.end method

.method blacklist reclaimValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;)V"
        }
    .end annotation

    .line 1123
    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;->getEntry()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1124
    invoke-interface {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    .line 1125
    invoke-virtual {p0, v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-interface {v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->reclaimValue(Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$WeakValueReference;)Z

    return-void
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

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2482
    :cond_4
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2483
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eqz p1, :cond_12

    if-nez p2, :cond_5

    goto :goto_12

    .line 2492
    :cond_5
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2493
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 2512
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2513
    invoke-static {p2}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2514
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2515
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 2499
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    invoke-static {p3}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 2504
    :cond_a
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2505
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method blacklist segmentFor(I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segments:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentShift:I

    ushr-int/2addr p1, v1

    iget p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segmentMask:I

    and-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 6

    .line 2370
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->segments:[Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2372
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_11

    .line 2373
    aget-object v3, p0, v2

    iget v3, v3, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;->count:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2375
    :cond_11
    invoke-static {v0, v1}, Landroid/media/internal/guava_common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method blacklist valueEquivalence()Landroid/media/internal/guava_common/base/Equivalence;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2333
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Landroid/media/internal/guava_common/base/Equivalence;

    move-result-object p0

    return-object p0
.end method

.method blacklist valueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 1

    .line 2328
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-interface {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object p0

    return-object p0
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

    .line 2537
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_5

    return-object v0

    .line 2538
    :cond_5
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Values;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Values;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    return-object v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 8

    .line 2847
    new-instance v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$SerializationProxy;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2848
    invoke-interface {v1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;->keyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    iget-object v2, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2849
    invoke-interface {v2}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v2

    iget-object v3, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    iget-object v4, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->entryHelper:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;

    .line 2851
    invoke-interface {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;->valueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Landroid/media/internal/guava_common/base/Equivalence;

    move-result-object v4

    iget v5, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->concurrencyLevel:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$SerializationProxy;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;Landroid/media/internal/guava_common/base/Equivalence;Landroid/media/internal/guava_common/base/Equivalence;ILjava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method
