.class public final Landroid/icu/text/StringSearch;
.super Landroid/icu/text/SearchIterator;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/StringSearch$CEBuffer;,
        Landroid/icu/text/StringSearch$CEI;,
        Landroid/icu/text/StringSearch$CollationPCE;,
        Landroid/icu/text/StringSearch$Match;,
        Landroid/icu/text/StringSearch$Pattern;
    }
.end annotation


# static fields
.field private static CE_LEVEL2_BASE:I = 0x0

.field private static CE_LEVEL3_BASE:I = 0x0

.field private static final CE_MATCH:I = -0x1

.field private static final CE_NO_MATCH:I = 0x0

.field private static final CE_SKIP_PATN:I = 0x2

.field private static final CE_SKIP_TARG:I = 0x1

.field private static final INITIAL_ARRAY_SIZE_:I = 0x100

.field private static final PRIMARYORDERMASK:I = -0x10000

.field private static final SECONDARYORDERMASK:I = 0xff00

.field private static final TERTIARYORDERMASK:I = 0xff


# instance fields
.field ceMask_:I

.field private collator_:Landroid/icu/text/RuleBasedCollator;

.field private nfd_:Landroid/icu/text/Normalizer2;

.field private pattern_:Landroid/icu/text/StringSearch$Pattern;

.field private strength_:I

.field private textIter_:Landroid/icu/text/CollationElementIterator;

.field private textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

.field private toShift_:Z

.field private utilIter_:Landroid/icu/text/CollationElementIterator;

.field variableTop_:I


# direct methods
.method static synthetic -get0(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/text/StringSearch;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initTextProcessedIter()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 921
    const/4 v0, 0x5

    #@1
    sput v0, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    #@3
    .line 922
    const/high16 v0, 0x50000

    #@5
    sput v0, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    #@7
    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 279
    new-instance v1, Ljava/text/StringCharacterIterator;

    #@2
    invoke-direct {v1, p2}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    #@5
    .line 280
    invoke-static {}, Landroid/icu/text/Collator;->getInstance()Landroid/icu/text/Collator;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    #@b
    const/4 v2, 0x0

    #@c
    .line 279
    invoke-direct {p0, p1, v1, v0, v2}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    #@f
    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/text/CharacterIterator;
    .param p3, "collator"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 230
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    #@4
    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/text/CharacterIterator;
    .param p3, "collator"    # Landroid/icu/text/RuleBasedCollator;
    .param p4, "breakiter"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 178
    invoke-direct {p0, p2, p4}, Landroid/icu/text/SearchIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/BreakIterator;)V

    #@4
    .line 181
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getNumericCollation()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 182
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@c
    const-string/jumbo v2, "Numeric collation is not supported by StringSearch"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 185
    :cond_0
    iput-object p3, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@15
    .line 186
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    #@18
    move-result v1

    #@19
    iput v1, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@1b
    .line 187
    iget v1, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@1d
    invoke-static {v1}, Landroid/icu/text/StringSearch;->getMask(I)I

    #@20
    move-result v1

    #@21
    iput v1, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    #@23
    .line 188
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    #@26
    move-result v1

    #@27
    iput-boolean v1, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    #@29
    .line 189
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    #@2f
    .line 191
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    #@35
    .line 193
    new-instance v1, Landroid/icu/text/StringSearch$Pattern;

    #@37
    invoke-direct {v1, p1}, Landroid/icu/text/StringSearch$Pattern;-><init>(Ljava/lang/String;)V

    #@3a
    iput-object v1, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@3c
    .line 195
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3e
    const/4 v2, 0x0

    #@3f
    invoke-virtual {v1, v2}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@42
    .line 196
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@44
    const/4 v2, -0x1

    #@45
    iput v2, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@47
    .line 198
    iput-object v3, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@49
    .line 199
    new-instance v1, Landroid/icu/text/CollationElementIterator;

    #@4b
    invoke-direct {v1, p2, p3}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    #@4e
    iput-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@50
    .line 201
    iput-object v3, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    #@52
    .line 211
    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@54
    invoke-virtual {p3, v1}, Landroid/icu/text/RuleBasedCollator;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@57
    move-result-object v0

    #@58
    .line 212
    .local v0, "collLocale":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@5a
    if-nez v0, :cond_1

    #@5c
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@5e
    .end local v0    # "collLocale":Landroid/icu/util/ULocale;
    :cond_1
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@61
    move-result-object v2

    #@62
    iput-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@64
    .line 213
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@66
    iget-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@68
    invoke-interface {p2}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@6b
    move-result-object v1

    #@6c
    check-cast v1, Ljava/text/CharacterIterator;

    #@6e
    invoke-virtual {v2, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@71
    .line 215
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    #@74
    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/text/CharacterIterator;
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 265
    invoke-static {p3}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    #@a
    .line 264
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/text/CharacterIterator;
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 245
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/util/ULocale;)V

    #@7
    .line 244
    return-void
.end method

.method private static addToIntArray([IIIII)[I
    .locals 4
    .param p0, "destination"    # [I
    .param p1, "offset"    # I
    .param p2, "destinationlength"    # I
    .param p3, "value"    # I
    .param p4, "increments"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 643
    move v0, p2

    #@2
    .line 644
    .local v0, "newlength":I
    add-int/lit8 v2, p1, 0x1

    #@4
    if-ne v2, p2, :cond_0

    #@6
    .line 645
    add-int v0, p2, p4

    #@8
    .line 646
    new-array v1, v0, [I

    #@a
    .line 647
    .local v1, "temp":[I
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@d
    .line 648
    move-object p0, v1

    #@e
    .line 650
    .end local v1    # "temp":[I
    :cond_0
    aput p3, p0, p1

    #@10
    .line 651
    return-object p0
.end method

.method private static addToLongArray([JIIJI)[J
    .locals 5
    .param p0, "destination"    # [J
    .param p1, "offset"    # I
    .param p2, "destinationlength"    # I
    .param p3, "value"    # J
    .param p5, "increments"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 668
    move v0, p2

    #@2
    .line 669
    .local v0, "newlength":I
    add-int/lit8 v2, p1, 0x1

    #@4
    if-ne v2, p2, :cond_0

    #@6
    .line 670
    add-int v0, p2, p5

    #@8
    .line 671
    new-array v1, v0, [J

    #@a
    .line 672
    .local v1, "temp":[J
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@d
    .line 673
    move-object p0, v1

    #@e
    .line 675
    .end local v1    # "temp":[J
    :cond_0
    aput-wide p3, p0, p1

    #@10
    .line 676
    return-object p0
.end method

.method private checkIdentical(II)Z
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 855
    iget v2, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@3
    const/16 v3, 0xf

    #@5
    if-eq v2, v3, :cond_0

    #@7
    .line 856
    const/4 v2, 0x1

    #@8
    return v2

    #@9
    .line 860
    :cond_0
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@b
    sub-int v3, p2, p1

    #@d
    invoke-static {v2, p1, v3}, Landroid/icu/text/StringSearch;->getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 861
    .local v1, "textstr":Ljava/lang/String;
    sget-object v2, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    #@13
    invoke-static {v1, v2, v4}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    #@16
    move-result-object v2

    #@17
    sget-object v3, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    .line 862
    invoke-static {v1, v4}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 864
    :cond_1
    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@21
    iget-object v0, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@23
    .line 865
    .local v0, "patternstr":Ljava/lang/String;
    sget-object v2, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    #@25
    invoke-static {v0, v2, v4}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    #@28
    move-result-object v2

    #@29
    sget-object v3, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@2b
    if-ne v2, v3, :cond_2

    #@2d
    .line 866
    invoke-static {v0, v4}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 868
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    return v2
.end method

.method private static codePointAt(Ljava/text/CharacterIterator;I)I
    .locals 5
    .param p0, "iter"    # Ljava/text/CharacterIterator;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1233
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    #@3
    move-result v2

    #@4
    .line 1234
    .local v2, "currentIterIndex":I
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@7
    move-result v0

    #@8
    .line 1235
    .local v0, "codeUnit":C
    move v1, v0

    #@9
    .line 1236
    .local v1, "cp":I
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 1237
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    #@12
    move-result v3

    #@13
    .line 1238
    .local v3, "nextUnit":C
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 1239
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    #@1c
    move-result v1

    #@1d
    .line 1242
    .end local v3    # "nextUnit":C
    :cond_0
    invoke-interface {p0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@20
    .line 1243
    return v1
.end method

.method private static codePointBefore(Ljava/text/CharacterIterator;I)I
    .locals 5
    .param p0, "iter"    # Ljava/text/CharacterIterator;
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1247
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    #@3
    move-result v2

    #@4
    .line 1248
    .local v2, "currentIterIndex":I
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@7
    .line 1249
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    #@a
    move-result v0

    #@b
    .line 1250
    .local v0, "codeUnit":C
    move v1, v0

    #@c
    .line 1251
    .local v1, "cp":I
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 1252
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    #@15
    move-result v3

    #@16
    .line 1253
    .local v3, "prevUnit":C
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 1254
    invoke-static {v3, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    #@1f
    move-result v1

    #@20
    .line 1257
    .end local v3    # "prevUnit":C
    :cond_0
    invoke-interface {p0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@23
    .line 1258
    return v1
.end method

.method private static compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I
    .locals 14
    .param p0, "targCE"    # J
    .param p2, "patCE"    # J
    .param p4, "compareType"    # Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@0
    .prologue
    .line 925
    cmp-long v12, p0, p2

    #@2
    if-nez v12, :cond_0

    #@4
    .line 926
    const/4 v12, -0x1

    #@5
    return v12

    #@6
    .line 928
    :cond_0
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@8
    move-object/from16 v0, p4

    #@a
    if-ne v0, v12, :cond_1

    #@c
    .line 929
    const/4 v12, 0x0

    #@d
    return v12

    #@e
    .line 932
    :cond_1
    const/16 v12, 0x20

    #@10
    ushr-long v8, p0, v12

    #@12
    .line 933
    .local v8, "targCEshifted":J
    const/16 v12, 0x20

    #@14
    ushr-long v2, p2, v12

    #@16
    .line 936
    .local v2, "patCEshifted":J
    const-wide v12, 0xffff0000L

    #@1b
    .line 937
    and-long/2addr v12, v8

    #@1c
    long-to-int v7, v12

    #@1d
    .line 936
    .local v7, "targLev1":I
    const-wide v12, 0xffff0000L

    #@22
    .line 938
    and-long/2addr v12, v2

    #@23
    long-to-int v4, v12

    #@24
    .line 939
    .local v4, "patLev1":I
    if-eq v7, v4, :cond_4

    #@26
    .line 940
    if-nez v7, :cond_2

    #@28
    .line 941
    const/4 v12, 0x1

    #@29
    return v12

    #@2a
    .line 943
    :cond_2
    if-nez v4, :cond_3

    #@2c
    .line 944
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@2e
    move-object/from16 v0, p4

    #@30
    if-ne v0, v12, :cond_3

    #@32
    .line 945
    const/4 v12, 0x2

    #@33
    return v12

    #@34
    .line 947
    :cond_3
    const/4 v12, 0x0

    #@35
    return v12

    #@36
    .line 950
    :cond_4
    const-wide/32 v12, 0xffff

    #@39
    .line 951
    and-long/2addr v12, v8

    #@3a
    long-to-int v10, v12

    #@3b
    .line 950
    .local v10, "targLev2":I
    const-wide/32 v12, 0xffff

    #@3e
    .line 952
    and-long/2addr v12, v2

    #@3f
    long-to-int v5, v12

    #@40
    .line 953
    .local v5, "patLev2":I
    if-eq v10, v5, :cond_9

    #@42
    .line 954
    if-nez v10, :cond_5

    #@44
    .line 955
    const/4 v12, 0x1

    #@45
    return v12

    #@46
    .line 957
    :cond_5
    if-nez v5, :cond_6

    #@48
    .line 958
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@4a
    move-object/from16 v0, p4

    #@4c
    if-ne v0, v12, :cond_6

    #@4e
    .line 959
    const/4 v12, 0x2

    #@4f
    return v12

    #@50
    .line 961
    :cond_6
    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    #@52
    if-eq v5, v12, :cond_7

    #@54
    .line 962
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@56
    move-object/from16 v0, p4

    #@58
    if-ne v0, v12, :cond_8

    #@5a
    .line 963
    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    #@5c
    if-ne v10, v12, :cond_8

    #@5e
    :cond_7
    const/4 v12, -0x1

    #@5f
    .line 961
    :goto_0
    return v12

    #@60
    .line 963
    :cond_8
    const/4 v12, 0x0

    #@61
    goto :goto_0

    #@62
    .line 966
    :cond_9
    const-wide v12, 0xffff0000L

    #@67
    .line 967
    and-long/2addr v12, p0

    #@68
    long-to-int v11, v12

    #@69
    .line 966
    .local v11, "targLev3":I
    const-wide v12, 0xffff0000L

    #@6e
    .line 968
    and-long v12, v12, p2

    #@70
    long-to-int v6, v12

    #@71
    .line 969
    .local v6, "patLev3":I
    if-eq v11, v6, :cond_c

    #@73
    .line 970
    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    #@75
    if-eq v6, v12, :cond_a

    #@77
    .line 971
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@79
    move-object/from16 v0, p4

    #@7b
    if-ne v0, v12, :cond_b

    #@7d
    .line 972
    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    #@7f
    if-ne v11, v12, :cond_b

    #@81
    :cond_a
    const/4 v12, -0x1

    #@82
    .line 970
    :goto_1
    return v12

    #@83
    .line 972
    :cond_b
    const/4 v12, 0x0

    #@84
    goto :goto_1

    #@85
    .line 975
    :cond_c
    const/4 v12, -0x1

    #@86
    return v12
.end method

.method private getCE(I)I
    .locals 2
    .param p1, "sourcece"    # I

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 607
    iget v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    #@3
    and-int/2addr p1, v0

    #@4
    .line 609
    iget-boolean v0, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 615
    iget v0, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    #@a
    if-le v0, p1, :cond_0

    #@c
    .line 616
    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@e
    if-lt v0, v1, :cond_1

    #@10
    .line 617
    const/high16 v0, -0x10000

    #@12
    and-int/2addr p1, v0

    #@13
    .line 626
    :cond_0
    :goto_0
    return p1

    #@14
    .line 619
    :cond_1
    const/4 p1, 0x0

    #@15
    goto :goto_0

    #@16
    .line 622
    :cond_2
    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@18
    if-lt v0, v1, :cond_0

    #@1a
    if-nez p1, :cond_0

    #@1c
    .line 623
    const p1, 0xffff

    #@1f
    goto :goto_0
.end method

.method private static getMask(I)I
    .locals 1
    .param p0, "strength"    # I

    #@0
    .prologue
    .line 561
    packed-switch p0, :pswitch_data_0

    #@3
    .line 567
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 563
    :pswitch_0
    const/high16 v0, -0x10000

    #@7
    return v0

    #@8
    .line 565
    :pswitch_1
    const/16 v0, -0x100

    #@a
    return v0

    #@b
    .line 561
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/text/CharacterIterator;
    .param p1, "start"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 1579
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@5
    .line 1580
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    #@8
    move-result v1

    #@9
    .line 1581
    .local v1, "offset":I
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@c
    .line 1582
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@f
    .line 1583
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    #@12
    move-result v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 1584
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    #@19
    .line 1582
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1586
    :cond_0
    invoke-interface {p0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@1f
    .line 1587
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    return-object v3
.end method

.method private handleNextCanonical()Z
    .locals 1

    #@0
    .prologue
    .line 1501
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCommonImpl()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private handleNextCommonImpl()Z
    .locals 5

    #@0
    .prologue
    .line 1505
    iget-object v2, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@5
    move-result v1

    #@6
    .line 1506
    .local v1, "textOffset":I
    new-instance v0, Landroid/icu/text/StringSearch$Match;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {v0, v2}, Landroid/icu/text/StringSearch$Match;-><init>(Landroid/icu/text/StringSearch$Match;)V

    #@c
    .line 1508
    .local v0, "match":Landroid/icu/text/StringSearch$Match;
    invoke-direct {p0, v1, v0}, Landroid/icu/text/StringSearch;->search(ILandroid/icu/text/StringSearch$Match;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1509
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@14
    iget v3, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@16
    iput v3, v2, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@18
    .line 1510
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1a
    iget v3, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    #@1c
    iget v4, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@1e
    sub-int/2addr v3, v4

    #@1f
    invoke-virtual {v2, v3}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@22
    .line 1511
    const/4 v2, 0x1

    #@23
    return v2

    #@24
    .line 1513
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    #@27
    .line 1514
    const/4 v2, 0x0

    #@28
    return v2
.end method

.method private handleNextExact()Z
    .locals 1

    #@0
    .prologue
    .line 1497
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCommonImpl()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private handlePreviousCanonical()Z
    .locals 1

    #@0
    .prologue
    .line 1528
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCommonImpl()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private handlePreviousCommonImpl()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 1534
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@4
    iget-boolean v5, v5, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    #@6
    if-eqz v5, :cond_4

    #@8
    .line 1535
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a
    iget v5, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@c
    const/4 v6, -0x1

    #@d
    if-eq v5, v6, :cond_0

    #@f
    .line 1536
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@11
    iget v5, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@13
    iget-object v6, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@15
    invoke-virtual {v6}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    #@18
    move-result v6

    #@19
    add-int/2addr v5, v6

    #@1a
    add-int/lit8 v4, v5, -0x1

    #@1c
    .line 1557
    .local v4, "textOffset":I
    :goto_0
    new-instance v0, Landroid/icu/text/StringSearch$Match;

    #@1e
    invoke-direct {v0, v9}, Landroid/icu/text/StringSearch$Match;-><init>(Landroid/icu/text/StringSearch$Match;)V

    #@21
    .line 1558
    .local v0, "match":Landroid/icu/text/StringSearch$Match;
    invoke-direct {p0, v4, v0}, Landroid/icu/text/StringSearch;->searchBackwards(ILandroid/icu/text/StringSearch$Match;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_5

    #@27
    .line 1559
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@29
    iget v6, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@2b
    iput v6, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@2d
    .line 1560
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2f
    iget v6, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    #@31
    iget v7, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@33
    sub-int/2addr v6, v7

    #@34
    invoke-virtual {v5, v6}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@37
    .line 1561
    const/4 v5, 0x1

    #@38
    return v5

    #@39
    .line 1539
    .end local v0    # "match":Landroid/icu/text/StringSearch$Match;
    .end local v4    # "textOffset":I
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    #@3c
    .line 1540
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initTextProcessedIter()Z

    #@3f
    move-result v5

    #@40
    if-nez v5, :cond_1

    #@42
    .line 1541
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    #@45
    .line 1542
    return v8

    #@46
    .line 1544
    :cond_1
    const/4 v1, 0x0

    #@47
    .local v1, "nPCEs":I
    :goto_1
    iget-object v5, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@49
    iget v5, v5, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@4b
    add-int/lit8 v5, v5, -0x1

    #@4d
    if-ge v1, v5, :cond_2

    #@4f
    .line 1545
    iget-object v5, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    #@51
    invoke-virtual {v5, v9}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    #@54
    move-result-wide v2

    #@55
    .line 1546
    .local v2, "pce":J
    const-wide/16 v6, -0x1

    #@57
    cmp-long v5, v2, v6

    #@59
    if-nez v5, :cond_3

    #@5b
    .line 1551
    .end local v2    # "pce":J
    :cond_2
    iget-object v5, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@5d
    invoke-virtual {v5}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@60
    move-result v4

    #@61
    .restart local v4    # "textOffset":I
    goto :goto_0

    #@62
    .line 1544
    .end local v4    # "textOffset":I
    .restart local v2    # "pce":J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@64
    goto :goto_1

    #@65
    .line 1554
    .end local v1    # "nPCEs":I
    .end local v2    # "pce":J
    :cond_4
    iget-object v5, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@67
    invoke-virtual {v5}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@6a
    move-result v4

    #@6b
    .restart local v4    # "textOffset":I
    goto :goto_0

    #@6c
    .line 1563
    .restart local v0    # "match":Landroid/icu/text/StringSearch$Match;
    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    #@6f
    .line 1564
    return v8
.end method

.method private handlePreviousExact()Z
    .locals 1

    #@0
    .prologue
    .line 1524
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCommonImpl()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private initTextProcessedIter()Z
    .locals 2

    #@0
    .prologue
    .line 872
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 873
    new-instance v0, Landroid/icu/text/StringSearch$CollationPCE;

    #@6
    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@8
    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE;-><init>(Landroid/icu/text/CollationElementIterator;)V

    #@b
    iput-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    #@d
    .line 877
    :goto_0
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 875
    :cond_0
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    #@11
    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@13
    invoke-virtual {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/CollationElementIterator;)V

    #@16
    goto :goto_0
.end method

.method private initialize()V
    .locals 0

    #@0
    .prologue
    .line 803
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePattern()I

    #@3
    .line 802
    return-void
.end method

.method private initializePattern()I
    .locals 2

    #@0
    .prologue
    .line 782
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@2
    const/4 v1, 0x0

    #@3
    iput-object v1, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@5
    .line 785
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePatternCETable()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private initializePatternCETable()I
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 689
    const/16 v9, 0x100

    #@3
    new-array v1, v9, [I

    #@5
    .line 690
    .local v1, "cetable":[I
    array-length v2, v1

    #@6
    .line 691
    .local v2, "cetablesize":I
    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@8
    iget-object v9, v9, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@d
    move-result v6

    #@e
    .line 692
    .local v6, "patternlength":I
    iget-object v3, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@10
    .line 694
    .local v3, "coleiter":Landroid/icu/text/CollationElementIterator;
    if-nez v3, :cond_1

    #@12
    .line 695
    new-instance v3, Landroid/icu/text/CollationElementIterator;

    #@14
    .end local v3    # "coleiter":Landroid/icu/text/CollationElementIterator;
    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@16
    iget-object v9, v9, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@18
    iget-object v10, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@1a
    invoke-direct {v3, v9, v10}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    #@1d
    .line 696
    .restart local v3    # "coleiter":Landroid/icu/text/CollationElementIterator;
    iput-object v3, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@1f
    .line 701
    :goto_0
    const/4 v5, 0x0

    #@20
    .line 702
    .local v5, "offset":I
    const/4 v7, 0x0

    #@21
    .line 705
    .local v7, "result":I
    :goto_1
    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->next()I

    #@24
    move-result v0

    #@25
    .local v0, "ce":I
    const/4 v9, -0x1

    #@26
    if-eq v0, v9, :cond_2

    #@28
    .line 706
    invoke-direct {p0, v0}, Landroid/icu/text/StringSearch;->getCE(I)I

    #@2b
    move-result v4

    #@2c
    .line 707
    .local v4, "newce":I
    if-eqz v4, :cond_0

    #@2e
    .line 709
    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@31
    move-result v9

    #@32
    sub-int v9, v6, v9

    #@34
    add-int/lit8 v9, v9, 0x1

    #@36
    .line 708
    invoke-static {v1, v5, v2, v4, v9}, Landroid/icu/text/StringSearch;->addToIntArray([IIIII)[I

    #@39
    move-result-object v8

    #@3a
    .line 710
    .local v8, "temp":[I
    add-int/lit8 v5, v5, 0x1

    #@3c
    .line 711
    move-object v1, v8

    #@3d
    .line 713
    .end local v8    # "temp":[I
    :cond_0
    invoke-virtual {v3, v0}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(I)I

    #@40
    move-result v9

    #@41
    add-int/lit8 v9, v9, -0x1

    #@43
    add-int/2addr v7, v9

    #@44
    goto :goto_1

    #@45
    .line 698
    .end local v0    # "ce":I
    .end local v4    # "newce":I
    .end local v5    # "offset":I
    .end local v7    # "result":I
    :cond_1
    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@47
    iget-object v9, v9, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@49
    invoke-virtual {v3, v9}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    #@4c
    goto :goto_0

    #@4d
    .line 716
    .restart local v0    # "ce":I
    .restart local v5    # "offset":I
    .restart local v7    # "result":I
    :cond_2
    aput v11, v1, v5

    #@4f
    .line 717
    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@51
    iput-object v1, v9, Landroid/icu/text/StringSearch$Pattern;->CE_:[I

    #@53
    .line 718
    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@55
    iput v5, v9, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    #@57
    .line 720
    return v7
.end method

.method private initializePatternPCETable()I
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 732
    const/16 v6, 0x100

    #@3
    new-array v1, v6, [J

    #@5
    .line 733
    .local v1, "pcetable":[J
    array-length v3, v1

    #@6
    .line 734
    .local v3, "pcetablesize":I
    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@8
    iget-object v6, v6, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@d
    move-result v8

    #@e
    .line 735
    .local v8, "patternlength":I
    iget-object v0, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@10
    .line 737
    .local v0, "coleiter":Landroid/icu/text/CollationElementIterator;
    if-nez v0, :cond_0

    #@12
    .line 738
    new-instance v0, Landroid/icu/text/CollationElementIterator;

    #@14
    .end local v0    # "coleiter":Landroid/icu/text/CollationElementIterator;
    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@16
    iget-object v6, v6, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@18
    iget-object v11, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@1a
    invoke-direct {v0, v6, v11}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    #@1d
    .line 739
    .restart local v0    # "coleiter":Landroid/icu/text/CollationElementIterator;
    iput-object v0, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@1f
    .line 744
    :goto_0
    const/4 v2, 0x0

    #@20
    .line 745
    .local v2, "offset":I
    const/4 v9, 0x0

    #@21
    .line 748
    .local v9, "result":I
    new-instance v7, Landroid/icu/text/StringSearch$CollationPCE;

    #@23
    invoke-direct {v7, v0}, Landroid/icu/text/StringSearch$CollationPCE;-><init>(Landroid/icu/text/CollationElementIterator;)V

    #@26
    .line 753
    .local v7, "iter":Landroid/icu/text/StringSearch$CollationPCE;
    :goto_1
    invoke-virtual {v7, v14}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    #@29
    move-result-wide v4

    #@2a
    .local v4, "pce":J
    const-wide/16 v12, -0x1

    #@2c
    cmp-long v6, v4, v12

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 754
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@33
    move-result v6

    #@34
    sub-int v6, v8, v6

    #@36
    add-int/lit8 v6, v6, 0x1

    #@38
    invoke-static/range {v1 .. v6}, Landroid/icu/text/StringSearch;->addToLongArray([JIIJI)[J

    #@3b
    move-result-object v10

    #@3c
    .line 755
    .local v10, "temp":[J
    add-int/lit8 v2, v2, 0x1

    #@3e
    .line 756
    move-object v1, v10

    #@3f
    goto :goto_1

    #@40
    .line 741
    .end local v2    # "offset":I
    .end local v4    # "pce":J
    .end local v7    # "iter":Landroid/icu/text/StringSearch$CollationPCE;
    .end local v9    # "result":I
    .end local v10    # "temp":[J
    :cond_0
    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@42
    iget-object v6, v6, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@44
    invoke-virtual {v0, v6}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    #@47
    goto :goto_0

    #@48
    .line 759
    .restart local v2    # "offset":I
    .restart local v4    # "pce":J
    .restart local v7    # "iter":Landroid/icu/text/StringSearch$CollationPCE;
    .restart local v9    # "result":I
    :cond_1
    const-wide/16 v12, 0x0

    #@4a
    aput-wide v12, v1, v2

    #@4c
    .line 760
    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@4e
    iput-object v1, v6, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@50
    .line 761
    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@52
    iput v2, v6, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@54
    .line 763
    return v9
.end method

.method private isBreakBoundary(I)Z
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 905
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v0

    #@6
    .line 907
    .local v0, "breakiterator":Landroid/icu/text/BreakIterator;
    if-nez v0, :cond_0

    #@8
    .line 908
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a
    iget-object v0, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@c
    .line 911
    :cond_0
    if-eqz v0, :cond_1

    #@e
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    :cond_1
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method private static final isOutOfBounds(III)Z
    .locals 1
    .param p0, "textstart"    # I
    .param p1, "textlimit"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 845
    if-lt p2, p0, :cond_0

    #@3
    if-le p2, p1, :cond_1

    #@5
    :cond_0
    :goto_0
    return v0

    #@6
    :cond_1
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private nextBoundaryAfter(I)I
    .locals 2
    .param p1, "startIndex"    # I

    #@0
    .prologue
    .line 886
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v0

    #@6
    .line 888
    .local v0, "breakiterator":Landroid/icu/text/BreakIterator;
    if-nez v0, :cond_0

    #@8
    .line 889
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a
    iget-object v0, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@c
    .line 892
    :cond_0
    if-eqz v0, :cond_1

    #@e
    .line 893
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 896
    :cond_1
    return p1
.end method

.method private search(ILandroid/icu/text/StringSearch$Match;)Z
    .locals 30
    .param p1, "startIdx"    # I
    .param p2, "m"    # Landroid/icu/text/StringSearch$Match;

    #@0
    .prologue
    .line 989
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@4
    move-object/from16 v25, v0

    #@6
    move-object/from16 v0, v25

    #@8
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    #@a
    move/from16 v25, v0

    #@c
    if-eqz v25, :cond_0

    #@e
    .line 990
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@12
    move-object/from16 v25, v0

    #@14
    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@17
    move-result v25

    #@18
    move/from16 v0, p1

    #@1a
    move/from16 v1, v25

    #@1c
    if-ge v0, v1, :cond_1

    #@1e
    .line 992
    :cond_0
    new-instance v25, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v26, Ljava/lang/StringBuilder;

    #@22
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v27, "search("

    #@28
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v26

    #@2c
    move-object/from16 v0, v26

    #@2e
    move/from16 v1, p1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v26

    #@34
    const-string/jumbo v27, ", m) - expected position to be between "

    #@37
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v26

    #@3b
    .line 993
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3f
    move-object/from16 v27, v0

    #@41
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@44
    move-result v27

    #@45
    .line 992
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v26

    #@49
    .line 993
    const-string/jumbo v27, " and "

    #@4c
    .line 992
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v26

    #@50
    .line 993
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@54
    move-object/from16 v27, v0

    #@56
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@59
    move-result v27

    #@5a
    .line 992
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v26

    #@5e
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v26

    #@62
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v25

    #@66
    .line 991
    :cond_1
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@6a
    move-object/from16 v25, v0

    #@6c
    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@6f
    move-result v25

    #@70
    move/from16 v0, p1

    #@72
    move/from16 v1, v25

    #@74
    if-gt v0, v1, :cond_0

    #@76
    .line 996
    move-object/from16 v0, p0

    #@78
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@7a
    move-object/from16 v25, v0

    #@7c
    move-object/from16 v0, v25

    #@7e
    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@80
    move-object/from16 v25, v0

    #@82
    if-nez v25, :cond_2

    #@84
    .line 997
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    #@87
    .line 1000
    :cond_2
    move-object/from16 v0, p0

    #@89
    iget-object v0, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@8b
    move-object/from16 v25, v0

    #@8d
    move-object/from16 v0, v25

    #@8f
    move/from16 v1, p1

    #@91
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@94
    .line 1001
    new-instance v8, Landroid/icu/text/StringSearch$CEBuffer;

    #@96
    move-object/from16 v0, p0

    #@98
    invoke-direct {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;-><init>(Landroid/icu/text/StringSearch;)V

    #@9b
    .line 1003
    .local v8, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    const/16 v23, 0x0

    #@9d
    .line 1004
    .local v23, "targetIx":I
    const/16 v22, 0x0

    #@9f
    .line 1008
    .local v22, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    const/4 v13, -0x1

    #@a0
    .line 1009
    .local v13, "mStart":I
    const/4 v12, -0x1

    #@a1
    .line 1026
    .local v12, "mLimit":I
    const/16 v23, 0x0

    #@a3
    .line 1027
    .end local v22    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :goto_0
    const/4 v10, 0x1

    #@a4
    .line 1030
    .local v10, "found":Z
    const/16 v24, 0x0

    #@a6
    .line 1031
    .local v24, "targetIxOffset":I
    const-wide/16 v18, 0x0

    #@a8
    .line 1035
    .local v18, "patCE":J
    move/from16 v0, v23

    #@aa
    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    #@ad
    move-result-object v9

    #@ae
    .line 1036
    .local v9, "firstCEI":Landroid/icu/text/StringSearch$CEI;
    if-nez v9, :cond_3

    #@b0
    .line 1037
    new-instance v25, Landroid/icu/util/ICUException;

    #@b2
    new-instance v26, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v27, "CEBuffer.get("

    #@ba
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v26

    #@be
    move-object/from16 v0, v26

    #@c0
    move/from16 v1, v23

    #@c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v26

    #@c6
    const-string/jumbo v27, ") returned null."

    #@c9
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v26

    #@cd
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v26

    #@d1
    invoke-direct/range {v25 .. v26}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v25

    #@d5
    .line 1040
    :cond_3
    const/16 v20, 0x0

    #@d7
    .local v20, "patIx":I
    :goto_1
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@db
    move-object/from16 v25, v0

    #@dd
    move-object/from16 v0, v25

    #@df
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@e1
    move/from16 v25, v0

    #@e3
    move/from16 v0, v20

    #@e5
    move/from16 v1, v25

    #@e7
    if-ge v0, v1, :cond_4

    #@e9
    .line 1041
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@ed
    move-object/from16 v25, v0

    #@ef
    move-object/from16 v0, v25

    #@f1
    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@f3
    move-object/from16 v25, v0

    #@f5
    aget-wide v18, v25, v20

    #@f7
    .line 1042
    add-int v25, v23, v20

    #@f9
    add-int v25, v25, v24

    #@fb
    move/from16 v0, v25

    #@fd
    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    #@100
    move-result-object v22

    #@101
    .line 1046
    .local v22, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, v22

    #@103
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@105
    move-wide/from16 v26, v0

    #@107
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@10b
    move-object/from16 v25, v0

    #@10d
    move-object/from16 v0, v25

    #@10f
    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@111
    move-object/from16 v25, v0

    #@113
    move-wide/from16 v0, v26

    #@115
    move-wide/from16 v2, v18

    #@117
    move-object/from16 v4, v25

    #@119
    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    #@11c
    move-result v7

    #@11d
    .line 1047
    .local v7, "ceMatch":I
    if-nez v7, :cond_6

    #@11f
    .line 1048
    const/4 v10, 0x0

    #@120
    .line 1061
    .end local v7    # "ceMatch":I
    .end local v22    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_4
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@124
    move-object/from16 v25, v0

    #@126
    move-object/from16 v0, v25

    #@128
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@12a
    move/from16 v25, v0

    #@12c
    add-int v24, v24, v25

    #@12e
    .line 1063
    if-nez v10, :cond_9

    #@130
    if-eqz v22, :cond_5

    #@132
    move-object/from16 v0, v22

    #@134
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@136
    move-wide/from16 v26, v0

    #@138
    const-wide/16 v28, -0x1

    #@13a
    cmp-long v25, v26, v28

    #@13c
    if-eqz v25, :cond_9

    #@13e
    .line 1026
    :cond_5
    add-int/lit8 v23, v23, 0x1

    #@140
    goto/16 :goto_0

    #@142
    .line 1050
    .restart local v7    # "ceMatch":I
    .restart local v22    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_6
    if-lez v7, :cond_7

    #@144
    .line 1051
    const/16 v25, 0x1

    #@146
    move/from16 v0, v25

    #@148
    if-ne v7, v0, :cond_8

    #@14a
    .line 1053
    add-int/lit8 v20, v20, -0x1

    #@14c
    .line 1054
    add-int/lit8 v24, v24, 0x1

    #@14e
    .line 1040
    :cond_7
    :goto_2
    add-int/lit8 v20, v20, 0x1

    #@150
    goto :goto_1

    #@151
    .line 1057
    :cond_8
    add-int/lit8 v24, v24, -0x1

    #@153
    goto :goto_2

    #@154
    .line 1068
    .end local v7    # "ceMatch":I
    .end local v22    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_9
    if-nez v10, :cond_c

    #@156
    .line 1219
    :goto_3
    if-nez v10, :cond_a

    #@158
    .line 1220
    const/4 v12, -0x1

    #@159
    .line 1221
    const/4 v13, -0x1

    #@15a
    .line 1224
    :cond_a
    if-eqz p2, :cond_b

    #@15c
    .line 1225
    move-object/from16 v0, p2

    #@15e
    iput v13, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@160
    .line 1226
    move-object/from16 v0, p2

    #@162
    iput v12, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    #@164
    .line 1229
    :cond_b
    return v10

    #@165
    .line 1078
    :cond_c
    add-int v25, v23, v24

    #@167
    add-int/lit8 v25, v25, -0x1

    #@169
    move/from16 v0, v25

    #@16b
    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    #@16e
    move-result-object v11

    #@16f
    .line 1080
    .local v11, "lastCEI":Landroid/icu/text/StringSearch$CEI;
    iget v13, v9, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@171
    .line 1081
    iget v15, v11, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@173
    .line 1091
    .local v15, "minLimit":I
    const/16 v17, 0x0

    #@175
    .line 1092
    .local v17, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@179
    move-object/from16 v25, v0

    #@17b
    move-object/from16 v0, v25

    #@17d
    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@17f
    move-object/from16 v25, v0

    #@181
    sget-object v26, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@183
    move-object/from16 v0, v25

    #@185
    move-object/from16 v1, v26

    #@187
    if-ne v0, v1, :cond_15

    #@189
    .line 1093
    add-int v25, v23, v24

    #@18b
    move/from16 v0, v25

    #@18d
    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    #@190
    move-result-object v17

    #@191
    .line 1094
    .local v17, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, v17

    #@193
    iget v14, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@195
    .line 1095
    .local v14, "maxLimit":I
    move-object/from16 v0, v17

    #@197
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@199
    move/from16 v25, v0

    #@19b
    move-object/from16 v0, v17

    #@19d
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@19f
    move/from16 v26, v0

    #@1a1
    move/from16 v0, v25

    #@1a3
    move/from16 v1, v26

    #@1a5
    if-ne v0, v1, :cond_d

    #@1a7
    move-object/from16 v0, v17

    #@1a9
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@1ab
    move-wide/from16 v26, v0

    #@1ad
    const-wide/16 v28, -0x1

    #@1af
    cmp-long v25, v26, v28

    #@1b1
    if-eqz v25, :cond_d

    #@1b3
    .line 1096
    const/4 v10, 0x0

    #@1b4
    .line 1133
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    #@1b6
    invoke-direct {v0, v13}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    #@1b9
    move-result v25

    #@1ba
    if-nez v25, :cond_e

    #@1bc
    .line 1134
    const/4 v10, 0x0

    #@1bd
    .line 1142
    :cond_e
    iget v0, v9, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@1bf
    move/from16 v21, v0

    #@1c1
    .line 1143
    .local v21, "secondIx":I
    move/from16 v0, v21

    #@1c3
    if-ne v13, v0, :cond_f

    #@1c5
    .line 1144
    const/4 v10, 0x0

    #@1c6
    .line 1159
    :cond_f
    move-object/from16 v0, p0

    #@1c8
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->breakIterator:Landroid/icu/text/BreakIterator;

    #@1ca
    move-object/from16 v25, v0

    #@1cc
    if-nez v25, :cond_19

    #@1ce
    .line 1160
    if-eqz v17, :cond_19

    #@1d0
    move-object/from16 v0, v17

    #@1d2
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@1d4
    move-wide/from16 v26, v0

    #@1d6
    const/16 v25, 0x20

    #@1d8
    ushr-long v26, v26, v25

    #@1da
    const-wide v28, 0xffff0000L

    #@1df
    and-long v26, v26, v28

    #@1e1
    const-wide/16 v28, 0x0

    #@1e3
    cmp-long v25, v26, v28

    #@1e5
    if-eqz v25, :cond_19

    #@1e7
    .line 1161
    iget v0, v11, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@1e9
    move/from16 v25, v0

    #@1eb
    move/from16 v0, v25

    #@1ed
    if-lt v14, v0, :cond_19

    #@1ef
    move-object/from16 v0, v17

    #@1f1
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@1f3
    move/from16 v25, v0

    #@1f5
    move/from16 v0, v25

    #@1f7
    if-le v0, v14, :cond_19

    #@1f9
    .line 1162
    move-object/from16 v0, p0

    #@1fb
    iget-object v0, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    #@1fd
    move-object/from16 v25, v0

    #@1ff
    move-object/from16 v0, p0

    #@201
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@203
    move-object/from16 v26, v0

    #@205
    move-object/from16 v0, v26

    #@207
    invoke-static {v0, v14}, Landroid/icu/text/StringSearch;->codePointAt(Ljava/text/CharacterIterator;I)I

    #@20a
    move-result v26

    #@20b
    invoke-virtual/range {v25 .. v26}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    #@20e
    move-result v25

    #@20f
    if-nez v25, :cond_18

    #@211
    .line 1163
    move-object/from16 v0, p0

    #@213
    iget-object v0, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    #@215
    move-object/from16 v25, v0

    #@217
    move-object/from16 v0, p0

    #@219
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@21b
    move-object/from16 v26, v0

    #@21d
    move-object/from16 v0, v26

    #@21f
    invoke-static {v0, v14}, Landroid/icu/text/StringSearch;->codePointBefore(Ljava/text/CharacterIterator;I)I

    #@222
    move-result v26

    #@223
    invoke-virtual/range {v25 .. v26}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    #@226
    move-result v6

    #@227
    .line 1175
    :goto_5
    move v12, v14

    #@228
    .line 1176
    if-ge v15, v14, :cond_10

    #@22a
    .line 1183
    iget v0, v11, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@22c
    move/from16 v25, v0

    #@22e
    move/from16 v0, v25

    #@230
    if-ne v15, v0, :cond_1a

    #@232
    move-object/from16 v0, p0

    #@234
    invoke-direct {v0, v15}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    #@237
    move-result v25

    #@238
    if-eqz v25, :cond_1a

    #@23a
    .line 1184
    move v12, v15

    #@23b
    .line 1196
    :cond_10
    :goto_6
    if-nez v6, :cond_12

    #@23d
    .line 1199
    if-le v12, v14, :cond_11

    #@23f
    .line 1200
    const/4 v10, 0x0

    #@240
    .line 1203
    :cond_11
    move-object/from16 v0, p0

    #@242
    invoke-direct {v0, v12}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    #@245
    move-result v25

    #@246
    if-nez v25, :cond_12

    #@248
    .line 1204
    const/4 v10, 0x0

    #@249
    .line 1208
    :cond_12
    move-object/from16 v0, p0

    #@24b
    invoke-direct {v0, v13, v12}, Landroid/icu/text/StringSearch;->checkIdentical(II)Z

    #@24e
    move-result v25

    #@24f
    if-nez v25, :cond_13

    #@251
    .line 1209
    const/4 v10, 0x0

    #@252
    .line 1212
    :cond_13
    if-eqz v10, :cond_5

    #@254
    goto/16 :goto_3

    #@256
    .line 1099
    .end local v21    # "secondIx":I
    .restart local v7    # "ceMatch":I
    :cond_14
    add-int/lit8 v24, v24, 0x1

    #@258
    .line 1100
    .end local v7    # "ceMatch":I
    .end local v14    # "maxLimit":I
    .end local v17    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_15
    add-int v25, v23, v24

    #@25a
    move/from16 v0, v25

    #@25c
    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    #@25f
    move-result-object v17

    #@260
    .line 1101
    .restart local v17    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, v17

    #@262
    iget v14, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@264
    .line 1103
    .restart local v14    # "maxLimit":I
    move-object/from16 v0, v17

    #@266
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@268
    move-wide/from16 v26, v0

    #@26a
    const-wide/16 v28, -0x1

    #@26c
    cmp-long v25, v26, v28

    #@26e
    if-eqz v25, :cond_d

    #@270
    .line 1109
    move-object/from16 v0, v17

    #@272
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@274
    move-wide/from16 v26, v0

    #@276
    const/16 v25, 0x20

    #@278
    ushr-long v26, v26, v25

    #@27a
    const-wide v28, 0xffff0000L

    #@27f
    and-long v26, v26, v28

    #@281
    const-wide/16 v28, 0x0

    #@283
    cmp-long v25, v26, v28

    #@285
    if-nez v25, :cond_17

    #@287
    .line 1110
    move-object/from16 v0, v17

    #@289
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@28b
    move-wide/from16 v26, v0

    #@28d
    move-object/from16 v0, p0

    #@28f
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@291
    move-object/from16 v25, v0

    #@293
    move-object/from16 v0, v25

    #@295
    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@297
    move-object/from16 v25, v0

    #@299
    move-wide/from16 v0, v26

    #@29b
    move-wide/from16 v2, v18

    #@29d
    move-object/from16 v4, v25

    #@29f
    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    #@2a2
    move-result v7

    #@2a3
    .line 1111
    .restart local v7    # "ceMatch":I
    if-eqz v7, :cond_16

    #@2a5
    const/16 v25, 0x2

    #@2a7
    move/from16 v0, v25

    #@2a9
    if-ne v7, v0, :cond_14

    #@2ab
    .line 1112
    :cond_16
    const/4 v10, 0x0

    #@2ac
    .line 1113
    goto/16 :goto_4

    #@2ae
    .line 1117
    .end local v7    # "ceMatch":I
    :cond_17
    move-object/from16 v0, v17

    #@2b0
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@2b2
    move/from16 v25, v0

    #@2b4
    move-object/from16 v0, v17

    #@2b6
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@2b8
    move/from16 v26, v0

    #@2ba
    move/from16 v0, v25

    #@2bc
    move/from16 v1, v26

    #@2be
    if-ne v0, v1, :cond_d

    #@2c0
    .line 1118
    const/4 v10, 0x0

    #@2c1
    .line 1119
    goto/16 :goto_4

    #@2c3
    .line 1162
    .restart local v21    # "secondIx":I
    :cond_18
    const/4 v6, 0x1

    #@2c4
    .local v6, "allowMidclusterMatch":Z
    goto/16 :goto_5

    #@2c6
    .line 1159
    .end local v6    # "allowMidclusterMatch":Z
    :cond_19
    const/4 v6, 0x0

    #@2c7
    .restart local v6    # "allowMidclusterMatch":Z
    goto/16 :goto_5

    #@2c9
    .line 1186
    .end local v6    # "allowMidclusterMatch":Z
    :cond_1a
    move-object/from16 v0, p0

    #@2cb
    invoke-direct {v0, v15}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    #@2ce
    move-result v16

    #@2cf
    .line 1190
    .local v16, "nba":I
    iget v0, v11, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@2d1
    move/from16 v25, v0

    #@2d3
    move/from16 v0, v16

    #@2d5
    move/from16 v1, v25

    #@2d7
    if-lt v0, v1, :cond_10

    #@2d9
    if-eqz v6, :cond_1b

    #@2db
    move/from16 v0, v16

    #@2dd
    if-ge v0, v14, :cond_10

    #@2df
    .line 1191
    :cond_1b
    move/from16 v12, v16

    #@2e1
    goto/16 :goto_6
.end method

.method private searchBackwards(ILandroid/icu/text/StringSearch$Match;)Z
    .locals 32
    .param p1, "startIdx"    # I
    .param p2, "m"    # Landroid/icu/text/StringSearch$Match;

    #@0
    .prologue
    .line 1265
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@4
    move-object/from16 v27, v0

    #@6
    move-object/from16 v0, v27

    #@8
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    #@a
    move/from16 v27, v0

    #@c
    if-eqz v27, :cond_0

    #@e
    .line 1266
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@12
    move-object/from16 v27, v0

    #@14
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@17
    move-result v27

    #@18
    move/from16 v0, p1

    #@1a
    move/from16 v1, v27

    #@1c
    if-ge v0, v1, :cond_1

    #@1e
    .line 1268
    :cond_0
    new-instance v27, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v28, Ljava/lang/StringBuilder;

    #@22
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v29, "searchBackwards("

    #@28
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v28

    #@2c
    move-object/from16 v0, v28

    #@2e
    move/from16 v1, p1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v28

    #@34
    const-string/jumbo v29, ", m) - expected position to be between "

    #@37
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v28

    #@3b
    .line 1269
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3f
    move-object/from16 v29, v0

    #@41
    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@44
    move-result v29

    #@45
    .line 1268
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v28

    #@49
    .line 1269
    const-string/jumbo v29, " and "

    #@4c
    .line 1268
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v28

    #@50
    .line 1269
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@54
    move-object/from16 v29, v0

    #@56
    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@59
    move-result v29

    #@5a
    .line 1268
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v28

    #@5e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v28

    #@62
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v27

    #@66
    .line 1267
    :cond_1
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@6a
    move-object/from16 v27, v0

    #@6c
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@6f
    move-result v27

    #@70
    move/from16 v0, p1

    #@72
    move/from16 v1, v27

    #@74
    if-gt v0, v1, :cond_0

    #@76
    .line 1272
    move-object/from16 v0, p0

    #@78
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@7a
    move-object/from16 v27, v0

    #@7c
    move-object/from16 v0, v27

    #@7e
    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@80
    move-object/from16 v27, v0

    #@82
    if-nez v27, :cond_2

    #@84
    .line 1273
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    #@87
    .line 1276
    :cond_2
    new-instance v9, Landroid/icu/text/StringSearch$CEBuffer;

    #@89
    move-object/from16 v0, p0

    #@8b
    invoke-direct {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;-><init>(Landroid/icu/text/StringSearch;)V

    #@8e
    .line 1277
    .local v9, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    const/16 v25, 0x0

    #@90
    .line 1288
    .local v25, "targetIx":I
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@94
    move-object/from16 v27, v0

    #@96
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@99
    move-result v27

    #@9a
    move/from16 v0, p1

    #@9c
    move/from16 v1, v27

    #@9e
    if-ge v0, v1, :cond_4

    #@a0
    .line 1289
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a4
    move-object/from16 v27, v0

    #@a6
    move-object/from16 v0, v27

    #@a8
    iget-object v7, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@aa
    .line 1290
    .local v7, "bi":Landroid/icu/text/BreakIterator;
    move/from16 v0, p1

    #@ac
    invoke-virtual {v7, v0}, Landroid/icu/text/BreakIterator;->following(I)I

    #@af
    move-result v19

    #@b0
    .line 1292
    .local v19, "next":I
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@b4
    move-object/from16 v27, v0

    #@b6
    move-object/from16 v0, v27

    #@b8
    move/from16 v1, v19

    #@ba
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@bd
    .line 1294
    const/16 v25, 0x0

    #@bf
    .line 1295
    :goto_0
    move/from16 v0, v25

    #@c1
    invoke-virtual {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    #@c4
    move-result-object v27

    #@c5
    move-object/from16 v0, v27

    #@c7
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@c9
    move/from16 v27, v0

    #@cb
    move/from16 v0, v27

    #@cd
    move/from16 v1, p1

    #@cf
    if-ge v0, v1, :cond_3

    #@d1
    .line 1303
    .end local v7    # "bi":Landroid/icu/text/BreakIterator;
    .end local v19    # "next":I
    :goto_1
    const/16 v24, 0x0

    #@d3
    .line 1307
    .local v24, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    move/from16 v13, v25

    #@d5
    .line 1308
    .local v13, "limitIx":I
    const/4 v15, -0x1

    #@d6
    .line 1309
    .local v15, "mStart":I
    const/4 v14, -0x1

    #@d7
    .line 1320
    .end local v24    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .local v14, "mLimit":I
    :goto_2
    const/4 v11, 0x1

    #@d8
    .line 1324
    .local v11, "found":Z
    move/from16 v0, v25

    #@da
    invoke-virtual {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    #@dd
    move-result-object v12

    #@de
    .line 1325
    .local v12, "lastCEI":Landroid/icu/text/StringSearch$CEI;
    if-nez v12, :cond_5

    #@e0
    .line 1326
    new-instance v27, Landroid/icu/util/ICUException;

    #@e2
    new-instance v28, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v29, "CEBuffer.getPrevious("

    #@ea
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v28

    #@ee
    move-object/from16 v0, v28

    #@f0
    move/from16 v1, v25

    #@f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v28

    #@f6
    const-string/jumbo v29, ") returned null."

    #@f9
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v28

    #@fd
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v28

    #@101
    invoke-direct/range {v27 .. v28}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@104
    throw v27

    #@105
    .line 1294
    .end local v11    # "found":Z
    .end local v12    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v13    # "limitIx":I
    .end local v14    # "mLimit":I
    .end local v15    # "mStart":I
    .restart local v7    # "bi":Landroid/icu/text/BreakIterator;
    .restart local v19    # "next":I
    :cond_3
    add-int/lit8 v25, v25, 0x1

    #@107
    goto :goto_0

    #@108
    .line 1300
    .end local v7    # "bi":Landroid/icu/text/BreakIterator;
    .end local v19    # "next":I
    :cond_4
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@10c
    move-object/from16 v27, v0

    #@10e
    move-object/from16 v0, v27

    #@110
    move/from16 v1, p1

    #@112
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@115
    goto :goto_1

    #@116
    .line 1330
    .restart local v11    # "found":Z
    .restart local v12    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .restart local v13    # "limitIx":I
    .restart local v14    # "mLimit":I
    .restart local v15    # "mStart":I
    :cond_5
    const/16 v26, 0x0

    #@118
    .line 1331
    .local v26, "targetIxOffset":I
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@11c
    move-object/from16 v27, v0

    #@11e
    move-object/from16 v0, v27

    #@120
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@122
    move/from16 v27, v0

    #@124
    add-int/lit8 v21, v27, -0x1

    #@126
    .local v21, "patIx":I
    :goto_3
    if-ltz v21, :cond_6

    #@128
    .line 1332
    move-object/from16 v0, p0

    #@12a
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@12c
    move-object/from16 v27, v0

    #@12e
    move-object/from16 v0, v27

    #@130
    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@132
    move-object/from16 v27, v0

    #@134
    aget-wide v22, v27, v21

    #@136
    .line 1334
    .local v22, "patCE":J
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@13a
    move-object/from16 v27, v0

    #@13c
    move-object/from16 v0, v27

    #@13e
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@140
    move/from16 v27, v0

    #@142
    add-int v27, v27, v25

    #@144
    add-int/lit8 v27, v27, -0x1

    #@146
    sub-int v27, v27, v21

    #@148
    add-int v27, v27, v26

    #@14a
    move/from16 v0, v27

    #@14c
    invoke-virtual {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    #@14f
    move-result-object v24

    #@150
    .line 1338
    .local v24, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, v24

    #@152
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@154
    move-wide/from16 v28, v0

    #@156
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@15a
    move-object/from16 v27, v0

    #@15c
    move-object/from16 v0, v27

    #@15e
    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@160
    move-object/from16 v27, v0

    #@162
    move-wide/from16 v0, v28

    #@164
    move-wide/from16 v2, v22

    #@166
    move-object/from16 v4, v27

    #@168
    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    #@16b
    move-result v8

    #@16c
    .line 1339
    .local v8, "ceMatch":I
    if-nez v8, :cond_8

    #@16e
    .line 1340
    const/4 v11, 0x0

    #@16f
    .line 1354
    .end local v8    # "ceMatch":I
    .end local v22    # "patCE":J
    .end local v24    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_6
    if-nez v11, :cond_b

    #@171
    if-eqz v24, :cond_7

    #@173
    move-object/from16 v0, v24

    #@175
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@177
    move-wide/from16 v28, v0

    #@179
    const-wide/16 v30, -0x1

    #@17b
    cmp-long v27, v28, v30

    #@17d
    if-eqz v27, :cond_b

    #@17f
    .line 1319
    :cond_7
    add-int/lit8 v25, v25, 0x1

    #@181
    goto/16 :goto_2

    #@183
    .line 1342
    .restart local v8    # "ceMatch":I
    .restart local v22    # "patCE":J
    .restart local v24    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_8
    if-lez v8, :cond_9

    #@185
    .line 1343
    const/16 v27, 0x1

    #@187
    move/from16 v0, v27

    #@189
    if-ne v8, v0, :cond_a

    #@18b
    .line 1345
    add-int/lit8 v21, v21, 0x1

    #@18d
    .line 1346
    add-int/lit8 v26, v26, 0x1

    #@18f
    .line 1331
    :cond_9
    :goto_4
    add-int/lit8 v21, v21, -0x1

    #@191
    goto :goto_3

    #@192
    .line 1349
    :cond_a
    add-int/lit8 v26, v26, -0x1

    #@194
    goto :goto_4

    #@195
    .line 1359
    .end local v8    # "ceMatch":I
    .end local v22    # "patCE":J
    .end local v24    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_b
    if-nez v11, :cond_e

    #@197
    .line 1478
    :goto_5
    if-nez v11, :cond_c

    #@199
    .line 1479
    const/4 v14, -0x1

    #@19a
    .line 1480
    const/4 v15, -0x1

    #@19b
    .line 1483
    :cond_c
    if-eqz p2, :cond_d

    #@19d
    .line 1484
    move-object/from16 v0, p2

    #@19f
    iput v15, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@1a1
    .line 1485
    move-object/from16 v0, p2

    #@1a3
    iput v14, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    #@1a5
    .line 1488
    :cond_d
    return v11

    #@1a6
    .line 1369
    :cond_e
    move-object/from16 v0, p0

    #@1a8
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@1aa
    move-object/from16 v27, v0

    #@1ac
    move-object/from16 v0, v27

    #@1ae
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@1b0
    move/from16 v27, v0

    #@1b2
    add-int v27, v27, v25

    #@1b4
    add-int/lit8 v27, v27, -0x1

    #@1b6
    add-int v27, v27, v26

    #@1b8
    move/from16 v0, v27

    #@1ba
    invoke-virtual {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    #@1bd
    move-result-object v10

    #@1be
    .line 1370
    .local v10, "firstCEI":Landroid/icu/text/StringSearch$CEI;
    iget v15, v10, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@1c0
    .line 1378
    move-object/from16 v0, p0

    #@1c2
    invoke-direct {v0, v15}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    #@1c5
    move-result v27

    #@1c6
    if-nez v27, :cond_f

    #@1c8
    .line 1379
    const/4 v11, 0x0

    #@1c9
    .line 1384
    :cond_f
    iget v0, v10, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@1cb
    move/from16 v27, v0

    #@1cd
    move/from16 v0, v27

    #@1cf
    if-ne v15, v0, :cond_10

    #@1d1
    .line 1385
    const/4 v11, 0x0

    #@1d2
    .line 1388
    :cond_10
    iget v0, v12, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@1d4
    move/from16 v17, v0

    #@1d6
    .line 1390
    .local v17, "minLimit":I
    if-lez v25, :cond_19

    #@1d8
    .line 1399
    add-int/lit8 v27, v25, -0x1

    #@1da
    move/from16 v0, v27

    #@1dc
    invoke-virtual {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    #@1df
    move-result-object v20

    #@1e0
    .line 1401
    .local v20, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, v20

    #@1e2
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@1e4
    move/from16 v27, v0

    #@1e6
    move-object/from16 v0, v20

    #@1e8
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@1ea
    move/from16 v28, v0

    #@1ec
    move/from16 v0, v27

    #@1ee
    move/from16 v1, v28

    #@1f0
    if-ne v0, v1, :cond_11

    #@1f2
    move-object/from16 v0, v20

    #@1f4
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@1f6
    move-wide/from16 v28, v0

    #@1f8
    const-wide/16 v30, -0x1

    #@1fa
    cmp-long v27, v28, v30

    #@1fc
    if-eqz v27, :cond_11

    #@1fe
    .line 1402
    const/4 v11, 0x0

    #@1ff
    .line 1405
    :cond_11
    move-object/from16 v0, v20

    #@201
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@203
    move/from16 v16, v0

    #@205
    .local v16, "maxLimit":I
    move/from16 v14, v16

    #@207
    .line 1419
    move-object/from16 v0, p0

    #@209
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->breakIterator:Landroid/icu/text/BreakIterator;

    #@20b
    move-object/from16 v27, v0

    #@20d
    if-nez v27, :cond_18

    #@20f
    .line 1420
    if-eqz v20, :cond_18

    #@211
    move-object/from16 v0, v20

    #@213
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@215
    move-wide/from16 v28, v0

    #@217
    const/16 v27, 0x20

    #@219
    ushr-long v28, v28, v27

    #@21b
    const-wide v30, 0xffff0000L

    #@220
    and-long v28, v28, v30

    #@222
    const-wide/16 v30, 0x0

    #@224
    cmp-long v27, v28, v30

    #@226
    if-eqz v27, :cond_18

    #@228
    .line 1421
    iget v0, v12, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@22a
    move/from16 v27, v0

    #@22c
    move/from16 v0, v16

    #@22e
    move/from16 v1, v27

    #@230
    if-lt v0, v1, :cond_18

    #@232
    move-object/from16 v0, v20

    #@234
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@236
    move/from16 v27, v0

    #@238
    move/from16 v0, v27

    #@23a
    move/from16 v1, v16

    #@23c
    if-le v0, v1, :cond_18

    #@23e
    .line 1422
    move-object/from16 v0, p0

    #@240
    iget-object v0, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    #@242
    move-object/from16 v27, v0

    #@244
    move-object/from16 v0, p0

    #@246
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@248
    move-object/from16 v28, v0

    #@24a
    move-object/from16 v0, v28

    #@24c
    move/from16 v1, v16

    #@24e
    invoke-static {v0, v1}, Landroid/icu/text/StringSearch;->codePointAt(Ljava/text/CharacterIterator;I)I

    #@251
    move-result v28

    #@252
    invoke-virtual/range {v27 .. v28}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    #@255
    move-result v27

    #@256
    if-nez v27, :cond_17

    #@258
    .line 1423
    move-object/from16 v0, p0

    #@25a
    iget-object v0, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    #@25c
    move-object/from16 v27, v0

    #@25e
    move-object/from16 v0, p0

    #@260
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@262
    move-object/from16 v28, v0

    #@264
    move-object/from16 v0, v28

    #@266
    move/from16 v1, v16

    #@268
    invoke-static {v0, v1}, Landroid/icu/text/StringSearch;->codePointBefore(Ljava/text/CharacterIterator;I)I

    #@26b
    move-result v28

    #@26c
    invoke-virtual/range {v27 .. v28}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    #@26f
    move-result v6

    #@270
    .line 1435
    :goto_6
    move/from16 v0, v17

    #@272
    move/from16 v1, v16

    #@274
    if-ge v0, v1, :cond_13

    #@276
    .line 1436
    move-object/from16 v0, p0

    #@278
    move/from16 v1, v17

    #@27a
    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    #@27d
    move-result v18

    #@27e
    .line 1440
    .local v18, "nba":I
    iget v0, v12, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@280
    move/from16 v27, v0

    #@282
    move/from16 v0, v18

    #@284
    move/from16 v1, v27

    #@286
    if-lt v0, v1, :cond_13

    #@288
    if-eqz v6, :cond_12

    #@28a
    move/from16 v0, v18

    #@28c
    move/from16 v1, v16

    #@28e
    if-ge v0, v1, :cond_13

    #@290
    .line 1441
    :cond_12
    move/from16 v14, v18

    #@292
    .line 1445
    .end local v18    # "nba":I
    :cond_13
    if-nez v6, :cond_15

    #@294
    .line 1448
    move/from16 v0, v16

    #@296
    if-le v14, v0, :cond_14

    #@298
    .line 1449
    const/4 v11, 0x0

    #@299
    .line 1453
    :cond_14
    move-object/from16 v0, p0

    #@29b
    invoke-direct {v0, v14}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    #@29e
    move-result v27

    #@29f
    if-nez v27, :cond_15

    #@2a1
    .line 1454
    const/4 v11, 0x0

    #@2a2
    .line 1467
    .end local v20    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_15
    :goto_7
    move-object/from16 v0, p0

    #@2a4
    invoke-direct {v0, v15, v14}, Landroid/icu/text/StringSearch;->checkIdentical(II)Z

    #@2a7
    move-result v27

    #@2a8
    if-nez v27, :cond_16

    #@2aa
    .line 1468
    const/4 v11, 0x0

    #@2ab
    .line 1471
    :cond_16
    if-eqz v11, :cond_7

    #@2ad
    goto/16 :goto_5

    #@2af
    .line 1422
    .restart local v20    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_17
    const/4 v6, 0x1

    #@2b0
    .local v6, "allowMidclusterMatch":Z
    goto :goto_6

    #@2b1
    .line 1419
    .end local v6    # "allowMidclusterMatch":Z
    :cond_18
    const/4 v6, 0x0

    #@2b2
    .restart local v6    # "allowMidclusterMatch":Z
    goto :goto_6

    #@2b3
    .line 1463
    .end local v6    # "allowMidclusterMatch":Z
    .end local v16    # "maxLimit":I
    .end local v20    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_19
    move-object/from16 v0, p0

    #@2b5
    move/from16 v1, v17

    #@2b7
    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    #@2ba
    move-result v18

    #@2bb
    .line 1464
    .restart local v18    # "nba":I
    if-lez v18, :cond_1a

    #@2bd
    move/from16 v0, p1

    #@2bf
    move/from16 v1, v18

    #@2c1
    if-le v0, v1, :cond_1a

    #@2c3
    move/from16 v16, v18

    #@2c5
    .restart local v16    # "maxLimit":I
    :goto_8
    move/from16 v14, v16

    #@2c7
    goto :goto_7

    #@2c8
    .end local v16    # "maxLimit":I
    :cond_1a
    move/from16 v16, p1

    #@2ca
    goto :goto_8
.end method


# virtual methods
.method public getCollator()Landroid/icu/text/RuleBasedCollator;
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@2
    return-object v0
.end method

.method public getIndex()I
    .locals 3

    #@0
    .prologue
    .line 389
    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@5
    move-result v0

    #@6
    .line 390
    .local v0, "result":I
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@8
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@b
    move-result v1

    #@c
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@e
    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@11
    move-result v2

    #@12
    invoke-static {v1, v2, v0}, Landroid/icu/text/StringSearch;->isOutOfBounds(III)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 391
    const/4 v1, -0x1

    #@19
    return v1

    #@1a
    .line 393
    :cond_0
    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@2
    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method protected handleNext(I)I
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 469
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@4
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    #@6
    if-nez v0, :cond_2

    #@8
    .line 470
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@c
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@e
    if-ne v0, v2, :cond_1

    #@10
    .line 471
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->getIndex()I

    #@13
    move-result v0

    #@14
    .line 470
    :goto_0
    iput v0, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@16
    .line 472
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@18
    invoke-virtual {v0, v3}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@1b
    .line 473
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@1d
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1f
    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@21
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@24
    .line 474
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@26
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@28
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2a
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@2d
    move-result v1

    #@2e
    if-ne v0, v1, :cond_0

    #@30
    .line 475
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@32
    iput v2, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@34
    .line 510
    :cond_0
    return v2

    #@35
    .line 471
    :cond_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@37
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@39
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 478
    :cond_2
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3e
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    #@41
    move-result v0

    #@42
    if-gtz v0, :cond_3

    #@44
    .line 485
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@46
    add-int/lit8 v1, p1, -0x1

    #@48
    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@4a
    .line 488
    :cond_3
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@4c
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@4f
    .line 494
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@51
    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@53
    if-eqz v0, :cond_4

    #@55
    .line 496
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCanonical()Z

    #@58
    .line 501
    :goto_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@5a
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@5c
    if-ne v0, v2, :cond_5

    #@5e
    .line 502
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@60
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@62
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@65
    move-result v1

    #@66
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@69
    .line 507
    :goto_2
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@6b
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@6d
    return v0

    #@6e
    .line 498
    :cond_4
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextExact()Z

    #@71
    goto :goto_1

    #@72
    .line 504
    :cond_5
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@74
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@76
    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@78
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@7b
    goto :goto_2
.end method

.method protected handlePrevious(I)I
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 518
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@3
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    #@5
    if-nez v0, :cond_2

    #@7
    .line 519
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@9
    .line 520
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@b
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@d
    const/4 v2, -0x1

    #@e
    if-ne v0, v2, :cond_0

    #@10
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->getIndex()I

    #@13
    move-result v0

    #@14
    .line 519
    :goto_0
    iput v0, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@16
    .line 521
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@18
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@1a
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1c
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@1f
    move-result v1

    #@20
    if-ne v0, v1, :cond_1

    #@22
    .line 522
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    #@25
    .line 539
    :goto_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@27
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@29
    return v0

    #@2a
    .line 520
    :cond_0
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2c
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@2e
    goto :goto_0

    #@2f
    .line 524
    :cond_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@31
    iget v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@33
    add-int/lit8 v1, v1, -0x1

    #@35
    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@37
    .line 525
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@39
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3b
    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@3d
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@40
    .line 526
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@42
    invoke-virtual {v0, v3}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@45
    goto :goto_1

    #@46
    .line 529
    :cond_2
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@48
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@4b
    .line 531
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@4d
    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@4f
    if-eqz v0, :cond_3

    #@51
    .line 533
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCanonical()Z

    #@54
    goto :goto_1

    #@55
    .line 535
    :cond_3
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousExact()Z

    #@58
    goto :goto_1
.end method

.method public isCanonical()Z
    .locals 1

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@4
    return v0
.end method

.method public reset()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x3

    #@3
    .line 418
    const/4 v2, 0x1

    #@4
    .line 424
    .local v2, "sameCollAttribute":Z
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@6
    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    #@9
    move-result v1

    #@a
    .line 425
    .local v1, "newStrength":I
    iget v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@c
    if-ge v5, v6, :cond_5

    #@e
    if-lt v1, v6, :cond_5

    #@10
    .line 427
    :goto_0
    const/4 v2, 0x0

    #@11
    .line 430
    :cond_0
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@13
    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    #@16
    move-result v5

    #@17
    iput v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@19
    .line 431
    iget v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@1b
    invoke-static {v5}, Landroid/icu/text/StringSearch;->getMask(I)I

    #@1e
    move-result v0

    #@1f
    .line 432
    .local v0, "ceMask":I
    iget v5, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    #@21
    if-eq v5, v0, :cond_1

    #@23
    .line 433
    iput v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    #@25
    .line 434
    const/4 v2, 0x0

    #@26
    .line 437
    :cond_1
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@28
    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    #@2b
    move-result v3

    #@2c
    .line 438
    .local v3, "shift":Z
    iget-boolean v5, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    #@2e
    if-eq v5, v3, :cond_2

    #@30
    .line 439
    iput-boolean v3, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    #@32
    .line 440
    const/4 v2, 0x0

    #@33
    .line 443
    :cond_2
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@35
    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    #@38
    move-result v4

    #@39
    .line 444
    .local v4, "varTop":I
    iget v5, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    #@3b
    if-eq v5, v4, :cond_3

    #@3d
    .line 445
    iput v4, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    #@3f
    .line 446
    const/4 v2, 0x0

    #@40
    .line 449
    :cond_3
    if-nez v2, :cond_4

    #@42
    .line 450
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    #@45
    .line 453
    :cond_4
    iget-object v5, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@47
    iget-object v6, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@49
    invoke-virtual {v6}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v5, v6}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    #@50
    .line 455
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@52
    invoke-virtual {v5, v7}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@55
    .line 456
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@57
    const/4 v6, -0x1

    #@58
    iput v6, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@5a
    .line 457
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@5c
    iput-boolean v7, v5, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    #@5e
    .line 458
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@60
    iput-boolean v7, v5, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@62
    .line 459
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@64
    sget-object v6, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@66
    iput-object v6, v5, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@68
    .line 460
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@6a
    iput-boolean v8, v5, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@6c
    .line 461
    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@6e
    iput-boolean v8, v5, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    #@70
    .line 413
    return-void

    #@71
    .line 426
    .end local v0    # "ceMask":I
    .end local v3    # "shift":Z
    .end local v4    # "varTop":I
    :cond_5
    iget v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@73
    if-lt v5, v6, :cond_0

    #@75
    if-ge v1, v6, :cond_0

    #@77
    goto :goto_0
.end method

.method public setCanonical(Z)V
    .locals 1
    .param p1, "allowCanonical"    # Z

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    iput-boolean p1, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@4
    .line 371
    return-void
.end method

.method public setCollator(Landroid/icu/text/RuleBasedCollator;)V
    .locals 3
    .param p1, "collator"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 308
    if-nez p1, :cond_0

    #@2
    .line 309
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Collator can not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 311
    :cond_0
    iput-object p1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@d
    .line 312
    iget-object v1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@f
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Landroid/icu/text/StringSearch;->getMask(I)I

    #@16
    move-result v1

    #@17
    iput v1, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    #@19
    .line 314
    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@1b
    invoke-virtual {p1, v1}, Landroid/icu/text/RuleBasedCollator;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@1e
    move-result-object v0

    #@1f
    .line 315
    .local v0, "collLocale":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@21
    if-nez v0, :cond_1

    #@23
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@25
    .end local v0    # "collLocale":Landroid/icu/util/ULocale;
    :cond_1
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@28
    move-result-object v2

    #@29
    iput-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@2b
    .line 316
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2d
    iget-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@2f
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@31
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    #@34
    move-result-object v1

    #@35
    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Ljava/text/CharacterIterator;

    #@3b
    invoke-virtual {v2, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@3e
    .line 318
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    #@41
    move-result v1

    #@42
    iput-boolean v1, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    #@44
    .line 319
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    #@47
    move-result v1

    #@48
    iput v1, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    #@4a
    .line 320
    new-instance v1, Landroid/icu/text/CollationElementIterator;

    #@4c
    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@4e
    iget-object v2, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@50
    invoke-direct {v1, v2, p1}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    #@53
    iput-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@55
    .line 321
    new-instance v1, Landroid/icu/text/CollationElementIterator;

    #@57
    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@59
    iget-object v2, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@5b
    invoke-direct {v1, v2, p1}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    #@5e
    iput-object v1, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@60
    .line 324
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    #@63
    .line 307
    return-void
.end method

.method public setIndex(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    #@3
    .line 406
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@8
    .line 400
    return-void
.end method

.method protected setMatchNotFound()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 826
    invoke-super {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    #@3
    .line 830
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@5
    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 831
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@b
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@d
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@14
    move-result v1

    #@15
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@18
    .line 825
    :goto_0
    return-void

    #@19
    .line 833
    :cond_0
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@1b
    const/4 v1, 0x0

    #@1c
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@1f
    goto :goto_0
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 344
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-gtz v0, :cond_1

    #@8
    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 346
    const-string/jumbo v1, "Pattern to search for can not be null or of length 0"

    #@d
    .line 345
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 348
    :cond_1
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@13
    iput-object p1, v0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@15
    .line 349
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    #@18
    .line 343
    return-void
.end method

.method public setTarget(Ljava/text/CharacterIterator;)V
    .locals 1
    .param p1, "text"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/icu/text/SearchIterator;->setTarget(Ljava/text/CharacterIterator;)V

    #@3
    .line 381
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    #@8
    .line 379
    return-void
.end method
