.class public final Landroid/icu/impl/locale/LikelySubtags;
.super Ljava/lang/Object;
.source "LikelySubtags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/LikelySubtags$Data;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEBUG_OUTPUT:Z = false

.field public static final blacklist INSTANCE:Landroid/icu/impl/locale/LikelySubtags;

.field private static final blacklist PSEUDO_ACCENTS_PREFIX:Ljava/lang/String; = "\'"

.field private static final blacklist PSEUDO_BIDI_PREFIX:Ljava/lang/String; = "+"

.field private static final blacklist PSEUDO_CRACKED_PREFIX:Ljava/lang/String; = ","

.field public static final blacklist SKIP_SCRIPT:I = 0x1


# instance fields
.field private final blacklist defaultLsrIndex:I

.field private final blacklist languageAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist lsrs:[Landroid/icu/impl/locale/LSR;

.field private final blacklist regionAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist trie:Landroid/icu/util/BytesTrie;

.field private final blacklist trieFirstLetterStates:[J

.field private final blacklist trieUndState:J

.field private final blacklist trieUndZzzzState:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 25
    nop

    .line 119
    new-instance v0, Landroid/icu/impl/locale/LikelySubtags;

    invoke-static {}, Landroid/icu/impl/locale/LikelySubtags$Data;->load()Landroid/icu/impl/locale/LikelySubtags$Data;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/LikelySubtags;-><init>(Landroid/icu/impl/locale/LikelySubtags$Data;)V

    sput-object v0, Landroid/icu/impl/locale/LikelySubtags;->INSTANCE:Landroid/icu/impl/locale/LikelySubtags;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/impl/locale/LikelySubtags$Data;)V
    .registers 8
    .param p1, "data"    # Landroid/icu/impl/locale/LikelySubtags$Data;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/16 v0, 0x1a

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/locale/LikelySubtags;->trieFirstLetterStates:[J

    .line 135
    iget-object v0, p1, Landroid/icu/impl/locale/LikelySubtags$Data;->languageAliases:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/impl/locale/LikelySubtags;->languageAliases:Ljava/util/Map;

    .line 136
    iget-object v0, p1, Landroid/icu/impl/locale/LikelySubtags$Data;->regionAliases:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/impl/locale/LikelySubtags;->regionAliases:Ljava/util/Map;

    .line 137
    new-instance v0, Landroid/icu/util/BytesTrie;

    iget-object v1, p1, Landroid/icu/impl/locale/LikelySubtags$Data;->trie:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    iput-object v0, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    .line 138
    iget-object v0, p1, Landroid/icu/impl/locale/LikelySubtags$Data;->lsrs:[Landroid/icu/impl/locale/LSR;

    iput-object v0, p0, Landroid/icu/impl/locale/LikelySubtags;->lsrs:[Landroid/icu/impl/locale/LSR;

    .line 141
    iget-object v0, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    .line 142
    .local v0, "result":Landroid/icu/util/BytesTrie$Result;
    nop

    .line 143
    iget-object v2, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v2}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/icu/impl/locale/LikelySubtags;->trieUndState:J

    .line 144
    iget-object v2, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v2, v1}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    .line 145
    nop

    .line 146
    iget-object v2, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v2}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/icu/impl/locale/LikelySubtags;->trieUndZzzzState:J

    .line 147
    iget-object v2, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v2, v1}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    .line 148
    nop

    .line 149
    iget-object v1, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v1}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/locale/LikelySubtags;->defaultLsrIndex:I

    .line 150
    iget-object v1, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v1}, Landroid/icu/util/BytesTrie;->reset()Landroid/icu/util/BytesTrie;

    .line 152
    const/16 v1, 0x61

    .local v1, "c":C
    :goto_55
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_78

    .line 153
    iget-object v2, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v2, v1}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    .line 154
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v0, v2, :cond_6f

    .line 155
    iget-object v2, p0, Landroid/icu/impl/locale/LikelySubtags;->trieFirstLetterStates:[J

    add-int/lit8 v3, v1, -0x61

    iget-object v4, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v4}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 157
    :cond_6f
    iget-object v2, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v2}, Landroid/icu/util/BytesTrie;->reset()Landroid/icu/util/BytesTrie;

    .line 152
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_55

    .line 166
    .end local v1    # "c":C
    :cond_78
    return-void
.end method

.method private static blacklist getCanonical(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 186
    .local p0, "aliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    .local v0, "canonical":Ljava/lang/String;
    if-nez v0, :cond_a

    move-object v1, p1

    goto :goto_b

    :cond_a
    move-object v1, v0

    :goto_b
    return-object v1
.end method

.method private blacklist getLikelyIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;

    .line 450
    const-string v0, "und"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 451
    const-string p1, ""

    .line 453
    :cond_a
    const-string v0, "Zzzz"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 454
    const-string p2, ""

    .line 457
    :cond_14
    new-instance v0, Landroid/icu/util/BytesTrie;

    iget-object v1, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-direct {v0, v1}, Landroid/icu/util/BytesTrie;-><init>(Landroid/icu/util/BytesTrie;)V

    .line 462
    .local v0, "iter":Landroid/icu/util/BytesTrie;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-lt v1, v2, :cond_45

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x61

    move v2, v1

    .local v2, "c0":I
    if-ltz v1, :cond_45

    const/16 v1, 0x19

    if-gt v2, v1, :cond_45

    iget-object v1, p0, Landroid/icu/impl/locale/LikelySubtags;->trieFirstLetterStates:[J

    aget-wide v7, v1, v2

    move-wide v9, v7

    .local v9, "state":J
    cmp-long v1, v7, v4

    if-eqz v1, :cond_45

    .line 464
    invoke-virtual {v0, v9, v10}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    move-result-object v1

    invoke-static {v1, p1, v3}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v1

    .local v1, "value":I
    goto :goto_49

    .line 466
    .end local v1    # "value":I
    .end local v2    # "c0":I
    .end local v9    # "state":J
    :cond_45
    invoke-static {v0, p1, v6}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v1

    .line 468
    .restart local v1    # "value":I
    :goto_49
    if-ltz v1, :cond_50

    .line 469
    invoke-virtual {v0}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v7

    .local v7, "state":J
    goto :goto_57

    .line 471
    .end local v7    # "state":J
    :cond_50
    iget-wide v7, p0, Landroid/icu/impl/locale/LikelySubtags;->trieUndState:J

    invoke-virtual {v0, v7, v8}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    .line 472
    const-wide/16 v7, 0x0

    .line 475
    .restart local v7    # "state":J
    :goto_57
    const-string v2, ""

    if-lez v1, :cond_5f

    .line 477
    if-ne v1, v3, :cond_80

    .line 478
    const/4 v1, 0x0

    goto :goto_80

    .line 481
    :cond_5f
    invoke-static {v0, p2, v6}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v1

    .line 482
    if-ltz v1, :cond_6a

    .line 483
    invoke-virtual {v0}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v7

    goto :goto_80

    .line 485
    :cond_6a
    cmp-long v3, v7, v4

    if-nez v3, :cond_74

    .line 486
    iget-wide v3, p0, Landroid/icu/impl/locale/LikelySubtags;->trieUndZzzzState:J

    invoke-virtual {v0, v3, v4}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    goto :goto_80

    .line 488
    :cond_74
    invoke-virtual {v0, v7, v8}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    .line 489
    invoke-static {v0, v2, v6}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v1

    .line 490
    nop

    .line 491
    invoke-virtual {v0}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v7

    .line 496
    :cond_80
    :goto_80
    if-lez v1, :cond_83

    goto :goto_88

    .line 499
    :cond_83
    invoke-static {v0, v2, v6}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v1

    .line 500
    nop

    .line 502
    :goto_88
    return v1
.end method

.method private blacklist getTable()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/LSR;",
            ">;"
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 570
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/locale/LSR;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-virtual {v2}, Landroid/icu/util/BytesTrie;->iterator()Landroid/icu/util/BytesTrie$Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/BytesTrie$Entry;

    .line 572
    .local v3, "entry":Landroid/icu/util/BytesTrie$Entry;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 573
    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Entry;->bytesLength()I

    move-result v4

    .line 574
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v4, :cond_4c

    .line 575
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-virtual {v3, v5}, Landroid/icu/util/BytesTrie$Entry;->byteAt(I)B

    move-result v5

    .line 576
    .local v5, "b":B
    const/16 v7, 0x2a

    if-ne v5, v7, :cond_37

    .line 577
    const-string v7, "*-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 578
    :cond_37
    if-ltz v5, :cond_3e

    .line 579
    int-to-char v7, v5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 581
    :cond_3e
    and-int/lit8 v7, v5, 0x7f

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    .end local v5    # "b":B
    :goto_4a
    move v5, v6

    goto :goto_25

    .line 584
    .end local v6    # "i":I
    :cond_4c
    nop

    .line 585
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 586
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/icu/impl/locale/LikelySubtags;->lsrs:[Landroid/icu/impl/locale/LSR;

    iget v7, v3, Landroid/icu/util/BytesTrie$Entry;->value:I

    aget-object v6, v6, v7

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .end local v3    # "entry":Landroid/icu/util/BytesTrie$Entry;
    .end local v4    # "length":I
    goto :goto_10

    .line 588
    :cond_64
    return-object v0
.end method

.method private blacklist isMacroregion(Ljava/lang/String;)Z
    .registers 4
    .param p1, "region"    # Ljava/lang/String;

    .line 272
    invoke-static {p1}, Landroid/icu/util/Region;->getInstance(Ljava/lang/String;)Landroid/icu/util/Region;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    move-result-object v0

    .line 273
    .local v0, "type":Landroid/icu/util/Region$RegionType;
    sget-object v1, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    if-eq v0, v1, :cond_17

    sget-object v1, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    if-eq v0, v1, :cond_17

    sget-object v1, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method private blacklist makeMaximizedLsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;
    .registers 15
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .param p5, "returnInputIfUnmatch"    # Z

    .line 223
    if-nez p5, :cond_16c

    .line 224
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, ","

    const-string v5, "+"

    const-string v6, "\'"

    const/4 v7, 0x7

    if-ne v0, v3, :cond_9a

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x58

    if-ne v0, v8, :cond_9a

    .line 225
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_17e

    goto :goto_9a

    .line 233
    :pswitch_22
    new-instance v0, Landroid/icu/impl/locale/LSR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3, v7}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 230
    :pswitch_4a
    new-instance v0, Landroid/icu/impl/locale/LSR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3, v7}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 227
    :pswitch_72
    new-instance v0, Landroid/icu/impl/locale/LSR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3, v7}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 240
    :cond_9a
    :goto_9a
    const-string v0, "PS"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 241
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 242
    const/4 v7, 0x6

    goto :goto_ab

    :cond_aa
    nop

    .line 243
    .local v7, "lsrFlags":I
    :goto_ab
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_188

    :cond_b2
    goto :goto_d0

    :sswitch_b3
    const-string v0, "PSCRACK"

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move v1, v3

    goto :goto_d1

    :sswitch_bd
    const-string v0, "PSACCENT"

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    move v1, v2

    goto :goto_d1

    :sswitch_c7
    const-string v0, "PSBIDI"

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    goto :goto_d1

    :goto_d0
    const/4 v1, -0x1

    :goto_d1
    packed-switch v1, :pswitch_data_196

    goto/16 :goto_16c

    .line 253
    :pswitch_d6
    new-instance v0, Landroid/icu/impl/locale/LSR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_103

    const-string v3, "XC"

    goto :goto_104

    :cond_103
    move-object v3, p3

    :goto_104
    invoke-direct {v0, v1, v2, v3, v7}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    return-object v0

    .line 249
    :pswitch_108
    new-instance v0, Landroid/icu/impl/locale/LSR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_135

    const-string v3, "XB"

    goto :goto_136

    :cond_135
    move-object v3, p3

    :goto_136
    invoke-direct {v0, v1, v2, v3, v7}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    return-object v0

    .line 245
    :pswitch_13a
    new-instance v0, Landroid/icu/impl/locale/LSR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_167

    const-string v3, "XA"

    goto :goto_168

    :cond_167
    move-object v3, p3

    :goto_168
    invoke-direct {v0, v1, v2, v3, v7}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    return-object v0

    .line 262
    .end local v7    # "lsrFlags":I
    :cond_16c
    :goto_16c
    iget-object v0, p0, Landroid/icu/impl/locale/LikelySubtags;->languageAliases:Ljava/util/Map;

    invoke-static {v0, p1}, Landroid/icu/impl/locale/LikelySubtags;->getCanonical(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    iget-object v0, p0, Landroid/icu/impl/locale/LikelySubtags;->regionAliases:Ljava/util/Map;

    invoke-static {v0, p3}, Landroid/icu/impl/locale/LikelySubtags;->getCanonical(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 265
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/icu/impl/locale/LikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_17e
    .packed-switch 0x41
        :pswitch_72
        :pswitch_4a
        :pswitch_22
    .end packed-switch

    :sswitch_data_188
    .sparse-switch
        -0x72cb9471 -> :sswitch_c7
        0xfbde48d -> :sswitch_bd
        0x196b2977 -> :sswitch_b3
    .end sparse-switch

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_13a
        :pswitch_108
        :pswitch_d6
    .end packed-switch
.end method

.method private blacklist maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;
    .registers 25
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "returnInputIfUnmatch"    # Z

    .line 282
    move-object/from16 v0, p0

    const-string v1, "und"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 283
    const-string v1, ""

    .end local p1    # "language":Ljava/lang/String;
    .local v1, "language":Ljava/lang/String;
    goto :goto_10

    .line 282
    .end local v1    # "language":Ljava/lang/String;
    .restart local p1    # "language":Ljava/lang/String;
    :cond_f
    move-object v1, v2

    .line 285
    .end local p1    # "language":Ljava/lang/String;
    .restart local v1    # "language":Ljava/lang/String;
    :goto_10
    const-string v2, "Zzzz"

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 286
    const-string v2, ""

    .end local p2    # "script":Ljava/lang/String;
    .local v2, "script":Ljava/lang/String;
    goto :goto_1e

    .line 285
    .end local v2    # "script":Ljava/lang/String;
    .restart local p2    # "script":Ljava/lang/String;
    :cond_1d
    move-object v2, v3

    .line 288
    .end local p2    # "script":Ljava/lang/String;
    .restart local v2    # "script":Ljava/lang/String;
    :goto_1e
    const-string v3, "ZZ"

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 289
    const-string v3, ""

    .end local p3    # "region":Ljava/lang/String;
    .local v3, "region":Ljava/lang/String;
    goto :goto_2c

    .line 288
    .end local v3    # "region":Ljava/lang/String;
    .restart local p3    # "region":Ljava/lang/String;
    :cond_2b
    move-object v3, v4

    .line 291
    .end local p3    # "region":Ljava/lang/String;
    .restart local v3    # "region":Ljava/lang/String;
    :goto_2c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x7

    if-nez v4, :cond_45

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_45

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_45

    .line 292
    new-instance v4, Landroid/icu/impl/locale/LSR;

    invoke-direct {v4, v1, v2, v3, v5}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4

    .line 295
    :cond_45
    const/4 v4, 0x0

    .line 296
    .local v4, "retainLanguage":Z
    const/4 v6, 0x0

    .line 297
    .local v6, "retainScript":Z
    const/4 v7, 0x0

    .line 298
    .local v7, "retainRegion":Z
    new-instance v8, Landroid/icu/util/BytesTrie;

    iget-object v9, v0, Landroid/icu/impl/locale/LikelySubtags;->trie:Landroid/icu/util/BytesTrie;

    invoke-direct {v8, v9}, Landroid/icu/util/BytesTrie;-><init>(Landroid/icu/util/BytesTrie;)V

    .line 303
    .local v8, "iter":Landroid/icu/util/BytesTrie;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-lt v9, v10, :cond_86

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x61

    move v15, v9

    .local v15, "c0":I
    if-ltz v9, :cond_83

    const/16 v9, 0x19

    if-gt v15, v9, :cond_83

    iget-object v9, v0, Landroid/icu/impl/locale/LikelySubtags;->trieFirstLetterStates:[J

    aget-wide v16, v9, v15

    move-wide/from16 p1, v16

    .local p1, "state":J
    cmp-long v9, v16, v11

    if-eqz v9, :cond_7e

    .line 305
    move-wide/from16 v16, v11

    move-wide/from16 v10, p1

    .end local p1    # "state":J
    .local v10, "state":J
    invoke-virtual {v8, v10, v11}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    move-result-object v9

    invoke-static {v9, v1, v13}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v9

    .local v9, "value":I
    goto :goto_8c

    .line 303
    .end local v9    # "value":I
    .end local v10    # "state":J
    .restart local p1    # "state":J
    :cond_7e
    move-wide/from16 v16, v11

    move-wide/from16 v10, p1

    .end local p1    # "state":J
    .restart local v10    # "state":J
    goto :goto_88

    .end local v10    # "state":J
    :cond_83
    move-wide/from16 v16, v11

    goto :goto_88

    .end local v15    # "c0":I
    :cond_86
    move-wide/from16 v16, v11

    .line 307
    :goto_88
    invoke-static {v8, v1, v14}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v9

    .line 309
    .restart local v9    # "value":I
    :goto_8c
    if-ltz v9, :cond_90

    move v10, v13

    goto :goto_91

    :cond_90
    move v10, v14

    .line 310
    .local v10, "matchLanguage":Z
    :goto_91
    const/4 v11, 0x0

    .line 311
    .local v11, "matchScript":Z
    if-ltz v9, :cond_a2

    .line 312
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    xor-int/2addr v12, v13

    .line 313
    .end local v4    # "retainLanguage":Z
    .local v12, "retainLanguage":Z
    invoke-virtual {v8}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v18

    move/from16 p2, v6

    move-wide/from16 v4, v18

    .local v18, "state":J
    goto :goto_ae

    .line 315
    .end local v12    # "retainLanguage":Z
    .end local v18    # "state":J
    .restart local v4    # "retainLanguage":Z
    :cond_a2
    const/4 v12, 0x1

    .line 316
    .end local v4    # "retainLanguage":Z
    .restart local v12    # "retainLanguage":Z
    move/from16 p2, v6

    .end local v6    # "retainScript":Z
    .local p2, "retainScript":Z
    iget-wide v5, v0, Landroid/icu/impl/locale/LikelySubtags;->trieUndState:J

    invoke-virtual {v8, v5, v6}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    .line 317
    const-wide/16 v18, 0x0

    move-wide/from16 v4, v18

    .line 320
    .local v4, "state":J
    :goto_ae
    if-ltz v9, :cond_b7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b7

    .line 321
    const/4 v11, 0x1

    .line 323
    :cond_b7
    const-string v6, ""

    if-lez v9, :cond_c6

    .line 325
    if-ne v9, v13, :cond_be

    .line 326
    const/4 v9, 0x0

    .line 328
    :cond_be
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    xor-int/2addr v15, v13

    move/from16 p2, v13

    .end local p2    # "retainScript":Z
    .local v15, "retainScript":Z
    goto :goto_f4

    .line 330
    .end local v15    # "retainScript":Z
    .restart local p2    # "retainScript":Z
    :cond_c6
    invoke-static {v8, v2, v14}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v9

    .line 331
    if-ltz v9, :cond_d8

    .line 332
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    xor-int/2addr v15, v13

    .line 333
    .end local p2    # "retainScript":Z
    .restart local v15    # "retainScript":Z
    invoke-virtual {v8}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v4

    move/from16 p2, v13

    goto :goto_f4

    .line 335
    .end local v15    # "retainScript":Z
    .restart local p2    # "retainScript":Z
    :cond_d8
    const/4 v15, 0x1

    .line 336
    .end local p2    # "retainScript":Z
    .restart local v15    # "retainScript":Z
    cmp-long v18, v4, v16

    if-nez v18, :cond_e5

    .line 337
    move/from16 p2, v13

    iget-wide v13, v0, Landroid/icu/impl/locale/LikelySubtags;->trieUndZzzzState:J

    invoke-virtual {v8, v13, v14}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    goto :goto_f4

    .line 339
    :cond_e5
    move/from16 p2, v13

    invoke-virtual {v8, v4, v5}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    .line 340
    const/4 v13, 0x0

    invoke-static {v8, v6, v13}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v9

    .line 341
    nop

    .line 342
    invoke-virtual {v8}, Landroid/icu/util/BytesTrie;->getState64()J

    move-result-wide v4

    .line 347
    :goto_f4
    const/4 v13, 0x0

    .line 348
    .local v13, "matchRegion":Z
    if-lez v9, :cond_100

    .line 350
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    move v7, v14

    const/4 v14, 0x0

    goto :goto_12b

    .line 352
    :cond_100
    const/4 v14, 0x0

    invoke-static {v8, v3, v14}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v9

    .line 353
    if-ltz v9, :cond_119

    .line 354
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_117

    invoke-direct {v0, v3}, Landroid/icu/impl/locale/LikelySubtags;->isMacroregion(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_117

    .line 355
    const/4 v7, 0x1

    .line 356
    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_12b

    .line 369
    :cond_117
    const/4 v14, 0x0

    goto :goto_12b

    .line 359
    :cond_119
    const/4 v7, 0x1

    .line 360
    cmp-long v14, v4, v16

    if-nez v14, :cond_122

    .line 361
    iget v9, v0, Landroid/icu/impl/locale/LikelySubtags;->defaultLsrIndex:I

    const/4 v14, 0x0

    goto :goto_12b

    .line 363
    :cond_122
    invoke-virtual {v8, v4, v5}, Landroid/icu/util/BytesTrie;->resetToState64(J)Landroid/icu/util/BytesTrie;

    .line 364
    const/4 v14, 0x0

    invoke-static {v8, v6, v14}, Landroid/icu/impl/locale/LikelySubtags;->trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I

    move-result v9

    .line 365
    nop

    .line 369
    :goto_12b
    iget-object v14, v0, Landroid/icu/impl/locale/LikelySubtags;->lsrs:[Landroid/icu/impl/locale/LSR;

    aget-object v14, v14, v9

    .line 371
    .local v14, "result":Landroid/icu/impl/locale/LSR;
    if-eqz p4, :cond_14a

    if-nez v10, :cond_14a

    if-nez v11, :cond_14a

    if-eqz v13, :cond_141

    .line 372
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_13e

    goto :goto_141

    :cond_13e
    move-object/from16 v16, v1

    goto :goto_14c

    .line 373
    :cond_141
    :goto_141
    new-instance v0, Landroid/icu/impl/locale/LSR;

    move-object/from16 v16, v1

    const/4 v1, 0x7

    .end local v1    # "language":Ljava/lang/String;
    .local v16, "language":Ljava/lang/String;
    invoke-direct {v0, v6, v6, v6, v1}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 371
    .end local v16    # "language":Ljava/lang/String;
    .restart local v1    # "language":Ljava/lang/String;
    :cond_14a
    move-object/from16 v16, v1

    .line 375
    .end local v1    # "language":Ljava/lang/String;
    .restart local v16    # "language":Ljava/lang/String;
    :goto_14c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_155

    .line 376
    const-string v1, "und"

    .end local v16    # "language":Ljava/lang/String;
    .restart local v1    # "language":Ljava/lang/String;
    goto :goto_157

    .line 375
    .end local v1    # "language":Ljava/lang/String;
    .restart local v16    # "language":Ljava/lang/String;
    :cond_155
    move-object/from16 v1, v16

    .line 379
    .end local v16    # "language":Ljava/lang/String;
    .restart local v1    # "language":Ljava/lang/String;
    :goto_157
    if-nez v12, :cond_15f

    if-nez v15, :cond_15f

    if-nez v7, :cond_15f

    .line 380
    nop

    .line 381
    return-object v14

    .line 383
    :cond_15f
    if-nez v12, :cond_163

    .line 384
    iget-object v1, v14, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    .line 386
    :cond_163
    if-nez v15, :cond_167

    .line 387
    iget-object v2, v14, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    .line 389
    :cond_167
    if-nez v7, :cond_16b

    .line 390
    iget-object v3, v14, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    .line 392
    :cond_16b
    if-eqz v12, :cond_16f

    const/4 v0, 0x4

    goto :goto_170

    :cond_16f
    const/4 v0, 0x0

    :goto_170
    if-eqz v15, :cond_174

    const/4 v6, 0x2

    goto :goto_175

    :cond_174
    const/4 v6, 0x0

    :goto_175
    add-int/2addr v0, v6

    if-eqz v7, :cond_17b

    move/from16 v18, p2

    goto :goto_17d

    :cond_17b
    const/16 v18, 0x0

    :goto_17d
    add-int v0, v0, v18

    .line 394
    .local v0, "retainMask":I
    new-instance v6, Landroid/icu/impl/locale/LSR;

    invoke-direct {v6, v1, v2, v3, v0}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method private static final blacklist trieNext(Landroid/icu/util/BytesTrie;Ljava/lang/String;I)I
    .registers 8
    .param p0, "iter"    # Landroid/icu/util/BytesTrie;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .line 507
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 508
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    .local v0, "result":Landroid/icu/util/BytesTrie$Result;
    goto :goto_2f

    .line 510
    .end local v0    # "result":Landroid/icu/util/BytesTrie$Result;
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    .line 512
    .local v0, "end":I
    :goto_14
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 513
    .local v3, "c":I
    if-ge p2, v0, :cond_28

    .line 514
    invoke-virtual {p0, v3}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v4

    if-nez v4, :cond_25

    .line 515
    return v1

    .line 511
    .end local v3    # "c":I
    :cond_25
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 519
    .restart local v3    # "c":I
    :cond_28
    or-int/lit16 v4, v3, 0x80

    invoke-virtual {p0, v4}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    .line 520
    .local v4, "result":Landroid/icu/util/BytesTrie$Result;
    move-object v0, v4

    .line 524
    .end local v3    # "c":I
    .end local v4    # "result":Landroid/icu/util/BytesTrie$Result;
    .local v0, "result":Landroid/icu/util/BytesTrie$Result;
    :goto_2f
    sget-object v3, Landroid/icu/impl/locale/LikelySubtags$1;->$SwitchMap$android$icu$util$BytesTrie$Result:[I

    invoke-virtual {v0}, Landroid/icu/util/BytesTrie$Result;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_46

    .line 531
    return v1

    .line 530
    :pswitch_3b
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v1

    return v1

    .line 528
    :pswitch_40
    nop

    .line 529
    return v2

    .line 526
    :pswitch_42
    const/4 v1, 0x0

    return v1

    .line 525
    :pswitch_44
    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_44
        :pswitch_42
        :pswitch_40
        :pswitch_3b
    .end packed-switch
.end method


# virtual methods
.method public blacklist canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .registers 10
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 172
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "lang":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/locale/LikelySubtags;->languageAliases:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 174
    .local v1, "lang2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "region":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/locale/LikelySubtags;->regionAliases:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 176
    .local v3, "region2":Ljava/lang/String;
    if-nez v1, :cond_1e

    if-eqz v3, :cond_1d

    goto :goto_1e

    .line 182
    :cond_1d
    return-object p1

    .line 177
    :cond_1e
    :goto_1e
    new-instance v4, Landroid/icu/util/ULocale;

    .line 178
    if-nez v1, :cond_24

    move-object v5, v0

    goto :goto_25

    :cond_24
    move-object v5, v1

    .line 179
    :goto_25
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v6

    .line 180
    if-nez v3, :cond_2d

    move-object v7, v2

    goto :goto_2e

    :cond_2d
    move-object v7, v3

    :goto_2e
    invoke-direct {v4, v5, v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-object v4
.end method

.method blacklist compareLikely(Landroid/icu/impl/locale/LSR;Landroid/icu/impl/locale/LSR;I)I
    .registers 8
    .param p1, "lsr"    # Landroid/icu/impl/locale/LSR;
    .param p2, "other"    # Landroid/icu/impl/locale/LSR;
    .param p3, "likelyInfo"    # I

    .line 412
    iget-object v0, p1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v1, p2, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 413
    const/4 v0, -0x4

    return v0

    .line 415
    :cond_c
    iget-object v0, p1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v1, p2, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 417
    if-ltz p3, :cond_1f

    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_1f

    .line 418
    shr-int/lit8 v0, p3, 0x2

    .local v0, "index":I
    goto :goto_29

    .line 420
    .end local v0    # "index":I
    :cond_1f
    iget-object v0, p1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/locale/LikelySubtags;->getLikelyIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 421
    .restart local v0    # "index":I
    shl-int/lit8 p3, v0, 0x2

    .line 423
    :goto_29
    iget-object v1, p0, Landroid/icu/impl/locale/LikelySubtags;->lsrs:[Landroid/icu/impl/locale/LSR;

    aget-object v1, v1, v0

    .line 424
    .local v1, "likely":Landroid/icu/impl/locale/LSR;
    iget-object v2, p1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v3, v1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 425
    or-int/lit8 v2, p3, 0x1

    return v2

    .line 427
    :cond_3a
    and-int/lit8 v2, p3, -0x2

    return v2

    .line 430
    .end local v0    # "index":I
    .end local v1    # "likely":Landroid/icu/impl/locale/LSR;
    :cond_3d
    iget-object v0, p1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object v1, p2, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 432
    if-ltz p3, :cond_50

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_50

    .line 433
    shr-int/lit8 v0, p3, 0x2

    .restart local v0    # "index":I
    goto :goto_5c

    .line 435
    .end local v0    # "index":I
    :cond_50
    iget-object v0, p1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/locale/LikelySubtags;->getLikelyIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 436
    .restart local v0    # "index":I
    shl-int/lit8 v1, v0, 0x2

    or-int/lit8 p3, v1, 0x2

    .line 438
    :goto_5c
    iget-object v1, p0, Landroid/icu/impl/locale/LikelySubtags;->lsrs:[Landroid/icu/impl/locale/LSR;

    aget-object v1, v1, v0

    .line 439
    .restart local v1    # "likely":Landroid/icu/impl/locale/LSR;
    iget-object v2, p1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object v3, v1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 440
    or-int/lit8 v2, p3, 0x1

    return v2

    .line 442
    :cond_6d
    and-int/lit8 v2, p3, -0x2

    return v2

    .line 445
    .end local v0    # "index":I
    .end local v1    # "likely":Landroid/icu/impl/locale/LSR;
    :cond_70
    and-int/lit8 v0, p3, -0x2

    return v0
.end method

.method public blacklist makeMaximizedLsrFrom(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/locale/LSR;
    .registers 14
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "returnInputIfUnmatch"    # Z

    .line 192
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "name":Ljava/lang/String;
    const-string v1, "@x="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_1a

    .line 194
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "tag":Ljava/lang/String;
    nop

    .line 198
    new-instance v3, Landroid/icu/impl/locale/LSR;

    const-string v4, ""

    invoke-direct {v3, v1, v4, v4, v2}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    .line 200
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1a
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 201
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v9

    .line 200
    move-object v5, p0

    move v10, p2

    .end local p2    # "returnInputIfUnmatch":Z
    .local v10, "returnInputIfUnmatch":Z
    invoke-direct/range {v5 .. v10}, Landroid/icu/impl/locale/LikelySubtags;->makeMaximizedLsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;

    move-result-object p2

    .line 202
    .local p2, "max":Landroid/icu/impl/locale/LSR;
    iget-object v1, p2, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p2, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p2, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 203
    new-instance v1, Landroid/icu/impl/locale/LSR;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    .line 205
    :cond_5a
    return-object p2
.end method

.method public blacklist makeMaximizedLsrFrom(Ljava/util/Locale;)Landroid/icu/impl/locale/LSR;
    .registers 10
    .param p1, "locale"    # Ljava/util/Locale;

    .line 209
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "x-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "und-x-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2c

    .line 215
    :cond_15
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 215
    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/locale/LikelySubtags;->makeMaximizedLsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v1

    return-object v1

    .line 213
    :cond_2c
    :goto_2c
    new-instance v1, Landroid/icu/impl/locale/LSR;

    const/4 v2, 0x7

    const-string v3, ""

    invoke-direct {v1, v0, v3, v3, v2}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method public blacklist minimizeSubtags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/impl/locale/LSR;
    .registers 12
    .param p1, "languageIn"    # Ljava/lang/String;
    .param p2, "scriptIn"    # Ljava/lang/String;
    .param p3, "regionIn"    # Ljava/lang/String;
    .param p4, "fieldToFavor"    # Landroid/icu/util/ULocale$Minimize;

    .line 537
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/impl/locale/LikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v1

    .line 538
    .local v1, "max":Landroid/icu/impl/locale/LSR;
    iget-object v2, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 540
    new-instance v0, Landroid/icu/impl/locale/LSR;

    const/4 v2, 0x7

    invoke-direct {v0, p1, p2, p3, v2}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 542
    :cond_24
    iget-object v2, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {p0, v2, v3, v3, v0}, Landroid/icu/impl/locale/LikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v2

    .line 543
    .local v2, "test":Landroid/icu/impl/locale/LSR;
    invoke-virtual {v2, v1}, Landroid/icu/impl/locale/LSR;->isEquivalentTo(Landroid/icu/impl/locale/LSR;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3b

    .line 544
    new-instance v0, Landroid/icu/impl/locale/LSR;

    iget-object v4, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-direct {v0, v4, v3, v3, v5}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 546
    :cond_3b
    sget-object v4, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    if-ne v4, p4, :cond_6f

    .line 547
    iget-object v4, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v6, v1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-direct {p0, v4, v3, v6, v0}, Landroid/icu/impl/locale/LikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v2

    .line 548
    invoke-virtual {v2, v1}, Landroid/icu/impl/locale/LSR;->isEquivalentTo(Landroid/icu/impl/locale/LSR;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 549
    new-instance v0, Landroid/icu/impl/locale/LSR;

    iget-object v4, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v6, v1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-direct {v0, v4, v3, v6, v5}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 551
    :cond_57
    iget-object v4, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v6, v1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-direct {p0, v4, v6, v3, v0}, Landroid/icu/impl/locale/LikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    .line 552
    .end local v2    # "test":Landroid/icu/impl/locale/LSR;
    .local v0, "test":Landroid/icu/impl/locale/LSR;
    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/LSR;->isEquivalentTo(Landroid/icu/impl/locale/LSR;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 553
    new-instance v2, Landroid/icu/impl/locale/LSR;

    iget-object v4, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v6, v1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-direct {v2, v4, v6, v3, v5}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    .line 556
    .end local v0    # "test":Landroid/icu/impl/locale/LSR;
    .restart local v2    # "test":Landroid/icu/impl/locale/LSR;
    :cond_6f
    iget-object v4, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v6, v1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-direct {p0, v4, v6, v3, v0}, Landroid/icu/impl/locale/LikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v2

    .line 557
    invoke-virtual {v2, v1}, Landroid/icu/impl/locale/LSR;->isEquivalentTo(Landroid/icu/impl/locale/LSR;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 558
    new-instance v0, Landroid/icu/impl/locale/LSR;

    iget-object v4, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v6, v1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-direct {v0, v4, v6, v3, v5}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 560
    :cond_87
    iget-object v4, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v6, v1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-direct {p0, v4, v3, v6, v0}, Landroid/icu/impl/locale/LikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/icu/impl/locale/LSR;

    move-result-object v0

    .line 561
    .end local v2    # "test":Landroid/icu/impl/locale/LSR;
    .restart local v0    # "test":Landroid/icu/impl/locale/LSR;
    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/LSR;->isEquivalentTo(Landroid/icu/impl/locale/LSR;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 562
    new-instance v2, Landroid/icu/impl/locale/LSR;

    iget-object v4, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v6, v1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-direct {v2, v4, v3, v6, v5}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    .line 565
    :cond_9f
    new-instance v2, Landroid/icu/impl/locale/LSR;

    iget-object v3, v1, Landroid/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v6, v1, Landroid/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 593
    invoke-direct {p0}, Landroid/icu/impl/locale/LikelySubtags;->getTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
