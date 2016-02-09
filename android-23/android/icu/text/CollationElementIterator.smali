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
.field static final synthetic -assertionsDisabled:Z

.field public static final IGNORABLE:I = 0x0

.field public static final NULLORDER:I = -0x1


# instance fields
.field private dir_:B

.field private iter_:Landroid/icu/impl/coll/CollationIterator;

.field private offsets_:Landroid/icu/impl/coll/UVector32;

.field private otherHalf_:I

.field private rbc_:Landroid/icu/text/RuleBasedCollator;

.field private string_:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(J)Z
    .locals 2
    .param p0, "ce"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/text/CollationElementIterator;->ceNeedsTwoParts(J)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(JI)I
    .locals 2
    .param p0, "p"    # J
    .param p2, "lower32"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(JI)I
    .locals 2
    .param p0, "p"    # J
    .param p2, "lower32"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/CollationElementIterator;->-assertionsDisabled:Z

    #@b
    .line 110
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 2
    .param p1, "collator"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 200
    iput-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@7
    .line 201
    iput-object p1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@9
    .line 202
    iput v0, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@b
    .line 203
    iput-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@d
    .line 204
    iput-object v1, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@f
    .line 199
    return-void
.end method

.method constructor <init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 0
    .param p1, "source"    # Landroid/icu/text/UCharacterIterator;
    .param p2, "collator"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 259
    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    #@3
    .line 260
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Landroid/icu/text/UCharacterIterator;)V

    #@6
    .line 258
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "collator"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 219
    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    #@3
    .line 220
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    #@6
    .line 218
    return-void
.end method

.method constructor <init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 0
    .param p1, "source"    # Ljava/text/CharacterIterator;
    .param p2, "collator"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 243
    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    #@3
    .line 244
    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    #@6
    .line 242
    return-void
.end method

.method private static final ceNeedsTwoParts(J)Z
    .locals 4
    .param p0, "ce"    # J

    #@0
    .prologue
    .line 196
    const-wide v0, 0xffff00ff003fL

    #@5
    and-long/2addr v0, p0

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method static final computeMaxExpansions(Landroid/icu/impl/coll/CollationData;)Ljava/util/Map;
    .locals 5
    .param p0, "data"    # Landroid/icu/impl/coll/CollationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/coll/CollationData;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 650
    new-instance v0, Ljava/util/HashMap;

    #@3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@6
    .line 651
    .local v0, "maxExpansions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v1, Landroid/icu/text/CollationElementIterator$MaxExpSink;

    #@8
    invoke-direct {v1, v0}, Landroid/icu/text/CollationElementIterator$MaxExpSink;-><init>(Ljava/util/Map;)V

    #@b
    .line 652
    .local v1, "sink":Landroid/icu/text/CollationElementIterator$MaxExpSink;
    new-instance v2, Landroid/icu/impl/coll/ContractionsAndExpansions;

    #@d
    const/4 v3, 0x1

    #@e
    invoke-direct {v2, v4, v4, v1, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    #@11
    invoke-virtual {v2, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forData(Landroid/icu/impl/coll/CollationData;)V

    #@14
    .line 653
    return-object v0
.end method

.method private static final getFirstHalf(JI)I
    .locals 4
    .param p0, "p"    # J
    .param p2, "lower32"    # I

    #@0
    .prologue
    .line 188
    long-to-int v0, p0

    #@1
    const/high16 v1, -0x10000

    #@3
    and-int/2addr v0, v1

    #@4
    shr-int/lit8 v1, p2, 0x10

    #@6
    const v2, 0xff00

    #@9
    and-int/2addr v1, v2

    #@a
    or-int/2addr v0, v1

    #@b
    shr-int/lit8 v1, p2, 0x8

    #@d
    and-int/lit16 v1, v1, 0xff

    #@f
    or-int/2addr v0, v1

    #@10
    return v0
.end method

.method static getMaxExpansion(Ljava/util/Map;I)I
    .locals 4
    .param p1, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "maxExpansions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    #@1
    .line 671
    if-nez p1, :cond_0

    #@3
    .line 672
    return v3

    #@4
    .line 675
    :cond_0
    if-eqz p0, :cond_1

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Integer;

    #@10
    .local v0, "max":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@12
    .line 676
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 678
    .end local v0    # "max":Ljava/lang/Integer;
    :cond_1
    and-int/lit16 v1, p1, 0xc0

    #@19
    const/16 v2, 0xc0

    #@1b
    if-ne v1, v2, :cond_2

    #@1d
    .line 680
    const/4 v1, 0x2

    #@1e
    return v1

    #@1f
    .line 682
    :cond_2
    return v3
.end method

.method private static final getSecondHalf(JI)I
    .locals 4
    .param p0, "p"    # J
    .param p2, "lower32"    # I

    #@0
    .prologue
    .line 192
    long-to-int v0, p0

    #@1
    shl-int/lit8 v0, v0, 0x10

    #@3
    shr-int/lit8 v1, p2, 0x8

    #@5
    const v2, 0xff00

    #@8
    and-int/2addr v1, v2

    #@9
    or-int/2addr v0, v1

    #@a
    and-int/lit8 v1, p2, 0x3f

    #@c
    or-int/2addr v0, v1

    #@d
    return v0
.end method

.method private normalizeDir()B
    .locals 2

    #@0
    .prologue
    .line 688
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@9
    goto :goto_0
.end method

.method public static final primaryOrder(I)I
    .locals 2
    .param p0, "ce"    # I

    #@0
    .prologue
    .line 161
    ushr-int/lit8 v0, p0, 0x10

    #@2
    const v1, 0xffff

    #@5
    and-int/2addr v0, v1

    #@6
    return v0
.end method

.method public static final secondaryOrder(I)I
    .locals 1
    .param p0, "ce"    # I

    #@0
    .prologue
    .line 172
    ushr-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method public static final tertiaryOrder(I)I
    .locals 1
    .param p0, "ce"    # I

    #@0
    .prologue
    .line 183
    and-int/lit16 v0, p0, 0xff

    #@2
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 700
    if-ne p1, p0, :cond_0

    #@3
    .line 701
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 703
    :cond_0
    instance-of v2, p1, Landroid/icu/text/CollationElementIterator;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 704
    check-cast v0, Landroid/icu/text/CollationElementIterator;

    #@c
    .line 705
    .local v0, "thatceiter":Landroid/icu/text/CollationElementIterator;
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@e
    iget-object v3, v0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@10
    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedCollator;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 706
    iget v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@18
    iget v3, v0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@1a
    if-ne v2, v3, :cond_1

    #@1c
    .line 707
    invoke-direct {p0}, Landroid/icu/text/CollationElementIterator;->normalizeDir()B

    #@1f
    move-result v2

    #@20
    invoke-direct {v0}, Landroid/icu/text/CollationElementIterator;->normalizeDir()B

    #@23
    move-result v3

    #@24
    if-ne v2, v3, :cond_1

    #@26
    .line 708
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@28
    iget-object v3, v0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    .line 705
    if-eqz v2, :cond_1

    #@30
    .line 709
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@32
    iget-object v2, v0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@34
    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    .line 705
    :cond_1
    return v1

    #@39
    .line 711
    .end local v0    # "thatceiter":Landroid/icu/text/CollationElementIterator;
    :cond_2
    return v1
.end method

.method public getMaxExpansion(I)I
    .locals 1
    .param p1, "ce"    # I

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@2
    iget-object v0, v0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@4
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    #@6
    invoke-static {v0, p1}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(Ljava/util/Map;I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getOffset()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 291
    iget-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@3
    if-gez v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@7
    if-eqz v2, :cond_0

    #@9
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@b
    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->isEmpty()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 302
    :cond_0
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@13
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 294
    :cond_1
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@1a
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator;->getCEsLength()I

    #@1d
    move-result v0

    #@1e
    .line 295
    .local v0, "i":I
    iget v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 297
    add-int/lit8 v0, v0, 0x1

    #@24
    .line 299
    :cond_2
    sget-boolean v2, Landroid/icu/text/CollationElementIterator;->-assertionsDisabled:Z

    #@26
    if-nez v2, :cond_4

    #@28
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@2a
    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->size()I

    #@2d
    move-result v2

    #@2e
    if-ge v0, v2, :cond_3

    #@30
    const/4 v1, 0x1

    #@31
    :cond_3
    if-nez v1, :cond_4

    #@33
    new-instance v1, Ljava/lang/AssertionError;

    #@35
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@38
    throw v1

    #@39
    .line 300
    :cond_4
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@3b
    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    #@3e
    move-result v1

    #@3f
    return v1
.end method

.method public getRuleBasedCollator()Landroid/icu/text/RuleBasedCollator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 732
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 722
    sget-boolean v0, Landroid/icu/text/CollationElementIterator;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "hashCode not designed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 723
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method public next()I
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 324
    iget-byte v8, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@5
    if-le v8, v10, :cond_0

    #@7
    .line 326
    iget v8, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@9
    if-eqz v8, :cond_1

    #@b
    .line 327
    iget v4, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@d
    .line 328
    .local v4, "oh":I
    iput v9, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@f
    .line 329
    return v4

    #@10
    .line 331
    .end local v4    # "oh":I
    :cond_0
    iget-byte v8, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@12
    if-ne v8, v10, :cond_2

    #@14
    .line 333
    iput-byte v11, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@16
    .line 343
    :cond_1
    :goto_0
    iget-object v8, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@18
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    #@1b
    .line 344
    iget-object v8, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@1d
    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    #@20
    move-result-wide v0

    #@21
    .line 345
    .local v0, "ce":J
    const-wide v8, 0x101000100L

    #@26
    cmp-long v8, v0, v8

    #@28
    if-nez v8, :cond_4

    #@2a
    .line 346
    const/4 v8, -0x1

    #@2b
    return v8

    #@2c
    .line 334
    .end local v0    # "ce":J
    :cond_2
    iget-byte v8, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@2e
    if-nez v8, :cond_3

    #@30
    .line 336
    iput-byte v11, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@32
    goto :goto_0

    #@33
    .line 339
    :cond_3
    new-instance v8, Ljava/lang/IllegalStateException;

    #@35
    const-string/jumbo v9, "Illegal change of direction"

    #@38
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v8

    #@3c
    .line 349
    .restart local v0    # "ce":J
    :cond_4
    const/16 v8, 0x20

    #@3e
    ushr-long v6, v0, v8

    #@40
    .line 350
    .local v6, "p":J
    long-to-int v3, v0

    #@41
    .line 351
    .local v3, "lower32":I
    invoke-static {v6, v7, v3}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    #@44
    move-result v2

    #@45
    .line 352
    .local v2, "firstHalf":I
    invoke-static {v6, v7, v3}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    #@48
    move-result v5

    #@49
    .line 353
    .local v5, "secondHalf":I
    if-eqz v5, :cond_5

    #@4b
    .line 354
    or-int/lit16 v8, v5, 0xc0

    #@4d
    iput v8, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@4f
    .line 356
    :cond_5
    return v2
.end method

.method public previous()I
    .locals 13

    #@0
    .prologue
    const/4 v12, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 379
    iget-byte v9, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@4
    if-gez v9, :cond_0

    #@6
    .line 381
    iget v9, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@8
    if-eqz v9, :cond_1

    #@a
    .line 382
    iget v5, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@c
    .line 383
    .local v5, "oh":I
    iput v10, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@e
    .line 384
    return v5

    #@f
    .line 386
    .end local v5    # "oh":I
    :cond_0
    iget-byte v9, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@11
    if-nez v9, :cond_3

    #@13
    .line 387
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@15
    iget-object v10, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@17
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@1a
    move-result v10

    #@1b
    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    #@1e
    .line 388
    iput-byte v12, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@20
    .line 397
    :cond_1
    :goto_0
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@22
    if-nez v9, :cond_2

    #@24
    .line 398
    new-instance v9, Landroid/icu/impl/coll/UVector32;

    #@26
    invoke-direct {v9}, Landroid/icu/impl/coll/UVector32;-><init>()V

    #@29
    iput-object v9, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@2b
    .line 403
    :cond_2
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@2d
    invoke-virtual {v9}, Landroid/icu/impl/coll/CollationIterator;->getCEsLength()I

    #@30
    move-result v9

    #@31
    if-nez v9, :cond_5

    #@33
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@35
    invoke-virtual {v9}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    #@38
    move-result v3

    #@39
    .line 404
    .local v3, "limitOffset":I
    :goto_1
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@3b
    iget-object v10, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@3d
    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/CollationIterator;->previousCE(Landroid/icu/impl/coll/UVector32;)J

    #@40
    move-result-wide v0

    #@41
    .line 405
    .local v0, "ce":J
    const-wide v10, 0x101000100L

    #@46
    cmp-long v9, v0, v10

    #@48
    if-nez v9, :cond_6

    #@4a
    .line 406
    return v12

    #@4b
    .line 389
    .end local v0    # "ce":J
    .end local v3    # "limitOffset":I
    :cond_3
    iget-byte v9, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@4d
    const/4 v10, 0x1

    #@4e
    if-ne v9, v10, :cond_4

    #@50
    .line 391
    iput-byte v12, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@52
    goto :goto_0

    #@53
    .line 394
    :cond_4
    new-instance v9, Ljava/lang/IllegalStateException;

    #@55
    const-string/jumbo v10, "Illegal change of direction"

    #@58
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v9

    #@5c
    .line 403
    :cond_5
    const/4 v3, 0x0

    #@5d
    .restart local v3    # "limitOffset":I
    goto :goto_1

    #@5e
    .line 409
    .restart local v0    # "ce":J
    :cond_6
    const/16 v9, 0x20

    #@60
    ushr-long v6, v0, v9

    #@62
    .line 410
    .local v6, "p":J
    long-to-int v4, v0

    #@63
    .line 411
    .local v4, "lower32":I
    invoke-static {v6, v7, v4}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    #@66
    move-result v2

    #@67
    .line 412
    .local v2, "firstHalf":I
    invoke-static {v6, v7, v4}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    #@6a
    move-result v8

    #@6b
    .line 413
    .local v8, "secondHalf":I
    if-eqz v8, :cond_8

    #@6d
    .line 414
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@6f
    invoke-virtual {v9}, Landroid/icu/impl/coll/UVector32;->isEmpty()Z

    #@72
    move-result v9

    #@73
    if-eqz v9, :cond_7

    #@75
    .line 418
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@77
    iget-object v10, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@79
    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    #@7c
    move-result v10

    #@7d
    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@80
    .line 419
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    #@82
    invoke-virtual {v9, v3}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@85
    .line 421
    :cond_7
    iput v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@87
    .line 422
    or-int/lit16 v9, v8, 0xc0

    #@89
    return v9

    #@8a
    .line 424
    :cond_8
    return v2
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 439
    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@3
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    #@6
    .line 440
    iput v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@8
    .line 441
    iput-byte v1, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@a
    .line 438
    return-void
.end method

.method public setOffset(I)V
    .locals 6
    .param p1, "newOffset"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 467
    if-lez p1, :cond_6

    #@3
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    if-ge p1, v3, :cond_6

    #@b
    .line 468
    move v2, p1

    #@c
    .line 470
    .local v2, "offset":I
    :cond_0
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@e
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 471
    .local v0, "c":C
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@14
    invoke-virtual {v3, v0}, Landroid/icu/text/RuleBasedCollator;->isUnsafe(I)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 472
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@22
    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@24
    invoke-virtual {v4, v2}, Ljava/lang/String;->codePointAt(I)I

    #@27
    move-result v4

    #@28
    invoke-virtual {v3, v4}, Landroid/icu/text/RuleBasedCollator;->isUnsafe(I)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    .line 476
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@30
    .line 477
    if-gtz v2, :cond_0

    #@32
    .line 478
    :cond_2
    if-ge v2, p1, :cond_6

    #@34
    .line 484
    move v1, v2

    #@35
    .line 486
    .local v1, "lastSafeOffset":I
    :cond_3
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@37
    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    #@3a
    .line 488
    :cond_4
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@3c
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    #@3f
    .line 489
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@41
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    #@44
    move-result v2

    #@45
    if-eq v2, v1, :cond_4

    #@47
    .line 490
    if-gt v2, p1, :cond_5

    #@49
    .line 491
    move v1, v2

    #@4a
    .line 493
    :cond_5
    if-lt v2, p1, :cond_3

    #@4c
    .line 494
    move p1, v1

    #@4d
    .line 497
    .end local v0    # "c":C
    .end local v1    # "lastSafeOffset":I
    .end local v2    # "offset":I
    :cond_6
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@4f
    invoke-virtual {v3, p1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    #@52
    .line 498
    iput v5, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@54
    .line 499
    const/4 v3, 0x1

    #@55
    iput-byte v3, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@57
    .line 466
    return-void
.end method

.method public setText(Landroid/icu/text/UCharacterIterator;)V
    .locals 6
    .param p1, "source"    # Landroid/icu/text/UCharacterIterator;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 533
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    iput-object v4, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@7
    .line 541
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Landroid/icu/text/UCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 548
    .local v3, "src":Landroid/icu/text/UCharacterIterator;
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    #@10
    .line 550
    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@12
    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@14
    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Landroid/icu/impl/coll/CollationSettings;

    #@1a
    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    #@1d
    move-result v2

    #@1e
    .line 551
    .local v2, "numeric":Z
    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@20
    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@22
    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Landroid/icu/impl/coll/CollationSettings;

    #@28
    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_0

    #@2e
    .line 552
    new-instance v1, Landroid/icu/impl/coll/IterCollationIterator;

    #@30
    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@32
    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@34
    invoke-direct {v1, v4, v2, v3}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    #@37
    .line 556
    .local v1, "newIter":Landroid/icu/impl/coll/CollationIterator;
    :goto_0
    iput-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@39
    .line 557
    iput v5, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@3b
    .line 558
    iput-byte v5, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@3d
    .line 532
    return-void

    #@3e
    .line 542
    .end local v1    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    .end local v2    # "numeric":Z
    .end local v3    # "src":Landroid/icu/text/UCharacterIterator;
    :catch_0
    move-exception v0

    #@3f
    .line 545
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {p0, v4}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    #@46
    .line 546
    return-void

    #@47
    .line 554
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v2    # "numeric":Z
    .restart local v3    # "src":Landroid/icu/text/UCharacterIterator;
    :cond_0
    new-instance v1, Landroid/icu/impl/coll/FCDIterCollationIterator;

    #@49
    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@4b
    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@4d
    invoke-direct {v1, v4, v2, v3, v5}, Landroid/icu/impl/coll/FCDIterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V

    #@50
    .restart local v1    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 510
    iput-object p1, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@3
    .line 512
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@5
    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@7
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    #@d
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    #@10
    move-result v1

    #@11
    .line 513
    .local v1, "numeric":Z
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@13
    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@15
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    #@1b
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 514
    new-instance v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    #@23
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@25
    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@27
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@29
    invoke-direct {v0, v2, v1, v3, v4}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    #@2c
    .line 518
    .local v0, "newIter":Landroid/icu/impl/coll/CollationIterator;
    :goto_0
    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@2e
    .line 519
    iput v4, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@30
    .line 520
    iput-byte v4, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@32
    .line 509
    return-void

    #@33
    .line 516
    .end local v0    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    :cond_0
    new-instance v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@35
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@37
    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@39
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@3b
    invoke-direct {v0, v2, v1, v3, v4}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    #@3e
    .restart local v0    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    goto :goto_0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 5
    .param p1, "source"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 574
    new-instance v2, Landroid/icu/impl/CharacterIteratorWrapper;

    #@3
    invoke-direct {v2, p1}, Landroid/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    #@6
    .line 575
    .local v2, "src":Landroid/icu/text/UCharacterIterator;
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    #@9
    .line 576
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    iput-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    #@f
    .line 578
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@11
    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@13
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    #@19
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    #@1c
    move-result v1

    #@1d
    .line 579
    .local v1, "numeric":Z
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@1f
    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@21
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    #@27
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 580
    new-instance v0, Landroid/icu/impl/coll/IterCollationIterator;

    #@2f
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@31
    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@33
    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    #@36
    .line 584
    .local v0, "newIter":Landroid/icu/impl/coll/CollationIterator;
    :goto_0
    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    #@38
    .line 585
    iput v4, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    #@3a
    .line 586
    iput-byte v4, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    #@3c
    .line 568
    return-void

    #@3d
    .line 582
    .end local v0    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    :cond_0
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator;

    #@3f
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@41
    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@43
    invoke-direct {v0, v3, v1, v2, v4}, Landroid/icu/impl/coll/FCDIterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V

    #@46
    .restart local v0    # "newIter":Landroid/icu/impl/coll/CollationIterator;
    goto :goto_0
.end method

.method strengthOrder(I)I
    .locals 2
    .param p1, "order"    # I

    #@0
    .prologue
    .line 597
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    #@2
    iget-object v1, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@4
    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    #@a
    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    #@d
    move-result v0

    #@e
    .line 599
    .local v0, "s":I
    if-nez v0, :cond_1

    #@10
    .line 600
    const/high16 v1, -0x10000

    #@12
    and-int/2addr p1, v1

    #@13
    .line 606
    :cond_0
    :goto_0
    return p1

    #@14
    .line 602
    :cond_1
    const/4 v1, 0x1

    #@15
    if-ne v0, v1, :cond_0

    #@17
    .line 603
    and-int/lit16 p1, p1, -0x100

    #@19
    goto :goto_0
.end method
