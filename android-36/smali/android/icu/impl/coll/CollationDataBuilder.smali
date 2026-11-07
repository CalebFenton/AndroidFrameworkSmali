.class final Landroid/icu/impl/coll/CollationDataBuilder;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;,
        Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;,
        Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;,
        Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist IS_BUILDER_JAMO_CE32:I = 0x100


# instance fields
.field protected blacklist base:Landroid/icu/impl/coll/CollationData;

.field protected blacklist baseSettings:Landroid/icu/impl/coll/CollationSettings;

.field protected blacklist ce32s:Landroid/icu/impl/coll/UVector32;

.field protected blacklist ce64s:Landroid/icu/impl/coll/UVector64;

.field protected blacklist collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

.field protected blacklist conditionalCE32s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist contextChars:Landroid/icu/text/UnicodeSet;

.field protected blacklist contexts:Ljava/lang/StringBuilder;

.field private blacklist contextsEra:I

.field protected blacklist fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

.field protected blacklist fastLatinEnabled:Z

.field protected blacklist modified:Z

.field protected blacklist nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field protected blacklist trie:Landroid/icu/impl/Trie2Writable;

.field protected blacklist unsafeBackwardSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcontextsEra(Landroid/icu/impl/coll/CollationDataBuilder;)I
    .registers 1

    iget p0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextsEra:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 38
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    .line 1387
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextsEra:I

    .line 1388
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    .line 52
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    .line 54
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->baseSettings:Landroid/icu/impl/coll/CollationSettings;

    .line 55
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    .line 56
    new-instance v2, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v2}, Landroid/icu/impl/coll/UVector32;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    .line 57
    new-instance v2, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v2}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    .line 59
    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    .line 60
    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    .line 61
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    .line 62
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    .line 64
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 65
    return-void
.end method

.method protected static blacklist encodeOneCEAsCE32(J)I
    .registers 12
    .param p0, "ce"    # J

    .line 463
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    .line 464
    .local v0, "p":J
    long-to-int v2, p0

    .line 465
    .local v2, "lower32":I
    const v3, 0xffff

    and-int/2addr v3, v2

    .line 466
    .local v3, "t":I
    nop

    .line 467
    const-wide v4, 0xffff00ff00ffL

    and-long/2addr v4, p0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1e

    .line 469
    long-to-int v4, v0

    ushr-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x8

    or-int/2addr v4, v5

    return v4

    .line 470
    :cond_1e
    const-wide v4, 0xffffffffffL

    and-long/2addr v4, p0

    const-wide/32 v8, 0x5000500

    cmp-long v4, v4, v8

    if-nez v4, :cond_30

    .line 472
    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeLongPrimaryCE32(J)I

    move-result v4

    return v4

    .line 473
    :cond_30
    cmp-long v4, v0, v6

    if-nez v4, :cond_3d

    and-int/lit16 v4, v3, 0xff

    if-nez v4, :cond_3d

    .line 475
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->makeLongSecondaryCE32(I)I

    move-result v4

    return v4

    .line 477
    :cond_3d
    const/4 v4, 0x1

    return v4
.end method

.method private static blacklist enumRangeForCopy(IIILandroid/icu/impl/coll/CollationDataBuilder$CopyHelper;)V
    .registers 5
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "value"    # I
    .param p3, "helper"    # Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;

    .line 801
    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    const/16 v0, 0xc0

    if-eq p2, v0, :cond_a

    .line 802
    invoke-virtual {p3, p0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyRangeCE32(III)V

    .line 804
    :cond_a
    return-void
.end method

.method protected static blacklist isBuilderContextCE32(I)Z
    .registers 2
    .param p0, "ce32"    # I

    .line 459
    const/4 v0, 0x7

    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v0

    return v0
.end method

.method protected static blacklist jamoCpFromIndex(I)I
    .registers 2
    .param p0, "i"    # I

    .line 1207
    const/16 v0, 0x13

    if-ge p0, v0, :cond_7

    add-int/lit16 v0, p0, 0x1100

    return v0

    .line 1208
    :cond_7
    add-int/lit8 p0, p0, -0x13

    .line 1209
    const/16 v0, 0x15

    if-ge p0, v0, :cond_10

    add-int/lit16 v0, p0, 0x1161

    return v0

    .line 1210
    :cond_10
    add-int/lit8 p0, p0, -0x15

    .line 1212
    add-int/lit16 v0, p0, 0x11a8

    return v0
.end method

.method protected static blacklist makeBuilderContextCE32(I)I
    .registers 2
    .param p0, "index"    # I

    .line 456
    const/4 v0, 0x7

    invoke-static {v0, p0}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method blacklist add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "ces"    # [J
    .param p4, "cesLength"    # I

    .line 121
    invoke-virtual {p0, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result v0

    .line 122
    .local v0, "ce32":I
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 123
    return-void
.end method

.method protected blacklist addCE(J)I
    .registers 7
    .param p1, "ce"    # J

    .line 418
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v0

    .line 419
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 420
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2, v1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_14

    return v1

    .line 419
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 422
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, p1, p2}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 423
    return v0
.end method

.method protected blacklist addCE32(I)I
    .registers 5
    .param p1, "ce32"    # I

    .line 427
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v0

    .line 428
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 429
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2, v1}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v2

    if-ne p1, v2, :cond_12

    return v1

    .line 428
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 431
    .end local v1    # "i":I
    :cond_15
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 432
    return v0
.end method

.method blacklist addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 20
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "ce32"    # I

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_f5

    .line 178
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 181
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 182
    .local v4, "c":I
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 183
    .local v5, "cLength":I
    iget-object v6, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v6, v4}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v6

    .line 184
    .local v6, "oldCE32":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_2e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v7, v5, :cond_2f

    :cond_2e
    move v3, v8

    .line 185
    .local v3, "hasContext":Z
    :cond_2f
    const/16 v7, 0xc0

    if-ne v6, v7, :cond_50

    .line 190
    iget-object v7, v0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v9, v0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v9, v4}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v7

    .line 191
    .local v7, "baseCE32":I
    if-nez v3, :cond_47

    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->ce32HasContext(I)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 192
    :cond_47
    invoke-virtual {v0, v4, v7, v8}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v6

    .line 193
    iget-object v9, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v9, v4, v6}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 196
    .end local v7    # "baseCE32":I
    :cond_50
    if-nez v3, :cond_6d

    .line 198
    invoke-static {v6}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v7

    if-nez v7, :cond_61

    .line 199
    iget-object v7, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v7, v4, v2}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    move-object/from16 v11, p1

    goto/16 :goto_e4

    .line 201
    :cond_61
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v7

    .line 202
    .local v7, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iput v8, v7, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    .line 203
    iput v2, v7, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 204
    .end local v7    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    move-object/from16 v11, p1

    goto/16 :goto_e4

    .line 207
    :cond_6d
    invoke-static {v6}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v7

    if-nez v7, :cond_8c

    .line 210
    const-string v7, "\u0000"

    invoke-virtual {v0, v7, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v7

    .line 211
    .local v7, "index":I
    invoke-static {v7}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result v9

    .line 212
    .local v9, "contextCE32":I
    iget-object v10, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v10, v4, v9}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 213
    iget-object v10, v0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v10, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 214
    invoke-virtual {v0, v7}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v7

    .line 215
    .end local v9    # "contextCE32":I
    .local v7, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    goto :goto_92

    .line 216
    .end local v7    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    :cond_8c
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v7

    .line 217
    .restart local v7    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iput v8, v7, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    .line 219
    :goto_92
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v1, v5, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 220
    .local v9, "suffix":Ljava/lang/CharSequence;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 221
    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 222
    .local v10, "context":Ljava/lang/String;
    iget-object v12, v0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v12, v9}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 225
    :goto_bb
    iget v12, v7, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 226
    .local v12, "next":I
    if-gez v12, :cond_c6

    .line 228
    invoke-virtual {v0, v10, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v13

    .line 229
    .local v13, "index":I
    iput v13, v7, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 230
    goto :goto_e4

    .line 232
    .end local v13    # "index":I
    :cond_c6
    invoke-virtual {v0, v12}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v13

    .line 233
    .local v13, "nextCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iget-object v14, v13, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    .line 234
    .local v14, "cmp":I
    if-gez v14, :cond_df

    .line 236
    invoke-virtual {v0, v10, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v15

    .line 237
    .local v15, "index":I
    iput v15, v7, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 238
    invoke-virtual {v0, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v8

    iput v12, v8, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 239
    goto :goto_e4

    .line 240
    .end local v15    # "index":I
    :cond_df
    if-nez v14, :cond_e8

    .line 242
    iput v2, v13, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 243
    nop

    .line 248
    .end local v7    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v9    # "suffix":Ljava/lang/CharSequence;
    .end local v10    # "context":Ljava/lang/String;
    .end local v12    # "next":I
    .end local v13    # "nextCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v14    # "cmp":I
    :goto_e4
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    .line 249
    return-void

    .line 245
    .restart local v7    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .restart local v9    # "suffix":Ljava/lang/CharSequence;
    .restart local v10    # "context":Ljava/lang/String;
    .restart local v12    # "next":I
    .restart local v13    # "nextCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .restart local v14    # "cmp":I
    :cond_e8
    const/4 v8, 0x1

    move-object v7, v13

    .line 246
    .end local v12    # "next":I
    .end local v13    # "nextCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v14    # "cmp":I
    goto :goto_bb

    .line 179
    .end local v3    # "hasContext":Z
    .end local v4    # "c":I
    .end local v5    # "cLength":I
    .end local v6    # "oldCE32":I
    .end local v7    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v9    # "suffix":Ljava/lang/CharSequence;
    .end local v10    # "context":Ljava/lang/String;
    :cond_eb
    move-object/from16 v11, p1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "attempt to add mappings after build()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_f5
    move-object/from16 v11, p1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "mapping from empty string"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected blacklist addConditionalCE32(Ljava/lang/String;I)I
    .registers 6
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "ce32"    # I

    .line 436
    nop

    .line 437
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 438
    .local v0, "index":I
    const v1, 0x7ffff

    if-gt v0, v1, :cond_17

    .line 443
    new-instance v1, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    invoke-direct {v1, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    .line 444
    .local v1, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    return v0

    .line 439
    .end local v1    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    :cond_17
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "too many context-sensitive mappings"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I
    .registers 6
    .param p1, "defaultCE32"    # I
    .param p2, "trieBuilder"    # Landroid/icu/util/CharsTrieBuilder;

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    .local v0, "context":Ljava/lang/StringBuilder;
    shr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1166
    sget-object v1, Landroid/icu/util/StringTrieBuilder$Option;->SMALL:Landroid/icu/util/StringTrieBuilder$Option;

    invoke-virtual {p2, v1}, Landroid/icu/util/CharsTrieBuilder;->buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1167
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1168
    .local v1, "index":I
    if-gez v1, :cond_30

    .line 1169
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1170
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1172
    :cond_30
    return v1
.end method

.method blacklist build(Landroid/icu/impl/coll/CollationData;)V
    .registers 4
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    .line 312
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->buildMappings(Landroid/icu/impl/coll/CollationData;)V

    .line 313
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v0, :cond_25

    .line 314
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    iput-wide v0, p1, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    .line 315
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    .line 316
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget v0, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    iput v0, p1, Landroid/icu/impl/coll/CollationData;->numScripts:I

    .line 317
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    .line 318
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    .line 320
    :cond_25
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->buildFastLatinTable(Landroid/icu/impl/coll/CollationData;)V

    .line 321
    return-void
.end method

.method protected blacklist buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I
    .registers 21
    .param p1, "head"    # Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    .line 1031
    move-object/from16 v0, p0

    .line 1033
    nop

    .line 1034
    const/4 v1, 0x0

    .line 1035
    .local v1, "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    const/4 v2, 0x0

    .line 1040
    .local v2, "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    move-object/from16 v3, p1

    .line 1042
    .local v3, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    :goto_7
    nop

    .line 1043
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v4

    .line 1044
    .local v4, "prefixLength":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1045
    .local v5, "prefix":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1047
    .local v6, "prefixString":Ljava/lang/String;
    move-object v7, v3

    .line 1050
    .local v7, "firstCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    :cond_1f
    move-object v9, v3

    .line 1061
    .local v9, "lastCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    const/4 v10, 0x1

    iput v10, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    .line 1062
    iget v11, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-ltz v11, :cond_36

    iget v11, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 1063
    invoke-virtual {v0, v11}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v11

    move-object v3, v11

    iget-object v11, v11, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1f

    .line 1065
    :cond_36
    add-int/lit8 v11, v4, 0x1

    .line 1066
    .local v11, "suffixStart":I
    iget-object v12, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const-string v13, "too many context-sensitive mappings"

    if-ne v12, v11, :cond_4a

    .line 1068
    nop

    .line 1069
    iget v12, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 1070
    .local v12, "ce32":I
    move-object v3, v9

    move-object/from16 v18, v1

    goto/16 :goto_bc

    .line 1073
    .end local v12    # "ce32":I
    :cond_4a
    if-nez v2, :cond_53

    .line 1074
    new-instance v12, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v12}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    move-object v2, v12

    goto :goto_56

    .line 1076
    :cond_53
    invoke-virtual {v2}, Landroid/icu/util/CharsTrieBuilder;->clear()Landroid/icu/util/CharsTrieBuilder;

    .line 1079
    :goto_56
    const/4 v12, 0x1

    .line 1080
    .local v12, "emptySuffixCE32":I
    const/4 v15, 0x0

    .line 1081
    .local v15, "flags":I
    iget-object v10, v7, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v11, :cond_69

    .line 1084
    iget v10, v7, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 1085
    .end local v12    # "emptySuffixCE32":I
    .local v10, "emptySuffixCE32":I
    iget v12, v7, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v12}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    goto :goto_75

    .line 1089
    .end local v10    # "emptySuffixCE32":I
    .restart local v12    # "emptySuffixCE32":I
    :cond_69
    or-int/lit16 v15, v15, 0x100

    .line 1096
    move-object/from16 v3, p1

    .line 1097
    :goto_6d
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v10

    .line 1098
    .local v10, "length":I
    if-ne v10, v4, :cond_122

    .line 1106
    .end local v10    # "length":I
    move-object v3, v7

    move v10, v12

    .line 1111
    .end local v12    # "emptySuffixCE32":I
    .local v10, "emptySuffixCE32":I
    :goto_75
    or-int/lit16 v12, v15, 0x200

    .line 1114
    .end local v15    # "flags":I
    .local v12, "flags":I
    :goto_77
    iget-object v15, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 1115
    .local v15, "suffix":Ljava/lang/String;
    iget-object v14, v0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    move-object/from16 v18, v1

    .end local v1    # "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    .local v18, "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    invoke-virtual {v15, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    .line 1116
    .local v1, "fcd16":I
    const/16 v14, 0xff

    if-gt v1, v14, :cond_8f

    .line 1117
    and-int/lit16 v12, v12, -0x201

    .line 1119
    :cond_8f
    iget-object v8, v0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/String;->codePointBefore(I)I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    .line 1120
    const/16 v8, 0xff

    if-le v1, v8, :cond_a4

    .line 1122
    or-int/lit16 v8, v12, 0x400

    move v12, v8

    .line 1124
    :cond_a4
    iget v8, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    invoke-virtual {v2, v15, v8}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 1125
    if-ne v3, v9, :cond_111

    .line 1128
    .end local v1    # "fcd16":I
    .end local v15    # "suffix":Ljava/lang/String;
    invoke-virtual {v0, v10, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I

    move-result v1

    .line 1129
    .local v1, "index":I
    const v8, 0x7ffff

    if-gt v1, v8, :cond_109

    .line 1134
    const/16 v8, 0x9

    invoke-static {v8, v1}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v8

    or-int/2addr v8, v12

    move v12, v8

    .line 1136
    .end local v1    # "index":I
    .end local v10    # "emptySuffixCE32":I
    .local v12, "ce32":I
    :goto_bc
    nop

    .line 1137
    iput v12, v7, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    .line 1138
    if-nez v4, :cond_cb

    .line 1139
    iget v1, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-gez v1, :cond_c6

    .line 1141
    return v12

    .line 1139
    :cond_c6
    move-object/from16 v14, p1

    move-object/from16 v1, v18

    goto :goto_101

    .line 1144
    :cond_cb
    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 1146
    if-nez v18, :cond_db

    .line 1147
    new-instance v1, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v1}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    .end local v18    # "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    .local v1, "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    goto :goto_dd

    .line 1146
    .end local v1    # "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    .restart local v18    # "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    :cond_db
    move-object/from16 v1, v18

    .line 1149
    .end local v18    # "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    .restart local v1    # "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    :goto_dd
    invoke-virtual {v1, v5, v12}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 1150
    iget v8, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-gez v8, :cond_ff

    .line 1153
    .end local v3    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v4    # "prefixLength":I
    .end local v5    # "prefix":Ljava/lang/StringBuilder;
    .end local v6    # "prefixString":Ljava/lang/String;
    .end local v7    # "firstCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v9    # "lastCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v11    # "suffixStart":I
    .end local v12    # "ce32":I
    nop

    .line 1154
    move-object/from16 v14, p1

    iget v3, v14, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    invoke-virtual {v0, v3, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I

    move-result v3

    .line 1155
    .local v3, "index":I
    const v4, 0x7ffff

    if-gt v3, v4, :cond_f9

    .line 1160
    const/16 v4, 0x8

    invoke-static {v4, v3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v4

    return v4

    .line 1156
    :cond_f9
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4, v13}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1150
    .local v3, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .restart local v4    # "prefixLength":I
    .restart local v5    # "prefix":Ljava/lang/StringBuilder;
    .restart local v6    # "prefixString":Ljava/lang/String;
    .restart local v7    # "firstCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .restart local v9    # "lastCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .restart local v11    # "suffixStart":I
    .restart local v12    # "ce32":I
    :cond_ff
    move-object/from16 v14, p1

    .line 1040
    .end local v4    # "prefixLength":I
    .end local v5    # "prefix":Ljava/lang/StringBuilder;
    .end local v6    # "prefixString":Ljava/lang/String;
    .end local v7    # "firstCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v9    # "lastCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v11    # "suffixStart":I
    .end local v12    # "ce32":I
    :goto_101
    iget v4, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    goto/16 :goto_7

    .line 1130
    .local v1, "index":I
    .restart local v4    # "prefixLength":I
    .restart local v5    # "prefix":Ljava/lang/StringBuilder;
    .restart local v6    # "prefixString":Ljava/lang/String;
    .restart local v7    # "firstCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .restart local v9    # "lastCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .restart local v10    # "emptySuffixCE32":I
    .restart local v11    # "suffixStart":I
    .local v12, "flags":I
    .restart local v18    # "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    :cond_109
    move-object/from16 v14, p1

    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8, v13}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1126
    .local v1, "fcd16":I
    .restart local v15    # "suffix":Ljava/lang/String;
    :cond_111
    move-object/from16 v14, p1

    const/4 v8, 0x0

    const v17, 0x7ffff

    iget v8, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v8}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    .line 1127
    .end local v1    # "fcd16":I
    .end local v15    # "suffix":Ljava/lang/String;
    move-object/from16 v1, v18

    const/4 v8, 0x0

    goto/16 :goto_77

    .line 1099
    .end local v18    # "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    .local v1, "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    .local v10, "length":I
    .local v12, "emptySuffixCE32":I
    .local v15, "flags":I
    :cond_122
    move-object/from16 v14, p1

    move-object/from16 v18, v1

    const v17, 0x7ffff

    .end local v1    # "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    .restart local v18    # "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    iget v1, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    const/4 v8, 0x1

    if-eq v1, v8, :cond_146

    if-eqz v10, :cond_140

    .line 1101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v10

    move-object/from16 v16, v2

    .end local v2    # "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    .local v16, "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    iget-object v2, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    .line 1100
    invoke-virtual {v6, v1, v2, v8, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_148

    goto :goto_142

    .line 1099
    .end local v16    # "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    .restart local v2    # "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    :cond_140
    move-object/from16 v16, v2

    .line 1103
    .end local v2    # "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    .restart local v16    # "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    :goto_142
    iget v1, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    move v12, v1

    .end local v12    # "emptySuffixCE32":I
    .local v1, "emptySuffixCE32":I
    goto :goto_148

    .line 1099
    .end local v1    # "emptySuffixCE32":I
    .end local v16    # "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    .restart local v2    # "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    .restart local v12    # "emptySuffixCE32":I
    :cond_146
    move-object/from16 v16, v2

    .line 1096
    .end local v2    # "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    .end local v10    # "length":I
    .restart local v16    # "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    :cond_148
    :goto_148
    iget v1, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    const/4 v8, 0x0

    goto/16 :goto_6d
.end method

.method protected blacklist buildContexts()V
    .registers 6

    .line 1014
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->clearContexts()V

    .line 1015
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 1016
    .local v0, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_a
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1017
    nop

    .line 1018
    iget v1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 1019
    .local v1, "c":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v2, v1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v2

    .line 1020
    .local v2, "ce32":I
    invoke-static {v2}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1023
    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    .line 1024
    .local v3, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    invoke-virtual {p0, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v2

    .line 1025
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v4, v1, v2}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 1026
    .end local v1    # "c":I
    .end local v2    # "ce32":I
    .end local v3    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    goto :goto_a

    .line 1021
    .restart local v1    # "c":I
    .restart local v2    # "ce32":I
    :cond_2d
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Impossible: No context data for c in contextChars."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1027
    .end local v1    # "c":I
    .end local v2    # "ce32":I
    :cond_35
    return-void
.end method

.method protected blacklist buildFastLatinTable(Landroid/icu/impl/coll/CollationData;)V
    .registers 6
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    .line 1176
    iget-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 1178
    :cond_5
    new-instance v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    .line 1179
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->forData(Landroid/icu/impl/coll/CollationData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 1180
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getHeader()[C

    move-result-object v0

    .line 1181
    .local v0, "header":[C
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getTable()[C

    move-result-object v2

    .line 1182
    .local v2, "table":[C
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v3, :cond_43

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 1183
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 1184
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1186
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    .line 1187
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v1, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 1188
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 1190
    :cond_43
    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    .line 1191
    iput-object v2, p1, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    .line 1192
    .end local v0    # "header":[C
    .end local v2    # "table":[C
    goto :goto_4a

    .line 1193
    :cond_48
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    .line 1195
    :goto_4a
    return-void
.end method

.method protected blacklist buildMappings(Landroid/icu/impl/coll/CollationData;)V
    .registers 14
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    .line 921
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 925
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContexts()V

    .line 927
    const/16 v0, 0x43

    new-array v1, v0, [I

    .line 928
    .local v1, "jamoCE32s":[I
    const/4 v2, -0x1

    .line 929
    .local v2, "jamoIndex":I
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getJamoCE32s([I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_64

    .line 930
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v3}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v2

    .line 931
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_29

    .line 932
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    aget v7, v1, v3

    invoke-virtual {v6, v7}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 931
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 941
    .end local v3    # "i":I
    :cond_29
    const/4 v3, 0x0

    .line 942
    .local v3, "isAnyJamoVTSpecial":Z
    const/16 v6, 0x13

    .local v6, "i":I
    :goto_2c
    if-ge v6, v0, :cond_3b

    .line 943
    aget v7, v1, v6

    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 944
    const/4 v3, 0x1

    .line 945
    goto :goto_3b

    .line 942
    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 948
    .end local v6    # "i":I
    :cond_3b
    :goto_3b
    const/16 v0, 0xc

    invoke-static {v0, v4}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v0

    .line 949
    .local v0, "hangulCE32":I
    const v6, 0xac00

    .line 950
    .local v6, "c":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_45
    const/16 v8, 0x13

    if-ge v7, v8, :cond_63

    .line 951
    move v8, v0

    .line 952
    .local v8, "ce32":I
    if-nez v3, :cond_56

    aget v9, v1, v7

    invoke-static {v9}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v9

    if-nez v9, :cond_56

    .line 953
    or-int/lit16 v8, v8, 0x100

    .line 955
    :cond_56
    add-int/lit16 v9, v6, 0x24c

    .line 956
    .local v9, "limit":I
    iget-object v10, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v10, v6, v11, v8, v5}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    .line 957
    move v6, v9

    .line 950
    .end local v8    # "ce32":I
    .end local v9    # "limit":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 959
    .end local v0    # "hangulCE32":I
    .end local v3    # "isAnyJamoVTSpecial":Z
    .end local v6    # "c":I
    .end local v7    # "i":I
    :cond_63
    goto :goto_7e

    .line 962
    :cond_64
    const v0, 0xac00

    .local v0, "c":I
    :goto_67
    const v3, 0xd7a4

    if-ge v0, v3, :cond_7e

    .line 963
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v3

    .line 964
    .local v3, "ce32":I
    nop

    .line 965
    add-int/lit16 v6, v0, 0x24c

    .line 966
    .local v6, "limit":I
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v0, v8, v3, v5}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    .line 967
    move v0, v6

    .line 968
    .end local v3    # "ce32":I
    .end local v6    # "limit":I
    goto :goto_67

    .line 971
    .end local v0    # "c":I
    :cond_7e
    :goto_7e
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->setDigitTags()V

    .line 972
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->setLeadSurrogates()V

    .line 975
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v4}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/coll/UVector32;->setElementAt(II)V

    .line 976
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const/16 v3, 0xb

    invoke-static {v3, v4}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 978
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2Writable;->toTrie2_32()Landroid/icu/impl/Trie2_32;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    .line 982
    const/high16 v0, 0x10000

    .line 983
    .restart local v0    # "c":I
    const v3, 0xd800

    .local v3, "lead":C
    :goto_a7
    const v4, 0xdc00

    if-ge v3, v4, :cond_c1

    .line 984
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    add-int/lit16 v5, v0, 0x3ff

    invoke-virtual {v4, v0, v5}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 985
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 983
    :cond_bb
    add-int/lit8 v4, v3, 0x1

    int-to-char v3, v4

    add-int/lit16 v0, v0, 0x400

    goto :goto_a7

    .line 988
    .end local v3    # "lead":C
    :cond_c1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 990
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v3}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v3

    iput-object v3, p1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    .line 991
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v3}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v3

    iput-object v3, p1, Landroid/icu/impl/coll/CollationData;->ces:[J

    .line 992
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    .line 994
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iput-object v3, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 995
    if-ltz v2, :cond_e7

    .line 996
    iput-object v1, p1, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    goto :goto_ed

    .line 998
    :cond_e7
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    iput-object v3, p1, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    .line 1000
    :goto_ed
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    iput-object v3, p1, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    .line 1001
    return-void

    .line 922
    .end local v0    # "c":I
    .end local v1    # "jamoCE32s":[I
    .end local v2    # "jamoIndex":I
    :cond_f2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to build() after build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist clearContexts()V
    .registers 3

    .line 1004
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1008
    iget v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextsEra:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextsEra:I

    .line 1009
    return-void
.end method

.method protected blacklist copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I
    .registers 12
    .param p1, "context"    # Ljava/lang/StringBuilder;
    .param p2, "c"    # I
    .param p3, "ce32"    # I
    .param p4, "cond"    # Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    .line 650
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 652
    .local v0, "trieIndex":I
    and-int/lit16 v1, p3, 0x100

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 656
    nop

    .line 657
    const/4 v1, -0x1

    .local v1, "index":I
    goto :goto_26

    .line 659
    .end local v1    # "index":I
    :cond_c
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p3

    .line 660
    nop

    .line 661
    invoke-virtual {p0, p2, p3, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p3

    .line 662
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v1

    move v3, v1

    .local v3, "index":I
    iput v1, p4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 663
    invoke-virtual {p0, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p4

    .line 666
    .end local v3    # "index":I
    .restart local v1    # "index":I
    :goto_26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 667
    .local v3, "suffixStart":I
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v4

    .line 668
    .local v4, "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_35
    invoke-virtual {v4}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 669
    invoke-virtual {v4}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v5

    .line 670
    .local v5, "entry":Landroid/icu/util/CharsTrie$Entry;
    iget-object v6, v5, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 671
    iget v6, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-virtual {p0, p2, v6, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p3

    .line 672
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v6

    move v1, v6

    iput v6, p4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 675
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p4

    .line 676
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 677
    .end local v5    # "entry":Landroid/icu/util/CharsTrie$Entry;
    goto :goto_35

    .line 678
    :cond_5d
    nop

    .line 679
    return v1
.end method

.method blacklist copyFrom(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V
    .registers 9
    .param p1, "src"    # Landroid/icu/impl/coll/CollationDataBuilder;
    .param p2, "modifier"    # Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    .line 256
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 259
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;

    invoke-direct {v0, p1, p0, p2}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;-><init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V

    .line 260
    .local v0, "helper":Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;
    iget-object v1, p1, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2Writable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 262
    .local v1, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/Trie2$Range;

    move-object v3, v2

    .local v3, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v2, v2, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_2c

    .line 263
    iget v2, v3, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v4, v3, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v5, v3, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-static {v2, v4, v5, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->enumRangeForCopy(IIILandroid/icu/impl/coll/CollationDataBuilder$CopyHelper;)V

    goto :goto_11

    .line 268
    .end local v3    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_2c
    iget-boolean v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    iget-boolean v3, p1, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    or-int/2addr v2, v3

    iput-boolean v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    .line 269
    return-void

    .line 257
    .end local v0    # "helper":Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;
    .end local v1    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to copyFrom() after build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist copyFromBaseCE32(IIZ)I
    .registers 15
    .param p1, "c"    # I
    .param p2, "ce32"    # I
    .param p3, "withContext"    # Z

    .line 560
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-nez v0, :cond_7

    return p2

    .line 561
    :cond_7
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const-string v1, "\u0000"

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_114

    .line 637
    :pswitch_14
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "copyFromBaseCE32(c, ce32, withContext) requires ce32 == base.getFinalCE32(ce32)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 634
    :pswitch_1c
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result p2

    .line 635
    goto/16 :goto_113

    .line 631
    :pswitch_26
    invoke-virtual {p0, v3, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->getCE32FromOffsetCE32(ZII)I

    move-result p2

    .line 632
    goto/16 :goto_113

    .line 629
    :pswitch_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "We forbid tailoring of Hangul syllables."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :pswitch_34
    if-nez p3, :cond_45

    .line 617
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 618
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p2

    .line 619
    invoke-virtual {p0, p1, p2, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v1

    return v1

    .line 621
    .end local v0    # "index":I
    :cond_45
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    invoke-direct {v0, v2, v4}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    .line 622
    .local v0, "head":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .local v2, "context":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v2, p1, p2, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    .line 624
    iget v1, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-static {v1}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result p2

    .line 625
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 626
    goto/16 :goto_113

    .line 582
    .end local v0    # "head":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v2    # "context":Ljava/lang/StringBuilder;
    :pswitch_5f
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 583
    .local v0, "trieIndex":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v5, v0}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p2

    .line 584
    if-nez p3, :cond_70

    .line 585
    invoke-virtual {p0, p1, p2, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v1

    return v1

    .line 587
    :cond_70
    new-instance v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    invoke-direct {v5, v2, v4}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    .line 588
    .local v5, "head":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    .restart local v2    # "context":Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 591
    invoke-virtual {p0, v2, p1, p2, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v1

    .local v1, "index":I
    goto :goto_94

    .line 593
    .end local v1    # "index":I
    :cond_85
    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p2

    .line 594
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v1

    move v6, v1

    .local v6, "index":I
    iput v1, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 596
    .end local v6    # "index":I
    .restart local v1    # "index":I
    :goto_94
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v6

    .line 597
    .local v6, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v7, v7, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v8, v0, 0x2

    invoke-static {v7, v8, v4}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v7

    .line 598
    .local v7, "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_a2
    invoke-virtual {v7}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 599
    invoke-virtual {v7}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v8

    .line 600
    .local v8, "entry":Landroid/icu/util/CharsTrie$Entry;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 601
    iget-object v9, v8, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v9, v4, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 602
    iget p2, v8, Landroid/icu/util/CharsTrie$Entry;->value:I

    .line 603
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 604
    invoke-virtual {p0, v2, p1, p2, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v1

    goto :goto_df

    .line 606
    :cond_d0
    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p2

    .line 607
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v9

    move v1, v9

    iput v9, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 609
    :goto_df
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v6

    .line 610
    .end local v8    # "entry":Landroid/icu/util/CharsTrie$Entry;
    goto :goto_a2

    .line 611
    :cond_e4
    iget v3, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-static {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result p2

    .line 612
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 613
    goto :goto_113

    .line 574
    .end local v0    # "trieIndex":I
    .end local v1    # "index":I
    .end local v2    # "context":Ljava/lang/StringBuilder;
    .end local v5    # "head":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v6    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v7    # "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    :pswitch_f0
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 575
    .local v0, "index":I
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v1

    .line 576
    .local v1, "length":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-virtual {p0, v2, v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result p2

    .line 577
    goto :goto_113

    .line 568
    .end local v0    # "index":I
    .end local v1    # "length":I
    :pswitch_101
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 569
    .restart local v0    # "index":I
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v1

    .line 570
    .restart local v1    # "length":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-virtual {p0, v2, v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result p2

    .line 571
    goto :goto_113

    .line 566
    .end local v0    # "index":I
    .end local v1    # "length":I
    :pswitch_112
    nop

    .line 640
    :goto_113
    return p2

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_112
        :pswitch_112
        :pswitch_14
        :pswitch_112
        :pswitch_101
        :pswitch_f0
        :pswitch_14
        :pswitch_5f
        :pswitch_34
        :pswitch_14
        :pswitch_14
        :pswitch_2c
        :pswitch_14
        :pswitch_26
        :pswitch_1c
    .end packed-switch
.end method

.method blacklist enableFastLatin()V
    .registers 2

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    return-void
.end method

.method blacklist encodeCEs([JI)I
    .registers 21
    .param p1, "ces"    # [J
    .param p2, "cesLength"    # I

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-ltz v2, :cond_85

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_85

    .line 135
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 138
    const-wide/16 v4, 0x0

    if-nez v2, :cond_1b

    .line 141
    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v3

    return v3

    .line 142
    :cond_1b
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v7, :cond_26

    .line 143
    aget-wide v3, v1, v6

    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result v3

    return v3

    .line 144
    :cond_26
    const/4 v8, 0x2

    if-ne v2, v8, :cond_61

    .line 146
    aget-wide v8, v1, v6

    .line 147
    .local v8, "ce0":J
    aget-wide v10, v1, v7

    .line 148
    .local v10, "ce1":J
    const/16 v12, 0x20

    ushr-long v12, v8, v12

    .line 149
    .local v12, "p0":J
    const-wide v14, 0xffffffffff00ffL

    and-long/2addr v14, v8

    const-wide/32 v16, 0x5000000

    cmp-long v14, v14, v16

    if-nez v14, :cond_61

    const-wide v14, -0xff000001L

    and-long/2addr v14, v10

    const-wide/16 v16, 0x500

    cmp-long v14, v14, v16

    if-nez v14, :cond_61

    cmp-long v4, v12, v4

    if-eqz v4, :cond_61

    .line 153
    long-to-int v3, v12

    long-to-int v4, v8

    const v5, 0xff00

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    long-to-int v4, v10

    shr-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    or-int/lit16 v3, v3, 0xc0

    or-int/lit8 v3, v3, 0x4

    return v3

    .line 162
    .end local v8    # "ce0":J
    .end local v10    # "ce1":J
    .end local v12    # "p0":J
    :cond_61
    new-array v3, v3, [I

    .line 163
    .local v3, "newCE32s":[I
    const/4 v4, 0x0

    .line 164
    .local v4, "i":I
    :goto_64
    if-ne v4, v2, :cond_6b

    .line 165
    invoke-virtual {v0, v3, v6, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result v5

    return v5

    .line 167
    :cond_6b
    aget-wide v8, v1, v4

    invoke-static {v8, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v5

    .line 168
    .local v5, "ce32":I
    if-ne v5, v7, :cond_78

    .line 171
    .end local v4    # "i":I
    .end local v5    # "ce32":I
    invoke-virtual {v0, v1, v6, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result v4

    return v4

    .line 169
    .restart local v4    # "i":I
    .restart local v5    # "ce32":I
    :cond_78
    aput v5, v3, v4

    .line 163
    .end local v5    # "ce32":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 136
    .end local v3    # "newCE32s":[I
    .end local v4    # "i":I
    :cond_7d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "attempt to add mappings after build()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_85
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "mapping to too many CEs"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected blacklist encodeExpansion([JII)I
    .registers 14
    .param p1, "ces"    # [J
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 495
    aget-wide v0, p1, p2

    .line 496
    .local v0, "first":J
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v2

    sub-int/2addr v2, p3

    .line 497
    .local v2, "ce64sMax":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    const/4 v4, 0x6

    const-string v5, "too many mappings"

    const v6, 0x7ffff

    if-gt v3, v2, :cond_43

    .line 498
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v7, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v7

    cmp-long v7, v0, v7

    if-nez v7, :cond_40

    .line 499
    if-gt v3, v6, :cond_3a

    .line 504
    const/4 v5, 0x1

    .line 505
    .local v5, "j":I
    :goto_1f
    if-ne v5, p3, :cond_26

    .line 506
    invoke-static {v4, v3, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v4

    return v4

    .line 509
    :cond_26
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    add-int v7, v3, v5

    invoke-virtual {v6, v7}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    add-int v8, p2, v5

    aget-wide v8, p1, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_37

    goto :goto_40

    .line 504
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 500
    .end local v5    # "j":I
    :cond_3a
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 497
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 514
    .end local v3    # "i":I
    :cond_43
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v3}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v3

    .line 515
    .restart local v3    # "i":I
    if-gt v3, v6, :cond_5f

    .line 520
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_4c
    if-ge v5, p3, :cond_5a

    .line 521
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    add-int v7, p2, v5

    aget-wide v7, p1, v7

    invoke-virtual {v6, v7, v8}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 520
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 523
    .end local v5    # "j":I
    :cond_5a
    invoke-static {v4, v3, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v4

    return v4

    .line 516
    :cond_5f
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected blacklist encodeExpansion32([III)I
    .registers 11
    .param p1, "newCE32s"    # [I
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 528
    aget v0, p1, p2

    .line 529
    .local v0, "first":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v1

    sub-int/2addr v1, p3

    .line 530
    .local v1, "ce32sMax":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    const/4 v3, 0x5

    const-string v4, "too many mappings"

    const v5, 0x7ffff

    if-gt v2, v1, :cond_3f

    .line 531
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v6, v2}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v6

    if-ne v0, v6, :cond_3c

    .line 532
    if-gt v2, v5, :cond_36

    .line 537
    const/4 v4, 0x1

    .line 538
    .local v4, "j":I
    :goto_1d
    if-ne v4, p3, :cond_24

    .line 539
    invoke-static {v3, v2, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v3

    return v3

    .line 542
    :cond_24
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    add-int v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v5

    add-int v6, p2, v4

    aget v6, p1, v6

    if-eq v5, v6, :cond_33

    goto :goto_3c

    .line 537
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 533
    .end local v4    # "j":I
    :cond_36
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 530
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 547
    .end local v2    # "i":I
    :cond_3f
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v2

    .line 548
    .restart local v2    # "i":I
    if-gt v2, v5, :cond_5b

    .line 553
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_48
    if-ge v4, p3, :cond_56

    .line 554
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    add-int v6, p2, v4

    aget v6, p1, v6

    invoke-virtual {v5, v6}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 553
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 556
    .end local v4    # "j":I
    :cond_56
    invoke-static {v3, v2, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v3

    return v3

    .line 549
    :cond_5b
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected blacklist encodeOneCE(J)I
    .registers 7
    .param p1, "ce"    # J

    .line 482
    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v0

    .line 483
    .local v0, "ce32":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    return v0

    .line 484
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE(J)I

    move-result v2

    .line 485
    .local v2, "index":I
    const v3, 0x7ffff

    if-gt v2, v3, :cond_17

    .line 490
    const/4 v3, 0x6

    invoke-static {v3, v2, v1}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v1

    return v1

    .line 486
    :cond_17
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "too many mappings"

    invoke-direct {v1, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist getCE32FromOffsetCE32(ZII)I
    .registers 10
    .param p1, "fromBase"    # Z
    .param p2, "c"    # I
    .param p3, "ce32"    # I

    .line 411
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 412
    .local v0, "i":I
    if-eqz p1, :cond_d

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->ces:[J

    aget-wide v1, v1, v0

    goto :goto_13

    :cond_d
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    .line 413
    .local v1, "dataCE":J
    :goto_13
    invoke-static {p2, v1, v2}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide v3

    .line 414
    .local v3, "p":J
    invoke-static {v3, v4}, Landroid/icu/impl/coll/Collation;->makeLongPrimaryCE32(J)I

    move-result v5

    return v5
.end method

.method protected blacklist getCEs(Ljava/lang/CharSequence;I[JI)I
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "ces"    # [J
    .param p4, "cesLength"    # I

    .line 1198
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    if-nez v0, :cond_18

    .line 1199
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    new-instance v1, Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-direct {v1, v2}, Landroid/icu/impl/coll/CollationData;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;-><init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    .line 1200
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    return v0

    .line 1202
    :cond_18
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->fetchCEs(Ljava/lang/CharSequence;I[JI)I

    move-result v0

    return v0
.end method

.method blacklist getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I
    .registers 7
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "ces"    # [J
    .param p4, "cesLength"    # I

    .line 337
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 338
    .local v0, "prefixLength":I
    if-nez v0, :cond_c

    .line 339
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result v1

    return v1

    .line 341
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result v1

    return v1
.end method

.method blacklist getCEs(Ljava/lang/CharSequence;[JI)I
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "ces"    # [J
    .param p3, "cesLength"    # I

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result v0

    return v0
.end method

.method protected blacklist getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .registers 3
    .param p1, "index"    # I

    .line 449
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    return-object v0
.end method

.method protected blacklist getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .registers 3
    .param p1, "ce32"    # I

    .line 452
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getJamoCE32s([I)Z
    .registers 11
    .param p1, "jamoCE32s"    # [I

    .line 807
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 808
    .local v0, "anyJamoAssigned":Z
    :goto_8
    const/4 v2, 0x0

    .line 809
    .local v2, "needToCopyFromBase":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_a
    const/16 v4, 0xc0

    const/16 v5, 0x43

    if-ge v3, v5, :cond_61

    .line 810
    invoke-static {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result v5

    .line 811
    .local v5, "jamo":I
    const/4 v6, 0x0

    .line 812
    .local v6, "fromBase":Z
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v7, v5}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v7

    .line 813
    .local v7, "ce32":I
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->isAssignedCE32(I)Z

    move-result v8

    or-int/2addr v0, v8

    .line 816
    if-ne v7, v4, :cond_29

    .line 817
    const/4 v6, 0x1

    .line 818
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v7

    .line 820
    :cond_29
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 821
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v4

    packed-switch v4, :pswitch_data_80

    goto :goto_5c

    .line 839
    :pswitch_37
    nop

    .line 840
    const/16 v7, 0xc0

    .line 841
    const/4 v2, 0x1

    .line 842
    goto :goto_5c

    .line 844
    :pswitch_3c
    invoke-virtual {p0, v6, v5, v7}, Landroid/icu/impl/coll/CollationDataBuilder;->getCE32FromOffsetCE32(ZII)I

    move-result v7

    .line 845
    goto :goto_5c

    .line 831
    :pswitch_41
    if-eqz v6, :cond_5c

    .line 833
    const/16 v7, 0xc0

    .line 834
    const/4 v2, 0x1

    goto :goto_5c

    .line 826
    :pswitch_47
    goto :goto_5c

    .line 853
    :pswitch_48
    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v8, "unexpected special tag in ce32=0x%08x"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 856
    :cond_5c
    :goto_5c
    aput v7, p1, v3

    .line 809
    .end local v5    # "jamo":I
    .end local v6    # "fromBase":Z
    .end local v7    # "ce32":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 858
    .end local v3    # "j":I
    :cond_61
    if-eqz v0, :cond_7f

    if-eqz v2, :cond_7f

    .line 859
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_66
    if-ge v3, v5, :cond_7f

    .line 860
    aget v6, p1, v3

    if-ne v6, v4, :cond_7c

    .line 861
    invoke-static {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result v6

    .line 862
    .local v6, "jamo":I
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v7, v6}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v7

    invoke-virtual {p0, v6, v7, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v7

    aput v7, p1, v3

    .line 859
    .end local v6    # "jamo":I
    :cond_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 867
    .end local v3    # "j":I
    :cond_7f
    return v0

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_48
        :pswitch_47
        :pswitch_47
        :pswitch_48
        :pswitch_47
        :pswitch_41
        :pswitch_41
        :pswitch_48
        :pswitch_41
        :pswitch_41
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_3c
        :pswitch_37
    .end packed-switch
.end method

.method blacklist hasMappings()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return v0
.end method

.method blacklist initForTailoring(Landroid/icu/impl/coll/CollationData;)V
    .registers 7
    .param p1, "b"    # Landroid/icu/impl/coll/CollationData;

    .line 68
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    if-nez v0, :cond_45

    .line 71
    if-eqz p1, :cond_3d

    .line 74
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    .line 77
    new-instance v0, Landroid/icu/impl/Trie2Writable;

    const v1, -0x2fafb

    const/16 v2, 0xc0

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    .line 84
    const/16 v0, 0xc0

    .local v0, "c":I
    :goto_16
    const/16 v1, 0xff

    if-gt v0, v1, :cond_22

    .line 85
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v1, v0, v2}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 92
    .end local v0    # "c":I
    :cond_22
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v0

    .line 93
    .local v0, "hangulCE32":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const v2, 0xac00

    const v3, 0xd7a3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    .line 97
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 98
    return-void

    .line 72
    .end local v0    # "hangulCE32":I
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null CollationData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reuse a CollationDataBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist isAssigned(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 117
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isAssignedCE32(I)Z

    move-result v0

    return v0
.end method

.method blacklist isCompressibleLeadByte(I)Z
    .registers 3
    .param p1, "b"    # I

    .line 101
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationData;->isCompressibleLeadByte(I)Z

    move-result v0

    return v0
.end method

.method blacklist isCompressiblePrimary(J)Z
    .registers 4
    .param p1, "p"    # J

    .line 105
    long-to-int v0, p1

    ushr-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->isCompressibleLeadByte(I)Z

    move-result v0

    return v0
.end method

.method protected final blacklist isMutable()Z
    .registers 2

    .line 1364
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method blacklist optimize(Landroid/icu/text/UnicodeSet;)V
    .registers 8
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 272
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 273
    :cond_7
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 274
    .local v0, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_c
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    iget v1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v3, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v1, v3, :cond_3b

    .line 275
    iget v1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 276
    .local v1, "c":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v3

    .line 277
    .local v3, "ce32":I
    const/16 v4, 0xc0

    if-ne v3, v4, :cond_3a

    .line 278
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v5, v1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v3

    .line 279
    invoke-virtual {p0, v1, v3, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v2

    .line 280
    .end local v3    # "ce32":I
    .local v2, "ce32":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v1, v2}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 282
    .end local v1    # "c":I
    .end local v2    # "ce32":I
    :cond_3a
    goto :goto_c

    .line 283
    :cond_3b
    iput-boolean v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    .line 284
    return-void
.end method

.method protected blacklist setDigitTags()V
    .registers 8

    .line 871
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:Nd:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 872
    .local v0, "digits":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 873
    .local v1, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_c
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 874
    nop

    .line 875
    iget v2, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 876
    .local v2, "c":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v2}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v3

    .line 877
    .local v3, "ce32":I
    const/16 v4, 0xc0

    if-eq v3, v4, :cond_44

    const/4 v4, -0x1

    if-eq v3, v4, :cond_44

    .line 878
    invoke-virtual {p0, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(I)I

    move-result v4

    .line 879
    .local v4, "index":I
    const v5, 0x7ffff

    if-gt v4, v5, :cond_3c

    .line 884
    nop

    .line 885
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v5

    .line 884
    const/16 v6, 0xa

    invoke-static {v6, v4, v5}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v3

    .line 886
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v5, v2, v3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_44

    .line 880
    :cond_3c
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "too many mappings"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 888
    .end local v2    # "c":I
    .end local v3    # "ce32":I
    .end local v4    # "index":I
    :cond_44
    :goto_44
    goto :goto_c

    .line 889
    :cond_45
    return-void
.end method

.method protected blacklist setLeadSurrogates()V
    .registers 7

    .line 892
    const v0, 0xd800

    .local v0, "lead":C
    :goto_3
    const v1, 0xdc00

    if-ge v0, v1, :cond_46

    .line 893
    const/4 v1, -0x1

    .line 895
    .local v1, "leadValue":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v2, v0}, Landroid/icu/impl/Trie2Writable;->iteratorForLeadSurrogate(C)Ljava/util/Iterator;

    move-result-object v2

    .line 896
    .local v2, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 897
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/Trie2$Range;

    .line 899
    .local v3, "range":Landroid/icu/impl/Trie2$Range;
    iget v4, v3, Landroid/icu/impl/Trie2$Range;->value:I

    .line 900
    .local v4, "value":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_22

    .line 901
    const/4 v4, 0x0

    goto :goto_28

    .line 902
    :cond_22
    const/16 v5, 0xc0

    if-ne v4, v5, :cond_32

    .line 903
    const/16 v4, 0x100

    .line 908
    :goto_28
    if-gez v1, :cond_2c

    .line 909
    move v1, v4

    goto :goto_31

    .line 910
    :cond_2c
    if-eq v1, v4, :cond_31

    .line 911
    const/16 v1, 0x200

    .line 912
    goto :goto_35

    .line 914
    .end local v3    # "range":Landroid/icu/impl/Trie2$Range;
    .end local v4    # "value":I
    :cond_31
    :goto_31
    goto :goto_f

    .line 905
    .restart local v3    # "range":Landroid/icu/impl/Trie2$Range;
    .restart local v4    # "value":I
    :cond_32
    const/16 v1, 0x200

    .line 906
    nop

    .line 915
    .end local v3    # "range":Landroid/icu/impl/Trie2$Range;
    .end local v4    # "value":I
    :cond_35
    :goto_35
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    .line 916
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v4

    or-int/2addr v4, v1

    .line 915
    invoke-virtual {v3, v0, v4}, Landroid/icu/impl/Trie2Writable;->setForLeadSurrogateCodeUnit(CI)Landroid/icu/impl/Trie2Writable;

    .line 892
    .end local v1    # "leadValue":I
    .end local v2    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_3

    .line 918
    .end local v0    # "lead":C
    :cond_46
    return-void
.end method

.method blacklist suppressContractions(Landroid/icu/text/UnicodeSet;)V
    .registers 7
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 287
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 288
    :cond_7
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 289
    .local v0, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_c
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_58

    iget v1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v2, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v1, v2, :cond_58

    .line 290
    iget v1, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 291
    .local v1, "c":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v2, v1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v2

    .line 292
    .local v2, "ce32":I
    const/16 v3, 0xc0

    if-ne v2, v3, :cond_41

    .line 293
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v2

    .line 294
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->ce32HasContext(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 295
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v2

    .line 296
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v1, v2}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_57

    .line 298
    :cond_41
    invoke-static {v2}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 299
    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    iget v2, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 303
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v1, v2}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    .line 304
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    .line 306
    .end local v1    # "c":I
    .end local v2    # "ce32":I
    :cond_57
    :goto_57
    goto :goto_c

    .line 307
    :cond_58
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    .line 308
    return-void
.end method
