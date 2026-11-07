.class public final Landroid/icu/impl/coll/CollationBuilder;
.super Landroid/icu/impl/coll/CollationRuleParser$Sink;
.source "CollationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationBuilder$BundleImporter;,
        Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist COMPOSITES:Landroid/icu/text/UnicodeSet;

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist HAS_BEFORE2:I = 0x40

.field private static final blacklist HAS_BEFORE3:I = 0x20

.field private static final blacklist IS_TAILORED:I = 0x8

.field private static final blacklist MAX_INDEX:I = 0xfffff

.field private static blacklist kClosureLoopLimit:I


# instance fields
.field private blacklist base:Landroid/icu/impl/coll/CollationTailoring;

.field private blacklist baseData:Landroid/icu/impl/coll/CollationData;

.field private blacklist ces:[J

.field private blacklist cesLength:I

.field private blacklist dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

.field private blacklist fastLatinEnabled:Z

.field private blacklist fcd:Landroid/icu/text/Normalizer2;

.field private blacklist nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private blacklist nfd:Landroid/icu/text/Normalizer2;

.field private blacklist nodes:Landroid/icu/impl/coll/UVector64;

.field private blacklist optimizeSet:Landroid/icu/text/UnicodeSet;

.field private blacklist rootElements:Landroid/icu/impl/coll/CollationRootElements;

.field private blacklist rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

.field private blacklist variableTop:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smindexFromTempCE(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->indexFromTempCE(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smindexFromTempCE32(I)I
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/coll/CollationBuilder;->indexFromTempCE32(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisTempCE(J)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisTempCE32(I)Z
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE32(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 34
    nop

    .line 878
    const/16 v0, 0x19a0

    sput v0, Landroid/icu/impl/coll/CollationBuilder;->kClosureLoopLimit:I

    .line 1090
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:NFD_QC=N:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/coll/CollationBuilder;->COMPOSITES:Landroid/icu/text/UnicodeSet;

    .line 1093
    sget-object v0, Landroid/icu/impl/coll/CollationBuilder;->COMPOSITES:Landroid/icu/text/UnicodeSet;

    const v1, 0xac00

    const v2, 0xd7a3

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    .line 1094
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/coll/CollationTailoring;)V
    .registers 4
    .param p1, "b"    # Landroid/icu/impl/coll/CollationTailoring;

    .line 44
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser$Sink;-><init>()V

    .line 1523
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    .line 1525
    const/16 v0, 0x1f

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    .line 45
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    .line 46
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getFCDNormalizer2()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->fcd:Landroid/icu/text/Normalizer2;

    .line 47
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    .line 48
    iput-object p1, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    .line 49
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    .line 50
    new-instance v0, Landroid/icu/impl/coll/CollationRootElements;

    iget-object v1, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRootElements;-><init>([J)V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    .line 52
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationDataBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationBuilder;->fastLatinEnabled:Z

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    .line 55
    new-instance v0, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector32;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    .line 56
    new-instance v0, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    .line 57
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    .line 58
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->initForTailoring(Landroid/icu/impl/coll/CollationData;)V

    .line 59
    return-void
.end method

.method private blacklist addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .registers 9
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "newCEs"    # [J
    .param p4, "newCEsLength"    # I
    .param p5, "ce32"    # I

    .line 1116
    const/16 v0, 0x1f

    new-array v0, v0, [J

    .line 1117
    .local v0, "oldCEs":[J
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I

    move-result v1

    .line 1118
    .local v1, "oldCEsLength":I
    invoke-static {p3, p4, v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->sameCEs([JI[JI)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1119
    const/4 v2, -0x1

    if-ne p5, v2, :cond_1a

    .line 1120
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v2, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result p5

    .line 1122
    :cond_1a
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v2, p1, p2, p5}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1124
    :cond_1f
    return p5
.end method

.method private blacklist addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .registers 17
    .param p1, "nfdPrefix"    # Ljava/lang/CharSequence;
    .param p2, "nfdString"    # Ljava/lang/CharSequence;
    .param p3, "newCEs"    # [J
    .param p4, "newCEsLength"    # I
    .param p5, "ce32"    # I

    .line 884
    const/4 v1, 0x0

    .line 885
    .local v1, "loop":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v6, "Too many closure"

    if-nez v2, :cond_42

    .line 886
    new-instance v2, Landroid/icu/text/CanonicalIterator;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    .line 887
    .local v7, "stringIter":Landroid/icu/text/CanonicalIterator;
    move v2, v1

    .end local v1    # "loop":I
    .local v2, "loop":I
    const-string v1, ""

    move/from16 v5, p5

    .line 889
    .end local p5    # "ce32":I
    .local v1, "prefix":Ljava/lang/String;
    .local v5, "ce32":I
    :cond_18
    :goto_18
    invoke-virtual {v7}, Landroid/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, "str":Ljava/lang/String;
    if-nez v3, :cond_1f

    .line 897
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/String;
    .end local v7    # "stringIter":Landroid/icu/text/CanonicalIterator;
    goto :goto_61

    .line 891
    .restart local v1    # "prefix":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v7    # "stringIter":Landroid/icu/text/CanonicalIterator;
    :cond_1f
    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v3, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_18

    .line 892
    :cond_2c
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "loop":I
    .local v8, "loop":I
    sget v4, Landroid/icu/impl/coll/CollationBuilder;->kClosureLoopLimit:I

    if-gt v2, v4, :cond_3c

    .line 895
    move-object v0, p0

    move v4, p4

    move-object v2, v3

    move-object v3, p3

    .end local v3    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v5

    .line 896
    .end local v2    # "str":Ljava/lang/String;
    move v2, v8

    goto :goto_18

    .line 893
    .restart local v3    # "str":Ljava/lang/String;
    :cond_3c
    new-instance v2, Landroid/icu/util/ICUInputTooLongException;

    invoke-direct {v2, v6}, Landroid/icu/util/ICUInputTooLongException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 898
    .end local v3    # "str":Ljava/lang/String;
    .end local v5    # "ce32":I
    .end local v7    # "stringIter":Landroid/icu/text/CanonicalIterator;
    .end local v8    # "loop":I
    .local v1, "loop":I
    .restart local p5    # "ce32":I
    :cond_42
    move v2, v1

    .end local v1    # "loop":I
    .local v2, "loop":I
    new-instance v1, Landroid/icu/text/CanonicalIterator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    .line 899
    .local v7, "prefixIter":Landroid/icu/text/CanonicalIterator;
    new-instance v1, Landroid/icu/text/CanonicalIterator;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    move/from16 v1, p5

    .line 901
    .end local p5    # "ce32":I
    .local v1, "ce32":I
    .local v8, "stringIter":Landroid/icu/text/CanonicalIterator;
    :goto_59
    move v3, v1

    .end local v1    # "ce32":I
    .local v3, "ce32":I
    invoke-virtual {v7}, Landroid/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "prefix":Ljava/lang/String;
    if-nez v1, :cond_62

    move v5, v3

    .line 917
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v3    # "ce32":I
    .end local v7    # "prefixIter":Landroid/icu/text/CanonicalIterator;
    .end local v8    # "stringIter":Landroid/icu/text/CanonicalIterator;
    .restart local v5    # "ce32":I
    :goto_61
    return v5

    .line 903
    .end local v5    # "ce32":I
    .restart local v1    # "prefix":Ljava/lang/String;
    .restart local v3    # "ce32":I
    .restart local v7    # "prefixIter":Landroid/icu/text/CanonicalIterator;
    .restart local v8    # "stringIter":Landroid/icu/text/CanonicalIterator;
    :cond_62
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationBuilder;->ignorePrefix(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a

    move v1, v3

    goto :goto_59

    .line 904
    :cond_6a
    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    move v5, v3

    .line 906
    .end local v3    # "ce32":I
    .restart local v5    # "ce32":I
    .local v9, "samePrefix":Z
    :goto_6f
    invoke-virtual {v8}, Landroid/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v3

    .line 907
    .local v3, "str":Ljava/lang/String;
    if-nez v3, :cond_7a

    .line 914
    .end local v3    # "str":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/icu/text/CanonicalIterator;->reset()V

    .line 915
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v9    # "samePrefix":Z
    move v1, v5

    goto :goto_59

    .line 908
    .restart local v1    # "prefix":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v9    # "samePrefix":Z
    :cond_7a
    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9f

    if-eqz v9, :cond_89

    invoke-virtual {v3, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_89

    goto :goto_6f

    .line 909
    :cond_89
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "loop":I
    .local v10, "loop":I
    sget v4, Landroid/icu/impl/coll/CollationBuilder;->kClosureLoopLimit:I

    if-gt v2, v4, :cond_99

    .line 912
    move-object v0, p0

    move v4, p4

    move-object v2, v3

    move-object v3, p3

    .end local v3    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v5

    .line 913
    .end local v2    # "str":Ljava/lang/String;
    move v2, v10

    goto :goto_6f

    .line 910
    .restart local v3    # "str":Ljava/lang/String;
    :cond_99
    new-instance v2, Landroid/icu/util/ICUInputTooLongException;

    invoke-direct {v2, v6}, Landroid/icu/util/ICUInputTooLongException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 908
    .end local v10    # "loop":I
    .local v2, "loop":I
    :cond_9f
    move-object v0, v3

    .end local v3    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    goto :goto_6f
.end method

.method private blacklist addTailComposites(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 19
    .param p1, "nfdPrefix"    # Ljava/lang/CharSequence;
    .param p2, "nfdString"    # Ljava/lang/CharSequence;

    .line 923
    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v1

    .line 925
    .local v2, "indexAfterLastStarter":I
    :goto_7
    if-nez v2, :cond_a

    return-void

    .line 926
    :cond_a
    move-object/from16 v1, p2

    invoke-static {v1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 927
    .local v7, "lastStarter":I
    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, v7}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v3

    if-nez v3, :cond_95

    .line 931
    invoke-static {v7}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    return-void

    .line 936
    :cond_1f
    new-instance v3, Landroid/icu/text/UnicodeSet;

    invoke-direct {v3}, Landroid/icu/text/UnicodeSet;-><init>()V

    move-object v8, v3

    .line 937
    .local v8, "composites":Landroid/icu/text/UnicodeSet;
    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v3, v7, v8}, Landroid/icu/impl/Normalizer2Impl;->getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z

    move-result v3

    if-nez v3, :cond_2e

    return-void

    .line 939
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "newNFDString":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    .local v6, "newString":Ljava/lang/StringBuilder;
    const/16 v9, 0x1f

    new-array v10, v9, [J

    .line 941
    .local v10, "newCEs":[J
    new-instance v3, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v3, v8}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    move-object v11, v3

    .line 942
    .local v11, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_42
    invoke-virtual {v11}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 943
    nop

    .line 944
    iget v3, v11, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 945
    .local v3, "composite":I
    iget-object v4, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v4, v3}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v4

    .line 946
    .local v4, "decomp":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/coll/CollationBuilder;->mergeCompositeIntoString(Ljava/lang/CharSequence;IILjava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v12

    move-object v13, v6

    move v6, v2

    move-object v2, v13

    move v14, v3

    move-object v15, v4

    move-object v13, v5

    .end local v3    # "composite":I
    .end local v4    # "decomp":Ljava/lang/String;
    .end local v5    # "newNFDString":Ljava/lang/StringBuilder;
    .local v2, "newString":Ljava/lang/StringBuilder;
    .local v6, "indexAfterLastStarter":I
    .local v13, "newNFDString":Ljava/lang/StringBuilder;
    .local v14, "composite":I
    .local v15, "decomp":Ljava/lang/String;
    if-nez v12, :cond_64

    .line 948
    move v1, v6

    move-object v6, v2

    move v2, v1

    move-object/from16 v1, p2

    move-object v5, v13

    goto :goto_42

    .line 950
    :cond_64
    iget-object v1, v0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v13, v10, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I

    move-result v1

    .line 951
    .local v1, "newCEsLength":I
    if-le v1, v9, :cond_76

    .line 953
    move v1, v6

    move-object v6, v2

    move v2, v1

    move-object/from16 v1, p2

    move-object v5, v13

    goto :goto_42

    .line 970
    :cond_76
    const/4 v5, -0x1

    move-object v3, v4

    move v4, v1

    move-object v1, v3

    move-object v3, v10

    .end local v1    # "newCEsLength":I
    .end local v10    # "newCEs":[J
    .local v3, "newCEs":[J
    .local v4, "newCEsLength":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v5

    .line 972
    move-object v10, v2

    .end local v2    # "newString":Ljava/lang/StringBuilder;
    .local v5, "ce32":I
    .local v10, "newString":Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    if-eq v5, v0, :cond_8b

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    .end local v13    # "newNFDString":Ljava/lang/StringBuilder;
    .local v2, "newNFDString":Ljava/lang/StringBuilder;
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    .line 976
    .end local v2    # "newNFDString":Ljava/lang/StringBuilder;
    .end local v4    # "newCEsLength":I
    .end local v5    # "ce32":I
    .end local v14    # "composite":I
    .end local v15    # "decomp":Ljava/lang/String;
    .restart local v13    # "newNFDString":Ljava/lang/StringBuilder;
    :cond_8b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v6

    move-object v6, v10

    move-object v5, v13

    move-object v10, v3

    goto :goto_42

    .line 977
    .end local v3    # "newCEs":[J
    .end local v13    # "newNFDString":Ljava/lang/StringBuilder;
    .local v2, "indexAfterLastStarter":I
    .local v5, "newNFDString":Ljava/lang/StringBuilder;
    .local v6, "newString":Ljava/lang/StringBuilder;
    .local v10, "newCEs":[J
    :cond_94
    return-void

    .line 928
    .end local v5    # "newNFDString":Ljava/lang/StringBuilder;
    .end local v6    # "newString":Ljava/lang/StringBuilder;
    .end local v8    # "composites":Landroid/icu/text/UnicodeSet;
    .end local v10    # "newCEs":[J
    .end local v11    # "iter":Landroid/icu/text/UnicodeSetIterator;
    :cond_95
    move v6, v2

    .end local v2    # "indexAfterLastStarter":I
    .local v6, "indexAfterLastStarter":I
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    sub-int v2, v6, v0

    move-object/from16 v0, p0

    .end local v6    # "indexAfterLastStarter":I
    .restart local v2    # "indexAfterLastStarter":I
    goto/16 :goto_7
.end method

.method private blacklist addWithClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .registers 12
    .param p1, "nfdPrefix"    # Ljava/lang/CharSequence;
    .param p2, "nfdString"    # Ljava/lang/CharSequence;
    .param p3, "newCEs"    # [J
    .param p4, "newCEsLength"    # I
    .param p5, "ce32"    # I

    .line 864
    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v5

    .line 865
    .end local p5    # "ce32":I
    .local v5, "ce32":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "nfdPrefix":Ljava/lang/CharSequence;
    .end local p2    # "nfdString":Ljava/lang/CharSequence;
    .end local p3    # "newCEs":[J
    .end local p4    # "newCEsLength":I
    .local v1, "nfdPrefix":Ljava/lang/CharSequence;
    .local v2, "nfdString":Ljava/lang/CharSequence;
    .local v3, "newCEs":[J
    .local v4, "newCEsLength":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result p1

    .line 866
    .end local v2    # "nfdString":Ljava/lang/CharSequence;
    .end local v3    # "newCEs":[J
    .end local v4    # "newCEsLength":I
    .end local v5    # "ce32":I
    .local p1, "ce32":I
    .restart local p2    # "nfdString":Ljava/lang/CharSequence;
    .restart local p3    # "newCEs":[J
    .restart local p4    # "newCEsLength":I
    invoke-direct {p0, v1, p2}, Landroid/icu/impl/coll/CollationBuilder;->addTailComposites(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 867
    return p1
.end method

.method private static final blacklist alignWeightRight(I)I
    .registers 2
    .param p0, "w"    # I

    .line 1140
    if-eqz p0, :cond_9

    .line 1141
    :goto_2
    and-int/lit16 v0, p0, 0xff

    if-nez v0, :cond_9

    ushr-int/lit8 p0, p0, 0x8

    goto :goto_2

    .line 1143
    :cond_9
    return p0
.end method

.method private static final blacklist binarySearchForRootPrimaryNode([II[JJ)I
    .registers 13
    .param p0, "rootPrimaryIndexes"    # [I
    .param p1, "length"    # I
    .param p2, "nodes"    # [J
    .param p3, "p"    # J

    .line 592
    if-nez p1, :cond_4

    const/4 v0, -0x1

    return v0

    .line 593
    :cond_4
    const/4 v0, 0x0

    .line 594
    .local v0, "start":I
    move v1, p1

    .line 596
    .local v1, "limit":I
    :goto_6
    int-to-long v2, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 597
    .local v2, "i":I
    aget v3, p0, v2

    aget-wide v3, p2, v3

    .line 598
    .local v3, "node":J
    const/16 v5, 0x20

    ushr-long v5, v3, v5

    .line 599
    .local v5, "nodePrimary":J
    cmp-long v7, p3, v5

    if-nez v7, :cond_1a

    .line 600
    return v2

    .line 601
    :cond_1a
    cmp-long v7, p3, v5

    if-gez v7, :cond_24

    .line 602
    if-ne v2, v0, :cond_22

    .line 603
    not-int v7, v0

    return v7

    .line 605
    :cond_22
    move v1, v2

    goto :goto_2b

    .line 607
    :cond_24
    if-ne v2, v0, :cond_2a

    .line 608
    add-int/lit8 v7, v0, 0x1

    not-int v7, v7

    return v7

    .line 610
    :cond_2a
    move v0, v2

    .line 612
    .end local v2    # "i":I
    .end local v3    # "node":J
    .end local v5    # "nodePrimary":J
    :goto_2b
    goto :goto_6
.end method

.method private static blacklist ceStrength(J)I
    .registers 6
    .param p0, "ce"    # J

    .line 1436
    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromTempCE(J)I

    move-result v0

    goto :goto_26

    .line 1437
    :cond_b
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_26

    .line 1438
    :cond_16
    long-to-int v0, p0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_26

    .line 1439
    :cond_1e
    cmp-long v0, p0, v2

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    goto :goto_26

    .line 1440
    :cond_24
    const/16 v0, 0xf

    .line 1435
    :goto_26
    return v0
.end method

.method private static blacklist changeNodeNextIndex(JI)J
    .registers 7
    .param p0, "node"    # J
    .param p2, "next"    # I

    .line 1510
    const-wide/32 v0, -0xfffff01

    and-long/2addr v0, p0

    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromNextIndex(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist changeNodePreviousIndex(JI)J
    .registers 7
    .param p0, "node"    # J
    .param p2, "previous"    # I

    .line 1507
    const-wide v0, -0xfffff0000001L

    and-long/2addr v0, p0

    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromPreviousIndex(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist closeOverComposites()V
    .registers 9

    .line 1097
    const-string v1, ""

    .line 1098
    .local v1, "prefix":Ljava/lang/String;
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    sget-object v2, Landroid/icu/impl/coll/CollationBuilder;->COMPOSITES:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v2}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    move-object v6, v0

    .line 1099
    .local v6, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_a
    invoke-virtual {v6}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1100
    nop

    .line 1101
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    iget v2, v6, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v0, v2}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v7

    .line 1102
    .local v7, "nfdString":Ljava/lang/String;
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    const/4 v3, 0x0

    invoke-virtual {v0, v7, v2, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    .line 1103
    iget v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    const/16 v2, 0x1f

    if-le v0, v2, :cond_2b

    .line 1107
    goto :goto_a

    .line 1109
    :cond_2b
    invoke-virtual {v6}, Landroid/icu/text/UnicodeSetIterator;->getString()Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "composite":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    iget v4, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    .line 1111
    .end local v2    # "composite":Ljava/lang/String;
    .end local v7    # "nfdString":Ljava/lang/String;
    goto :goto_a

    .line 1112
    :cond_39
    return-void
.end method

.method private static blacklist countTailoredNodes([JII)I
    .registers 7
    .param p0, "nodesArray"    # [J
    .param p1, "i"    # I
    .param p2, "strength"    # I

    .line 1327
    const/4 v0, 0x0

    .line 1329
    .local v0, "count":I
    :goto_1
    if-nez p1, :cond_4

    goto :goto_1c

    .line 1330
    :cond_4
    aget-wide v1, p0, p1

    .line 1331
    .local v1, "node":J
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v3

    if-ge v3, p2, :cond_d

    goto :goto_1c

    .line 1332
    :cond_d
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v3

    if-ne v3, p2, :cond_1d

    .line 1333
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1341
    .end local v1    # "node":J
    :cond_1c
    :goto_1c
    return v0

    .line 1339
    .restart local v1    # "node":J
    :cond_1d
    :goto_1d
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    .line 1340
    .end local v1    # "node":J
    goto :goto_1
.end method

.method private blacklist equalSubSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Z
    .registers 9
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "leftStart"    # I
    .param p3, "right"    # Ljava/lang/CharSequence;
    .param p4, "rightStart"    # I

    .line 1068
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1069
    .local v0, "leftLength":I
    sub-int v1, v0, p2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_f

    return v3

    .line 1070
    :cond_f
    :goto_f
    if-ge p2, v0, :cond_23

    .line 1071
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "leftStart":I
    .local v1, "leftStart":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 v2, p4, 0x1

    .end local p4    # "rightStart":I
    .local v2, "rightStart":I
    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-eq p2, p4, :cond_20

    .line 1072
    return v3

    .line 1071
    :cond_20
    move p2, v1

    move p4, v2

    goto :goto_f

    .line 1075
    .end local v1    # "leftStart":I
    .end local v2    # "rightStart":I
    .restart local p2    # "leftStart":I
    .restart local p4    # "rightStart":I
    :cond_23
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist finalizeCEs()V
    .registers 4

    .line 1373
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationDataBuilder;-><init>()V

    .line 1374
    .local v0, "newBuilder":Landroid/icu/impl/coll/CollationDataBuilder;
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->initForTailoring(Landroid/icu/impl/coll/CollationData;)V

    .line 1375
    new-instance v1, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;-><init>([J)V

    .line 1376
    .local v1, "finalizer":Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFrom(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V

    .line 1377
    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    .line 1378
    return-void
.end method

.method private blacklist findCommonNode(II)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "strength"    # I

    .line 756
    nop

    .line 757
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 758
    .local v0, "node":J
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-lt v2, p2, :cond_e

    .line 760
    return p1

    .line 762
    :cond_e
    const/4 v2, 0x1

    if-ne p2, v2, :cond_18

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore2(J)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_1e

    :cond_18
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 764
    :goto_1e
    return p1

    .line 766
    :cond_1f
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    .line 767
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 768
    nop

    .line 772
    :cond_2a
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    .line 773
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 774
    nop

    .line 775
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-gt v2, p2, :cond_2a

    .line 776
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v2

    const/16 v3, 0x500

    if-lt v2, v3, :cond_2a

    .line 777
    nop

    .line 778
    return p1
.end method

.method private blacklist findOrInsertNodeForCEs(I)I
    .registers 7
    .param p1, "strength"    # I

    .line 534
    nop

    .line 540
    :goto_1
    iget v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 541
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v2

    .line 542
    .local v3, "ce":J
    iput v1, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    .line 543
    goto :goto_1d

    .line 545
    .end local v3    # "ce":J
    :cond_10
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    iget v2, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    sub-int/2addr v2, v1

    aget-wide v3, v0, v2

    .line 547
    .restart local v3    # "ce":J
    invoke-static {v3, v4}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v0

    if-gt v0, p1, :cond_3e

    .line 550
    :goto_1d
    invoke-static {v3, v4}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 553
    invoke-static {v3, v4}, Landroid/icu/impl/coll/CollationBuilder;->indexFromTempCE(J)I

    move-result v0

    return v0

    .line 557
    :cond_28
    const/16 v0, 0x38

    ushr-long v0, v3, v0

    long-to-int v0, v0

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_36

    .line 561
    invoke-direct {p0, v3, v4, p1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v0

    return v0

    .line 558
    :cond_36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "tailoring relative to an unassigned code point not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_3e
    iget v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    goto :goto_1
.end method

.method private blacklist findOrInsertNodeForPrimary(J)I
    .registers 8
    .param p1, "p"    # J

    .line 617
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    .line 618
    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v2

    .line 617
    invoke-static {v0, v1, v2, p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->binarySearchForRootPrimaryNode([II[JJ)I

    move-result v0

    .line 619
    .local v0, "rootIndex":I
    if-ltz v0, :cond_1f

    .line 620
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v1

    return v1

    .line 623
    :cond_1f
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v1

    .line 624
    .local v1, "index":I
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight32(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 625
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    not-int v3, v0

    invoke-virtual {v2, v1, v3}, Landroid/icu/impl/coll/UVector32;->insertElementAt(II)V

    .line 626
    return v1
.end method

.method private blacklist findOrInsertNodeForRootCE(JI)I
    .registers 8
    .param p1, "ce"    # J
    .param p3, "strength"    # I

    .line 565
    nop

    .line 570
    nop

    .line 571
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForPrimary(J)I

    move-result v0

    .line 572
    .local v0, "index":I
    const/4 v1, 0x1

    if-lt p3, v1, :cond_1d

    .line 573
    long-to-int v2, p1

    .line 574
    .local v2, "lower32":I
    ushr-int/lit8 v3, v2, 0x10

    invoke-direct {p0, v0, v3, v1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    move-result v0

    .line 575
    const/4 v1, 0x2

    if-lt p3, v1, :cond_1d

    .line 576
    and-int/lit16 v3, v2, 0x3f3f

    invoke-direct {p0, v0, v3, v1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    move-result v0

    .line 580
    .end local v2    # "lower32":I
    :cond_1d
    return v0
.end method

.method private blacklist findOrInsertWeakNode(III)I
    .registers 15
    .param p1, "index"    # I
    .param p2, "weight16"    # I
    .param p3, "level"    # I

    .line 632
    nop

    .line 633
    nop

    .line 635
    const/16 v0, 0x500

    if-ne p2, v0, :cond_b

    .line 636
    invoke-direct {p0, p1, p3}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result v0

    return v0

    .line 641
    :cond_b
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    .line 642
    .local v1, "node":J
    nop

    .line 643
    if-eqz p2, :cond_56

    if-ge p2, v0, :cond_56

    .line 644
    const/4 v3, 0x1

    if-ne p3, v3, :cond_1c

    const/16 v4, 0x40

    goto :goto_1e

    :cond_1c
    const/16 v4, 0x20

    .line 645
    .local v4, "hasThisLevelBefore":I
    :goto_1e
    int-to-long v5, v4

    and-long/2addr v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_56

    .line 647
    nop

    .line 648
    invoke-static {v0}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v5

    invoke-static {p3}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v7

    or-long/2addr v5, v7

    .line 649
    .local v5, "commonNode":J
    if-ne p3, v3, :cond_39

    .line 652
    const-wide/16 v7, 0x20

    and-long/2addr v7, v1

    or-long/2addr v5, v7

    .line 653
    const-wide/16 v7, -0x21

    and-long/2addr v1, v7

    .line 655
    :cond_39
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    int-to-long v7, v4

    or-long/2addr v7, v1

    invoke-virtual {v0, v7, v8, p1}, Landroid/icu/impl/coll/UVector64;->setElementAt(JI)V

    .line 657
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    .line 658
    .local v0, "nextIndex":I
    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v7

    invoke-static {p3}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v9

    or-long v1, v7, v9

    .line 659
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result p1

    .line 661
    invoke-direct {p0, p1, v0, v5, v6}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    .line 663
    return p1

    .line 672
    .end local v0    # "nextIndex":I
    .end local v4    # "hasThisLevelBefore":I
    .end local v5    # "commonNode":J
    :cond_56
    :goto_56
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    move v3, v0

    .local v3, "nextIndex":I
    if-eqz v0, :cond_7e

    .line 673
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    .line 674
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v0

    .line 675
    .local v0, "nextStrength":I
    if-gt v0, p3, :cond_7c

    .line 677
    if-ge v0, p3, :cond_6c

    goto :goto_7e

    .line 679
    :cond_6c
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 680
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v4

    .line 681
    .local v4, "nextWeight16":I
    if-ne v4, p2, :cond_79

    .line 683
    return v3

    .line 686
    :cond_79
    if-le v4, p2, :cond_7c

    goto :goto_7e

    .line 690
    .end local v4    # "nextWeight16":I
    :cond_7c
    move p1, v3

    .line 691
    .end local v0    # "nextStrength":I
    goto :goto_56

    .line 692
    :cond_7e
    :goto_7e
    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v4

    invoke-static {p3}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v6

    or-long v0, v4, v6

    .line 693
    .end local v1    # "node":J
    .local v0, "node":J
    invoke-direct {p0, p1, v3, v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result v2

    return v2
.end method

.method private blacklist getSpecialResetPosition(Ljava/lang/CharSequence;)J
    .registers 15
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 285
    nop

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "strength":I
    const/4 v1, 0x0

    .line 289
    .local v1, "isBoundary":Z
    sget-object v2, Landroid/icu/impl/coll/CollationRuleParser;->POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 290
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit16 v4, v4, -0x2800

    aget-object v2, v2, v4

    .line 291
    .local v2, "pos":Landroid/icu/impl/coll/CollationRuleParser$Position;
    sget-object v4, Landroid/icu/impl/coll/CollationBuilder$1;->$SwitchMap$android$icu$impl$coll$CollationRuleParser$Position:[I

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    packed-switch v4, :pswitch_data_1c8

    .line 376
    goto/16 :goto_1c7

    .line 374
    :pswitch_1f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "LDML forbids tailoring to U+FFFF"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    :pswitch_27
    const-wide v4, 0xff020200L

    invoke-static {v4, v5}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v4

    .line 371
    .local v4, "ce":J
    const/4 v1, 0x1

    .line 372
    move-wide v9, v4

    move v4, v0

    move v5, v1

    goto/16 :goto_e7

    .line 367
    .end local v4    # "ce":J
    :pswitch_36
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "reset to [last implicit] not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    :pswitch_3e
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    const/16 v5, 0x4e00

    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/CollationData;->getSingleCE(I)J

    move-result-wide v4

    .line 364
    .restart local v4    # "ce":J
    move-wide v9, v4

    move v4, v0

    move v5, v1

    goto/16 :goto_e7

    .line 359
    .end local v4    # "ce":J
    :pswitch_4b
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    iget-object v5, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    .line 360
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v5

    .line 359
    invoke-virtual {v4, v5, v6}, Landroid/icu/impl/coll/CollationRootElements;->firstCEWithPrimaryAtLeast(J)J

    move-result-wide v4

    .line 361
    .restart local v4    # "ce":J
    move-wide v9, v4

    move v4, v0

    move v5, v1

    goto/16 :goto_e7

    .line 352
    .end local v4    # "ce":J
    :pswitch_5e
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    iget-wide v7, p0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    add-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Landroid/icu/impl/coll/CollationRootElements;->firstCEWithPrimaryAtLeast(J)J

    move-result-wide v4

    .line 353
    .restart local v4    # "ce":J
    const/4 v1, 0x1

    .line 354
    move-wide v9, v4

    move v4, v0

    move v5, v1

    goto/16 :goto_e7

    .line 349
    .end local v4    # "ce":J
    :pswitch_6d
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    iget-wide v7, p0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    add-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Landroid/icu/impl/coll/CollationRootElements;->lastCEWithPrimaryBefore(J)J

    move-result-wide v4

    .line 350
    .restart local v4    # "ce":J
    move-wide v9, v4

    move v4, v0

    move v5, v1

    goto/16 :goto_e7

    .line 345
    .end local v4    # "ce":J
    :pswitch_7b
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationRootElements;->getFirstPrimaryCE()J

    move-result-wide v4

    .line 346
    .restart local v4    # "ce":J
    const/4 v1, 0x1

    .line 347
    move-wide v9, v4

    move v4, v0

    move v5, v1

    goto/16 :goto_e7

    .line 341
    .end local v4    # "ce":J
    :pswitch_87
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationRootElements;->getLastSecondaryCE()J

    move-result-wide v4

    .line 342
    .restart local v4    # "ce":J
    const/4 v0, 0x1

    .line 343
    move-wide v9, v4

    move v4, v0

    move v5, v1

    goto :goto_e7

    .line 318
    .end local v4    # "ce":J
    :pswitch_92
    invoke-direct {p0, v7, v8, v3}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v4

    .line 319
    .local v4, "index":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v5, v4}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v5

    .line 320
    .local v5, "node":J
    :cond_9c
    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v7

    move v4, v7

    if-eqz v7, :cond_d2

    .line 321
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v7, v4}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v5

    .line 322
    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v0

    .line 323
    if-ge v0, v3, :cond_b0

    goto :goto_d2

    .line 324
    :cond_b0
    if-ne v0, v3, :cond_9c

    .line 325
    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v7

    if-eqz v7, :cond_d2

    .line 326
    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 327
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v4

    .line 328
    nop

    .line 330
    :cond_cd
    invoke-static {v4, v3}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v7

    return-wide v7

    .line 336
    :cond_d2
    :goto_d2
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecondaryCE()J

    move-result-wide v7

    .line 337
    .local v7, "ce":J
    const/4 v0, 0x1

    .line 338
    move v4, v0

    move v5, v1

    move-wide v9, v7

    goto :goto_e7

    .line 313
    .end local v4    # "index":I
    .end local v5    # "node":J
    .end local v7    # "ce":J
    :pswitch_dd
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationRootElements;->getLastTertiaryCE()J

    move-result-wide v4

    .line 314
    .local v4, "ce":J
    const/4 v0, 0x2

    .line 315
    move-wide v9, v4

    move v4, v0

    move v5, v1

    .line 380
    .end local v0    # "strength":I
    .end local v1    # "isBoundary":Z
    .local v4, "strength":I
    .local v5, "isBoundary":Z
    .local v9, "ce":J
    :goto_e7
    invoke-direct {p0, v9, v10, v4}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v0

    .line 381
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    .line 382
    .local v6, "node":J
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    move-result v1

    and-int/2addr v1, v3

    if-nez v1, :cond_173

    .line 384
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasAnyBefore(J)Z

    move-result v1

    if-nez v1, :cond_139

    if-eqz v5, :cond_139

    .line 389
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v1

    move v0, v1

    if-eqz v1, :cond_113

    .line 393
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    .line 394
    nop

    .line 395
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v9

    goto :goto_139

    .line 397
    :cond_113
    nop

    .line 398
    const/16 v1, 0x20

    ushr-long v11, v9, v1

    .line 399
    .local v11, "p":J
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v1, v11, v12}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v1

    .line 400
    .local v1, "pIndex":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v11, v12}, Landroid/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    move-result v3

    .line 401
    .local v3, "isCompressible":Z
    iget-object v8, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v8, v11, v12, v1, v3}, Landroid/icu/impl/coll/CollationRootElements;->getPrimaryAfter(JIZ)J

    move-result-wide v11

    .line 402
    invoke-static {v11, v12}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v9

    .line 403
    const/4 v8, 0x0

    invoke-direct {p0, v9, v10, v8}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v0

    .line 404
    iget-object v8, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    .line 407
    .end local v1    # "pIndex":I
    .end local v3    # "isCompressible":Z
    .end local v11    # "p":J
    :cond_139
    :goto_139
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasAnyBefore(J)Z

    move-result v1

    if-eqz v1, :cond_190

    .line 409
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore2(J)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 410
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    .line 411
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    .line 413
    :cond_159
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 414
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    .line 416
    :cond_16d
    nop

    .line 417
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v9

    goto :goto_190

    .line 424
    :cond_173
    :goto_173
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v1

    .line 425
    .local v1, "nextIndex":I
    if-nez v1, :cond_17a

    goto :goto_186

    .line 426
    :cond_17a
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v11

    .line 427
    .local v11, "nextNode":J
    invoke-static {v11, v12}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v3

    if-ge v3, v4, :cond_191

    .line 434
    .end local v1    # "nextIndex":I
    .end local v11    # "nextNode":J
    :goto_186
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v1

    if-eqz v1, :cond_190

    .line 435
    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v9

    .line 438
    :cond_190
    :goto_190
    return-wide v9

    .line 428
    .restart local v1    # "nextIndex":I
    .restart local v11    # "nextNode":J
    :cond_191
    move v0, v1

    .line 429
    move-wide v6, v11

    .line 430
    .end local v1    # "nextIndex":I
    .end local v11    # "nextNode":J
    goto :goto_173

    .line 300
    .end local v4    # "strength":I
    .end local v5    # "isBoundary":Z
    .end local v6    # "node":J
    .end local v9    # "ce":J
    .local v0, "strength":I
    .local v1, "isBoundary":Z
    :pswitch_194
    const/4 v3, 0x2

    invoke-direct {p0, v7, v8, v3}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v4

    .line 301
    .local v4, "index":I
    iget-object v5, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v5, v4}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v5

    .line 302
    .local v5, "node":J
    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v7

    move v4, v7

    if-eqz v7, :cond_1be

    .line 303
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v7, v4}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v5

    .line 304
    nop

    .line 305
    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v7

    if-eqz v7, :cond_1be

    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v7

    if-ne v7, v3, :cond_1be

    .line 306
    invoke-static {v4, v3}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v7

    return-wide v7

    .line 309
    :cond_1be
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationRootElements;->getFirstTertiaryCE()J

    move-result-wide v7

    return-wide v7

    .line 297
    .end local v4    # "index":I
    .end local v5    # "node":J
    :pswitch_1c5
    return-wide v7

    .line 295
    :pswitch_1c6
    return-wide v7

    .line 377
    :goto_1c7
    return-wide v7

    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_1c6
        :pswitch_1c5
        :pswitch_194
        :pswitch_dd
        :pswitch_92
        :pswitch_87
        :pswitch_7b
        :pswitch_6d
        :pswitch_5e
        :pswitch_4b
        :pswitch_3e
        :pswitch_36
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist getWeight16Before(IJI)I
    .registers 10
    .param p1, "index"    # I
    .param p2, "node"    # J
    .param p4, "level"    # I

    .line 243
    nop

    .line 247
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 248
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v0

    .local v0, "t":I
    goto :goto_f

    .line 250
    .end local v0    # "t":I
    :cond_d
    const/16 v0, 0x500

    .line 252
    .restart local v0    # "t":I
    :goto_f
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_21

    .line 253
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result p1

    .line 254
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p2

    goto :goto_f

    .line 256
    :cond_21
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v1

    const/16 v3, 0x100

    if-eqz v1, :cond_2a

    .line 257
    return v3

    .line 260
    :cond_2a
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v1

    if-ne v1, v2, :cond_35

    .line 261
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v1

    .local v1, "s":I
    goto :goto_37

    .line 263
    .end local v1    # "s":I
    :cond_35
    const/16 v1, 0x500

    .line 265
    .restart local v1    # "s":I
    :goto_37
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v4

    if-lez v4, :cond_48

    .line 266
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result p1

    .line 267
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v4, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p2

    goto :goto_37

    .line 269
    :cond_48
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 270
    return v3

    .line 273
    :cond_4f
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    move-result-wide v3

    .line 275
    .local v3, "p":J
    if-ne p4, v2, :cond_5c

    .line 276
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v2, v3, v4, v1}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBefore(JI)I

    move-result v2

    .local v2, "weight16":I
    goto :goto_63

    .line 278
    .end local v2    # "weight16":I
    :cond_5c
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBefore(JII)I

    move-result v2

    .line 279
    .restart local v2    # "weight16":I
    nop

    .line 281
    :goto_63
    return v2
.end method

.method private blacklist ignorePrefix(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1079
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isFCD(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist ignoreString(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1084
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isFCD(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangul(I)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private static blacklist indexFromTempCE(J)I
    .registers 5
    .param p0, "tempCE"    # J

    .line 1407
    const-wide v0, 0x4040000006002000L    # 32.000000715313945

    sub-long/2addr p0, v0

    .line 1408
    const/16 v0, 0x2b

    shr-long v0, p0, v0

    long-to-int v0, v0

    const v1, 0xfe000

    and-int/2addr v0, v1

    const/16 v1, 0x2a

    shr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0x1fc0

    or-int/2addr v0, v1

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private static blacklist indexFromTempCE32(I)I
    .registers 3
    .param p0, "tempCE32"    # I

    .line 1422
    const v0, 0x40400620    # 3.0003738f

    sub-int/2addr p0, v0

    .line 1423
    shr-int/lit8 v0, p0, 0xb

    const v1, 0xfe000

    and-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0xa

    and-int/lit16 v1, v1, 0x1fc0

    or-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist insertNodeBetween(IIJ)I
    .registers 10
    .param p1, "index"    # I
    .param p2, "nextIndex"    # I
    .param p3, "node"    # J

    .line 730
    nop

    .line 731
    nop

    .line 732
    nop

    .line 734
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v0

    .line 735
    .local v0, "newIndex":I
    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromPreviousIndex(I)J

    move-result-wide v1

    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromNextIndex(I)J

    move-result-wide v3

    or-long/2addr v1, v3

    or-long/2addr p3, v1

    .line 736
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, p3, p4}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 738
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p3

    .line 739
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-static {p3, p4, v0}, Landroid/icu/impl/coll/CollationBuilder;->changeNodeNextIndex(JI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/icu/impl/coll/UVector64;->setElementAt(JI)V

    .line 741
    if-eqz p2, :cond_38

    .line 742
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, p2}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p3

    .line 743
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-static {p3, p4, v0}, Landroid/icu/impl/coll/CollationBuilder;->changeNodePreviousIndex(JI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Landroid/icu/impl/coll/UVector64;->setElementAt(JI)V

    .line 745
    :cond_38
    return v0
.end method

.method private blacklist insertTailoredNodeAfter(II)I
    .registers 11
    .param p1, "index"    # I
    .param p2, "strength"    # I

    .line 703
    nop

    .line 704
    const/4 v0, 0x1

    if-lt p2, v0, :cond_f

    .line 705
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result p1

    .line 706
    const/4 v0, 0x2

    if-lt p2, v0, :cond_f

    .line 707
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result p1

    .line 712
    :cond_f
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 714
    .local v0, "node":J
    :goto_15
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v2

    move v3, v2

    .local v3, "nextIndex":I
    if-eqz v2, :cond_2b

    .line 715
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    .line 716
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-gt v2, p2, :cond_29

    goto :goto_2b

    .line 718
    :cond_29
    move p1, v3

    goto :goto_15

    .line 720
    :cond_2b
    :goto_2b
    const-wide/16 v4, 0x8

    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v6

    or-long v0, v6, v4

    .line 721
    invoke-direct {p0, p1, v3, v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result v2

    return v2
.end method

.method private blacklist isFCD(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1087
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->fcd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isTailoredNode(J)Z
    .registers 6
    .param p0, "node"    # J

    .line 1503
    const-wide/16 v0, 0x8

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist isTempCE(J)Z
    .registers 4
    .param p0, "ce"    # J

    .line 1417
    long-to-int v0, p0

    ushr-int/lit8 v0, v0, 0x18

    .line 1418
    .local v0, "sec":I
    const/4 v1, 0x6

    if-gt v1, v0, :cond_c

    const/16 v1, 0x45

    if-gt v0, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private static blacklist isTempCE32(I)Z
    .registers 3
    .param p0, "ce32"    # I

    .line 1429
    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x2

    if-lt v0, v1, :cond_16

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-gt v1, v0, :cond_16

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x45

    if-gt v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private blacklist makeTailoredCEs()V
    .registers 32

    .line 1152
    move-object/from16 v0, p0

    new-instance v1, Landroid/icu/impl/coll/CollationWeights;

    invoke-direct {v1}, Landroid/icu/impl/coll/CollationWeights;-><init>()V

    move-object v2, v1

    .line 1153
    .local v2, "primaries":Landroid/icu/impl/coll/CollationWeights;
    new-instance v1, Landroid/icu/impl/coll/CollationWeights;

    invoke-direct {v1}, Landroid/icu/impl/coll/CollationWeights;-><init>()V

    move-object v3, v1

    .line 1154
    .local v3, "secondaries":Landroid/icu/impl/coll/CollationWeights;
    new-instance v1, Landroid/icu/impl/coll/CollationWeights;

    invoke-direct {v1}, Landroid/icu/impl/coll/CollationWeights;-><init>()V

    move-object v4, v1

    .line 1155
    .local v4, "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    iget-object v1, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v1

    .line 1160
    .local v1, "nodesArray":[J
    const/4 v5, 0x0

    move v10, v5

    .local v10, "rpi":I
    :goto_1c
    iget-object v5, v0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v5}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v5

    if-ge v10, v5, :cond_23b

    .line 1161
    iget-object v5, v0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v5, v10}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v5

    .line 1162
    .local v5, "i":I
    aget-wide v6, v1, v5

    .line 1163
    .local v6, "node":J
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    move-result-wide v8

    .line 1164
    .local v8, "p":J
    const-wide/16 v11, 0x0

    cmp-long v13, v8, v11

    if-nez v13, :cond_38

    const/4 v13, 0x0

    goto :goto_3a

    :cond_38
    const/16 v13, 0x500

    .line 1165
    .local v13, "s":I
    :goto_3a
    move/from16 v16, v13

    .line 1166
    .local v16, "t":I
    const/16 v17, 0x0

    .line 1167
    .local v17, "q":I
    const/16 v18, 0x0

    .line 1168
    .local v18, "pIsTailored":Z
    const/16 v19, 0x0

    .line 1169
    .local v19, "sIsTailored":Z
    const/16 v20, 0x0

    .line 1173
    .local v20, "tIsTailored":Z
    cmp-long v11, v8, v11

    if-nez v11, :cond_4a

    const/4 v11, 0x0

    goto :goto_50

    :cond_4a
    iget-object v11, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v11, v8, v9}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v11

    .line 1174
    .local v11, "pIndex":I
    :goto_50
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v12

    move/from16 v15, v16

    move/from16 v14, v17

    move-wide/from16 v29, v8

    move v8, v12

    move v9, v13

    move-wide/from16 v12, v29

    .line 1175
    .end local v13    # "s":I
    .end local v16    # "t":I
    .end local v17    # "q":I
    .local v8, "nextIndex":I
    .local v9, "s":I
    .local v12, "p":J
    .local v14, "q":I
    .local v15, "t":I
    :goto_5e
    if-eqz v8, :cond_229

    .line 1176
    move/from16 v21, v8

    .line 1177
    .end local v5    # "i":I
    .local v21, "i":I
    aget-wide v22, v1, v21

    .line 1178
    .end local v6    # "node":J
    .local v22, "node":J
    invoke-static/range {v22 .. v23}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v5

    .line 1179
    .end local v8    # "nextIndex":I
    .local v5, "nextIndex":I
    invoke-static/range {v22 .. v23}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v6

    .line 1180
    .local v6, "strength":I
    const/4 v7, 0x3

    if-ne v6, v7, :cond_8c

    .line 1181
    nop

    .line 1185
    if-eq v14, v7, :cond_84

    .line 1189
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v25, v3

    move/from16 v28, v10

    move v3, v15

    const/16 v16, 0x0

    const/16 v17, 0x500

    move v15, v6

    move v10, v9

    move-object v9, v4

    move v4, v14

    move v14, v5

    goto/16 :goto_20e

    .line 1187
    :cond_84
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string v8, "quaternary tailoring gap too small"

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1191
    :cond_8c
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_137

    .line 1192
    invoke-static/range {v22 .. v23}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v25

    if-eqz v25, :cond_11f

    .line 1196
    if-nez v20, :cond_105

    .line 1198
    invoke-static {v1, v5, v7}, Landroid/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    move-result v7

    add-int/2addr v7, v8

    .line 1201
    .local v7, "tCount":I
    if-nez v15, :cond_b7

    .line 1203
    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v8

    move-object/from16 v25, v3

    const/16 v3, 0x100

    .end local v3    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .local v25, "secondaries":Landroid/icu/impl/coll/CollationWeights;
    sub-int/2addr v8, v3

    .line 1204
    .end local v15    # "t":I
    .local v8, "t":I
    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v26, v4

    .end local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .local v26, "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationRootElements;->getFirstTertiaryCE()J

    move-result-wide v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0x3f3f

    move v15, v8

    .local v3, "tLimit":I
    goto :goto_d4

    .line 1205
    .end local v8    # "t":I
    .end local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v26    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .local v3, "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v15    # "t":I
    :cond_b7
    move-object/from16 v25, v3

    move-object/from16 v26, v4

    .end local v3    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v26    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    if-nez v18, :cond_c6

    if-nez v19, :cond_c6

    .line 1207
    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v3, v11, v9, v15}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryAfter(III)I

    move-result v3

    .local v3, "tLimit":I
    goto :goto_d4

    .line 1208
    .end local v3    # "tLimit":I
    :cond_c6
    const/16 v3, 0x100

    if-ne v15, v3, :cond_cd

    .line 1209
    const/16 v3, 0x500

    .restart local v3    # "tLimit":I
    goto :goto_d4

    .line 1212
    .end local v3    # "tLimit":I
    :cond_cd
    nop

    .line 1213
    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v3

    .line 1215
    .restart local v3    # "tLimit":I
    :goto_d4
    nop

    .line 1216
    invoke-virtual/range {v26 .. v26}, Landroid/icu/impl/coll/CollationWeights;->initForTertiary()V

    .line 1217
    move v4, v5

    move v8, v6

    .end local v5    # "nextIndex":I
    .end local v6    # "strength":I
    .local v4, "nextIndex":I
    .local v8, "strength":I
    int-to-long v5, v15

    move/from16 v24, v8

    move/from16 v27, v9

    move v9, v7

    .end local v7    # "tCount":I
    .end local v8    # "strength":I
    .local v9, "tCount":I
    .local v24, "strength":I
    .local v27, "s":I
    int-to-long v7, v3

    move/from16 v28, v14

    move v14, v4

    move-object/from16 v4, v26

    move/from16 v26, v28

    move/from16 v28, v24

    move/from16 v24, v15

    move/from16 v15, v28

    move/from16 v28, v10

    move/from16 v10, v27

    .end local v27    # "s":I
    .local v4, "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .local v10, "s":I
    .local v14, "nextIndex":I
    .local v15, "strength":I
    .local v24, "t":I
    .local v26, "q":I
    .local v28, "rpi":I
    invoke-virtual/range {v4 .. v9}, Landroid/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    move-result v5

    move v7, v9

    move-object v9, v4

    .end local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v7    # "tCount":I
    .local v9, "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    if-eqz v5, :cond_fd

    .line 1221
    const/16 v20, 0x1

    goto :goto_113

    .line 1219
    :cond_fd
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "tertiary tailoring gap too small"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1196
    .end local v7    # "tCount":I
    .end local v24    # "t":I
    .end local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v26    # "q":I
    .end local v28    # "rpi":I
    .local v3, "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v5    # "nextIndex":I
    .restart local v6    # "strength":I
    .local v9, "s":I
    .local v10, "rpi":I
    .local v14, "q":I
    .local v15, "t":I
    :cond_105
    move-object/from16 v25, v3

    move/from16 v28, v10

    move/from16 v26, v14

    move/from16 v27, v15

    move v14, v5

    move v15, v6

    move v10, v9

    move-object v9, v4

    .end local v3    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v5    # "nextIndex":I
    .end local v6    # "strength":I
    .local v9, "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .local v10, "s":I
    .local v14, "nextIndex":I
    .local v15, "strength":I
    .restart local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v26    # "q":I
    .local v27, "t":I
    .restart local v28    # "rpi":I
    move/from16 v24, v27

    .line 1223
    .end local v27    # "t":I
    .restart local v24    # "t":I
    :goto_113
    invoke-virtual {v9}, Landroid/icu/impl/coll/CollationWeights;->nextWeight()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1224
    .end local v24    # "t":I
    .local v3, "t":I
    nop

    .line 1310
    const/16 v16, 0x0

    const/16 v17, 0x500

    goto/16 :goto_20d

    .line 1226
    .end local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v26    # "q":I
    .end local v28    # "rpi":I
    .local v3, "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v5    # "nextIndex":I
    .restart local v6    # "strength":I
    .local v9, "s":I
    .local v10, "rpi":I
    .local v14, "q":I
    .local v15, "t":I
    :cond_11f
    move-object/from16 v25, v3

    move/from16 v28, v10

    move/from16 v26, v14

    move/from16 v27, v15

    move v14, v5

    move v15, v6

    move v10, v9

    move-object v9, v4

    .end local v3    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v5    # "nextIndex":I
    .end local v6    # "strength":I
    .local v9, "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .local v10, "s":I
    .local v14, "nextIndex":I
    .local v15, "strength":I
    .restart local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v26    # "q":I
    .restart local v27    # "t":I
    .restart local v28    # "rpi":I
    invoke-static/range {v22 .. v23}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v3

    .line 1227
    .end local v27    # "t":I
    .local v3, "t":I
    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x500

    goto/16 :goto_20d

    .line 1233
    .end local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v26    # "q":I
    .end local v28    # "rpi":I
    .local v3, "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v5    # "nextIndex":I
    .restart local v6    # "strength":I
    .local v9, "s":I
    .local v10, "rpi":I
    .local v14, "q":I
    .local v15, "t":I
    :cond_137
    move-object/from16 v25, v3

    move/from16 v28, v10

    move/from16 v26, v14

    move/from16 v27, v15

    move v14, v5

    move v15, v6

    move v10, v9

    move-object v9, v4

    .end local v3    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v5    # "nextIndex":I
    .end local v6    # "strength":I
    .local v9, "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .local v10, "s":I
    .local v14, "nextIndex":I
    .local v15, "strength":I
    .restart local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v26    # "q":I
    .restart local v27    # "t":I
    .restart local v28    # "rpi":I
    if-ne v15, v8, :cond_1c5

    .line 1234
    invoke-static/range {v22 .. v23}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 1238
    if-nez v19, :cond_1ac

    .line 1240
    invoke-static {v1, v14, v8}, Landroid/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    move-result v3

    add-int/2addr v8, v3

    .line 1243
    .local v8, "sCount":I
    if-nez v10, :cond_169

    .line 1245
    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    move-result v3

    const/16 v4, 0x100

    sub-int/2addr v3, v4

    .line 1246
    .end local v10    # "s":I
    .local v3, "s":I
    iget-object v4, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecondaryCE()J

    move-result-wide v4

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    move v10, v4

    .local v4, "sLimit":I
    goto :goto_186

    .line 1247
    .end local v3    # "s":I
    .end local v4    # "sLimit":I
    .restart local v10    # "s":I
    :cond_169
    if-nez v18, :cond_174

    .line 1249
    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v3, v11, v10}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryAfter(II)I

    move-result v4

    move v3, v10

    move v10, v4

    .restart local v4    # "sLimit":I
    goto :goto_186

    .line 1250
    .end local v4    # "sLimit":I
    :cond_174
    const/16 v3, 0x100

    if-ne v10, v3, :cond_17d

    .line 1251
    const/16 v4, 0x500

    move v3, v10

    move v10, v4

    .restart local v4    # "sLimit":I
    goto :goto_186

    .line 1254
    .end local v4    # "sLimit":I
    :cond_17d
    nop

    .line 1255
    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    move-result v4

    move v3, v10

    move v10, v4

    .line 1257
    .restart local v3    # "s":I
    .local v10, "sLimit":I
    :goto_186
    const/16 v4, 0x500

    if-ne v3, v4, :cond_190

    .line 1260
    iget-object v5, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationRootElements;->getLastCommonSecondary()I

    move-result v3

    .line 1262
    :cond_190
    invoke-virtual/range {v25 .. v25}, Landroid/icu/impl/coll/CollationWeights;->initForSecondary()V

    .line 1263
    move/from16 v17, v4

    int-to-long v4, v3

    int-to-long v6, v10

    move/from16 v24, v3

    move-object/from16 v3, v25

    .end local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .local v3, "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .local v24, "s":I
    invoke-virtual/range {v3 .. v8}, Landroid/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    move-result v4

    .end local v3    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    if-eqz v4, :cond_1a4

    .line 1272
    const/16 v19, 0x1

    goto :goto_1b0

    .line 1270
    :cond_1a4
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "secondary tailoring gap too small"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1238
    .end local v8    # "sCount":I
    .end local v24    # "s":I
    .local v10, "s":I
    :cond_1ac
    const/16 v17, 0x500

    move/from16 v24, v10

    .line 1274
    .end local v10    # "s":I
    .restart local v24    # "s":I
    :goto_1b0
    invoke-virtual/range {v25 .. v25}, Landroid/icu/impl/coll/CollationWeights;->nextWeight()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1275
    .end local v24    # "s":I
    .local v3, "s":I
    nop

    .line 1307
    const/16 v16, 0x0

    goto :goto_202

    .line 1277
    .end local v3    # "s":I
    .restart local v10    # "s":I
    :cond_1b9
    const/16 v17, 0x500

    invoke-static/range {v22 .. v23}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v3

    .line 1278
    .end local v10    # "s":I
    .restart local v3    # "s":I
    const/4 v4, 0x0

    move/from16 v19, v4

    const/16 v16, 0x0

    .end local v19    # "sIsTailored":Z
    .local v4, "sIsTailored":Z
    goto :goto_202

    .line 1284
    .end local v3    # "s":I
    .end local v4    # "sIsTailored":Z
    .restart local v10    # "s":I
    .restart local v19    # "sIsTailored":Z
    :cond_1c5
    const/16 v17, 0x500

    .line 1288
    if-nez v18, :cond_1f3

    .line 1290
    const/4 v3, 0x0

    invoke-static {v1, v14, v3}, Landroid/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    move-result v4

    add-int/lit8 v7, v4, 0x1

    .line 1292
    .local v7, "pCount":I
    iget-object v4, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v12, v13}, Landroid/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    move-result v8

    .line 1293
    .local v8, "isCompressible":Z
    iget-object v4, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    .line 1294
    invoke-virtual {v4, v12, v13, v11, v8}, Landroid/icu/impl/coll/CollationRootElements;->getPrimaryAfter(JIZ)J

    move-result-wide v5

    .line 1295
    .local v5, "pLimit":J
    invoke-virtual {v2, v8}, Landroid/icu/impl/coll/CollationWeights;->initForPrimary(Z)V

    .line 1296
    move/from16 v16, v3

    move-wide v3, v12

    .end local v12    # "p":J
    .local v3, "p":J
    invoke-virtual/range {v2 .. v7}, Landroid/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    move-result v12

    if-eqz v12, :cond_1eb

    .line 1300
    const/16 v18, 0x1

    goto :goto_1f6

    .line 1298
    :cond_1eb
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string v13, "primary tailoring gap too small"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1288
    .end local v3    # "p":J
    .end local v5    # "pLimit":J
    .end local v7    # "pCount":I
    .end local v8    # "isCompressible":Z
    .restart local v12    # "p":J
    :cond_1f3
    move-wide v3, v12

    const/16 v16, 0x0

    .line 1302
    .end local v12    # "p":J
    .restart local v3    # "p":J
    :goto_1f6
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationWeights;->nextWeight()J

    move-result-wide v3

    .line 1303
    nop

    .line 1304
    const/16 v5, 0x500

    .line 1305
    .end local v10    # "s":I
    .local v5, "s":I
    const/4 v6, 0x0

    move-wide v12, v3

    move v3, v5

    move/from16 v19, v6

    .line 1307
    .end local v5    # "s":I
    .local v3, "s":I
    .restart local v12    # "p":J
    :goto_202
    if-nez v3, :cond_207

    move/from16 v4, v16

    goto :goto_209

    :cond_207
    move/from16 v4, v17

    .line 1308
    .end local v27    # "t":I
    .local v4, "t":I
    :goto_209
    const/16 v20, 0x0

    move v10, v3

    move v3, v4

    .line 1310
    .end local v4    # "t":I
    .local v3, "t":I
    .restart local v10    # "s":I
    :goto_20d
    const/4 v4, 0x0

    .line 1312
    .end local v26    # "q":I
    .local v4, "q":I
    :goto_20e
    invoke-static/range {v22 .. v23}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v5

    if-eqz v5, :cond_21a

    .line 1313
    invoke-static {v12, v13, v10, v3, v4}, Landroid/icu/impl/coll/Collation;->makeCE(JIII)J

    move-result-wide v5

    aput-wide v5, v1, v21

    .line 1318
    .end local v15    # "strength":I
    :cond_21a
    move v15, v3

    move v8, v14

    move/from16 v5, v21

    move-wide/from16 v6, v22

    move-object/from16 v3, v25

    move v14, v4

    move-object v4, v9

    move v9, v10

    move/from16 v10, v28

    goto/16 :goto_5e

    .line 1175
    .end local v21    # "i":I
    .end local v22    # "node":J
    .end local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v28    # "rpi":I
    .local v3, "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .local v4, "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .local v5, "i":I
    .local v6, "node":J
    .local v8, "nextIndex":I
    .local v9, "s":I
    .local v10, "rpi":I
    .local v14, "q":I
    .local v15, "t":I
    :cond_229
    move-object/from16 v25, v3

    move/from16 v28, v10

    move/from16 v26, v14

    move/from16 v27, v15

    move v10, v9

    move-object v9, v4

    move-wide v3, v12

    .line 1160
    .end local v3    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v5    # "i":I
    .end local v6    # "node":J
    .end local v8    # "nextIndex":I
    .end local v10    # "rpi":I
    .end local v11    # "pIndex":I
    .end local v12    # "p":J
    .end local v14    # "q":I
    .end local v15    # "t":I
    .end local v18    # "pIsTailored":Z
    .end local v19    # "sIsTailored":Z
    .end local v20    # "tIsTailored":Z
    .local v9, "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v28    # "rpi":I
    add-int/lit8 v10, v28, 0x1

    move-object v4, v9

    move-object/from16 v3, v25

    .end local v28    # "rpi":I
    .restart local v10    # "rpi":I
    goto/16 :goto_1c

    .line 1320
    .end local v9    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    .end local v10    # "rpi":I
    .end local v25    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v3    # "secondaries":Landroid/icu/impl/coll/CollationWeights;
    .restart local v4    # "tertiaries":Landroid/icu/impl/coll/CollationWeights;
    :cond_23b
    return-void
.end method

.method private blacklist mergeCompositeIntoString(Ljava/lang/CharSequence;IILjava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .registers 24
    .param p1, "nfdString"    # Ljava/lang/CharSequence;
    .param p2, "indexAfterLastStarter"    # I
    .param p3, "composite"    # I
    .param p4, "decomp"    # Ljava/lang/CharSequence;
    .param p5, "newNFDString"    # Ljava/lang/StringBuilder;
    .param p6, "newString"    # Ljava/lang/StringBuilder;

    .line 982
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 984
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v8

    .line 985
    .local v8, "lastStarterLength":I
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ne v8, v9, :cond_19

    .line 988
    return v6

    .line 990
    :cond_19
    invoke-direct {v0, v1, v2, v3, v8}, Landroid/icu/impl/coll/CollationBuilder;->equalSubSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 992
    return v6

    .line 998
    :cond_20
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 999
    invoke-virtual {v4, v1, v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1001
    sub-int v9, v2, v8

    invoke-virtual {v5, v1, v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1002
    move/from16 v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1006
    move/from16 v9, p2

    .line 1007
    .local v9, "sourceIndex":I
    move v11, v8

    .line 1011
    .local v11, "decompIndex":I
    const/4 v12, -0x1

    .line 1014
    .local v12, "sourceChar":I
    const/4 v13, 0x0

    .line 1015
    .local v13, "sourceCC":I
    const/4 v14, 0x0

    .line 1017
    .local v14, "decompCC":I
    :goto_3a
    if-gez v12, :cond_4e

    .line 1018
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lt v9, v15, :cond_43

    goto :goto_54

    .line 1019
    :cond_43
    invoke-static {v1, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v12

    .line 1020
    iget-object v15, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v15, v12}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v13

    .line 1021
    nop

    .line 1024
    :cond_4e
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lt v11, v15, :cond_79

    .line 1050
    :goto_54
    if-ltz v12, :cond_68

    .line 1051
    if-ge v13, v14, :cond_59

    .line 1053
    return v6

    .line 1055
    :cond_59
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v4, v1, v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1056
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v5, v1, v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 1057
    :cond_68
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v11, v6, :cond_75

    .line 1058
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v4, v3, v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1060
    :cond_75
    :goto_75
    nop

    .line 1061
    nop

    .line 1062
    nop

    .line 1063
    return v7

    .line 1025
    :cond_79
    invoke-static {v3, v11}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v15

    .line 1026
    .local v15, "decompChar":I
    move/from16 v16, v6

    iget-object v6, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v6, v15}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v14

    .line 1028
    if-nez v14, :cond_88

    .line 1032
    return v16

    .line 1033
    :cond_88
    if-ge v13, v14, :cond_8b

    .line 1035
    return v16

    .line 1036
    :cond_8b
    if-ge v14, v13, :cond_96

    .line 1037
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1038
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v11, v6

    goto :goto_a8

    .line 1039
    :cond_96
    if-eq v15, v12, :cond_99

    .line 1041
    return v16

    .line 1043
    :cond_99
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1044
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v11, v6

    .line 1045
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v9, v6

    .line 1046
    const/4 v6, -0x1

    move v12, v6

    .line 1048
    .end local v15    # "decompChar":I
    :goto_a8
    move/from16 v6, v16

    goto :goto_3a
.end method

.method private static blacklist nextIndexFromNode(J)I
    .registers 4
    .param p0, "node"    # J

    .line 1487
    long-to-int v0, p0

    shr-int/lit8 v0, v0, 0x8

    const v1, 0xfffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static blacklist nodeFromNextIndex(I)J
    .registers 3
    .param p0, "next"    # I

    .line 1471
    shl-int/lit8 v0, p0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method private static blacklist nodeFromPreviousIndex(I)J
    .registers 4
    .param p0, "previous"    # I

    .line 1468
    int-to-long v0, p0

    const/16 v2, 0x1c

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist nodeFromStrength(I)J
    .registers 3
    .param p0, "strength"    # I

    .line 1474
    int-to-long v0, p0

    return-wide v0
.end method

.method private static blacklist nodeFromWeight16(I)J
    .registers 4
    .param p0, "weight16"    # I

    .line 1465
    int-to-long v0, p0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist nodeFromWeight32(J)J
    .registers 4
    .param p0, "weight32"    # J

    .line 1462
    const/16 v0, 0x20

    shl-long v0, p0, v0

    return-wide v0
.end method

.method private static blacklist nodeHasAnyBefore(J)Z
    .registers 6
    .param p0, "node"    # J

    .line 1500
    const-wide/16 v0, 0x60

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist nodeHasBefore2(J)Z
    .registers 6
    .param p0, "node"    # J

    .line 1494
    const-wide/16 v0, 0x40

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist nodeHasBefore3(J)Z
    .registers 6
    .param p0, "node"    # J

    .line 1497
    const-wide/16 v0, 0x20

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist previousIndexFromNode(J)I
    .registers 4
    .param p0, "node"    # J

    .line 1484
    const/16 v0, 0x1c

    shr-long v0, p0, v0

    long-to-int v0, v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static blacklist sameCEs([JI[JI)Z
    .registers 10
    .param p0, "ces1"    # [J
    .param p1, "ces1Length"    # I
    .param p2, "ces2"    # [J
    .param p3, "ces2Length"    # I

    .line 1129
    const/4 v0, 0x0

    if-eq p1, p3, :cond_4

    .line 1130
    return v0

    .line 1132
    :cond_4
    nop

    .line 1133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, p1, :cond_14

    .line 1134
    aget-wide v2, p0, v1

    aget-wide v4, p2, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    return v0

    .line 1133
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1136
    .end local v1    # "i":I
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist setCaseBits(Ljava/lang/CharSequence;)V
    .registers 20
    .param p1, "nfdString"    # Ljava/lang/CharSequence;

    .line 782
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 783
    .local v1, "numTailoredPrimaries":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget v3, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    if-ge v2, v3, :cond_17

    .line 784
    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v3

    if-nez v3, :cond_14

    add-int/lit8 v1, v1, 0x1

    .line 783
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 789
    .end local v2    # "i":I
    :cond_17
    nop

    .line 791
    const-wide/16 v2, 0x0

    .line 792
    .local v2, "cases":J
    const/16 v4, 0xe

    if-lez v1, :cond_77

    .line 793
    move-object/from16 v6, p1

    .line 794
    .local v6, "s":Ljava/lang/CharSequence;
    new-instance v7, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v6, v9}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 795
    .local v7, "baseCEs":Landroid/icu/impl/coll/UTF16CollationIterator;
    invoke-virtual {v7}, Landroid/icu/impl/coll/UTF16CollationIterator;->fetchCEs()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 796
    .local v8, "baseCEsLength":I
    nop

    .line 798
    const/4 v9, 0x0

    .line 799
    .local v9, "lastCase":I
    const/4 v10, 0x0

    .line 800
    .local v10, "numBasePrimaries":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_32
    if-ge v11, v8, :cond_6a

    .line 801
    invoke-virtual {v7, v11}, Landroid/icu/impl/coll/UTF16CollationIterator;->getCE(I)J

    move-result-wide v12

    .line 802
    .local v12, "ce":J
    const/16 v14, 0x20

    ushr-long v14, v12, v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_63

    .line 803
    add-int/lit8 v10, v10, 0x1

    .line 804
    long-to-int v14, v12

    shr-int/2addr v14, v4

    and-int/lit8 v14, v14, 0x3

    .line 805
    .local v14, "c":I
    nop

    .line 806
    if-ge v10, v1, :cond_57

    .line 807
    move v15, v4

    const/16 v16, 0x2

    int-to-long v4, v14

    add-int/lit8 v17, v10, -0x1

    mul-int/lit8 v17, v17, 0x2

    shl-long v4, v4, v17

    or-long/2addr v2, v4

    goto :goto_66

    .line 808
    :cond_57
    move v15, v4

    const/16 v16, 0x2

    if-ne v10, v1, :cond_5f

    .line 809
    move v4, v14

    move v9, v4

    .end local v9    # "lastCase":I
    .local v4, "lastCase":I
    goto :goto_66

    .line 810
    .end local v4    # "lastCase":I
    .restart local v9    # "lastCase":I
    :cond_5f
    if-eq v14, v9, :cond_66

    .line 813
    const/4 v9, 0x1

    .line 815
    goto :goto_6d

    .line 802
    .end local v14    # "c":I
    :cond_63
    move v15, v4

    const/16 v16, 0x2

    .line 800
    .end local v12    # "ce":J
    :cond_66
    :goto_66
    add-int/lit8 v11, v11, 0x1

    move v4, v15

    goto :goto_32

    :cond_6a
    move v15, v4

    const/16 v16, 0x2

    .line 819
    .end local v11    # "i":I
    :goto_6d
    if-lt v10, v1, :cond_7a

    .line 820
    int-to-long v4, v9

    add-int/lit8 v11, v1, -0x1

    mul-int/lit8 v11, v11, 0x2

    shl-long/2addr v4, v11

    or-long/2addr v2, v4

    goto :goto_7a

    .line 792
    .end local v6    # "s":Ljava/lang/CharSequence;
    .end local v7    # "baseCEs":Landroid/icu/impl/coll/UTF16CollationIterator;
    .end local v8    # "baseCEsLength":I
    .end local v9    # "lastCase":I
    .end local v10    # "numBasePrimaries":I
    :cond_77
    move v15, v4

    const/16 v16, 0x2

    .line 824
    :cond_7a
    :goto_7a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7b
    iget v5, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    if-ge v4, v5, :cond_a8

    .line 825
    iget-object v5, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    aget-wide v5, v5, v4

    const-wide/32 v7, -0xc001

    and-long/2addr v5, v7

    .line 826
    .local v5, "ce":J
    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v7

    .line 827
    .local v7, "strength":I
    if-nez v7, :cond_97

    .line 828
    const-wide/16 v8, 0x3

    and-long/2addr v8, v2

    shl-long/2addr v8, v15

    or-long/2addr v5, v8

    .line 829
    ushr-long v2, v2, v16

    move/from16 v8, v16

    goto :goto_9f

    .line 830
    :cond_97
    move/from16 v8, v16

    if-ne v7, v8, :cond_9f

    .line 833
    const-wide/32 v9, 0x8000

    or-long/2addr v5, v9

    .line 840
    :cond_9f
    :goto_9f
    iget-object v9, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    aput-wide v5, v9, v4

    .line 824
    .end local v5    # "ce":J
    .end local v7    # "strength":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v16, v8

    goto :goto_7b

    .line 842
    .end local v4    # "i":I
    :cond_a8
    return-void
.end method

.method private static blacklist strengthFromNode(J)I
    .registers 3
    .param p0, "node"    # J

    .line 1490
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private static blacklist strengthFromTempCE(J)I
    .registers 3
    .param p0, "tempCE"    # J

    .line 1414
    long-to-int v0, p0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private static blacklist tempCEFromIndexAndStrength(II)J
    .registers 7
    .param p0, "index"    # I
    .param p1, "strength"    # I

    .line 1394
    const v0, 0xfe000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x2b

    shl-long/2addr v0, v2

    const-wide v2, 0x4040000006002000L    # 32.000000715313945

    add-long/2addr v0, v2

    and-int/lit16 v2, p0, 0x1fc0

    int-to-long v2, v2

    const/16 v4, 0x2a

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    and-int/lit8 v2, p0, 0x3f

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-int/lit8 v2, p1, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist weight16FromNode(J)I
    .registers 4
    .param p0, "node"    # J

    .line 1481
    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static blacklist weight32FromNode(J)J
    .registers 4
    .param p0, "node"    # J

    .line 1478
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    return-wide v0
.end method


# virtual methods
.method blacklist addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 18
    .param p1, "strength"    # I
    .param p2, "prefix"    # Ljava/lang/CharSequence;
    .param p3, "str"    # Ljava/lang/CharSequence;
    .param p4, "extension"    # Ljava/lang/CharSequence;

    .line 445
    move-object v1, p2

    move-object/from16 v2, p3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 446
    const-string v0, ""

    move-object v6, v0

    .local v0, "nfdPrefix":Ljava/lang/String;
    goto :goto_14

    .line 448
    .end local v0    # "nfdPrefix":Ljava/lang/String;
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 450
    .local v6, "nfdPrefix":Ljava/lang/String;
    :goto_14
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, v2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 455
    .local v7, "nfdString":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 456
    .local v8, "nfdLength":I
    const/4 v0, 0x2

    if-lt v8, v0, :cond_61

    .line 457
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 458
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v3

    if-nez v3, :cond_59

    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoV(I)Z

    move-result v3

    if-nez v3, :cond_59

    .line 464
    add-int/lit8 v3, v8, -0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 465
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v3

    if-nez v3, :cond_51

    .line 466
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoV(I)Z

    move-result v3

    if-eqz v3, :cond_61

    add-int/lit8 v3, v8, -0x2

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_61

    .line 470
    :cond_51
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "contractions ending with conjoining Jamo L or L+V not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    :cond_59
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "contractions starting with conjoining Jamo L or V not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    .end local v0    # "c":C
    :cond_61
    :goto_61
    const/16 v0, 0xf

    if-eq p1, v0, :cond_b4

    .line 483
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForCEs(I)I

    move-result v0

    .line 484
    .local v0, "index":I
    nop

    .line 485
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    iget v4, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    add-int/lit8 v4, v4, -0x1

    aget-wide v3, v3, v4

    .line 486
    .local v3, "ce":J
    const-wide/16 v9, 0x0

    if-nez p1, :cond_8d

    invoke-static {v3, v4}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result v5

    if-nez v5, :cond_8d

    const/16 v5, 0x20

    ushr-long v11, v3, v5

    cmp-long v5, v11, v9

    if-eqz v5, :cond_85

    goto :goto_8d

    .line 488
    :cond_85
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v9, "tailoring primary after ignorables not supported"

    invoke-direct {v5, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 491
    :cond_8d
    :goto_8d
    const/4 v5, 0x3

    if-ne p1, v5, :cond_9d

    cmp-long v5, v3, v9

    if-eqz v5, :cond_95

    goto :goto_9d

    .line 494
    :cond_95
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v9, "tailoring quaternary after tertiary ignorables not supported"

    invoke-direct {v5, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 498
    :cond_9d
    :goto_9d
    invoke-direct {p0, v0, p1}, Landroid/icu/impl/coll/CollationBuilder;->insertTailoredNodeAfter(II)I

    move-result v0

    .line 501
    invoke-static {v3, v4}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v5

    .line 502
    .local v5, "tempStrength":I
    if-ge p1, v5, :cond_a8

    move v5, p1

    .line 503
    :cond_a8
    iget-object v9, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    iget v10, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    add-int/lit8 v10, v10, -0x1

    invoke-static {v0, v5}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 506
    .end local v0    # "index":I
    .end local v3    # "ce":J
    .end local v5    # "tempStrength":I
    :cond_b4
    invoke-direct {p0, v7}, Landroid/icu/impl/coll/CollationBuilder;->setCaseBits(Ljava/lang/CharSequence;)V

    .line 508
    iget v9, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    .line 509
    .local v9, "cesLengthBeforeExtension":I
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_e2

    .line 510
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    move-object/from16 v10, p4

    invoke-virtual {v0, v10}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "nfdExtension":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    iget v5, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    invoke-virtual {v3, v0, v4, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    move-result v3

    iput v3, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    .line 512
    iget v3, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_da

    goto :goto_e4

    .line 513
    :cond_da
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "extension string adds too many collation elements (more than 31 total)"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    .end local v0    # "nfdExtension":Ljava/lang/String;
    :cond_e2
    move-object/from16 v10, p4

    .line 517
    :goto_e4
    const/4 v5, -0x1

    .line 518
    .local v5, "ce32":I
    invoke-virtual {v6, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-virtual {v7, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 519
    :cond_f1
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationBuilder;->ignorePrefix(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_106

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 523
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    iget v4, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v5

    .line 525
    :cond_106
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object v2, v6

    move v6, v5

    .end local v5    # "ce32":I
    .local v2, "nfdPrefix":Ljava/lang/String;
    .local v6, "ce32":I
    iget v5, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    move-object v1, p0

    move-object v3, v7

    .end local v7    # "nfdString":Ljava/lang/String;
    .local v3, "nfdString":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/coll/CollationBuilder;->addWithClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    .line 526
    iput v9, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    .line 527
    return-void
.end method

.method blacklist addReset(ILjava/lang/CharSequence;)V
    .registers 14
    .param p1, "strength"    # I
    .param p2, "str"    # Ljava/lang/CharSequence;

    .line 114
    nop

    .line 115
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xfffe

    const/4 v3, 0x1

    if-ne v1, v2, :cond_17

    .line 116
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationBuilder;->getSpecialResetPosition(Ljava/lang/CharSequence;)J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 117
    iput v3, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    .line 118
    goto :goto_2d

    .line 121
    :cond_17
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v1, p2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "nfdString":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    invoke-virtual {v2, v1, v4, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    .line 123
    iget v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_13f

    .line 128
    .end local v1    # "nfdString":Ljava/lang/String;
    :goto_2d
    const/16 v0, 0xf

    if-ne p1, v0, :cond_32

    return-void

    .line 131
    :cond_32
    nop

    .line 132
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForCEs(I)I

    move-result v0

    .line 134
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    .line 137
    .local v1, "node":J
    :goto_3d
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v4

    if-le v4, p1, :cond_4e

    .line 138
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v0

    .line 139
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    goto :goto_3d

    .line 143
    :cond_4e
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v4

    if-ne v4, p1, :cond_60

    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 145
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v0

    goto/16 :goto_133

    .line 146
    :cond_60
    if-nez p1, :cond_b7

    .line 148
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    move-result-wide v4

    .line 149
    .local v4, "p":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_af

    .line 153
    iget-object v6, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationRootElements;->getFirstPrimary()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_a7

    .line 158
    const-wide v6, 0xff020200L

    cmp-long v6, v4, v6

    if-eqz v6, :cond_9f

    .line 163
    iget-object v6, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v7, v4, v5}, Landroid/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    move-result v7

    invoke-virtual {v6, v4, v5, v7}, Landroid/icu/impl/coll/CollationRootElements;->getPrimaryBefore(JZ)J

    move-result-wide v6

    .line 164
    .end local v4    # "p":J
    .local v6, "p":J
    invoke-direct {p0, v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForPrimary(J)I

    move-result v0

    .line 168
    :goto_8f
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    .line 169
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v4

    .line 170
    .local v4, "nextIndex":I
    if-nez v4, :cond_9d

    .line 173
    .end local v4    # "nextIndex":I
    .end local v6    # "p":J
    goto/16 :goto_133

    .line 171
    .restart local v4    # "nextIndex":I
    .restart local v6    # "p":J
    :cond_9d
    move v0, v4

    .line 172
    .end local v4    # "nextIndex":I
    goto :goto_8f

    .line 160
    .end local v6    # "p":J
    .local v4, "p":J
    :cond_9f
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v6, "reset primary-before [first trailing] not supported"

    invoke-direct {v3, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    :cond_a7
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v6, "reset primary-before first non-ignorable not supported"

    invoke-direct {v3, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :cond_af
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v6, "reset primary-before ignorable not possible"

    invoke-direct {v3, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    .end local v4    # "p":J
    :cond_b7
    invoke-direct {p0, v0, v3}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result v0

    .line 176
    const/4 v4, 0x2

    if-lt p1, v4, :cond_c2

    .line 177
    invoke-direct {p0, v0, v4}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result v0

    .line 181
    :cond_c2
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    .line 182
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v4

    if-ne v4, p1, :cond_120

    .line 184
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v4

    .line 185
    .local v4, "weight16":I
    if-nez v4, :cond_e1

    .line 186
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    .line 187
    if-ne p1, v3, :cond_db

    .line 188
    const-string v3, "reset secondary-before secondary ignorable not possible"

    goto :goto_dd

    .line 189
    :cond_db
    const-string v3, "reset tertiary-before completely ignorable not possible"

    :goto_dd
    invoke-direct {v5, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    :cond_e1
    nop

    .line 195
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/icu/impl/coll/CollationBuilder;->getWeight16Before(IJI)I

    move-result v4

    .line 198
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v5

    .line 199
    .local v5, "previousIndex":I
    move v6, v5

    .line 200
    .local v6, "i":I
    :goto_eb
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v7, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v1

    .line 201
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v7

    .line 202
    .local v7, "previousStrength":I
    if-ge v7, p1, :cond_fb

    .line 203
    nop

    .line 208
    const/16 v8, 0x500

    .line 209
    .local v8, "previousWeight16":I
    goto :goto_108

    .line 210
    .end local v8    # "previousWeight16":I
    :cond_fb
    if-ne v7, p1, :cond_11b

    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v8

    if-nez v8, :cond_11b

    .line 211
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v8

    .line 212
    .restart local v8    # "previousWeight16":I
    nop

    .line 216
    .end local v6    # "i":I
    .end local v7    # "previousStrength":I
    :goto_108
    if-ne v8, v4, :cond_10c

    .line 220
    move v0, v5

    goto :goto_11a

    .line 223
    :cond_10c
    invoke-static {v4}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v6

    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v9

    or-long v1, v6, v9

    .line 224
    invoke-direct {p0, v5, v0, v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result v0

    .line 226
    .end local v4    # "weight16":I
    .end local v5    # "previousIndex":I
    .end local v8    # "previousWeight16":I
    :goto_11a
    goto :goto_128

    .line 199
    .restart local v4    # "weight16":I
    .restart local v5    # "previousIndex":I
    .restart local v6    # "i":I
    :cond_11b
    invoke-static {v1, v2}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v6

    goto :goto_eb

    .line 228
    .end local v4    # "weight16":I
    .end local v5    # "previousIndex":I
    .end local v6    # "i":I
    :cond_120
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/icu/impl/coll/CollationBuilder;->getWeight16Before(IJI)I

    move-result v4

    .line 229
    .restart local v4    # "weight16":I
    invoke-direct {p0, v0, v4, p1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    move-result v0

    .line 233
    .end local v4    # "weight16":I
    :goto_128
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    iget v5, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    sub-int/2addr v5, v3

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result p1

    .line 235
    :goto_133
    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    iget v5, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    sub-int/2addr v5, v3

    invoke-static {v0, p1}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 236
    return-void

    .line 124
    .end local v0    # "index":I
    .local v1, "nfdString":Ljava/lang/String;
    :cond_13f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "reset position maps to too many collation elements (more than 31)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist optimize(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 853
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 854
    return-void
.end method

.method public blacklist parseAndBuild(Ljava/lang/String;)Landroid/icu/impl/coll/CollationTailoring;
    .registers 9
    .param p1, "ruleString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    if-eqz v0, :cond_9e

    .line 67
    new-instance v0, Landroid/icu/impl/coll/CollationTailoring;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    .line 68
    .local v0, "tailoring":Landroid/icu/impl/coll/CollationTailoring;
    new-instance v1, Landroid/icu/impl/coll/CollationRuleParser;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v2}, Landroid/icu/impl/coll/CollationRuleParser;-><init>(Landroid/icu/impl/coll/CollationData;)V

    .line 74
    .local v1, "parser":Landroid/icu/impl/coll/CollationRuleParser;
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v2, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    .line 75
    invoke-virtual {v1, p0}, Landroid/icu/impl/coll/CollationRuleParser;->setSink(Landroid/icu/impl/coll/CollationRuleParser$Sink;)V

    .line 78
    new-instance v2, Landroid/icu/impl/coll/CollationBuilder$BundleImporter;

    invoke-direct {v2}, Landroid/icu/impl/coll/CollationBuilder$BundleImporter;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationRuleParser;->setImporter(Landroid/icu/impl/coll/CollationRuleParser$Importer;)V

    .line 79
    iget-object v2, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    .line 80
    .local v2, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v1, p1, v2}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;Landroid/icu/impl/coll/CollationSettings;)V

    .line 81
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->hasMappings()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_85

    .line 82
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationBuilder;->makeTailoredCEs()V

    .line 83
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationBuilder;->closeOverComposites()V

    .line 84
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationBuilder;->finalizeCEs()V

    .line 86
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    const/16 v5, 0x7f

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 87
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    const/16 v5, 0xc0

    const/16 v6, 0xff

    invoke-virtual {v3, v5, v6}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 90
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    const v5, 0xac00

    const v6, 0xd7a3

    invoke-virtual {v3, v5, v6}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    .line 91
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v5, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->optimize(Landroid/icu/text/UnicodeSet;)V

    .line 92
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationTailoring;->ensureOwnedData()V

    .line 93
    iget-boolean v3, p0, Landroid/icu/impl/coll/CollationBuilder;->fastLatinEnabled:Z

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->enableFastLatin()V

    .line 94
    :cond_7a
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v5, v0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->build(Landroid/icu/impl/coll/CollationData;)V

    .line 96
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    goto :goto_89

    .line 98
    :cond_85
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    iput-object v3, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    .line 100
    :goto_89
    iget-object v3, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v5, v2, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {v3, v2, v5}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    move-result v3

    iput v3, v2, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    .line 103
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationTailoring;->setRules(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    iget v3, v3, Landroid/icu/impl/coll/CollationTailoring;->version:I

    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/coll/CollationTailoring;->setVersion(II)V

    .line 108
    return-object v0

    .line 64
    .end local v0    # "tailoring":Landroid/icu/impl/coll/CollationTailoring;
    .end local v1    # "parser":Landroid/icu/impl/coll/CollationRuleParser;
    .end local v2    # "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    :cond_9e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "missing root elements data, tailoring not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist suppressContractions(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 847
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->suppressContractions(Landroid/icu/text/UnicodeSet;)V

    .line 848
    return-void
.end method
