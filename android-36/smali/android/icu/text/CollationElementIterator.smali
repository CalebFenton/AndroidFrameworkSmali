.class public final Landroid/icu/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CollationElementIterator$MaxExpSink;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api IGNORABLE:I = 0x0

.field public static final whitelist test-api NULLORDER:I = -0x1


# instance fields
.field private greylist-max-o dir_:B

.field private greylist-max-o iter_:Landroid/icu/impl/coll/CollationIterator;

.field private greylist-max-o offsets_:Landroid/icu/impl/coll/UVector32;

.field private greylist-max-o otherHalf_:I

.field private greylist-max-o rbc_:Landroid/icu/text/RuleBasedCollator;

.field private greylist-max-o string_:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smceNeedsTwoParts(J)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/text/CollationElementIterator;->ceNeedsTwoParts(J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetFirstHalf(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSecondHalf(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 108
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/text/RuleBasedCollator;)V
    .registers 4
    .param p1, "collator"    # Landroid/icu/text/RuleBasedCollator;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    .line 194
    iput-object p1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    .line 195
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 196
    iput-byte v1, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 197
    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    .line 198
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .registers 3
    .param p1, "source"    # Landroid/icu/text/UCharacterIterator;
    .param p2, "collator"    # Landroid/icu/text/RuleBasedCollator;

    .line 249
    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    .line 250
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Landroid/icu/text/UCharacterIterator;)V

    .line 251
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "collator"    # Landroid/icu/text/RuleBasedCollator;

    .line 211
    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    .line 212
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .registers 3
    .param p1, "source"    # Ljava/text/CharacterIterator;
    .param p2, "collator"    # Landroid/icu/text/RuleBasedCollator;

    .line 234
    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    .line 235
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 236
    return-void
.end method

.method private static final greylist-max-o ceNeedsTwoParts(J)Z
    .registers 6
    .param p0, "ce"    # J

    .line 189
    const-wide v0, 0xffff00ff003fL

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static final greylist-max-o computeMaxExpansions(Landroid/icu/impl/coll/CollationData;)Ljava/util/Map;
    .registers 6
    .param p0, "data"    # Landroid/icu/impl/coll/CollationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/coll/CollationData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 610
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 611
    .local v0, "maxExpansions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v1, Landroid/icu/text/CollationElementIterator$MaxExpSink;

    invoke-direct {v1, v0}, Landroid/icu/text/CollationElementIterator$MaxExpSink;-><init>(Ljava/util/Map;)V

    .line 612
    .local v1, "sink":Landroid/icu/text/CollationElementIterator$MaxExpSink;
    new-instance v2, Landroid/icu/impl/coll/ContractionsAndExpansions;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v3, v1, v4}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    invoke-virtual {v2, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forData(Landroid/icu/impl/coll/CollationData;)V

    .line 613
    return-object v0
.end method

.method private static final greylist-max-o getFirstHalf(JI)I
    .registers 6
    .param p0, "p"    # J
    .param p2, "lower32"    # I

    .line 181
    long-to-int v0, p0

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    shr-int/lit8 v1, p2, 0x10

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static greylist-max-o getMaxExpansion(Ljava/util/Map;I)I
    .registers 5
    .param p1, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 630
    .local p0, "maxExpansions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 631
    return v0

    .line 634
    :cond_4
    if-eqz p0, :cond_18

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v2, v1

    .local v2, "max":Ljava/lang/Integer;
    if-eqz v1, :cond_18

    .line 635
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 637
    .end local v2    # "max":Ljava/lang/Integer;
    :cond_18
    and-int/lit16 v1, p1, 0xc0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_20

    .line 639
    const/4 v0, 0x2

    return v0

    .line 641
    :cond_20
    return v0
.end method

.method private static final greylist-max-o getSecondHalf(JI)I
    .registers 6
    .param p0, "p"    # J
    .param p2, "lower32"    # I

    .line 185
    long-to-int v0, p0

    shl-int/lit8 v0, v0, 0x10

    shr-int/lit8 v1, p2, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/lit8 v1, p2, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o normalizeDir()B
    .registers 3

    .line 647
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    :goto_9
    return v0
.end method

.method public static final whitelist test-api primaryOrder(I)I
    .registers 3
    .param p0, "ce"    # I

    .line 156
    ushr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static final whitelist test-api secondaryOrder(I)I
    .registers 2
    .param p0, "ce"    # I

    .line 166
    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static final whitelist test-api tertiaryOrder(I)I
    .registers 2
    .param p0, "ce"    # I

    .line 176
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .line 659
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 660
    return v0

    .line 662
    :cond_4
    instance-of v1, p1, Landroid/icu/text/CollationElementIterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    .line 663
    move-object v1, p1

    check-cast v1, Landroid/icu/text/CollationElementIterator;

    .line 664
    .local v1, "thatceiter":Landroid/icu/text/CollationElementIterator;
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v4, v1, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v3, v4}, Landroid/icu/text/RuleBasedCollator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget v3, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    iget v4, v1, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-ne v3, v4, :cond_3b

    .line 666
    invoke-direct {p0}, Landroid/icu/text/CollationElementIterator;->normalizeDir()B

    move-result v3

    invoke-direct {v1}, Landroid/icu/text/CollationElementIterator;->normalizeDir()B

    move-result v4

    if-ne v3, v4, :cond_3b

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 667
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iget-object v4, v1, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    .line 668
    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v2

    .line 664
    :goto_3c
    return v0

    .line 670
    .end local v1    # "thatceiter":Landroid/icu/text/CollationElementIterator;
    :cond_3d
    return v2
.end method

.method public whitelist test-api getMaxExpansion(I)I
    .registers 3
    .param p1, "ce"    # I

    .line 626
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v0, v0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    invoke-static {v0, p1}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(Ljava/util/Map;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getOffset()I
    .registers 3

    .line 280
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    if-gez v0, :cond_24

    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 283
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->getCEsLength()I

    move-result v0

    .line 284
    .local v0, "i":I
    iget v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v1, :cond_1c

    .line 286
    add-int/lit8 v0, v0, 0x1

    .line 288
    :cond_1c
    nop

    .line 289
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v1

    return v1

    .line 291
    .end local v0    # "i":I
    :cond_24
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getRuleBasedCollator()Landroid/icu/text/RuleBasedCollator;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 691
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 680
    nop

    .line 681
    const/16 v0, 0x2a

    return v0
.end method

.method public whitelist test-api next()I
    .registers 9

    .line 312
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    .line 314
    iget v0, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v0, :cond_1d

    .line 315
    iget v0, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 316
    .local v0, "oh":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 317
    return v0

    .line 319
    .end local v0    # "oh":I
    :cond_f
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    const/4 v2, 0x2

    if-ne v0, v1, :cond_17

    .line 321
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    goto :goto_1d

    .line 322
    :cond_17
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    if-nez v0, :cond_47

    .line 324
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 331
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    .line 332
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v0

    .line 333
    .local v0, "ce":J
    const-wide v2, 0x101000100L

    cmp-long v2, v0, v2

    if-nez v2, :cond_33

    .line 334
    const/4 v2, -0x1

    return v2

    .line 337
    :cond_33
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    .line 338
    .local v2, "p":J
    long-to-int v4, v0

    .line 339
    .local v4, "lower32":I
    invoke-static {v2, v3, v4}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result v5

    .line 340
    .local v5, "firstHalf":I
    invoke-static {v2, v3, v4}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result v6

    .line 341
    .local v6, "secondHalf":I
    if-eqz v6, :cond_46

    .line 342
    or-int/lit16 v7, v6, 0xc0

    iput v7, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 344
    :cond_46
    return v5

    .line 327
    .end local v0    # "ce":J
    .end local v2    # "p":J
    .end local v4    # "lower32":I
    .end local v5    # "firstHalf":I
    .end local v6    # "secondHalf":I
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal change of direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api previous()I
    .registers 11

    .line 366
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gez v0, :cond_f

    .line 368
    iget v0, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v0, :cond_28

    .line 369
    iget v0, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 370
    .local v0, "oh":I
    iput v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 371
    return v0

    .line 373
    .end local v0    # "oh":I
    :cond_f
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    if-nez v0, :cond_21

    .line 374
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    .line 375
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    goto :goto_28

    .line 376
    :cond_21
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    const/4 v3, 0x1

    if-ne v0, v3, :cond_80

    .line 378
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 384
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    if-nez v0, :cond_33

    .line 385
    new-instance v0, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector32;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    .line 390
    :cond_33
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->getCEsLength()I

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v1

    .line 391
    .local v1, "limitOffset":I
    :cond_41
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationIterator;->previousCE(Landroid/icu/impl/coll/UVector32;)J

    move-result-wide v3

    .line 392
    .local v3, "ce":J
    const-wide v5, 0x101000100L

    cmp-long v0, v3, v5

    if-nez v0, :cond_53

    .line 393
    return v2

    .line 396
    :cond_53
    const/16 v0, 0x20

    ushr-long v5, v3, v0

    .line 397
    .local v5, "p":J
    long-to-int v0, v3

    .line 398
    .local v0, "lower32":I
    invoke-static {v5, v6, v0}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result v2

    .line 399
    .local v2, "firstHalf":I
    invoke-static {v5, v6, v0}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result v7

    .line 400
    .local v7, "secondHalf":I
    if-eqz v7, :cond_7f

    .line 401
    iget-object v8, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v8}, Landroid/icu/impl/coll/UVector32;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 405
    iget-object v8, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v9}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 406
    iget-object v8, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v8, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 408
    :cond_7a
    iput v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 409
    or-int/lit16 v8, v7, 0xc0

    return v8

    .line 411
    :cond_7f
    return v2

    .line 381
    .end local v0    # "lower32":I
    .end local v1    # "limitOffset":I
    .end local v2    # "firstHalf":I
    .end local v3    # "ce":J
    .end local v5    # "p":J
    .end local v7    # "secondHalf":I
    :cond_80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal change of direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api reset()V
    .registers 3

    .line 424
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    .line 425
    iput v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 426
    iput-byte v1, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 427
    return-void
.end method

.method public whitelist test-api setOffset(I)V
    .registers 6
    .param p1, "newOffset"    # I

    .line 451
    if-lez p1, :cond_4f

    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_4f

    .line 452
    move v0, p1

    .line 454
    .local v0, "offset":I
    :cond_b
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 455
    .local v1, "c":C
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v2, v1}, Landroid/icu/text/RuleBasedCollator;->isUnsafe(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 456
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedCollator;->isUnsafe(I)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 457
    goto :goto_33

    .line 460
    :cond_2e
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, -0x1

    .line 461
    if-gtz v0, :cond_b

    .line 462
    :cond_33
    :goto_33
    if-ge v0, p1, :cond_4f

    .line 468
    move v1, v0

    .line 470
    .local v1, "lastSafeOffset":I
    :cond_36
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v2, v1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    .line 472
    :cond_3b
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    .line 473
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v2

    move v0, v2

    if-eq v2, v1, :cond_3b

    .line 474
    if-gt v0, p1, :cond_4c

    .line 475
    move v1, v0

    .line 477
    :cond_4c
    if-lt v0, p1, :cond_36

    .line 478
    move p1, v1

    .line 481
    .end local v0    # "offset":I
    .end local v1    # "lastSafeOffset":I
    :cond_4f
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 483
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 484
    return-void
.end method

.method public whitelist test-api setText(Landroid/icu/text/UCharacterIterator;)V
    .registers 7
    .param p1, "source"    # Landroid/icu/text/UCharacterIterator;

    .line 515
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 523
    :try_start_6
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UCharacterIterator;
    :try_end_c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_c} :catch_49

    .line 529
    .local v0, "src":Landroid/icu/text/UCharacterIterator;
    nop

    .line 530
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    .line 532
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v1, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v1

    .line 533
    .local v1, "numeric":Z
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    .line 534
    new-instance v2, Landroid/icu/impl/coll/IterCollationIterator;

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v2, v4, v1, v0}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    .local v2, "newIter":Landroid/icu/impl/coll/CollationIterator;
    goto :goto_42

    .line 536
    .end local v2    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    :cond_39
    new-instance v2, Landroid/icu/impl/coll/FCDIterCollationIterator;

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v2, v4, v1, v0, v3}, Landroid/icu/impl/coll/FCDIterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V

    .line 538
    .restart local v2    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    :goto_42
    iput-object v2, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    .line 539
    iput v3, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 540
    iput-byte v3, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 541
    return-void

    .line 524
    .end local v0    # "src":Landroid/icu/text/UCharacterIterator;
    .end local v1    # "numeric":Z
    .end local v2    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    :catch_49
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public whitelist test-api setText(Ljava/lang/String;)V
    .registers 7
    .param p1, "source"    # Ljava/lang/String;

    .line 493
    iput-object p1, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 495
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v0, v0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v0

    .line 496
    .local v0, "numeric":Z
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v1, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 497
    new-instance v1, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v4, v2}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .local v1, "newIter":Landroid/icu/impl/coll/CollationIterator;
    goto :goto_38

    .line 499
    .end local v1    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    :cond_2d
    new-instance v1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v4, v2}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 501
    .restart local v1    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    :goto_38
    iput-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    .line 502
    iput v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 503
    iput-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 504
    return-void
.end method

.method public whitelist test-api setText(Ljava/text/CharacterIterator;)V
    .registers 7
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .line 555
    new-instance v0, Landroid/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v0, p1}, Landroid/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    .line 556
    .local v0, "src":Landroid/icu/text/UCharacterIterator;
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    .line 557
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 559
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v1, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v1

    .line 560
    .local v1, "numeric":Z
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_37

    .line 561
    new-instance v2, Landroid/icu/impl/coll/IterCollationIterator;

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v2, v4, v1, v0}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    .local v2, "newIter":Landroid/icu/impl/coll/CollationIterator;
    goto :goto_40

    .line 563
    .end local v2    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    :cond_37
    new-instance v2, Landroid/icu/impl/coll/FCDIterCollationIterator;

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v2, v4, v1, v0, v3}, Landroid/icu/impl/coll/FCDIterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V

    .line 565
    .restart local v2    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    :goto_40
    iput-object v2, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    .line 566
    iput v3, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    .line 567
    iput-byte v3, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    .line 568
    return-void
.end method
