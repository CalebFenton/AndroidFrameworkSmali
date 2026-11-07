.class public final Landroid/media/internal/guava_common/collect/MapMaker;
.super Ljava/lang/Object;
.source "MapMaker.java"


# instance fields
.field blacklist concurrencyLevel:I

.field blacklist initialCapacity:I

.field blacklist keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist keyStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist useCustomMap:Z

.field blacklist valueStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->initialCapacity:I

    .line 102
    iput v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->concurrencyLevel:I

    return-void
.end method


# virtual methods
.method public blacklist concurrencyLevel(I)Landroid/media/internal/guava_common/collect/MapMaker;
    .registers 7

    .line 181
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_9

    move v1, v3

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v1, v4, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    if-lez p1, :cond_12

    move v2, v3

    .line 185
    :cond_12
    invoke-static {v2}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(Z)V

    .line 186
    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMaker;->concurrencyLevel:I

    return-object p0
.end method

.method blacklist getConcurrencyLevel()I
    .registers 2

    .line 191
    iget p0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->concurrencyLevel:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const/4 p0, 0x4

    :cond_6
    return p0
.end method

.method blacklist getInitialCapacity()I
    .registers 2

    .line 157
    iget p0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->initialCapacity:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const/16 p0, 0x10

    :cond_7
    return p0
.end method

.method blacklist getKeyEquivalence()Landroid/media/internal/guava_common/base/Equivalence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getKeyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Landroid/media/internal/guava_common/base/Equivalence;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/media/internal/guava_common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/guava_common/base/Equivalence;

    return-object p0
.end method

.method blacklist getKeyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 2

    .line 222
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->keyStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method

.method blacklist getValueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
    .registers 2

    .line 268
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->valueStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method

.method public blacklist initialCapacity(I)Landroid/media/internal/guava_common/collect/MapMaker;
    .registers 7

    .line 147
    iget v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->initialCapacity:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_9

    move v1, v3

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v1, v4, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    if-ltz p1, :cond_12

    move v2, v3

    .line 151
    :cond_12
    invoke-static {v2}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(Z)V

    .line 152
    iput p1, p0, Landroid/media/internal/guava_common/collect/MapMaker;->initialCapacity:I

    return-object p0
.end method

.method blacklist keyEquivalence(Landroid/media/internal/guava_common/base/Equivalence;)Landroid/media/internal/guava_common/collect/MapMaker;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/media/internal/guava_common/collect/MapMaker;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    const-string v3, "key equivalence was already set to %s"

    invoke-static {v2, v3, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 126
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/guava_common/base/Equivalence;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMaker;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    .line 127
    iput-boolean v1, p0, Landroid/media/internal/guava_common/collect/MapMaker;->useCustomMap:Z

    return-object p0
.end method

.method public blacklist makeMap()Ljava/util/concurrent/ConcurrentMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 283
    iget-boolean v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->useCustomMap:Z

    if-nez v0, :cond_14

    .line 284
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getInitialCapacity()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMaker;->getConcurrencyLevel()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    .line 286
    :cond_14
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap;->create(Landroid/media/internal/guava_common/collect/MapMaker;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    move-result-object p0

    return-object p0
.end method

.method blacklist setKeyStrength(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;)Landroid/media/internal/guava_common/collect/MapMaker;
    .registers 6

    .line 212
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->keyStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    const-string v3, "Key strength was already set to %s"

    invoke-static {v2, v3, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 213
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->keyStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    .line 214
    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1b

    .line 216
    iput-boolean v1, p0, Landroid/media/internal/guava_common/collect/MapMaker;->useCustomMap:Z

    :cond_1b
    return-object p0
.end method

.method blacklist setValueStrength(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;)Landroid/media/internal/guava_common/collect/MapMaker;
    .registers 6

    .line 258
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->valueStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    const-string v3, "Value strength was already set to %s"

    invoke-static {v2, v3, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 259
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->valueStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    .line 260
    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->STRONG:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1b

    .line 262
    iput-boolean v1, p0, Landroid/media/internal/guava_common/collect/MapMaker;->useCustomMap:Z

    :cond_1b
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 295
    invoke-static {p0}, Landroid/media/internal/guava_common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 296
    iget v1, p0, Landroid/media/internal/guava_common/collect/MapMaker;->initialCapacity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 297
    const-string v3, "initialCapacity"

    invoke-virtual {v0, v3, v1}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;

    .line 299
    :cond_e
    iget v1, p0, Landroid/media/internal/guava_common/collect/MapMaker;->concurrencyLevel:I

    if-eq v1, v2, :cond_17

    .line 300
    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;

    .line 302
    :cond_17
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/MapMaker;->keyStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_28

    .line 303
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/internal/guava_common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;

    .line 305
    :cond_28
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/MapMaker;->valueStrength:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_39

    .line 306
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/internal/guava_common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;

    .line 308
    :cond_39
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/MapMaker;->keyEquivalence:Landroid/media/internal/guava_common/base/Equivalence;

    if-eqz p0, :cond_42

    .line 309
    const-string p0, "keyEquivalence"

    invoke-virtual {v0, p0}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;

    .line 311
    :cond_42
    invoke-virtual {v0}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist weakKeys()Landroid/media/internal/guava_common/collect/MapMaker;
    .registers 2

    .line 208
    sget-object v0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;->WEAK:Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/MapMaker;->setKeyStrength(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;)Landroid/media/internal/guava_common/collect/MapMaker;

    move-result-object p0

    return-object p0
.end method
