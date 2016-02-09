.class final Landroid/icu/impl/coll/CollationDataBuilder;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;,
        Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;,
        Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;,
        Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final IS_BUILDER_JAMO_CE32:I = 0x100


# instance fields
.field protected base:Landroid/icu/impl/coll/CollationData;

.field protected baseSettings:Landroid/icu/impl/coll/CollationSettings;

.field protected ce32s:Landroid/icu/impl/coll/UVector32;

.field protected ce64s:Landroid/icu/impl/coll/UVector64;

.field protected collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

.field protected conditionalCE32s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;",
            ">;"
        }
    .end annotation
.end field

.field protected contextChars:Landroid/icu/text/UnicodeSet;

.field protected contexts:Ljava/lang/StringBuilder;

.field protected fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

.field protected fastLatinEnabled:Z

.field protected modified:Z

.field protected nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field protected trie:Landroid/icu/impl/Trie2Writable;

.field protected unsafeBackwardSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationDataBuilder;

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
    sput-boolean v0, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@b
    .line 35
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1343
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@7
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@a
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    #@c
    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    #@13
    .line 1346
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@15
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@18
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@1a
    .line 49
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@1d
    move-result-object v0

    #@1e
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@20
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@22
    .line 50
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@24
    .line 51
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->baseSettings:Landroid/icu/impl/coll/CollationSettings;

    #@26
    .line 52
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@28
    .line 53
    new-instance v0, Landroid/icu/impl/coll/UVector32;

    #@2a
    invoke-direct {v0}, Landroid/icu/impl/coll/UVector32;-><init>()V

    #@2d
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@2f
    .line 54
    new-instance v0, Landroid/icu/impl/coll/UVector64;

    #@31
    invoke-direct {v0}, Landroid/icu/impl/coll/UVector64;-><init>()V

    #@34
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@36
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3b
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    #@3d
    .line 56
    iput-boolean v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    #@3f
    .line 57
    iput-boolean v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    #@41
    .line 58
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    #@43
    .line 59
    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    #@45
    .line 61
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@47
    invoke-virtual {v0, v2}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@4a
    .line 48
    return-void
.end method

.method protected static encodeOneCEAsCE32(J)I
    .locals 12
    .param p0, "ce"    # J

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const v7, 0xc000

    #@5
    const/4 v5, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    .line 448
    const/16 v6, 0x20

    #@9
    ushr-long v2, p0, v6

    #@b
    .line 449
    .local v2, "p":J
    long-to-int v0, p0

    #@c
    .line 450
    .local v0, "lower32":I
    const v6, 0xffff

    #@f
    and-int v1, v0, v6

    #@11
    .line 451
    .local v1, "t":I
    sget-boolean v6, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@13
    if-nez v6, :cond_1

    #@15
    and-int v6, v1, v7

    #@17
    if-eq v6, v7, :cond_0

    #@19
    move v4, v5

    #@1a
    :cond_0
    if-nez v4, :cond_1

    #@1c
    new-instance v4, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@21
    throw v4

    #@22
    .line 452
    :cond_1
    const-wide v6, 0xffff00ff00ffL

    #@27
    and-long/2addr v6, p0

    #@28
    cmp-long v4, v6, v10

    #@2a
    if-nez v4, :cond_2

    #@2c
    .line 454
    long-to-int v4, v2

    #@2d
    ushr-int/lit8 v5, v0, 0x10

    #@2f
    or-int/2addr v4, v5

    #@30
    shr-int/lit8 v5, v1, 0x8

    #@32
    or-int/2addr v4, v5

    #@33
    return v4

    #@34
    .line 455
    :cond_2
    const-wide v6, 0xffffffffffL

    #@39
    and-long/2addr v6, p0

    #@3a
    const-wide/32 v8, 0x5000500

    #@3d
    cmp-long v4, v6, v8

    #@3f
    if-nez v4, :cond_3

    #@41
    .line 457
    invoke-static {v2, v3}, Landroid/icu/impl/coll/Collation;->makeLongPrimaryCE32(J)I

    #@44
    move-result v4

    #@45
    return v4

    #@46
    .line 458
    :cond_3
    cmp-long v4, v2, v10

    #@48
    if-nez v4, :cond_4

    #@4a
    and-int/lit16 v4, v1, 0xff

    #@4c
    if-nez v4, :cond_4

    #@4e
    .line 460
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->makeLongSecondaryCE32(I)I

    #@51
    move-result v4

    #@52
    return v4

    #@53
    .line 462
    :cond_4
    return v5
.end method

.method private static enumRangeForCopy(IIILandroid/icu/impl/coll/CollationDataBuilder$CopyHelper;)V
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "value"    # I
    .param p3, "helper"    # Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;

    #@0
    .prologue
    .line 786
    const/4 v0, -0x1

    #@1
    if-eq p2, v0, :cond_0

    #@3
    const/16 v0, 0xc0

    #@5
    if-eq p2, v0, :cond_0

    #@7
    .line 787
    invoke-virtual {p3, p0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyRangeCE32(III)V

    #@a
    .line 785
    :cond_0
    return-void
.end method

.method protected static isBuilderContextCE32(I)Z
    .locals 1
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 444
    const/4 v0, 0x7

    #@1
    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected static jamoCpFromIndex(I)I
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1173
    const/16 v0, 0x13

    #@2
    if-ge p0, v0, :cond_0

    #@4
    add-int/lit16 v0, p0, 0x1100

    #@6
    return v0

    #@7
    .line 1174
    :cond_0
    add-int/lit8 p0, p0, -0x13

    #@9
    .line 1175
    const/16 v0, 0x15

    #@b
    if-ge p0, v0, :cond_1

    #@d
    add-int/lit16 v0, p0, 0x1161

    #@f
    return v0

    #@10
    .line 1176
    :cond_1
    add-int/lit8 p0, p0, -0x15

    #@12
    .line 1178
    add-int/lit16 v0, p0, 0x11a8

    #@14
    return v0
.end method

.method protected static makeBuilderContextCE32(I)I
    .locals 1
    .param p0, "index"    # I

    #@0
    .prologue
    .line 441
    const/4 v0, 0x7

    #@1
    invoke-static {v0, p0}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method


# virtual methods
.method add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "ces"    # [J
    .param p4, "cesLength"    # I

    #@0
    .prologue
    .line 118
    invoke-virtual {p0, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    #@3
    move-result v0

    #@4
    .line 119
    .local v0, "ce32":I
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    #@7
    .line 117
    return-void
.end method

.method protected addCE(J)I
    .locals 5
    .param p1, "ce"    # J

    #@0
    .prologue
    .line 403
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@2
    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->size()I

    #@5
    move-result v1

    #@6
    .line 404
    .local v1, "length":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 405
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@b
    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@e
    move-result-wide v2

    #@f
    cmp-long v2, p1, v2

    #@11
    if-nez v2, :cond_0

    #@13
    return v0

    #@14
    .line 404
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 407
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@19
    invoke-virtual {v2, p1, p2}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    #@1c
    .line 408
    return v1
.end method

.method protected addCE32(I)I
    .locals 3
    .param p1, "ce32"    # I

    #@0
    .prologue
    .line 412
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@2
    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->size()I

    #@5
    move-result v1

    #@6
    .line 413
    .local v1, "length":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 414
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@b
    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    #@e
    move-result v2

    #@f
    if-ne p1, v2, :cond_0

    #@11
    return v0

    #@12
    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 416
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@17
    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@1a
    .line 417
    return v1
.end method

.method addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 17
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "ce32"    # I

    #@0
    .prologue
    .line 172
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v15

    #@4
    if-nez v15, :cond_0

    #@6
    .line 173
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v16, "mapping from empty string"

    #@b
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v15

    #@f
    .line 175
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    #@12
    move-result v15

    #@13
    if-nez v15, :cond_1

    #@15
    .line 176
    new-instance v15, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v16, "attempt to add mappings after build()"

    #@1a
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v15

    #@1e
    .line 178
    :cond_1
    const/4 v15, 0x0

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-static {v0, v15}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@24
    move-result v3

    #@25
    .line 179
    .local v3, "c":I
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    #@28
    move-result v4

    #@29
    .line 180
    .local v4, "cLength":I
    move-object/from16 v0, p0

    #@2b
    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@2d
    invoke-virtual {v15, v3}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@30
    move-result v13

    #@31
    .line 181
    .local v13, "oldCE32":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@34
    move-result v15

    #@35
    if-nez v15, :cond_2

    #@37
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    #@3a
    move-result v15

    #@3b
    if-le v15, v4, :cond_5

    #@3d
    :cond_2
    const/4 v9, 0x1

    #@3e
    .line 182
    .local v9, "hasContext":Z
    :goto_0
    const/16 v15, 0xc0

    #@40
    if-ne v13, v15, :cond_4

    #@42
    .line 187
    move-object/from16 v0, p0

    #@44
    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@4a
    move-object/from16 v16, v0

    #@4c
    move-object/from16 v0, v16

    #@4e
    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@51
    move-result v16

    #@52
    invoke-virtual/range {v15 .. v16}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@55
    move-result v2

    #@56
    .line 188
    .local v2, "baseCE32":I
    if-nez v9, :cond_3

    #@58
    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->ce32HasContext(I)Z

    #@5b
    move-result v15

    #@5c
    if-eqz v15, :cond_4

    #@5e
    .line 189
    :cond_3
    const/4 v15, 0x1

    #@5f
    move-object/from16 v0, p0

    #@61
    invoke-virtual {v0, v3, v2, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    #@64
    move-result v13

    #@65
    .line 190
    move-object/from16 v0, p0

    #@67
    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@69
    invoke-virtual {v15, v3, v13}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@6c
    .line 193
    .end local v2    # "baseCE32":I
    :cond_4
    if-nez v9, :cond_7

    #@6e
    .line 195
    invoke-static {v13}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    #@71
    move-result v15

    #@72
    if-nez v15, :cond_6

    #@74
    .line 196
    move-object/from16 v0, p0

    #@76
    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@78
    move/from16 v0, p3

    #@7a
    invoke-virtual {v15, v3, v0}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@7d
    .line 245
    :goto_1
    const/4 v15, 0x1

    #@7e
    move-object/from16 v0, p0

    #@80
    iput-boolean v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    #@82
    .line 171
    return-void

    #@83
    .line 181
    .end local v9    # "hasContext":Z
    :cond_5
    const/4 v9, 0x0

    #@84
    .restart local v9    # "hasContext":Z
    goto :goto_0

    #@85
    .line 198
    :cond_6
    move-object/from16 v0, p0

    #@87
    invoke-virtual {v0, v13}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@8a
    move-result-object v6

    #@8b
    .line 199
    .local v6, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    const/4 v15, 0x1

    #@8c
    iput v15, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    #@8e
    .line 200
    move/from16 v0, p3

    #@90
    iput v0, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    #@92
    goto :goto_1

    #@93
    .line 204
    .end local v6    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    :cond_7
    invoke-static {v13}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    #@96
    move-result v15

    #@97
    if-nez v15, :cond_8

    #@99
    .line 207
    const-string/jumbo v15, "\u0000"

    #@9c
    move-object/from16 v0, p0

    #@9e
    invoke-virtual {v0, v15, v13}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    #@a1
    move-result v10

    #@a2
    .line 208
    .local v10, "index":I
    invoke-static {v10}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    #@a5
    move-result v8

    #@a6
    .line 209
    .local v8, "contextCE32":I
    move-object/from16 v0, p0

    #@a8
    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@aa
    invoke-virtual {v15, v3, v8}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@ad
    .line 210
    move-object/from16 v0, p0

    #@af
    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    #@b1
    invoke-virtual {v15, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@b4
    .line 211
    move-object/from16 v0, p0

    #@b6
    invoke-virtual {v0, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@b9
    move-result-object v6

    #@ba
    .line 216
    .end local v8    # "contextCE32":I
    .end local v10    # "index":I
    .restart local v6    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    #@bd
    move-result v15

    #@be
    move-object/from16 v0, p2

    #@c0
    invoke-interface {v0, v4, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@c3
    move-result-object v14

    #@c4
    .line 217
    .local v14, "suffix":Ljava/lang/CharSequence;
    new-instance v15, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@cc
    move-result v16

    #@cd
    move/from16 v0, v16

    #@cf
    int-to-char v0, v0

    #@d0
    move/from16 v16, v0

    #@d2
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v15

    #@d6
    move-object/from16 v0, p1

    #@d8
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v15

    #@dc
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v15

    #@e0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v7

    #@e4
    .line 219
    .local v7, "context":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e6
    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@e8
    invoke-virtual {v15, v14}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@eb
    .line 222
    :goto_3
    iget v11, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@ed
    .line 223
    .local v11, "next":I
    if-gez v11, :cond_9

    #@ef
    .line 225
    move-object/from16 v0, p0

    #@f1
    move/from16 v1, p3

    #@f3
    invoke-virtual {v0, v7, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    #@f6
    move-result v10

    #@f7
    .line 226
    .restart local v10    # "index":I
    iput v10, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@f9
    goto :goto_1

    #@fa
    .line 213
    .end local v6    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v7    # "context":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v11    # "next":I
    .end local v14    # "suffix":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    #@fc
    invoke-virtual {v0, v13}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@ff
    move-result-object v6

    #@100
    .line 214
    .restart local v6    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    const/4 v15, 0x1

    #@101
    iput v15, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    #@103
    goto :goto_2

    #@104
    .line 229
    .restart local v7    # "context":Ljava/lang/String;
    .restart local v11    # "next":I
    .restart local v14    # "suffix":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    #@106
    invoke-virtual {v0, v11}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@109
    move-result-object v12

    #@10a
    .line 230
    .local v12, "nextCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iget-object v15, v12, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@10c
    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@10f
    move-result v5

    #@110
    .line 231
    .local v5, "cmp":I
    if-gez v5, :cond_a

    #@112
    .line 233
    move-object/from16 v0, p0

    #@114
    move/from16 v1, p3

    #@116
    invoke-virtual {v0, v7, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    #@119
    move-result v10

    #@11a
    .line 234
    .restart local v10    # "index":I
    iput v10, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@11c
    .line 235
    move-object/from16 v0, p0

    #@11e
    invoke-virtual {v0, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@121
    move-result-object v15

    #@122
    iput v11, v15, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@124
    goto/16 :goto_1

    #@126
    .line 237
    .end local v10    # "index":I
    :cond_a
    if-nez v5, :cond_b

    #@128
    .line 239
    move/from16 v0, p3

    #@12a
    iput v0, v12, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    #@12c
    goto/16 :goto_1

    #@12e
    .line 242
    :cond_b
    move-object v6, v12

    #@12f
    goto :goto_3
.end method

.method protected addConditionalCE32(Ljava/lang/String;I)I
    .locals 4
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "ce32"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 421
    sget-boolean v3, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@3
    if-nez v3, :cond_1

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    const/4 v2, 0x1

    #@c
    :cond_0
    if-nez v2, :cond_1

    #@e
    new-instance v2, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v2

    #@14
    .line 422
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v1

    #@1a
    .line 423
    .local v1, "index":I
    const v2, 0x7ffff

    #@1d
    if-le v1, v2, :cond_2

    #@1f
    .line 424
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@21
    const-string/jumbo v3, "too many context-sensitive mappings"

    #@24
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 428
    :cond_2
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@2a
    invoke-direct {v0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    #@2d
    .line 429
    .local v0, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 430
    return v1
.end method

.method protected addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I
    .locals 4
    .param p1, "defaultCE32"    # I
    .param p2, "trieBuilder"    # Landroid/icu/util/CharsTrieBuilder;

    #@0
    .prologue
    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1131
    .local v0, "context":Ljava/lang/StringBuilder;
    shr-int/lit8 v2, p1, 0x10

    #@7
    int-to-char v2, v2

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    int-to-char v3, p1

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 1132
    sget-object v2, Landroid/icu/util/StringTrieBuilder$Option;->SMALL:Landroid/icu/util/StringTrieBuilder$Option;

    #@12
    invoke-virtual {p2, v2}, Landroid/icu/util/CharsTrieBuilder;->buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@19
    .line 1133
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@22
    move-result v1

    #@23
    .line 1134
    .local v1, "index":I
    if-gez v1, :cond_0

    #@25
    .line 1135
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@2a
    move-result v1

    #@2b
    .line 1136
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@30
    .line 1138
    :cond_0
    return v1
.end method

.method build(Landroid/icu/impl/coll/CollationData;)V
    .locals 2
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    .line 309
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->buildMappings(Landroid/icu/impl/coll/CollationData;)V

    #@3
    .line 310
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 311
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@9
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    #@b
    iput-wide v0, p1, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    #@d
    .line 312
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@f
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@11
    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@13
    .line 313
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@15
    iget v0, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@17
    iput v0, p1, Landroid/icu/impl/coll/CollationData;->numScripts:I

    #@19
    .line 314
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@1b
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@1d
    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    #@1f
    .line 315
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@21
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@23
    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    #@25
    .line 317
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->buildFastLatinTable(Landroid/icu/impl/coll/CollationData;)V

    #@28
    .line 308
    return-void
.end method

.method protected buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I
    .locals 24
    .param p1, "head"    # Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@0
    .prologue
    .line 1019
    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v20, :cond_1

    #@4
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->hasContext()Z

    #@7
    move-result v20

    #@8
    if-eqz v20, :cond_0

    #@a
    const/16 v20, 0x0

    #@c
    :goto_0
    if-nez v20, :cond_1

    #@e
    new-instance v20, Ljava/lang/AssertionError;

    #@10
    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v20

    #@14
    :cond_0
    const/16 v20, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1021
    :cond_1
    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@19
    if-nez v20, :cond_3

    #@1b
    move-object/from16 v0, p1

    #@1d
    iget v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@1f
    move/from16 v20, v0

    #@21
    if-ltz v20, :cond_2

    #@23
    const/16 v20, 0x1

    #@25
    :goto_1
    if-nez v20, :cond_3

    #@27
    new-instance v20, Ljava/lang/AssertionError;

    #@29
    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    #@2c
    throw v20

    #@2d
    :cond_2
    const/16 v20, 0x0

    #@2f
    goto :goto_1

    #@30
    .line 1022
    :cond_3
    new-instance v15, Landroid/icu/util/CharsTrieBuilder;

    #@32
    invoke-direct {v15}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    #@35
    .line 1023
    .local v15, "prefixBuilder":Landroid/icu/util/CharsTrieBuilder;
    new-instance v6, Landroid/icu/util/CharsTrieBuilder;

    #@37
    invoke-direct {v6}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    #@3a
    .line 1024
    .local v6, "contractionBuilder":Landroid/icu/util/CharsTrieBuilder;
    move-object/from16 v5, p1

    #@3c
    .line 1026
    .local v5, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    :goto_2
    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@3e
    if-nez v20, :cond_5

    #@40
    move-object/from16 v0, p1

    #@42
    if-eq v5, v0, :cond_4

    #@44
    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->hasContext()Z

    #@47
    move-result v20

    #@48
    :goto_3
    if-nez v20, :cond_5

    #@4a
    new-instance v20, Ljava/lang/AssertionError;

    #@4c
    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    #@4f
    throw v20

    #@50
    :cond_4
    const/16 v20, 0x1

    #@52
    goto :goto_3

    #@53
    .line 1027
    :cond_5
    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    #@56
    move-result v16

    #@57
    .line 1028
    .local v16, "prefixLength":I
    new-instance v20, Ljava/lang/StringBuilder;

    #@59
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    iget-object v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@5e
    move-object/from16 v21, v0

    #@60
    add-int/lit8 v22, v16, 0x1

    #@62
    const/16 v23, 0x0

    #@64
    move-object/from16 v0, v20

    #@66
    move-object/from16 v1, v21

    #@68
    move/from16 v2, v23

    #@6a
    move/from16 v3, v22

    #@6c
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v14

    #@70
    .line 1029
    .local v14, "prefix":Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v17

    #@74
    .line 1031
    .local v17, "prefixString":Ljava/lang/String;
    move-object v9, v5

    #@75
    .line 1032
    .local v9, "firstCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    move-object v12, v5

    #@76
    .line 1033
    .local v12, "lastCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    :goto_4
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@78
    move/from16 v20, v0

    #@7a
    if-ltz v20, :cond_6

    #@7c
    .line 1034
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@7e
    move/from16 v20, v0

    #@80
    move-object/from16 v0, p0

    #@82
    move/from16 v1, v20

    #@84
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@87
    move-result-object v5

    #@88
    iget-object v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@8a
    move-object/from16 v20, v0

    #@8c
    move-object/from16 v0, v20

    #@8e
    move-object/from16 v1, v17

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@93
    move-result v20

    #@94
    .line 1033
    if-eqz v20, :cond_6

    #@96
    .line 1035
    move-object v12, v5

    #@97
    goto :goto_4

    #@98
    .line 1038
    :cond_6
    add-int/lit8 v19, v16, 0x1

    #@9a
    .line 1039
    .local v19, "suffixStart":I
    iget-object v0, v12, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@9c
    move-object/from16 v20, v0

    #@9e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@a1
    move-result v20

    #@a2
    move/from16 v0, v20

    #@a4
    move/from16 v1, v19

    #@a6
    if-ne v0, v1, :cond_9

    #@a8
    .line 1041
    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@aa
    if-nez v20, :cond_8

    #@ac
    if-ne v9, v12, :cond_7

    #@ae
    const/16 v20, 0x1

    #@b0
    :goto_5
    if-nez v20, :cond_8

    #@b2
    new-instance v20, Ljava/lang/AssertionError;

    #@b4
    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    #@b7
    throw v20

    #@b8
    :cond_7
    const/16 v20, 0x0

    #@ba
    goto :goto_5

    #@bb
    .line 1042
    :cond_8
    iget v4, v12, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    #@bd
    .line 1043
    .local v4, "ce32":I
    move-object v5, v12

    #@be
    .line 1105
    :goto_6
    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@c0
    if-nez v20, :cond_13

    #@c2
    if-ne v5, v12, :cond_12

    #@c4
    const/16 v20, 0x1

    #@c6
    :goto_7
    if-nez v20, :cond_13

    #@c8
    new-instance v20, Ljava/lang/AssertionError;

    #@ca
    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    #@cd
    throw v20

    #@ce
    .line 1046
    .end local v4    # "ce32":I
    :cond_9
    invoke-virtual {v6}, Landroid/icu/util/CharsTrieBuilder;->clear()Landroid/icu/util/CharsTrieBuilder;

    #@d1
    .line 1048
    const/4 v7, 0x1

    #@d2
    .line 1049
    .local v7, "emptySuffixCE32":I
    const/4 v10, 0x0

    #@d3
    .line 1050
    .local v10, "flags":I
    iget-object v0, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@d5
    move-object/from16 v20, v0

    #@d7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@da
    move-result v20

    #@db
    move/from16 v0, v20

    #@dd
    move/from16 v1, v19

    #@df
    if-ne v0, v1, :cond_c

    #@e1
    .line 1053
    iget v7, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    #@e3
    .line 1054
    iget v0, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@e5
    move/from16 v20, v0

    #@e7
    move-object/from16 v0, p0

    #@e9
    move/from16 v1, v20

    #@eb
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@ee
    move-result-object v5

    #@ef
    .line 1080
    :goto_8
    or-int/lit16 v10, v10, 0x200

    #@f1
    .line 1083
    :goto_9
    iget-object v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@f3
    move-object/from16 v20, v0

    #@f5
    move-object/from16 v0, v20

    #@f7
    move/from16 v1, v19

    #@f9
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@fc
    move-result-object v18

    #@fd
    .line 1084
    .local v18, "suffix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@101
    move-object/from16 v20, v0

    #@103
    const/16 v21, 0x0

    #@105
    move-object/from16 v0, v18

    #@107
    move/from16 v1, v21

    #@109
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    #@10c
    move-result v21

    #@10d
    invoke-virtual/range {v20 .. v21}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@110
    move-result v8

    #@111
    .line 1085
    .local v8, "fcd16":I
    const/16 v20, 0xff

    #@113
    move/from16 v0, v20

    #@115
    if-gt v8, v0, :cond_a

    #@117
    .line 1086
    and-int/lit16 v10, v10, -0x201

    #@119
    .line 1088
    :cond_a
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@11d
    move-object/from16 v20, v0

    #@11f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@122
    move-result v21

    #@123
    move-object/from16 v0, v18

    #@125
    move/from16 v1, v21

    #@127
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointBefore(I)I

    #@12a
    move-result v21

    #@12b
    invoke-virtual/range {v20 .. v21}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@12e
    move-result v8

    #@12f
    .line 1089
    const/16 v20, 0xff

    #@131
    move/from16 v0, v20

    #@133
    if-le v8, v0, :cond_b

    #@135
    .line 1091
    or-int/lit16 v10, v10, 0x400

    #@137
    .line 1093
    :cond_b
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    #@139
    move/from16 v20, v0

    #@13b
    move-object/from16 v0, v18

    #@13d
    move/from16 v1, v20

    #@13f
    invoke-virtual {v6, v0, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    #@142
    .line 1094
    if-ne v5, v12, :cond_10

    #@144
    .line 1097
    move-object/from16 v0, p0

    #@146
    invoke-virtual {v0, v7, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I

    #@149
    move-result v11

    #@14a
    .line 1098
    .local v11, "index":I
    const v20, 0x7ffff

    #@14d
    move/from16 v0, v20

    #@14f
    if-le v11, v0, :cond_11

    #@151
    .line 1099
    new-instance v20, Ljava/lang/IndexOutOfBoundsException;

    #@153
    const-string/jumbo v21, "too many context-sensitive mappings"

    #@156
    invoke-direct/range {v20 .. v21}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@159
    throw v20

    #@15a
    .line 1058
    .end local v8    # "fcd16":I
    .end local v11    # "index":I
    .end local v18    # "suffix":Ljava/lang/String;
    :cond_c
    const/16 v10, 0x100

    #@15c
    .line 1065
    move-object/from16 v5, p1

    #@15e
    .line 1066
    :goto_a
    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    #@161
    move-result v13

    #@162
    .line 1067
    .local v13, "length":I
    move/from16 v0, v16

    #@164
    if-ne v13, v0, :cond_d

    #@166
    .line 1075
    move-object v5, v9

    #@167
    goto :goto_8

    #@168
    .line 1068
    :cond_d
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    #@16a
    move/from16 v20, v0

    #@16c
    const/16 v21, 0x1

    #@16e
    move/from16 v0, v20

    #@170
    move/from16 v1, v21

    #@172
    if-eq v0, v1, :cond_f

    #@174
    .line 1069
    if-eqz v13, :cond_e

    #@176
    .line 1070
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    #@179
    move-result v20

    #@17a
    sub-int v20, v20, v13

    #@17c
    iget-object v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@17e
    move-object/from16 v21, v0

    #@180
    const/16 v22, 0x1

    #@182
    .line 1069
    move-object/from16 v0, v17

    #@184
    move/from16 v1, v20

    #@186
    move-object/from16 v2, v21

    #@188
    move/from16 v3, v22

    #@18a
    invoke-virtual {v0, v1, v2, v3, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@18d
    move-result v20

    #@18e
    .line 1068
    if-eqz v20, :cond_f

    #@190
    .line 1072
    :cond_e
    iget v7, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    #@192
    .line 1065
    :cond_f
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@194
    move/from16 v20, v0

    #@196
    move-object/from16 v0, p0

    #@198
    move/from16 v1, v20

    #@19a
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@19d
    move-result-object v5

    #@19e
    goto :goto_a

    #@19f
    .line 1095
    .end local v13    # "length":I
    .restart local v8    # "fcd16":I
    .restart local v18    # "suffix":Ljava/lang/String;
    :cond_10
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@1a1
    move/from16 v20, v0

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    move/from16 v1, v20

    #@1a7
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@1aa
    move-result-object v5

    #@1ab
    goto/16 :goto_9

    #@1ad
    .line 1103
    .restart local v11    # "index":I
    :cond_11
    const/16 v20, 0x9

    #@1af
    move/from16 v0, v20

    #@1b1
    invoke-static {v0, v11}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    #@1b4
    move-result v20

    #@1b5
    or-int v4, v20, v10

    #@1b7
    .restart local v4    # "ce32":I
    goto/16 :goto_6

    #@1b9
    .line 1105
    .end local v7    # "emptySuffixCE32":I
    .end local v8    # "fcd16":I
    .end local v10    # "flags":I
    .end local v11    # "index":I
    .end local v18    # "suffix":Ljava/lang/String;
    :cond_12
    const/16 v20, 0x0

    #@1bb
    goto/16 :goto_7

    #@1bd
    .line 1106
    :cond_13
    iput v4, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    #@1bf
    .line 1107
    if-nez v16, :cond_14

    #@1c1
    .line 1108
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@1c3
    move/from16 v20, v0

    #@1c5
    if-gez v20, :cond_15

    #@1c7
    .line 1110
    return v4

    #@1c8
    .line 1113
    :cond_14
    const/16 v20, 0x0

    #@1ca
    const/16 v21, 0x1

    #@1cc
    move/from16 v0, v20

    #@1ce
    move/from16 v1, v21

    #@1d0
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@1d3
    .line 1114
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    #@1d6
    .line 1115
    invoke-virtual {v15, v14, v4}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    #@1d9
    .line 1116
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@1db
    move/from16 v20, v0

    #@1dd
    if-gez v20, :cond_15

    #@1df
    .line 1119
    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@1e1
    if-nez v20, :cond_17

    #@1e3
    move-object/from16 v0, p1

    #@1e5
    iget v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    #@1e7
    move/from16 v20, v0

    #@1e9
    const/16 v21, 0x1

    #@1eb
    move/from16 v0, v20

    #@1ed
    move/from16 v1, v21

    #@1ef
    if-eq v0, v1, :cond_16

    #@1f1
    const/16 v20, 0x1

    #@1f3
    :goto_b
    if-nez v20, :cond_17

    #@1f5
    new-instance v20, Ljava/lang/AssertionError;

    #@1f7
    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    #@1fa
    throw v20

    #@1fb
    .line 1024
    :cond_15
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@1fd
    move/from16 v20, v0

    #@1ff
    move-object/from16 v0, p0

    #@201
    move/from16 v1, v20

    #@203
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@206
    move-result-object v5

    #@207
    goto/16 :goto_2

    #@209
    .line 1119
    :cond_16
    const/16 v20, 0x0

    #@20b
    goto :goto_b

    #@20c
    .line 1120
    :cond_17
    move-object/from16 v0, p1

    #@20e
    iget v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    #@210
    move/from16 v20, v0

    #@212
    move-object/from16 v0, p0

    #@214
    move/from16 v1, v20

    #@216
    invoke-virtual {v0, v1, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I

    #@219
    move-result v11

    #@21a
    .line 1121
    .restart local v11    # "index":I
    const v20, 0x7ffff

    #@21d
    move/from16 v0, v20

    #@21f
    if-le v11, v0, :cond_18

    #@221
    .line 1122
    new-instance v20, Ljava/lang/IndexOutOfBoundsException;

    #@223
    const-string/jumbo v21, "too many context-sensitive mappings"

    #@226
    invoke-direct/range {v20 .. v21}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@229
    throw v20

    #@22a
    .line 1126
    :cond_18
    const/16 v20, 0x8

    #@22c
    move/from16 v0, v20

    #@22e
    invoke-static {v0, v11}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    #@231
    move-result v20

    #@232
    return v20
.end method

.method protected buildContexts()V
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1002
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 1003
    new-instance v3, Landroid/icu/text/UnicodeSetIterator;

    #@8
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    #@a
    invoke-direct {v3, v4}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@d
    .line 1004
    .local v3, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_0
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_3

    #@13
    .line 1005
    sget-boolean v4, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@15
    if-nez v4, :cond_1

    #@17
    iget v4, v3, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@19
    sget v6, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@1b
    if-eq v4, v6, :cond_0

    #@1d
    const/4 v4, 0x1

    #@1e
    :goto_1
    if-nez v4, :cond_1

    #@20
    new-instance v4, Ljava/lang/AssertionError;

    #@22
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@25
    throw v4

    #@26
    :cond_0
    move v4, v5

    #@27
    goto :goto_1

    #@28
    .line 1006
    :cond_1
    iget v0, v3, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@2a
    .line 1007
    .local v0, "c":I
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@2c
    invoke-virtual {v4, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@2f
    move-result v1

    #@30
    .line 1008
    .local v1, "ce32":I
    invoke-static {v1}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    #@33
    move-result v4

    #@34
    if-nez v4, :cond_2

    #@36
    .line 1009
    new-instance v4, Ljava/lang/AssertionError;

    #@38
    const-string/jumbo v5, "Impossible: No context data for c in contextChars."

    #@3b
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3e
    throw v4

    #@3f
    .line 1011
    :cond_2
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@42
    move-result-object v2

    #@43
    .line 1012
    .local v2, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    #@46
    move-result v1

    #@47
    .line 1013
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@49
    invoke-virtual {v4, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@4c
    goto :goto_0

    #@4d
    .line 999
    .end local v0    # "c":I
    .end local v1    # "ce32":I
    .end local v2    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    :cond_3
    return-void
.end method

.method protected buildFastLatinTable(Landroid/icu/impl/coll/CollationData;)V
    .locals 4
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1142
    iget-boolean v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    #@3
    if-nez v2, :cond_0

    #@5
    return-void

    #@6
    .line 1144
    :cond_0
    new-instance v2, Landroid/icu/impl/coll/CollationFastLatinBuilder;

    #@8
    invoke-direct {v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;-><init>()V

    #@b
    iput-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    #@d
    .line 1145
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    #@f
    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->forData(Landroid/icu/impl/coll/CollationData;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 1146
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    #@17
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getHeader()[C

    #@1a
    move-result-object v0

    #@1b
    .line 1147
    .local v0, "header":[C
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    #@1d
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getTable()[C

    #@20
    move-result-object v1

    #@21
    .line 1148
    .local v1, "table":[C
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 1149
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@27
    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@29
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([C[C)Z

    #@2c
    move-result v2

    #@2d
    .line 1148
    if-eqz v2, :cond_1

    #@2f
    .line 1150
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@31
    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@33
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    #@36
    move-result v2

    #@37
    .line 1148
    if-eqz v2, :cond_1

    #@39
    .line 1152
    iput-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    #@3b
    .line 1153
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@3d
    iget-object v0, v2, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@3f
    .line 1154
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@41
    iget-object v1, v2, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@43
    .line 1156
    :cond_1
    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    #@45
    .line 1157
    iput-object v1, p1, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@47
    .line 1141
    .end local v0    # "header":[C
    .end local v1    # "table":[C
    :goto_0
    return-void

    #@48
    .line 1159
    :cond_2
    iput-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    #@4a
    goto :goto_0
.end method

.method protected buildMappings(Landroid/icu/impl/coll/CollationData;)V
    .locals 12
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    .line 906
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    #@3
    move-result v9

    #@4
    if-nez v9, :cond_0

    #@6
    .line 907
    new-instance v9, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v10, "attempt to build() after build()"

    #@b
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v9

    #@f
    .line 910
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContexts()V

    #@12
    .line 912
    const/16 v9, 0x43

    #@14
    new-array v5, v9, [I

    #@16
    .line 913
    .local v5, "jamoCE32s":[I
    const/4 v6, -0x1

    #@17
    .line 914
    .local v6, "jamoIndex":I
    invoke-virtual {p0, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->getJamoCE32s([I)Z

    #@1a
    move-result v9

    #@1b
    if-eqz v9, :cond_6

    #@1d
    .line 915
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@1f
    invoke-virtual {v9}, Landroid/icu/impl/coll/UVector32;->size()I

    #@22
    move-result v6

    #@23
    .line 916
    const/4 v3, 0x0

    #@24
    .local v3, "i":I
    :goto_0
    const/16 v9, 0x43

    #@26
    if-ge v3, v9, :cond_1

    #@28
    .line 917
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@2a
    aget v10, v5, v3

    #@2c
    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@2f
    .line 916
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 926
    :cond_1
    const/4 v4, 0x0

    #@33
    .line 927
    .local v4, "isAnyJamoVTSpecial":Z
    const/16 v3, 0x13

    #@35
    :goto_1
    const/16 v9, 0x43

    #@37
    if-ge v3, v9, :cond_2

    #@39
    .line 928
    aget v9, v5, v3

    #@3b
    invoke-static {v9}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@3e
    move-result v9

    #@3f
    if-eqz v9, :cond_4

    #@41
    .line 929
    const/4 v4, 0x1

    #@42
    .line 933
    :cond_2
    const/16 v9, 0xc

    #@44
    const/4 v10, 0x0

    #@45
    invoke-static {v9, v10}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    #@48
    move-result v2

    #@49
    .line 934
    .local v2, "hangulCE32":I
    const v0, 0xac00

    #@4c
    .line 935
    .local v0, "c":I
    const/4 v3, 0x0

    #@4d
    :goto_2
    const/16 v9, 0x13

    #@4f
    if-ge v3, v9, :cond_8

    #@51
    .line 936
    move v1, v2

    #@52
    .line 937
    .local v1, "ce32":I
    if-nez v4, :cond_3

    #@54
    aget v9, v5, v3

    #@56
    invoke-static {v9}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@59
    move-result v9

    #@5a
    if-eqz v9, :cond_5

    #@5c
    .line 940
    :cond_3
    :goto_3
    add-int/lit16 v8, v0, 0x24c

    #@5e
    .line 941
    .local v8, "limit":I
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@60
    add-int/lit8 v10, v8, -0x1

    #@62
    const/4 v11, 0x1

    #@63
    invoke-virtual {v9, v0, v10, v1, v11}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    #@66
    .line 942
    move v0, v8

    #@67
    .line 935
    add-int/lit8 v3, v3, 0x1

    #@69
    goto :goto_2

    #@6a
    .line 927
    .end local v0    # "c":I
    .end local v1    # "ce32":I
    .end local v2    # "hangulCE32":I
    .end local v8    # "limit":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@6c
    goto :goto_1

    #@6d
    .line 938
    .restart local v0    # "c":I
    .restart local v1    # "ce32":I
    .restart local v2    # "hangulCE32":I
    :cond_5
    or-int/lit16 v1, v1, 0x100

    #@6f
    goto :goto_3

    #@70
    .line 947
    .end local v0    # "c":I
    .end local v1    # "ce32":I
    .end local v2    # "hangulCE32":I
    .end local v3    # "i":I
    .end local v4    # "isAnyJamoVTSpecial":Z
    :cond_6
    const v0, 0xac00

    #@73
    .restart local v0    # "c":I
    :goto_4
    const v9, 0xd7a4

    #@76
    if-ge v0, v9, :cond_8

    #@78
    .line 948
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@7a
    invoke-virtual {v9, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@7d
    move-result v1

    #@7e
    .line 949
    .restart local v1    # "ce32":I
    sget-boolean v9, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@80
    if-nez v9, :cond_7

    #@82
    const/16 v9, 0xc

    #@84
    invoke-static {v1, v9}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    #@87
    move-result v9

    #@88
    if-nez v9, :cond_7

    #@8a
    new-instance v9, Ljava/lang/AssertionError;

    #@8c
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@8f
    throw v9

    #@90
    .line 950
    :cond_7
    add-int/lit16 v8, v0, 0x24c

    #@92
    .line 951
    .restart local v8    # "limit":I
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@94
    add-int/lit8 v10, v8, -0x1

    #@96
    const/4 v11, 0x1

    #@97
    invoke-virtual {v9, v0, v10, v1, v11}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    #@9a
    .line 952
    move v0, v8

    #@9b
    goto :goto_4

    #@9c
    .line 956
    .end local v1    # "ce32":I
    .end local v8    # "limit":I
    :cond_8
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->setDigitTags()V

    #@9f
    .line 957
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->setLeadSurrogates()V

    #@a2
    .line 960
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@a4
    iget-object v10, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@a6
    const/4 v11, 0x0

    #@a7
    invoke-virtual {v10, v11}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@aa
    move-result v10

    #@ab
    const/4 v11, 0x0

    #@ac
    invoke-virtual {v9, v10, v11}, Landroid/icu/impl/coll/UVector32;->setElementAt(II)V

    #@af
    .line 961
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@b1
    const/16 v10, 0xb

    #@b3
    const/4 v11, 0x0

    #@b4
    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    #@b7
    move-result v10

    #@b8
    const/4 v11, 0x0

    #@b9
    invoke-virtual {v9, v11, v10}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@bc
    .line 963
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@be
    invoke-virtual {v9}, Landroid/icu/impl/Trie2Writable;->toTrie2_32()Landroid/icu/impl/Trie2_32;

    #@c1
    move-result-object v9

    #@c2
    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@c4
    .line 967
    const/high16 v0, 0x10000

    #@c6
    .line 968
    const v7, 0xd800

    #@c9
    :goto_5
    const v9, 0xdc00

    #@cc
    if-ge v7, v9, :cond_a

    #@ce
    .line 969
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@d0
    add-int/lit16 v10, v0, 0x3ff

    #@d2
    invoke-virtual {v9, v0, v10}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    #@d5
    move-result v9

    #@d6
    if-eqz v9, :cond_9

    #@d8
    .line 970
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@da
    invoke-virtual {v9, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@dd
    .line 968
    :cond_9
    add-int/lit8 v9, v7, 0x1

    #@df
    int-to-char v7, v9

    #@e0
    .local v7, "lead":C
    add-int/lit16 v0, v0, 0x400

    #@e2
    goto :goto_5

    #@e3
    .line 973
    .end local v7    # "lead":C
    :cond_a
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@e5
    invoke-virtual {v9}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@e8
    .line 975
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@ea
    invoke-virtual {v9}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    #@ed
    move-result-object v9

    #@ee
    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@f0
    .line 976
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@f2
    invoke-virtual {v9}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    #@f5
    move-result-object v9

    #@f6
    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@f8
    .line 977
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    #@fa
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v9

    #@fe
    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@100
    .line 979
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@102
    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@104
    .line 980
    if-ltz v6, :cond_b

    #@106
    .line 981
    iput-object v5, p1, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@108
    .line 985
    :goto_6
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@10a
    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@10c
    .line 905
    return-void

    #@10d
    .line 983
    :cond_b
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@10f
    iget-object v9, v9, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@111
    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    #@113
    goto :goto_6
.end method

.method protected clearContexts()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 989
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7
    .line 990
    new-instance v1, Landroid/icu/text/UnicodeSetIterator;

    #@9
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    #@b
    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@e
    .line 991
    .local v1, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_0
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_3

    #@14
    .line 992
    sget-boolean v2, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@16
    if-nez v2, :cond_1

    #@18
    iget v2, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@1a
    sget v5, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@1c
    if-eq v2, v5, :cond_0

    #@1e
    move v2, v3

    #@1f
    :goto_1
    if-nez v2, :cond_1

    #@21
    new-instance v2, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v2

    #@27
    :cond_0
    move v2, v4

    #@28
    goto :goto_1

    #@29
    .line 993
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@2b
    iget v5, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@2d
    invoke-virtual {v2, v5}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@30
    move-result v0

    #@31
    .line 994
    .local v0, "ce32":I
    sget-boolean v2, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@33
    if-nez v2, :cond_2

    #@35
    invoke-static {v0}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    #@38
    move-result v2

    #@39
    if-nez v2, :cond_2

    #@3b
    new-instance v2, Ljava/lang/AssertionError;

    #@3d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@40
    throw v2

    #@41
    .line 995
    :cond_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@44
    move-result-object v2

    #@45
    iput v3, v2, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    #@47
    goto :goto_0

    #@48
    .line 988
    .end local v0    # "ce32":I
    :cond_3
    return-void
.end method

.method protected copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I
    .locals 9
    .param p1, "context"    # Ljava/lang/StringBuilder;
    .param p2, "c"    # I
    .param p3, "ce32"    # I
    .param p4, "cond"    # Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 635
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@5
    move-result v4

    #@6
    .line 637
    .local v4, "trieIndex":I
    and-int/lit16 v7, p3, 0x100

    #@8
    if-eqz v7, :cond_2

    #@a
    .line 641
    sget-boolean v7, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@c
    if-nez v7, :cond_1

    #@e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@11
    move-result v7

    #@12
    if-le v7, v5, :cond_0

    #@14
    move v7, v5

    #@15
    :goto_0
    if-nez v7, :cond_1

    #@17
    new-instance v5, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@1c
    throw v5

    #@1d
    :cond_0
    move v7, v6

    #@1e
    goto :goto_0

    #@1f
    .line 642
    :cond_1
    const/4 v1, -0x1

    #@20
    .line 651
    .local v1, "index":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@23
    move-result v2

    #@24
    .line 652
    .local v2, "suffixStart":I
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@26
    iget-object v7, v7, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@28
    add-int/lit8 v8, v4, 0x2

    #@2a
    invoke-static {v7, v8, v6}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    #@2d
    move-result-object v3

    #@2e
    .line 653
    .local v3, "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_2
    invoke-virtual {v3}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_5

    #@34
    .line 654
    invoke-virtual {v3}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@37
    move-result-object v0

    #@38
    .line 655
    .local v0, "entry":Landroid/icu/util/CharsTrie$Entry;
    iget-object v7, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@3a
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3d
    .line 656
    iget v7, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@3f
    invoke-virtual {p0, p2, v7, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    #@42
    move-result p3

    #@43
    .line 657
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {p0, v7, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    #@4a
    move-result v1

    #@4b
    iput v1, p4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@4d
    .line 660
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@50
    move-result-object p4

    #@51
    .line 661
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@54
    goto :goto_2

    #@55
    .line 644
    .end local v0    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .end local v1    # "index":I
    .end local v2    # "suffixStart":I
    .end local v3    # "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :cond_2
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@57
    invoke-virtual {v7, v4}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@5a
    move-result p3

    #@5b
    .line 645
    sget-boolean v7, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@5d
    if-nez v7, :cond_4

    #@5f
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    #@62
    move-result v7

    #@63
    if-eqz v7, :cond_3

    #@65
    move v7, v6

    #@66
    :goto_3
    if-nez v7, :cond_4

    #@68
    new-instance v5, Ljava/lang/AssertionError;

    #@6a
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@6d
    throw v5

    #@6e
    :cond_3
    move v7, v5

    #@6f
    goto :goto_3

    #@70
    .line 646
    :cond_4
    invoke-virtual {p0, p2, p3, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    #@73
    move-result p3

    #@74
    .line 647
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {p0, v7, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    #@7b
    move-result v1

    #@7c
    .restart local v1    # "index":I
    iput v1, p4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@7e
    .line 648
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@81
    move-result-object p4

    #@82
    goto :goto_1

    #@83
    .line 663
    .restart local v2    # "suffixStart":I
    .restart local v3    # "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :cond_5
    sget-boolean v7, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@85
    if-nez v7, :cond_7

    #@87
    if-ltz v1, :cond_6

    #@89
    :goto_4
    if-nez v5, :cond_7

    #@8b
    new-instance v5, Ljava/lang/AssertionError;

    #@8d
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@90
    throw v5

    #@91
    :cond_6
    move v5, v6

    #@92
    goto :goto_4

    #@93
    .line 664
    :cond_7
    return v1
.end method

.method copyFrom(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V
    .locals 6
    .param p1, "src"    # Landroid/icu/impl/coll/CollationDataBuilder;
    .param p2, "modifier"    # Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    #@0
    .prologue
    .line 253
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 254
    new-instance v3, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v4, "attempt to copyFrom() after build()"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 256
    :cond_0
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;

    #@11
    invoke-direct {v0, p1, p0, p2}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;-><init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V

    #@14
    .line 257
    .local v0, "helper":Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;
    iget-object v3, p1, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@16
    invoke-virtual {v3}, Landroid/icu/impl/Trie2Writable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v2

    #@1a
    .line 259
    .local v2, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/icu/impl/Trie2$Range;

    #@26
    .local v1, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v3, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 265
    .end local v1    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_1
    iget-boolean v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    #@2c
    iget-boolean v4, p1, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    #@2e
    or-int/2addr v3, v4

    #@2f
    iput-boolean v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    #@31
    .line 252
    return-void

    #@32
    .line 260
    .restart local v1    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_2
    iget v3, v1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@34
    iget v4, v1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@36
    iget v5, v1, Landroid/icu/impl/Trie2$Range;->value:I

    #@38
    invoke-static {v3, v4, v5, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->enumRangeForCopy(IIILandroid/icu/impl/coll/CollationDataBuilder$CopyHelper;)V

    #@3b
    goto :goto_0
.end method

.method protected copyFromBaseCE32(IIZ)I
    .locals 12
    .param p1, "c"    # I
    .param p2, "ce32"    # I
    .param p3, "withContext"    # Z

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 545
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@5
    move-result v8

    #@6
    if-nez v8, :cond_0

    #@8
    return p2

    #@9
    .line 546
    :cond_0
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@c
    move-result v8

    #@d
    packed-switch v8, :pswitch_data_0

    #@10
    .line 622
    :pswitch_0
    new-instance v8, Ljava/lang/AssertionError;

    #@12
    const-string/jumbo v9, "copyFromBaseCE32(c, ce32, withContext) requires ce32 == base.getFinalCE32(ce32)"

    #@15
    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@18
    throw v8

    #@19
    .line 553
    :pswitch_1
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@1c
    move-result v4

    #@1d
    .line 554
    .local v4, "index":I
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@20
    move-result v5

    #@21
    .line 555
    .local v5, "length":I
    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@23
    iget-object v8, v8, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@25
    invoke-virtual {p0, v8, v4, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    #@28
    move-result p2

    #@29
    .line 625
    .end local v4    # "index":I
    .end local v5    # "length":I
    :goto_0
    :pswitch_2
    return p2

    #@2a
    .line 559
    :pswitch_3
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@2d
    move-result v4

    #@2e
    .line 560
    .restart local v4    # "index":I
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@31
    move-result v5

    #@32
    .line 561
    .restart local v5    # "length":I
    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@34
    iget-object v8, v8, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@36
    invoke-virtual {p0, v8, v4, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    #@39
    move-result p2

    #@3a
    goto :goto_0

    #@3b
    .line 567
    .end local v4    # "index":I
    .end local v5    # "length":I
    :pswitch_4
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@3e
    move-result v7

    #@3f
    .line 568
    .local v7, "trieIndex":I
    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@41
    invoke-virtual {v8, v7}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@44
    move-result p2

    #@45
    .line 569
    if-nez p3, :cond_1

    #@47
    .line 570
    invoke-virtual {p0, p1, p2, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    #@4a
    move-result v8

    #@4b
    return v8

    #@4c
    .line 572
    :cond_1
    new-instance v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@4e
    const-string/jumbo v8, ""

    #@51
    invoke-direct {v3, v8, v10}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    #@54
    .line 573
    .local v3, "head":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    new-instance v1, Ljava/lang/StringBuilder;

    #@56
    const-string/jumbo v8, "\u0000"

    #@59
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5c
    .line 575
    .local v1, "context":Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    #@5f
    move-result v8

    #@60
    if-eqz v8, :cond_2

    #@62
    .line 576
    invoke-virtual {p0, v1, p1, p2, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    #@65
    move-result v4

    #@66
    .line 581
    .restart local v4    # "index":I
    :goto_1
    invoke-virtual {p0, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@69
    move-result-object v0

    #@6a
    .line 582
    .local v0, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@6c
    iget-object v8, v8, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@6e
    add-int/lit8 v9, v7, 0x2

    #@70
    invoke-static {v8, v9, v10}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    #@73
    move-result-object v6

    #@74
    .line 583
    .local v6, "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_2
    invoke-virtual {v6}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@77
    move-result v8

    #@78
    if-eqz v8, :cond_4

    #@7a
    .line 584
    invoke-virtual {v6}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@7d
    move-result-object v2

    #@7e
    .line 585
    .local v2, "entry":Landroid/icu/util/CharsTrie$Entry;
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    #@81
    .line 586
    iget-object v8, v2, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@83
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v8

    #@87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    iget-object v9, v2, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@8d
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    #@90
    move-result v9

    #@91
    int-to-char v9, v9

    #@92
    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@95
    .line 587
    iget p2, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@97
    .line 588
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    #@9a
    move-result v8

    #@9b
    if-eqz v8, :cond_3

    #@9d
    .line 589
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    #@a0
    move-result v4

    #@a1
    .line 594
    :goto_3
    invoke-virtual {p0, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@a4
    move-result-object v0

    #@a5
    goto :goto_2

    #@a6
    .line 578
    .end local v0    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v2    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .end local v4    # "index":I
    .end local v6    # "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    :cond_2
    invoke-virtual {p0, p1, p2, v11}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    #@a9
    move-result p2

    #@aa
    .line 579
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v8

    #@ae
    invoke-virtual {p0, v8, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    #@b1
    move-result v4

    #@b2
    .restart local v4    # "index":I
    iput v4, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@b4
    goto :goto_1

    #@b5
    .line 591
    .restart local v0    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .restart local v2    # "entry":Landroid/icu/util/CharsTrie$Entry;
    .restart local v6    # "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    :cond_3
    invoke-virtual {p0, p1, p2, v11}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    #@b8
    move-result p2

    #@b9
    .line 592
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v8

    #@bd
    invoke-virtual {p0, v8, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    #@c0
    move-result v4

    #@c1
    iput v4, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@c3
    goto :goto_3

    #@c4
    .line 596
    .end local v2    # "entry":Landroid/icu/util/CharsTrie$Entry;
    :cond_4
    iget v8, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@c6
    invoke-static {v8}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    #@c9
    move-result p2

    #@ca
    .line 597
    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    #@cc
    invoke-virtual {v8, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@cf
    goto/16 :goto_0

    #@d1
    .line 601
    .end local v0    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v1    # "context":Ljava/lang/StringBuilder;
    .end local v3    # "head":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v4    # "index":I
    .end local v6    # "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    .end local v7    # "trieIndex":I
    :pswitch_5
    if-nez p3, :cond_5

    #@d3
    .line 602
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@d6
    move-result v4

    #@d7
    .line 603
    .restart local v4    # "index":I
    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@d9
    invoke-virtual {v8, v4}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@dc
    move-result p2

    #@dd
    .line 604
    invoke-virtual {p0, p1, p2, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    #@e0
    move-result v8

    #@e1
    return v8

    #@e2
    .line 606
    .end local v4    # "index":I
    :cond_5
    new-instance v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@e4
    const-string/jumbo v8, ""

    #@e7
    invoke-direct {v3, v8, v10}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    #@ea
    .line 607
    .restart local v3    # "head":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    new-instance v1, Ljava/lang/StringBuilder;

    #@ec
    const-string/jumbo v8, "\u0000"

    #@ef
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f2
    .line 608
    .restart local v1    # "context":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1, p1, p2, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    #@f5
    .line 609
    iget v8, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@f7
    invoke-static {v8}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    #@fa
    move-result p2

    #@fb
    .line 610
    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    #@fd
    invoke-virtual {v8, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@100
    goto/16 :goto_0

    #@102
    .line 614
    .end local v1    # "context":Ljava/lang/StringBuilder;
    .end local v3    # "head":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    :pswitch_6
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    #@104
    const-string/jumbo v9, "We forbid tailoring of Hangul syllables."

    #@107
    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10a
    throw v8

    #@10b
    .line 616
    :pswitch_7
    invoke-virtual {p0, v11, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->getCE32FromOffsetCE32(ZII)I

    #@10e
    move-result p2

    #@10f
    goto/16 :goto_0

    #@111
    .line 619
    :pswitch_8
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    #@114
    move-result-wide v8

    #@115
    invoke-virtual {p0, v8, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    #@118
    move-result p2

    #@119
    goto/16 :goto_0

    #@11b
    .line 546
    nop

    #@11c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method enableFastLatin()V
    .locals 1

    #@0
    .prologue
    .line 307
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    #@3
    return-void
.end method

.method encodeCEs([JI)I
    .locals 18
    .param p1, "ces"    # [J
    .param p2, "cesLength"    # I

    #@0
    .prologue
    .line 129
    if-ltz p2, :cond_0

    #@2
    const/16 v11, 0x1f

    #@4
    move/from16 v0, p2

    #@6
    if-le v0, v11, :cond_1

    #@8
    .line 130
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v14, "mapping to too many CEs"

    #@d
    invoke-direct {v11, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v11

    #@11
    .line 132
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    #@14
    move-result v11

    #@15
    if-nez v11, :cond_2

    #@17
    .line 133
    new-instance v11, Ljava/lang/IllegalStateException;

    #@19
    const-string/jumbo v14, "attempt to add mappings after build()"

    #@1c
    invoke-direct {v11, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v11

    #@20
    .line 135
    :cond_2
    if-nez p2, :cond_3

    #@22
    .line 138
    const-wide/16 v14, 0x0

    #@24
    invoke-static {v14, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    #@27
    move-result v11

    #@28
    return v11

    #@29
    .line 139
    :cond_3
    const/4 v11, 0x1

    #@2a
    move/from16 v0, p2

    #@2c
    if-ne v0, v11, :cond_4

    #@2e
    .line 140
    const/4 v11, 0x0

    #@2f
    aget-wide v14, p1, v11

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-virtual {v0, v14, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    #@36
    move-result v11

    #@37
    return v11

    #@38
    .line 141
    :cond_4
    const/4 v11, 0x2

    #@39
    move/from16 v0, p2

    #@3b
    if-ne v0, v11, :cond_5

    #@3d
    .line 143
    const/4 v11, 0x0

    #@3e
    aget-wide v4, p1, v11

    #@40
    .line 144
    .local v4, "ce0":J
    const/4 v11, 0x1

    #@41
    aget-wide v6, p1, v11

    #@43
    .line 145
    .local v6, "ce1":J
    const/16 v11, 0x20

    #@45
    ushr-long v12, v4, v11

    #@47
    .line 146
    .local v12, "p0":J
    const-wide v14, 0xffffffffff00ffL

    #@4c
    and-long/2addr v14, v4

    #@4d
    const-wide/32 v16, 0x5000000

    #@50
    cmp-long v11, v14, v16

    #@52
    if-nez v11, :cond_5

    #@54
    .line 147
    const-wide v14, -0xff000001L

    #@59
    and-long/2addr v14, v6

    #@5a
    const-wide/16 v16, 0x500

    #@5c
    cmp-long v11, v14, v16

    #@5e
    if-nez v11, :cond_5

    #@60
    .line 148
    const-wide/16 v14, 0x0

    #@62
    cmp-long v11, v12, v14

    #@64
    if-eqz v11, :cond_5

    #@66
    .line 151
    long-to-int v11, v12

    #@67
    .line 152
    long-to-int v14, v4

    #@68
    const v15, 0xff00

    #@6b
    and-int/2addr v14, v15

    #@6c
    shl-int/lit8 v14, v14, 0x8

    #@6e
    .line 151
    or-int/2addr v11, v14

    #@6f
    .line 153
    long-to-int v14, v6

    #@70
    shr-int/lit8 v14, v14, 0x10

    #@72
    const v15, 0xff00

    #@75
    and-int/2addr v14, v15

    #@76
    .line 151
    or-int/2addr v11, v14

    #@77
    or-int/lit16 v11, v11, 0xc0

    #@79
    or-int/lit8 v11, v11, 0x4

    #@7b
    .line 150
    return v11

    #@7c
    .line 159
    .end local v4    # "ce0":J
    .end local v6    # "ce1":J
    .end local v12    # "p0":J
    :cond_5
    const/16 v11, 0x1f

    #@7e
    new-array v10, v11, [I

    #@80
    .line 160
    .local v10, "newCE32s":[I
    const/4 v9, 0x0

    #@81
    .line 161
    .local v9, "i":I
    :goto_0
    move/from16 v0, p2

    #@83
    if-ne v9, v0, :cond_6

    #@85
    .line 162
    const/4 v11, 0x0

    #@86
    move-object/from16 v0, p0

    #@88
    move/from16 v1, p2

    #@8a
    invoke-virtual {v0, v10, v11, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    #@8d
    move-result v11

    #@8e
    return v11

    #@8f
    .line 164
    :cond_6
    aget-wide v14, p1, v9

    #@91
    invoke-static {v14, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    #@94
    move-result v8

    #@95
    .line 165
    .local v8, "ce32":I
    const/4 v11, 0x1

    #@96
    if-ne v8, v11, :cond_7

    #@98
    .line 168
    const/4 v11, 0x0

    #@99
    move-object/from16 v0, p0

    #@9b
    move-object/from16 v1, p1

    #@9d
    move/from16 v2, p2

    #@9f
    invoke-virtual {v0, v1, v11, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    #@a2
    move-result v11

    #@a3
    return v11

    #@a4
    .line 166
    :cond_7
    aput v8, v10, v9

    #@a6
    .line 160
    add-int/lit8 v9, v9, 0x1

    #@a8
    goto :goto_0
.end method

.method protected encodeExpansion([JII)I
    .locals 12
    .param p1, "ces"    # [J
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const v11, 0x7ffff

    #@3
    const/4 v10, 0x6

    #@4
    .line 480
    aget-wide v2, p1, p2

    #@6
    .line 481
    .local v2, "first":J
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@8
    invoke-virtual {v5}, Landroid/icu/impl/coll/UVector64;->size()I

    #@b
    move-result v5

    #@c
    sub-int v0, v5, p3

    #@e
    .line 482
    .local v0, "ce64sMax":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_4

    #@11
    .line 483
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@13
    invoke-virtual {v5, v1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@16
    move-result-wide v6

    #@17
    cmp-long v5, v2, v6

    #@19
    if-nez v5, :cond_2

    #@1b
    .line 484
    if-le v1, v11, :cond_0

    #@1d
    .line 485
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@1f
    const-string/jumbo v6, "too many mappings"

    #@22
    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@25
    throw v5

    #@26
    .line 489
    :cond_0
    const/4 v4, 0x1

    #@27
    .line 490
    .local v4, "j":I
    :goto_1
    if-ne v4, p3, :cond_1

    #@29
    .line 491
    invoke-static {v10, v1, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    #@2c
    move-result v5

    #@2d
    return v5

    #@2e
    .line 494
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@30
    add-int v6, v1, v4

    #@32
    invoke-virtual {v5, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@35
    move-result-wide v6

    #@36
    add-int v5, p2, v4

    #@38
    aget-wide v8, p1, v5

    #@3a
    cmp-long v5, v6, v8

    #@3c
    if-eqz v5, :cond_3

    #@3e
    .line 482
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 489
    .restart local v4    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_1

    #@44
    .line 499
    .end local v4    # "j":I
    :cond_4
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@46
    invoke-virtual {v5}, Landroid/icu/impl/coll/UVector64;->size()I

    #@49
    move-result v1

    #@4a
    .line 500
    if-le v1, v11, :cond_5

    #@4c
    .line 501
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@4e
    const-string/jumbo v6, "too many mappings"

    #@51
    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@54
    throw v5

    #@55
    .line 505
    :cond_5
    const/4 v4, 0x0

    #@56
    .restart local v4    # "j":I
    :goto_2
    if-ge v4, p3, :cond_6

    #@58
    .line 506
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@5a
    add-int v6, p2, v4

    #@5c
    aget-wide v6, p1, v6

    #@5e
    invoke-virtual {v5, v6, v7}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    #@61
    .line 505
    add-int/lit8 v4, v4, 0x1

    #@63
    goto :goto_2

    #@64
    .line 508
    :cond_6
    invoke-static {v10, v1, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    #@67
    move-result v5

    #@68
    return v5
.end method

.method protected encodeExpansion32([III)I
    .locals 8
    .param p1, "newCE32s"    # [I
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const v7, 0x7ffff

    #@3
    const/4 v6, 0x5

    #@4
    .line 513
    aget v1, p1, p2

    #@6
    .line 514
    .local v1, "first":I
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@8
    invoke-virtual {v4}, Landroid/icu/impl/coll/UVector32;->size()I

    #@b
    move-result v4

    #@c
    sub-int v0, v4, p3

    #@e
    .line 515
    .local v0, "ce32sMax":I
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_4

    #@11
    .line 516
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@13
    invoke-virtual {v4, v2}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    #@16
    move-result v4

    #@17
    if-ne v1, v4, :cond_2

    #@19
    .line 517
    if-le v2, v7, :cond_0

    #@1b
    .line 518
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@1d
    const-string/jumbo v5, "too many mappings"

    #@20
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@23
    throw v4

    #@24
    .line 522
    :cond_0
    const/4 v3, 0x1

    #@25
    .line 523
    .local v3, "j":I
    :goto_1
    if-ne v3, p3, :cond_1

    #@27
    .line 524
    invoke-static {v6, v2, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    #@2a
    move-result v4

    #@2b
    return v4

    #@2c
    .line 527
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@2e
    add-int v5, v2, v3

    #@30
    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    #@33
    move-result v4

    #@34
    add-int v5, p2, v3

    #@36
    aget v5, p1, v5

    #@38
    if-eq v4, v5, :cond_3

    #@3a
    .line 515
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 522
    .restart local v3    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 532
    .end local v3    # "j":I
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@42
    invoke-virtual {v4}, Landroid/icu/impl/coll/UVector32;->size()I

    #@45
    move-result v2

    #@46
    .line 533
    if-le v2, v7, :cond_5

    #@48
    .line 534
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@4a
    const-string/jumbo v5, "too many mappings"

    #@4d
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@50
    throw v4

    #@51
    .line 538
    :cond_5
    const/4 v3, 0x0

    #@52
    .restart local v3    # "j":I
    :goto_2
    if-ge v3, p3, :cond_6

    #@54
    .line 539
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@56
    add-int v5, p2, v3

    #@58
    aget v5, p1, v5

    #@5a
    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    #@5d
    .line 538
    add-int/lit8 v3, v3, 0x1

    #@5f
    goto :goto_2

    #@60
    .line 541
    :cond_6
    invoke-static {v6, v2, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    #@63
    move-result v4

    #@64
    return v4
.end method

.method protected encodeOneCE(J)I
    .locals 5
    .param p1, "ce"    # J

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 467
    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    #@4
    move-result v0

    #@5
    .line 468
    .local v0, "ce32":I
    if-eq v0, v3, :cond_0

    #@7
    return v0

    #@8
    .line 469
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE(J)I

    #@b
    move-result v1

    #@c
    .line 470
    .local v1, "index":I
    const v2, 0x7ffff

    #@f
    if-le v1, v2, :cond_1

    #@11
    .line 471
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@13
    const-string/jumbo v3, "too many mappings"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 475
    :cond_1
    const/4 v2, 0x6

    #@1b
    invoke-static {v2, v1, v3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    #@1e
    move-result v2

    #@1f
    return v2
.end method

.method protected getCE32FromOffsetCE32(ZII)I
    .locals 6
    .param p1, "fromBase"    # Z
    .param p2, "c"    # I
    .param p3, "ce32"    # I

    #@0
    .prologue
    .line 396
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@3
    move-result v2

    #@4
    .line 397
    .local v2, "i":I
    if-eqz p1, :cond_0

    #@6
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@8
    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@a
    aget-wide v0, v3, v2

    #@c
    .line 398
    .local v0, "dataCE":J
    :goto_0
    invoke-static {p2, v0, v1}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    #@f
    move-result-wide v4

    #@10
    .line 399
    .local v4, "p":J
    invoke-static {v4, v5}, Landroid/icu/impl/coll/Collation;->makeLongPrimaryCE32(J)I

    #@13
    move-result v3

    #@14
    return v3

    #@15
    .line 397
    .end local v0    # "dataCE":J
    .end local v4    # "p":J
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@17
    invoke-virtual {v3, v2}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    #@1a
    move-result-wide v0

    #@1b
    .restart local v0    # "dataCE":J
    goto :goto_0
.end method

.method protected getCEs(Ljava/lang/CharSequence;I[JI)I
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "ces"    # [J
    .param p4, "cesLength"    # I

    #@0
    .prologue
    .line 1164
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1165
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    #@6
    new-instance v1, Landroid/icu/impl/coll/CollationData;

    #@8
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@a
    invoke-direct {v1, v2}, Landroid/icu/impl/coll/CollationData;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    #@d
    invoke-direct {v0, p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;-><init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationData;)V

    #@10
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    #@12
    .line 1166
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    #@14
    if-nez v0, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    return v0

    #@18
    .line 1168
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    #@1a
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->fetchCEs(Ljava/lang/CharSequence;I[JI)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I
    .locals 2
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "ces"    # [J
    .param p4, "cesLength"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 334
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v0

    #@5
    .line 335
    .local v0, "prefixLength":I
    if-nez v0, :cond_0

    #@7
    .line 336
    invoke-virtual {p0, p2, v1, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 338
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1, v0, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    #@18
    move-result v1

    #@19
    return v1
.end method

.method getCEs(Ljava/lang/CharSequence;[JI)I
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "ces"    # [J
    .param p3, "cesLength"    # I

    #@0
    .prologue
    .line 330
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@8
    return-object v0
.end method

.method protected getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .locals 1
    .param p1, "ce32"    # I

    #@0
    .prologue
    .line 437
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected getJamoCE32s([I)Z
    .locals 11
    .param p1, "jamoCE32s"    # [I

    #@0
    .prologue
    const/16 v9, 0xc0

    #@2
    const/16 v7, 0x43

    #@4
    const/4 v8, 0x1

    #@5
    .line 792
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@7
    if-nez v6, :cond_2

    #@9
    const/4 v0, 0x1

    #@a
    .line 793
    .local v0, "anyJamoAssigned":Z
    :goto_0
    const/4 v5, 0x0

    #@b
    .line 794
    .local v5, "needToCopyFromBase":Z
    const/4 v3, 0x0

    #@c
    .end local v0    # "anyJamoAssigned":Z
    .local v3, "j":I
    :goto_1
    if-ge v3, v7, :cond_4

    #@e
    .line 795
    invoke-static {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    #@11
    move-result v4

    #@12
    .line 796
    .local v4, "jamo":I
    const/4 v2, 0x0

    #@13
    .line 797
    .local v2, "fromBase":Z
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@15
    invoke-virtual {v6, v4}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@18
    move-result v1

    #@19
    .line 798
    .local v1, "ce32":I
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->isAssignedCE32(I)Z

    #@1c
    move-result v6

    #@1d
    or-int/2addr v0, v6

    #@1e
    .line 801
    .local v0, "anyJamoAssigned":Z
    if-ne v1, v9, :cond_0

    #@20
    .line 802
    const/4 v2, 0x1

    #@21
    .line 803
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@23
    invoke-virtual {v6, v4}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@26
    move-result v1

    #@27
    .line 805
    :cond_0
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_1

    #@2d
    .line 806
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@30
    move-result v6

    #@31
    packed-switch v6, :pswitch_data_0

    #@34
    .line 841
    :cond_1
    :goto_2
    :pswitch_0
    aput v1, p1, v3

    #@36
    .line 794
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_1

    #@39
    .line 792
    .end local v0    # "anyJamoAssigned":Z
    .end local v1    # "ce32":I
    .end local v2    # "fromBase":Z
    .end local v3    # "j":I
    .end local v4    # "jamo":I
    .end local v5    # "needToCopyFromBase":Z
    :cond_2
    const/4 v0, 0x0

    #@3a
    .local v0, "anyJamoAssigned":Z
    goto :goto_0

    #@3b
    .line 816
    .local v0, "anyJamoAssigned":Z
    .restart local v1    # "ce32":I
    .restart local v2    # "fromBase":Z
    .restart local v3    # "j":I
    .restart local v4    # "jamo":I
    .restart local v5    # "needToCopyFromBase":Z
    :pswitch_1
    if-eqz v2, :cond_1

    #@3d
    .line 818
    const/16 v1, 0xc0

    #@3f
    .line 819
    const/4 v5, 0x1

    #@40
    goto :goto_2

    #@41
    .line 824
    :pswitch_2
    sget-boolean v6, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@43
    if-nez v6, :cond_3

    #@45
    if-nez v2, :cond_3

    #@47
    new-instance v6, Ljava/lang/AssertionError;

    #@49
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@4c
    throw v6

    #@4d
    .line 825
    :cond_3
    const/16 v1, 0xc0

    #@4f
    .line 826
    const/4 v5, 0x1

    #@50
    .line 827
    goto :goto_2

    #@51
    .line 829
    :pswitch_3
    invoke-virtual {p0, v2, v4, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getCE32FromOffsetCE32(ZII)I

    #@54
    move-result v1

    #@55
    goto :goto_2

    #@56
    .line 838
    :pswitch_4
    new-instance v6, Ljava/lang/AssertionError;

    #@58
    const-string/jumbo v7, "unexpected special tag in ce32=0x%08x"

    #@5b
    new-array v8, v8, [Ljava/lang/Object;

    #@5d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v9

    #@61
    const/4 v10, 0x0

    #@62
    aput-object v9, v8, v10

    #@64
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@6b
    throw v6

    #@6c
    .line 843
    .end local v0    # "anyJamoAssigned":Z
    .end local v1    # "ce32":I
    .end local v2    # "fromBase":Z
    .end local v4    # "jamo":I
    :cond_4
    if-eqz v0, :cond_6

    #@6e
    if-eqz v5, :cond_6

    #@70
    .line 844
    const/4 v3, 0x0

    #@71
    :goto_3
    if-ge v3, v7, :cond_6

    #@73
    .line 845
    aget v6, p1, v3

    #@75
    if-ne v6, v9, :cond_5

    #@77
    .line 846
    invoke-static {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    #@7a
    move-result v4

    #@7b
    .line 847
    .restart local v4    # "jamo":I
    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@7d
    invoke-virtual {v6, v4}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@80
    move-result v6

    #@81
    invoke-virtual {p0, v4, v6, v8}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    #@84
    move-result v6

    #@85
    aput v6, p1, v3

    #@87
    .line 844
    .end local v4    # "jamo":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@89
    goto :goto_3

    #@8a
    .line 852
    :cond_6
    return v0

    #@8b
    .line 806
    nop

    #@8c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method hasMappings()Z
    .locals 1

    #@0
    .prologue
    .line 108
    iget-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    #@2
    return v0
.end method

.method initForTailoring(Landroid/icu/impl/coll/CollationData;)V
    .locals 6
    .param p1, "b"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    const/16 v4, 0xc0

    #@2
    .line 65
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 66
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v3, "attempt to reuse a CollationDataBuilder"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 68
    :cond_0
    if-nez p1, :cond_1

    #@11
    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "null CollationData"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 71
    :cond_1
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@1c
    .line 74
    new-instance v2, Landroid/icu/impl/Trie2Writable;

    #@1e
    const v3, -0x2fafb

    #@21
    invoke-direct {v2, v4, v3}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    #@24
    iput-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@26
    .line 81
    const/16 v0, 0xc0

    #@28
    .local v0, "c":I
    :goto_0
    const/16 v2, 0xff

    #@2a
    if-gt v0, v2, :cond_2

    #@2c
    .line 82
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@2e
    invoke-virtual {v2, v0, v4}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@31
    .line 81
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 89
    :cond_2
    const/16 v2, 0xc

    #@36
    const/4 v3, 0x0

    #@37
    invoke-static {v2, v3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    #@3a
    move-result v1

    #@3b
    .line 90
    .local v1, "hangulCE32":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@3d
    const v3, 0xac00

    #@40
    const v4, 0xd7a3

    #@43
    const/4 v5, 0x1

    #@44
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    #@47
    .line 94
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@49
    iget-object v3, p1, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@4b
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@4e
    .line 64
    return-void
.end method

.method isAssigned(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isAssignedCE32(I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method isCompressibleLeadByte(I)Z
    .locals 1
    .param p1, "b"    # I

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationData;->isCompressibleLeadByte(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isCompressiblePrimary(J)Z
    .locals 1
    .param p1, "p"    # J

    #@0
    .prologue
    .line 102
    long-to-int v0, p1

    #@1
    ushr-int/lit8 v0, v0, 0x18

    #@3
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->isCompressibleLeadByte(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected final isMutable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1329
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@b
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method optimize(Landroid/icu/text/UnicodeSet;)V
    .locals 6
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 269
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    return-void

    #@8
    .line 270
    :cond_0
    new-instance v2, Landroid/icu/text/UnicodeSetIterator;

    #@a
    invoke-direct {v2, p1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@d
    .line 271
    .local v2, "iter":Landroid/icu/text/UnicodeSetIterator;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    iget v3, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@15
    sget v4, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@17
    if-eq v3, v4, :cond_2

    #@19
    .line 272
    iget v0, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@1b
    .line 273
    .local v0, "c":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@1d
    invoke-virtual {v3, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@20
    move-result v1

    #@21
    .line 274
    .local v1, "ce32":I
    const/16 v3, 0xc0

    #@23
    if-ne v1, v3, :cond_1

    #@25
    .line 275
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@27
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@29
    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@30
    move-result v1

    #@31
    .line 276
    invoke-virtual {p0, v0, v1, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    #@34
    move-result v1

    #@35
    .line 277
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@37
    invoke-virtual {v3, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@3a
    goto :goto_0

    #@3b
    .line 280
    .end local v0    # "c":I
    .end local v1    # "ce32":I
    :cond_2
    iput-boolean v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    #@3d
    .line 268
    return-void
.end method

.method protected setDigitTags()V
    .locals 7

    #@0
    .prologue
    .line 856
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@2
    const-string/jumbo v5, "[:Nd:]"

    #@5
    invoke-direct {v2, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@8
    .line 857
    .local v2, "digits":Landroid/icu/text/UnicodeSet;
    new-instance v4, Landroid/icu/text/UnicodeSetIterator;

    #@a
    invoke-direct {v4, v2}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@d
    .line 858
    .local v4, "iter":Landroid/icu/text/UnicodeSetIterator;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_4

    #@13
    .line 859
    sget-boolean v5, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    #@15
    if-nez v5, :cond_2

    #@17
    iget v5, v4, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@19
    sget v6, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@1b
    if-eq v5, v6, :cond_1

    #@1d
    const/4 v5, 0x1

    #@1e
    :goto_1
    if-nez v5, :cond_2

    #@20
    new-instance v5, Ljava/lang/AssertionError;

    #@22
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@25
    throw v5

    #@26
    :cond_1
    const/4 v5, 0x0

    #@27
    goto :goto_1

    #@28
    .line 860
    :cond_2
    iget v0, v4, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@2a
    .line 861
    .local v0, "c":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@2c
    invoke-virtual {v5, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@2f
    move-result v1

    #@30
    .line 862
    .local v1, "ce32":I
    const/16 v5, 0xc0

    #@32
    if-eq v1, v5, :cond_0

    #@34
    const/4 v5, -0x1

    #@35
    if-eq v1, v5, :cond_0

    #@37
    .line 863
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(I)I

    #@3a
    move-result v3

    #@3b
    .line 864
    .local v3, "index":I
    const v5, 0x7ffff

    #@3e
    if-le v3, v5, :cond_3

    #@40
    .line 865
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    #@42
    const-string/jumbo v6, "too many mappings"

    #@45
    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@48
    throw v5

    #@49
    .line 870
    :cond_3
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->digit(I)I

    #@4c
    move-result v5

    #@4d
    const/16 v6, 0xa

    #@4f
    .line 869
    invoke-static {v6, v3, v5}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    #@52
    move-result v1

    #@53
    .line 871
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@55
    invoke-virtual {v5, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@58
    goto :goto_0

    #@59
    .line 855
    .end local v0    # "c":I
    .end local v1    # "ce32":I
    .end local v3    # "index":I
    :cond_4
    return-void
.end method

.method protected setLeadSurrogates()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 877
    const v0, 0xd800

    #@4
    :goto_0
    const v5, 0xdc00

    #@7
    if-ge v0, v5, :cond_5

    #@9
    .line 878
    const/4 v1, -0x1

    #@a
    .line 880
    .local v1, "leadValue":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@c
    invoke-virtual {v5, v0}, Landroid/icu/impl/Trie2Writable;->iteratorForLeadSurrogate(C)Ljava/util/Iterator;

    #@f
    move-result-object v3

    #@10
    .line 881
    .local v3, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_3

    #@16
    .line 882
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/icu/impl/Trie2$Range;

    #@1c
    .line 884
    .local v2, "range":Landroid/icu/impl/Trie2$Range;
    iget v4, v2, Landroid/icu/impl/Trie2$Range;->value:I

    #@1e
    .line 885
    .local v4, "value":I
    const/4 v5, -0x1

    #@1f
    if-ne v4, v5, :cond_1

    #@21
    .line 886
    const/4 v4, 0x0

    #@22
    .line 893
    :goto_2
    if-gez v1, :cond_4

    #@24
    .line 894
    move v1, v4

    #@25
    goto :goto_1

    #@26
    .line 887
    :cond_1
    const/16 v5, 0xc0

    #@28
    if-ne v4, v5, :cond_2

    #@2a
    .line 888
    const/16 v4, 0x100

    #@2c
    goto :goto_2

    #@2d
    .line 890
    :cond_2
    const/16 v1, 0x200

    #@2f
    .line 900
    .end local v2    # "range":Landroid/icu/impl/Trie2$Range;
    .end local v4    # "value":I
    :cond_3
    :goto_3
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@31
    .line 901
    const/16 v6, 0xd

    #@33
    invoke-static {v6, v7}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    #@36
    move-result v6

    #@37
    or-int/2addr v6, v1

    #@38
    .line 900
    invoke-virtual {v5, v0, v6}, Landroid/icu/impl/Trie2Writable;->setForLeadSurrogateCodeUnit(CI)Landroid/icu/impl/Trie2Writable;

    #@3b
    .line 877
    add-int/lit8 v5, v0, 0x1

    #@3d
    int-to-char v0, v5

    #@3e
    .local v0, "lead":C
    goto :goto_0

    #@3f
    .line 895
    .end local v0    # "lead":C
    .restart local v2    # "range":Landroid/icu/impl/Trie2$Range;
    .restart local v4    # "value":I
    :cond_4
    if-eq v1, v4, :cond_0

    #@41
    .line 896
    const/16 v1, 0x200

    #@43
    .line 897
    goto :goto_3

    #@44
    .line 876
    .end local v1    # "leadValue":I
    .end local v2    # "range":Landroid/icu/impl/Trie2$Range;
    .end local v3    # "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    .end local v4    # "value":I
    :cond_5
    return-void
.end method

.method suppressContractions(Landroid/icu/text/UnicodeSet;)V
    .locals 5
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    return-void

    #@7
    .line 285
    :cond_0
    new-instance v2, Landroid/icu/text/UnicodeSetIterator;

    #@9
    invoke-direct {v2, p1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@c
    .line 286
    .local v2, "iter":Landroid/icu/text/UnicodeSetIterator;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_3

    #@12
    iget v3, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@14
    sget v4, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@16
    if-eq v3, v4, :cond_3

    #@18
    .line 287
    iget v0, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@1a
    .line 288
    .local v0, "c":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@1c
    invoke-virtual {v3, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    #@1f
    move-result v1

    #@20
    .line 289
    .local v1, "ce32":I
    const/16 v3, 0xc0

    #@22
    if-ne v1, v3, :cond_2

    #@24
    .line 290
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@26
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    #@28
    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@2b
    move-result v4

    #@2c
    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@2f
    move-result v1

    #@30
    .line 291
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->ce32HasContext(I)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 292
    const/4 v3, 0x0

    #@37
    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    #@3a
    move-result v1

    #@3b
    .line 293
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@3d
    invoke-virtual {v3, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@40
    goto :goto_0

    #@41
    .line 295
    :cond_2
    invoke-static {v1}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_1

    #@47
    .line 296
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@4a
    move-result-object v3

    #@4b
    iget v1, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    #@4d
    .line 300
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@4f
    invoke-virtual {v3, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    #@52
    .line 301
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    #@54
    invoke-virtual {v3, v0}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    #@57
    goto :goto_0

    #@58
    .line 304
    .end local v0    # "c":I
    .end local v1    # "ce32":I
    :cond_3
    const/4 v3, 0x1

    #@59
    iput-boolean v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    #@5b
    .line 283
    return-void
.end method
