.class public final Landroid/icu/text/StringSearch;
.super Landroid/icu/text/SearchIterator;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/StringSearch$Pattern;,
        Landroid/icu/text/StringSearch$CollationPCE;,
        Landroid/icu/text/StringSearch$CEBuffer;,
        Landroid/icu/text/StringSearch$CEI;,
        Landroid/icu/text/StringSearch$Match;
    }
.end annotation


# static fields
.field private static greylist-max-o CE_LEVEL2_BASE:I = 0x0

.field private static greylist-max-o CE_LEVEL3_BASE:I = 0x0

.field private static final greylist-max-o CE_MATCH:I = -0x1

.field private static final greylist-max-o CE_NO_MATCH:I = 0x0

.field private static final greylist-max-o CE_SKIP_PATN:I = 0x2

.field private static final greylist-max-o CE_SKIP_TARG:I = 0x1

.field private static final greylist-max-o INITIAL_ARRAY_SIZE_:I = 0x100

.field private static final greylist-max-o PRIMARYORDERMASK:I = -0x10000

.field private static final greylist-max-o SECONDARYORDERMASK:I = 0xff00

.field private static final greylist-max-o TERTIARYORDERMASK:I = 0xff


# instance fields
.field greylist-max-o ceMask_:I

.field private greylist-max-o collator_:Landroid/icu/text/RuleBasedCollator;

.field private greylist-max-o nfd_:Landroid/icu/text/Normalizer2;

.field private greylist-max-o pattern_:Landroid/icu/text/StringSearch$Pattern;

.field private greylist-max-o strength_:I

.field private greylist-max-o textIter_:Landroid/icu/text/CollationElementIterator;

.field private greylist-max-o textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

.field private greylist-max-o toShift_:Z

.field private greylist-max-o utilIter_:Landroid/icu/text/CollationElementIterator;

.field greylist-max-o variableTop_:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetpattern_(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettextProcessedIter_(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitTextProcessedIter(Landroid/icu/text/StringSearch;)Z
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initTextProcessedIter()Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 922
    const/4 v0, 0x5

    sput v0, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    .line 923
    const/high16 v0, 0x50000

    sput v0, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p2}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Landroid/icu/text/Collator;->getInstance()Landroid/icu/text/Collator;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    .line 281
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    .line 283
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/text/CharacterIterator;
    .param p3, "collator"    # Landroid/icu/text/RuleBasedCollator;

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    .line 233
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V
    .registers 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/text/CharacterIterator;
    .param p3, "collator"    # Landroid/icu/text/RuleBasedCollator;
    .param p4, "breakiter"    # Landroid/icu/text/BreakIterator;

    .line 180
    invoke-direct {p0, p2, p4}, Landroid/icu/text/SearchIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/BreakIterator;)V

    .line 183
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getNumericCollation()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 187
    iput-object p3, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    .line 188
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    .line 189
    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    invoke-static {v0}, Landroid/icu/text/StringSearch;->getMask(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    .line 190
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    .line 191
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    .line 193
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    .line 195
    new-instance v0, Landroid/icu/text/StringSearch$Pattern;

    invoke-direct {v0, p1}, Landroid/icu/text/StringSearch$Pattern;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    .line 197
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 198
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    .line 201
    new-instance v1, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v1, p2, p3}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    iput-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    .line 203
    iput-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    .line 213
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p3, v0}, Landroid/icu/text/RuleBasedCollator;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 214
    .local v0, "collLocale":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    if-nez v0, :cond_56

    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    goto :goto_57

    :cond_56
    move-object v2, v0

    :goto_57
    invoke-static {v2}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    .line 215
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v1, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    invoke-interface {p2}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/CharacterIterator;

    invoke-virtual {v1, v2}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 217
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    .line 218
    return-void

    .line 184
    .end local v0    # "collLocale":Landroid/icu/util/ULocale;
    :cond_6e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Numeric collation is not supported by StringSearch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/text/CharacterIterator;
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    .line 267
    invoke-static {p3}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    .line 268
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Ljava/util/Locale;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/text/CharacterIterator;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 247
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/util/ULocale;)V

    .line 248
    return-void
.end method

.method private static greylist-max-o addToIntArray([IIII)[I
    .registers 7
    .param p0, "destination"    # [I
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "increments"    # I

    .line 644
    array-length v0, p0

    .line 645
    .local v0, "newlength":I
    add-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_d

    .line 646
    add-int/2addr v0, p3

    .line 647
    new-array v1, v0, [I

    .line 648
    .local v1, "temp":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    move-object p0, v1

    .line 651
    .end local v1    # "temp":[I
    :cond_d
    aput p2, p0, p1

    .line 652
    return-object p0
.end method

.method private static greylist-max-o addToLongArray([JIIJI)[J
    .registers 9
    .param p0, "destination"    # [J
    .param p1, "offset"    # I
    .param p2, "destinationlength"    # I
    .param p3, "value"    # J
    .param p5, "increments"    # I

    .line 669
    move v0, p2

    .line 670
    .local v0, "newlength":I
    add-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_d

    .line 671
    add-int/2addr v0, p5

    .line 672
    new-array v1, v0, [J

    .line 673
    .local v1, "temp":[J
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    move-object p0, v1

    .line 676
    .end local v1    # "temp":[J
    :cond_d
    aput-wide p3, p0, p1

    .line 677
    return-object p0
.end method

.method private greylist-max-o checkIdentical(II)Z
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 856
    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_8

    .line 857
    const/4 v0, 0x1

    return v0

    .line 861
    :cond_8
    iget-object v0, p0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Landroid/icu/text/StringSearch;->getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "textstr":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v1

    sget-object v3, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne v1, v3, :cond_1f

    .line 863
    invoke-static {v0, v2}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 865
    :cond_1f
    iget-object v1, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    .line 866
    .local v1, "patternstr":Ljava/lang/String;
    sget-object v3, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    invoke-static {v1, v3, v2}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v3

    sget-object v4, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne v3, v4, :cond_31

    .line 867
    invoke-static {v1, v2}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 869
    :cond_31
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static greylist-max-o codePointAt(Ljava/text/CharacterIterator;I)I
    .registers 7
    .param p0, "iter"    # Ljava/text/CharacterIterator;
    .param p1, "index"    # I

    .line 1234
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 1235
    .local v0, "currentIterIndex":I
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    .line 1236
    .local v1, "codeUnit":C
    move v2, v1

    .line 1237
    .local v2, "cp":I
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1238
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    .line 1239
    .local v3, "nextUnit":C
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1240
    invoke-static {v1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1243
    .end local v3    # "nextUnit":C
    :cond_1d
    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1244
    return v2
.end method

.method private static greylist-max-o codePointBefore(Ljava/text/CharacterIterator;I)I
    .registers 7
    .param p0, "iter"    # Ljava/text/CharacterIterator;
    .param p1, "index"    # I

    .line 1248
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 1249
    .local v0, "currentIterIndex":I
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1250
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v1

    .line 1251
    .local v1, "codeUnit":C
    move v2, v1

    .line 1252
    .local v2, "cp":I
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1253
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v3

    .line 1254
    .local v3, "prevUnit":C
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1255
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1258
    .end local v3    # "prevUnit":C
    :cond_20
    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1259
    return v2
.end method

.method private static greylist-max-o compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I
    .registers 21
    .param p0, "targCE"    # J
    .param p2, "patCE"    # J
    .param p4, "compareType"    # Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 926
    move-object/from16 v0, p4

    cmp-long v1, p0, p2

    const/4 v2, -0x1

    if-nez v1, :cond_8

    .line 927
    return v2

    .line 929
    :cond_8
    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    .line 930
    return v3

    .line 933
    :cond_e
    const/16 v1, 0x20

    ushr-long v4, p0, v1

    .line 934
    .local v4, "targCEshifted":J
    ushr-long v6, p2, v1

    .line 937
    .local v6, "patCEshifted":J
    const-wide v8, 0xffff0000L

    .line 938
    .local v8, "mask":J
    and-long v10, v4, v8

    long-to-int v1, v10

    .line 939
    .local v1, "targLev1":I
    and-long v10, v6, v8

    long-to-int v10, v10

    .line 940
    .local v10, "patLev1":I
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v1, v10, :cond_2e

    .line 941
    if-nez v1, :cond_26

    .line 942
    return v12

    .line 944
    :cond_26
    if-nez v10, :cond_2d

    sget-object v2, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v2, :cond_2d

    .line 946
    return v11

    .line 948
    :cond_2d
    return v3

    .line 951
    :cond_2e
    const-wide/32 v8, 0xffff

    .line 952
    and-long v13, v4, v8

    long-to-int v13, v13

    .line 953
    .local v13, "targLev2":I
    and-long v14, v6, v8

    long-to-int v14, v14

    .line 954
    .local v14, "patLev2":I
    if-eq v13, v14, :cond_54

    .line 955
    if-nez v13, :cond_3c

    .line 956
    return v12

    .line 958
    :cond_3c
    if-nez v14, :cond_43

    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v12, :cond_43

    .line 960
    return v11

    .line 962
    :cond_43
    sget v11, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    if-eq v14, v11, :cond_52

    sget-object v11, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v11, :cond_50

    sget v11, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    if-ne v13, v11, :cond_50

    goto :goto_52

    .line 964
    :cond_50
    move v2, v3

    goto :goto_53

    :cond_52
    :goto_52
    nop

    .line 962
    :goto_53
    return v2

    .line 967
    :cond_54
    const-wide v8, 0xffff0000L

    .line 968
    and-long v11, p0, v8

    long-to-int v11, v11

    .line 969
    .local v11, "targLev3":I
    move v15, v2

    and-long v2, p2, v8

    long-to-int v2, v2

    .line 970
    .local v2, "patLev3":I
    if-eq v11, v2, :cond_73

    .line 971
    sget v3, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    if-eq v2, v3, :cond_71

    sget-object v3, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    if-ne v0, v3, :cond_6f

    sget v3, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    if-ne v11, v3, :cond_6f

    goto :goto_71

    .line 973
    :cond_6f
    const/4 v12, 0x0

    goto :goto_72

    :cond_71
    :goto_71
    move v12, v15

    .line 971
    :goto_72
    return v12

    .line 976
    :cond_73
    return v15
.end method

.method private greylist-max-o getCE(I)I
    .registers 4
    .param p1, "sourcece"    # I

    .line 609
    iget v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    and-int/2addr p1, v0

    .line 611
    iget-boolean v0, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_16

    .line 617
    iget v0, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    if-le v0, p1, :cond_1f

    .line 618
    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    if-lt v0, v1, :cond_14

    .line 619
    const/high16 v0, -0x10000

    and-int/2addr p1, v0

    goto :goto_1f

    .line 621
    :cond_14
    const/4 p1, 0x0

    goto :goto_1f

    .line 624
    :cond_16
    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    if-lt v0, v1, :cond_1f

    if-nez p1, :cond_1f

    .line 625
    const p1, 0xffff

    .line 628
    :cond_1f
    :goto_1f
    return p1
.end method

.method private static greylist-max-o getMask(I)I
    .registers 2
    .param p0, "strength"    # I

    .line 563
    packed-switch p0, :pswitch_data_c

    .line 569
    const/4 v0, -0x1

    return v0

    .line 567
    :pswitch_5
    const/16 v0, -0x100

    return v0

    .line 565
    :pswitch_8
    const/high16 v0, -0x10000

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static final greylist-max-o getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .registers 7
    .param p0, "text"    # Ljava/text/CharacterIterator;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1581
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    .line 1582
    .local v1, "offset":I
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1583
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, p2, :cond_1c

    .line 1584
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1585
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    .line 1583
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1587
    .end local v2    # "i":I
    :cond_1c
    invoke-interface {p0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o handleNextCanonical()Z
    .registers 2

    .line 1502
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCommonImpl()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o handleNextCommonImpl()Z
    .registers 6

    .line 1506
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .line 1507
    .local v0, "textOffset":I
    new-instance v1, Landroid/icu/text/StringSearch$Match;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/StringSearch$Match;-><init>(Landroid/icu/text/StringSearch-IA;)V

    .line 1509
    .local v1, "match":Landroid/icu/text/StringSearch$Match;
    invoke-direct {p0, v0, v1}, Landroid/icu/text/StringSearch;->search(ILandroid/icu/text/StringSearch$Match;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1510
    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v1, Landroid/icu/text/StringSearch$Match;->start_:I

    iput v3, v2, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 1511
    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v1, Landroid/icu/text/StringSearch$Match;->limit_:I

    iget v4, v1, Landroid/icu/text/StringSearch$Match;->start_:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 1512
    const/4 v2, 0x1

    return v2

    .line 1514
    :cond_24
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    .line 1515
    const/4 v2, 0x0

    return v2
.end method

.method private greylist-max-o handleNextExact()Z
    .registers 2

    .line 1498
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCommonImpl()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o handlePreviousCanonical()Z
    .registers 2

    .line 1529
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCommonImpl()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o handlePreviousCommonImpl()Z
    .registers 9

    .line 1535
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_49

    .line 1536
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1d

    .line 1537
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v4, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v4}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr v0, v3

    .local v0, "textOffset":I
    goto :goto_4f

    .line 1540
    .end local v0    # "textOffset":I
    :cond_1d
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    .line 1541
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initTextProcessedIter()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1542
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    .line 1543
    return v1

    .line 1545
    :cond_2a
    const/4 v0, 0x0

    .local v0, "nPCEs":I
    :goto_2b
    iget-object v4, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v4, v4, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    sub-int/2addr v4, v3

    if-ge v0, v4, :cond_42

    .line 1546
    iget-object v4, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    invoke-virtual {v4, v2}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v4

    .line 1547
    .local v4, "pce":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_3f

    .line 1549
    goto :goto_42

    .line 1545
    .end local v4    # "pce":J
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1552
    .end local v0    # "nPCEs":I
    :cond_42
    :goto_42
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .local v0, "textOffset":I
    goto :goto_4f

    .line 1555
    .end local v0    # "textOffset":I
    :cond_49
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .line 1558
    .restart local v0    # "textOffset":I
    :goto_4f
    new-instance v4, Landroid/icu/text/StringSearch$Match;

    invoke-direct {v4, v2}, Landroid/icu/text/StringSearch$Match;-><init>(Landroid/icu/text/StringSearch-IA;)V

    .line 1559
    .local v4, "match":Landroid/icu/text/StringSearch$Match;
    invoke-direct {p0, v0, v4}, Landroid/icu/text/StringSearch;->searchBackwards(ILandroid/icu/text/StringSearch$Match;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1560
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v2, v4, Landroid/icu/text/StringSearch$Match;->start_:I

    iput v2, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 1561
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v2, v4, Landroid/icu/text/StringSearch$Match;->limit_:I

    iget v5, v4, Landroid/icu/text/StringSearch$Match;->start_:I

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 1562
    return v3

    .line 1564
    :cond_6b
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    .line 1565
    return v1
.end method

.method private greylist-max-o handlePreviousExact()Z
    .registers 2

    .line 1525
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCommonImpl()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o initTextProcessedIter()Z
    .registers 3

    .line 873
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    if-nez v0, :cond_e

    .line 874
    new-instance v0, Landroid/icu/text/StringSearch$CollationPCE;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE;-><init>(Landroid/icu/text/CollationElementIterator;)V

    iput-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    goto :goto_15

    .line 876
    :cond_e
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/CollationElementIterator;)V

    .line 878
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o initialize()V
    .registers 1

    .line 803
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePattern()I

    .line 817
    return-void
.end method

.method private greylist-max-o initializePattern()I
    .registers 3

    .line 782
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    .line 785
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePatternCETable()I

    move-result v0

    return v0
.end method

.method private greylist-max-o initializePatternCETable()I
    .registers 9

    .line 690
    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 691
    .local v0, "cetable":[I
    iget-object v1, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 692
    .local v1, "patternlength":I
    iget-object v2, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    .line 694
    .local v2, "coleiter":Landroid/icu/text/CollationElementIterator;
    if-nez v2, :cond_1f

    .line 695
    new-instance v3, Landroid/icu/text/CollationElementIterator;

    iget-object v4, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v4, v4, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v3, v4, v5}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    move-object v2, v3

    .line 696
    iput-object v2, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    goto :goto_26

    .line 698
    :cond_1f
    iget-object v3, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    .line 701
    :goto_26
    const/4 v3, 0x0

    .line 702
    .local v3, "offset":I
    const/4 v4, 0x0

    .line 705
    .local v4, "result":I
    :goto_28
    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v5

    move v6, v5

    .local v6, "ce":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_4e

    .line 706
    invoke-direct {p0, v6}, Landroid/icu/text/StringSearch;->getCE(I)I

    move-result v5

    .line 707
    .local v5, "newce":I
    if-eqz v5, :cond_46

    .line 708
    nop

    .line 709
    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v7

    sub-int v7, v1, v7

    add-int/lit8 v7, v7, 0x1

    .line 708
    invoke-static {v0, v3, v5, v7}, Landroid/icu/text/StringSearch;->addToIntArray([IIII)[I

    move-result-object v7

    .line 710
    .local v7, "temp":[I
    add-int/lit8 v3, v3, 0x1

    .line 711
    move-object v0, v7

    .line 713
    .end local v7    # "temp":[I
    :cond_46
    invoke-virtual {v2, v6}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v4, v7

    .line 714
    .end local v5    # "newce":I
    goto :goto_28

    .line 716
    :cond_4e
    const/4 v5, 0x0

    aput v5, v0, v3

    .line 717
    iget-object v5, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput-object v0, v5, Landroid/icu/text/StringSearch$Pattern;->CE_:[I

    .line 718
    iget-object v5, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput v3, v5, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    .line 720
    return v4
.end method

.method private greylist-max-o initializePatternPCETable()I
    .registers 16

    .line 732
    const/16 v0, 0x100

    new-array v0, v0, [J

    .line 733
    .local v0, "pcetable":[J
    array-length v3, v0

    .line 734
    .local v3, "pcetablesize":I
    iget-object v1, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v1, v1, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 735
    .local v7, "patternlength":I
    iget-object v1, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    .line 737
    .local v1, "coleiter":Landroid/icu/text/CollationElementIterator;
    if-nez v1, :cond_21

    .line 738
    new-instance v2, Landroid/icu/text/CollationElementIterator;

    iget-object v4, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v4, v4, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v2, v4, v5}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    move-object v1, v2

    .line 739
    iput-object v1, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    move-object v8, v1

    goto :goto_29

    .line 741
    :cond_21
    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v2, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    move-object v8, v1

    .line 744
    .end local v1    # "coleiter":Landroid/icu/text/CollationElementIterator;
    .local v8, "coleiter":Landroid/icu/text/CollationElementIterator;
    :goto_29
    const/4 v1, 0x0

    .line 745
    .local v1, "offset":I
    const/4 v9, 0x0

    .line 748
    .local v9, "result":I
    new-instance v2, Landroid/icu/text/StringSearch$CollationPCE;

    invoke-direct {v2, v8}, Landroid/icu/text/StringSearch$CollationPCE;-><init>(Landroid/icu/text/CollationElementIterator;)V

    move-object v10, v2

    move v2, v1

    move-object v1, v0

    .line 753
    .end local v0    # "pcetable":[J
    .local v1, "pcetable":[J
    .local v2, "offset":I
    .local v10, "iter":Landroid/icu/text/StringSearch$CollationPCE;
    :goto_33
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v4

    move-wide v11, v4

    .local v4, "pce":J
    const-wide/16 v13, -0x1

    cmp-long v0, v11, v13

    if-eqz v0, :cond_4f

    .line 754
    invoke-virtual {v8}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    sub-int v0, v7, v0

    add-int/lit8 v6, v0, 0x1

    invoke-static/range {v1 .. v6}, Landroid/icu/text/StringSearch;->addToLongArray([JIIJI)[J

    move-result-object v0

    .line 755
    .local v0, "temp":[J
    add-int/lit8 v2, v2, 0x1

    .line 756
    move-object v1, v0

    .line 757
    .end local v0    # "temp":[J
    goto :goto_33

    .line 759
    :cond_4f
    const-wide/16 v11, 0x0

    aput-wide v11, v1, v2

    .line 760
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput-object v1, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    .line 761
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput v2, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    .line 763
    return v9
.end method

.method private greylist-max-o isBreakBoundary(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 906
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 908
    .local v0, "breakiterator":Landroid/icu/text/BreakIterator;
    if-nez v0, :cond_c

    .line 909
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    .line 912
    :cond_c
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private static final greylist-max-o isOutOfBounds(III)Z
    .registers 4
    .param p0, "textstart"    # I
    .param p1, "textlimit"    # I
    .param p2, "offset"    # I

    .line 846
    if-lt p2, p0, :cond_7

    if-le p2, p1, :cond_5

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v0, 0x1

    :goto_8
    return v0
.end method

.method private greylist-max-o nextBoundaryAfter(I)I
    .registers 4
    .param p1, "startIndex"    # I

    .line 887
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 889
    .local v0, "breakiterator":Landroid/icu/text/BreakIterator;
    if-nez v0, :cond_c

    .line 890
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    .line 893
    :cond_c
    if-eqz v0, :cond_13

    .line 894
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v1

    return v1

    .line 897
    :cond_13
    return p1
.end method

.method private greylist-max-o search(ILandroid/icu/text/StringSearch$Match;)Z
    .registers 32
    .param p1, "startIdx"    # I
    .param p2, "m"    # Landroid/icu/text/StringSearch$Match;

    .line 990
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v3, v3, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    if-eqz v3, :cond_20a

    iget-object v3, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 991
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v3

    if-lt v1, v3, :cond_20a

    iget-object v3, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 992
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v3

    if-gt v1, v3, :cond_20a

    .line 997
    iget-object v3, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    if-nez v3, :cond_25

    .line 998
    invoke-direct {v0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    .line 1001
    :cond_25
    iget-object v3, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v3, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 1002
    new-instance v3, Landroid/icu/text/StringSearch$CEBuffer;

    invoke-direct {v3, v0}, Landroid/icu/text/StringSearch$CEBuffer;-><init>(Landroid/icu/text/StringSearch;)V

    .line 1004
    .local v3, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    const/4 v4, 0x0

    .line 1005
    .local v4, "targetIx":I
    const/4 v5, 0x0

    .line 1009
    .local v5, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    const/4 v6, -0x1

    .line 1010
    .local v6, "mStart":I
    const/4 v7, -0x1

    .line 1027
    .local v7, "mLimit":I
    const/4 v4, 0x0

    .line 1028
    :goto_34
    const/4 v8, 0x1

    .line 1031
    .local v8, "found":Z
    const/4 v9, 0x0

    .line 1032
    .local v9, "targetIxOffset":I
    const-wide/16 v10, 0x0

    .line 1036
    .local v10, "patCE":J
    invoke-virtual {v3, v4}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v12

    .line 1037
    .local v12, "firstCEI":Landroid/icu/text/StringSearch$CEI;
    if-eqz v12, :cond_1e6

    .line 1041
    const/4 v13, 0x0

    .local v13, "patIx":I
    :goto_3f
    iget-object v14, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v14, v14, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    if-ge v13, v14, :cond_77

    .line 1042
    iget-object v14, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v14, v14, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    aget-wide v10, v14, v13

    .line 1043
    add-int v14, v4, v13

    add-int/2addr v14, v9

    invoke-virtual {v3, v14}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v5

    .line 1047
    move v14, v6

    move/from16 v16, v7

    .end local v6    # "mStart":I
    .end local v7    # "mLimit":I
    .local v14, "mStart":I
    .local v16, "mLimit":I
    iget-wide v6, v5, Landroid/icu/text/StringSearch$CEI;->ce_:J

    iget-object v15, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v15, v15, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v6, v7, v10, v11, v15}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v6

    .line 1048
    .local v6, "ceMatch":I
    if-nez v6, :cond_63

    .line 1049
    const/4 v8, 0x0

    .line 1050
    goto :goto_7a

    .line 1051
    :cond_63
    if-lez v6, :cond_6f

    .line 1052
    const/4 v7, 0x1

    if-ne v6, v7, :cond_6d

    .line 1054
    add-int/lit8 v13, v13, -0x1

    .line 1055
    add-int/lit8 v9, v9, 0x1

    goto :goto_6f

    .line 1058
    :cond_6d
    add-int/lit8 v9, v9, -0x1

    .line 1041
    .end local v6    # "ceMatch":I
    :cond_6f
    :goto_6f
    const/16 v17, 0x1

    add-int/lit8 v13, v13, 0x1

    move v6, v14

    move/from16 v7, v16

    goto :goto_3f

    .end local v14    # "mStart":I
    .end local v16    # "mLimit":I
    .local v6, "mStart":I
    .restart local v7    # "mLimit":I
    :cond_77
    move v14, v6

    move/from16 v16, v7

    .line 1062
    .end local v6    # "mStart":I
    .end local v7    # "mLimit":I
    .restart local v14    # "mStart":I
    .restart local v16    # "mLimit":I
    :goto_7a
    iget-object v6, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v6, v6, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/2addr v9, v6

    .line 1064
    if-nez v8, :cond_95

    if-eqz v5, :cond_8c

    const-wide/16 v18, -0x1

    iget-wide v6, v5, Landroid/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v6, v6, v18

    if-eqz v6, :cond_97

    .line 1066
    nop

    .line 1027
    .end local v9    # "targetIxOffset":I
    .end local v10    # "patCE":J
    .end local v12    # "firstCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_8c
    move-object/from16 v28, v3

    move-object/from16 v20, v5

    move v6, v14

    move/from16 v7, v16

    goto/16 :goto_1de

    .line 1064
    .restart local v9    # "targetIxOffset":I
    .restart local v10    # "patCE":J
    .restart local v12    # "firstCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_95
    const-wide/16 v18, -0x1

    .line 1069
    :cond_97
    if-nez v8, :cond_a2

    .line 1071
    move-object/from16 v28, v3

    move-object/from16 v20, v5

    move v6, v14

    move/from16 v7, v16

    goto/16 :goto_1cf

    .line 1079
    :cond_a2
    add-int v6, v4, v9

    const/16 v17, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v6

    .line 1081
    .local v6, "lastCEI":Landroid/icu/text/StringSearch$CEI;
    iget v7, v12, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1082
    .end local v14    # "mStart":I
    .local v7, "mStart":I
    iget v14, v6, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1092
    .local v14, "minLimit":I
    const/4 v15, 0x0

    .line 1093
    .local v15, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v20, v5

    .end local v5    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .local v20, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    iget-object v5, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v5, v5, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move/from16 v21, v8

    .end local v8    # "found":Z
    .local v21, "found":Z
    sget-object v8, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    const-wide/16 v22, 0x0

    const-wide v24, 0xffff0000L

    const/16 v26, 0x20

    if-ne v5, v8, :cond_f2

    .line 1094
    add-int v5, v4, v9

    invoke-virtual {v3, v5}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v5

    .line 1095
    .end local v15    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .local v5, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    iget v8, v5, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1096
    .local v8, "maxLimit":I
    iget v15, v5, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move/from16 v27, v8

    .end local v8    # "maxLimit":I
    .local v27, "maxLimit":I
    iget v8, v5, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v15, v8, :cond_e7

    move/from16 v28, v9

    .end local v9    # "targetIxOffset":I
    .local v28, "targetIxOffset":I
    iget-wide v8, v5, Landroid/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v8, v8, v18

    if-eqz v8, :cond_e9

    .line 1097
    const/4 v8, 0x0

    move/from16 v9, v28

    move-object/from16 v28, v3

    move/from16 v3, v27

    .end local v21    # "found":Z
    .local v8, "found":Z
    goto/16 :goto_144

    .line 1096
    .end local v8    # "found":Z
    .end local v28    # "targetIxOffset":I
    .restart local v9    # "targetIxOffset":I
    .restart local v21    # "found":Z
    :cond_e7
    move/from16 v28, v9

    .line 1134
    .end local v9    # "targetIxOffset":I
    .restart local v28    # "targetIxOffset":I
    :cond_e9
    move/from16 v8, v21

    move/from16 v9, v28

    move-object/from16 v28, v3

    move/from16 v3, v27

    goto :goto_144

    .line 1093
    .end local v5    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v27    # "maxLimit":I
    .end local v28    # "targetIxOffset":I
    .restart local v9    # "targetIxOffset":I
    .restart local v15    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_f2
    move/from16 v28, v9

    .line 1101
    :goto_f4
    add-int v5, v4, v9

    invoke-virtual {v3, v5}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v15

    .line 1102
    iget v8, v15, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1104
    .local v8, "maxLimit":I
    move/from16 v27, v8

    move v5, v9

    .end local v8    # "maxLimit":I
    .end local v9    # "targetIxOffset":I
    .local v5, "targetIxOffset":I
    .restart local v27    # "maxLimit":I
    iget-wide v8, v15, Landroid/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v8, v8, v18

    if-nez v8, :cond_108

    .line 1105
    move-object/from16 v28, v3

    goto :goto_13e

    .line 1110
    :cond_108
    iget-wide v8, v15, Landroid/icu/text/StringSearch$CEI;->ce_:J

    ushr-long v8, v8, v26

    and-long v8, v8, v24

    cmp-long v8, v8, v22

    if-nez v8, :cond_130

    .line 1111
    iget-wide v8, v15, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-object/from16 v28, v3

    .end local v3    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .local v28, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    iget-object v3, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v3, v3, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v8, v9, v10, v11, v3}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v3

    .line 1112
    .local v3, "ceMatch":I
    if-eqz v3, :cond_12a

    const/4 v8, 0x2

    if-ne v3, v8, :cond_124

    goto :goto_12a

    .line 1118
    .end local v3    # "ceMatch":I
    :cond_124
    nop

    .line 1100
    add-int/lit8 v9, v5, 0x1

    move-object/from16 v3, v28

    .end local v5    # "targetIxOffset":I
    .restart local v9    # "targetIxOffset":I
    goto :goto_f4

    .line 1113
    .end local v9    # "targetIxOffset":I
    .restart local v3    # "ceMatch":I
    .restart local v5    # "targetIxOffset":I
    :cond_12a
    :goto_12a
    const/4 v8, 0x0

    .line 1114
    .end local v21    # "found":Z
    .local v8, "found":Z
    move v9, v5

    move-object v5, v15

    move/from16 v3, v27

    goto :goto_144

    .line 1118
    .end local v8    # "found":Z
    .end local v28    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .local v3, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .restart local v21    # "found":Z
    :cond_130
    move-object/from16 v28, v3

    .end local v3    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .restart local v28    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    iget v3, v15, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    iget v8, v15, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v3, v8, :cond_13e

    .line 1119
    const/4 v8, 0x0

    .line 1120
    .end local v21    # "found":Z
    .restart local v8    # "found":Z
    move v9, v5

    move-object v5, v15

    move/from16 v3, v27

    goto :goto_144

    .line 1134
    .end local v8    # "found":Z
    .end local v28    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .restart local v3    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .restart local v21    # "found":Z
    :cond_13e
    :goto_13e
    move v9, v5

    move-object v5, v15

    move/from16 v8, v21

    move/from16 v3, v27

    .end local v15    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v21    # "found":Z
    .end local v27    # "maxLimit":I
    .local v3, "maxLimit":I
    .local v5, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .restart local v8    # "found":Z
    .restart local v9    # "targetIxOffset":I
    .restart local v28    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    :goto_144
    invoke-direct {v0, v7}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v15

    if-nez v15, :cond_14b

    .line 1135
    const/4 v8, 0x0

    .line 1143
    :cond_14b
    iget v15, v12, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    .line 1144
    .local v15, "secondIx":I
    if-ne v7, v15, :cond_150

    .line 1145
    const/4 v8, 0x0

    .line 1159
    :cond_150
    move/from16 v18, v8

    .end local v8    # "found":Z
    .local v18, "found":Z
    iget-object v8, v0, Landroid/icu/text/StringSearch;->breakIterator:Landroid/icu/text/BreakIterator;

    if-nez v8, :cond_187

    move/from16 v19, v9

    .end local v9    # "targetIxOffset":I
    .local v19, "targetIxOffset":I
    iget-wide v8, v5, Landroid/icu/text/StringSearch$CEI;->ce_:J

    ushr-long v8, v8, v26

    and-long v8, v8, v24

    cmp-long v8, v8, v22

    if-eqz v8, :cond_189

    iget v8, v6, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v3, v8, :cond_189

    iget v8, v5, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-le v8, v3, :cond_189

    iget-object v8, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    iget-object v9, v0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1163
    invoke-static {v9, v3}, Landroid/icu/text/StringSearch;->codePointAt(Ljava/text/CharacterIterator;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v8

    if-nez v8, :cond_186

    iget-object v8, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    iget-object v9, v0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1164
    invoke-static {v9, v3}, Landroid/icu/text/StringSearch;->codePointBefore(Ljava/text/CharacterIterator;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v8

    if-eqz v8, :cond_189

    :cond_186
    goto :goto_18c

    .line 1159
    .end local v19    # "targetIxOffset":I
    .restart local v9    # "targetIxOffset":I
    :cond_187
    move/from16 v19, v9

    .line 1164
    .end local v9    # "targetIxOffset":I
    .restart local v19    # "targetIxOffset":I
    :cond_189
    const/4 v8, 0x0

    move/from16 v17, v8

    .line 1176
    .local v17, "allowMidclusterMatch":Z
    :goto_18c
    move v8, v3

    .line 1177
    .end local v16    # "mLimit":I
    .local v8, "mLimit":I
    if-ge v14, v3, :cond_1ae

    .line 1184
    iget v9, v6, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v14, v9, :cond_19d

    invoke-direct {v0, v14}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v9

    if-eqz v9, :cond_19d

    .line 1185
    move v8, v14

    move-object/from16 v21, v5

    goto :goto_1b0

    .line 1187
    :cond_19d
    invoke-direct {v0, v14}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v9

    .line 1191
    .local v9, "nba":I
    move-object/from16 v21, v5

    .end local v5    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .local v21, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    iget v5, v6, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v9, v5, :cond_1b0

    if-eqz v17, :cond_1ab

    if-ge v9, v3, :cond_1b0

    .line 1192
    :cond_1ab
    move v5, v9

    move v8, v5

    .end local v8    # "mLimit":I
    .local v5, "mLimit":I
    goto :goto_1b0

    .line 1177
    .end local v9    # "nba":I
    .end local v21    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .local v5, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .restart local v8    # "mLimit":I
    :cond_1ae
    move-object/from16 v21, v5

    .line 1197
    .end local v5    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .restart local v21    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_1b0
    :goto_1b0
    if-nez v17, :cond_1c0

    .line 1200
    if-le v8, v3, :cond_1b7

    .line 1201
    const/4 v5, 0x0

    move/from16 v18, v5

    .line 1204
    :cond_1b7
    invoke-direct {v0, v8}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v5

    if-nez v5, :cond_1c0

    .line 1205
    const/4 v5, 0x0

    move/from16 v18, v5

    .line 1209
    :cond_1c0
    invoke-direct {v0, v7, v8}, Landroid/icu/text/StringSearch;->checkIdentical(II)Z

    move-result v5

    if-nez v5, :cond_1c9

    .line 1210
    const/4 v5, 0x0

    move/from16 v18, v5

    .line 1213
    :cond_1c9
    if-eqz v18, :cond_1da

    .line 1214
    move v6, v7

    move v7, v8

    move/from16 v8, v18

    .line 1220
    .end local v3    # "maxLimit":I
    .end local v10    # "patCE":J
    .end local v12    # "firstCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v14    # "minLimit":I
    .end local v15    # "secondIx":I
    .end local v17    # "allowMidclusterMatch":Z
    .end local v18    # "found":Z
    .end local v19    # "targetIxOffset":I
    .end local v21    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .local v6, "mStart":I
    .local v7, "mLimit":I
    .local v8, "found":Z
    :goto_1cf
    if-nez v8, :cond_1d3

    .line 1221
    const/4 v7, -0x1

    .line 1222
    const/4 v6, -0x1

    .line 1225
    :cond_1d3
    if-eqz v2, :cond_1d9

    .line 1226
    iput v6, v2, Landroid/icu/text/StringSearch$Match;->start_:I

    .line 1227
    iput v7, v2, Landroid/icu/text/StringSearch$Match;->limit_:I

    .line 1230
    :cond_1d9
    return v8

    .line 1213
    .restart local v3    # "maxLimit":I
    .local v6, "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .local v7, "mStart":I
    .local v8, "mLimit":I
    .restart local v10    # "patCE":J
    .restart local v12    # "firstCEI":Landroid/icu/text/StringSearch$CEI;
    .restart local v14    # "minLimit":I
    .restart local v15    # "secondIx":I
    .restart local v17    # "allowMidclusterMatch":Z
    .restart local v18    # "found":Z
    .restart local v19    # "targetIxOffset":I
    .restart local v21    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_1da
    move v6, v7

    move v7, v8

    move/from16 v8, v18

    .line 1027
    .end local v3    # "maxLimit":I
    .end local v10    # "patCE":J
    .end local v12    # "firstCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v14    # "minLimit":I
    .end local v15    # "secondIx":I
    .end local v17    # "allowMidclusterMatch":Z
    .end local v18    # "found":Z
    .end local v19    # "targetIxOffset":I
    .end local v21    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .local v6, "mStart":I
    .local v7, "mLimit":I
    .local v8, "found":Z
    :goto_1de
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v20

    move-object/from16 v3, v28

    goto/16 :goto_34

    .line 1038
    .end local v13    # "patIx":I
    .end local v20    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v28    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .local v3, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .local v5, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .local v9, "targetIxOffset":I
    .restart local v10    # "patCE":J
    .restart local v12    # "firstCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_1e6
    move-object/from16 v28, v3

    move v14, v6

    move/from16 v16, v7

    .end local v3    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .end local v6    # "mStart":I
    .end local v7    # "mLimit":I
    .local v14, "mStart":I
    .restart local v16    # "mLimit":I
    .restart local v28    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    new-instance v3, Landroid/icu/util/ICUException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CEBuffer.get("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") returned null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 993
    .end local v4    # "targetIx":I
    .end local v5    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v8    # "found":Z
    .end local v9    # "targetIxOffset":I
    .end local v10    # "patCE":J
    .end local v12    # "firstCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v14    # "mStart":I
    .end local v16    # "mLimit":I
    .end local v28    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    :cond_20a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "search("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", m) - expected position to be between "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 994
    invoke-virtual {v5}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v5}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private greylist-max-o searchBackwards(ILandroid/icu/text/StringSearch$Match;)Z
    .registers 28
    .param p1, "startIdx"    # I
    .param p2, "m"    # Landroid/icu/text/StringSearch$Match;

    .line 1266
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v3, v3, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    if-eqz v3, :cond_1d7

    iget-object v3, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 1267
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v3

    if-lt v1, v3, :cond_1d7

    iget-object v3, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 1268
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v3

    if-gt v1, v3, :cond_1d7

    .line 1273
    iget-object v3, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v3, v3, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    if-nez v3, :cond_25

    .line 1274
    invoke-direct {v0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    .line 1277
    :cond_25
    new-instance v3, Landroid/icu/text/StringSearch$CEBuffer;

    invoke-direct {v3, v0}, Landroid/icu/text/StringSearch$CEBuffer;-><init>(Landroid/icu/text/StringSearch;)V

    .line 1278
    .local v3, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    const/4 v4, 0x0

    .line 1289
    .local v4, "targetIx":I
    iget-object v5, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v5}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v5

    if-ge v1, v5, :cond_4e

    .line 1290
    iget-object v5, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v5, v5, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    .line 1291
    .local v5, "bi":Landroid/icu/text/BreakIterator;
    invoke-virtual {v5, v1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v6

    .line 1293
    .local v6, "next":I
    iget-object v7, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v7, v6}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 1295
    const/4 v4, 0x0

    .line 1296
    :goto_41
    invoke-virtual {v3, v4}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v7

    iget v7, v7, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    if-ge v7, v1, :cond_4b

    .line 1297
    nop

    .line 1300
    .end local v5    # "bi":Landroid/icu/text/BreakIterator;
    .end local v6    # "next":I
    goto :goto_53

    .line 1295
    .restart local v5    # "bi":Landroid/icu/text/BreakIterator;
    .restart local v6    # "next":I
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 1301
    .end local v5    # "bi":Landroid/icu/text/BreakIterator;
    .end local v6    # "next":I
    :cond_4e
    iget-object v5, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v5, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 1304
    :goto_53
    const/4 v5, 0x0

    .line 1308
    .local v5, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    move v6, v4

    .line 1309
    .local v6, "limitIx":I
    const/4 v7, -0x1

    .line 1310
    .local v7, "mStart":I
    const/4 v8, -0x1

    .line 1320
    .local v8, "mLimit":I
    nop

    .line 1321
    :goto_58
    const/4 v9, 0x1

    .line 1325
    .local v9, "found":Z
    invoke-virtual {v3, v4}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v10

    .line 1326
    .local v10, "lastCEI":Landroid/icu/text/StringSearch$CEI;
    if-eqz v10, :cond_1b2

    .line 1331
    const/4 v11, 0x0

    .line 1332
    .local v11, "targetIxOffset":I
    iget-object v12, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v12, v12, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .local v12, "patIx":I
    :goto_66
    if-ltz v12, :cond_a8

    .line 1333
    iget-object v14, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v14, v14, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    aget-wide v14, v14, v12

    .line 1335
    .local v14, "patCE":J
    move/from16 v16, v13

    iget-object v13, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v13, v13, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/2addr v13, v4

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v12

    add-int/2addr v13, v11

    invoke-virtual {v3, v13}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v5

    .line 1339
    move v13, v6

    move/from16 v17, v7

    .end local v6    # "limitIx":I
    .end local v7    # "mStart":I
    .local v13, "limitIx":I
    .local v17, "mStart":I
    iget-wide v6, v5, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-object/from16 v18, v5

    .end local v5    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .local v18, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    iget-object v5, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v5, v5, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    invoke-static {v6, v7, v14, v15, v5}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v5

    .line 1340
    .local v5, "ceMatch":I
    if-nez v5, :cond_92

    .line 1341
    const/4 v9, 0x0

    .line 1342
    move-object/from16 v5, v18

    goto :goto_ab

    .line 1343
    :cond_92
    if-lez v5, :cond_9f

    .line 1344
    move/from16 v6, v16

    if-ne v5, v6, :cond_9d

    .line 1346
    add-int/lit8 v12, v12, 0x1

    .line 1347
    add-int/lit8 v11, v11, 0x1

    goto :goto_9f

    .line 1350
    :cond_9d
    add-int/lit8 v11, v11, -0x1

    .line 1332
    .end local v5    # "ceMatch":I
    .end local v14    # "patCE":J
    :cond_9f
    :goto_9f
    add-int/lit8 v12, v12, -0x1

    move v6, v13

    move/from16 v7, v17

    move-object/from16 v5, v18

    const/4 v13, 0x1

    goto :goto_66

    .end local v13    # "limitIx":I
    .end local v17    # "mStart":I
    .end local v18    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .local v5, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .restart local v6    # "limitIx":I
    .restart local v7    # "mStart":I
    :cond_a8
    move v13, v6

    move/from16 v17, v7

    .line 1355
    .end local v6    # "limitIx":I
    .end local v7    # "mStart":I
    .restart local v13    # "limitIx":I
    .restart local v17    # "mStart":I
    :goto_ab
    const-wide/16 v6, -0x1

    if-nez v9, :cond_c2

    if-eqz v5, :cond_b8

    iget-wide v14, v5, Landroid/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v14, v14, v6

    if-eqz v14, :cond_c2

    .line 1357
    nop

    .line 1320
    .end local v10    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v11    # "targetIxOffset":I
    :cond_b8
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move/from16 v19, v12

    move/from16 v7, v17

    goto/16 :goto_1a9

    .line 1360
    .restart local v10    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .restart local v11    # "targetIxOffset":I
    :cond_c2
    if-nez v9, :cond_ce

    .line 1362
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move/from16 v19, v12

    move/from16 v7, v17

    goto/16 :goto_19c

    .line 1370
    :cond_ce
    iget-object v14, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v14, v14, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/2addr v14, v4

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    add-int/2addr v14, v11

    invoke-virtual {v3, v14}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v14

    .line 1371
    .local v14, "firstCEI":Landroid/icu/text/StringSearch$CEI;
    iget v15, v14, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1379
    .end local v17    # "mStart":I
    .local v15, "mStart":I
    invoke-direct {v0, v15}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v17

    if-nez v17, :cond_e5

    .line 1380
    const/4 v9, 0x0

    .line 1385
    :cond_e5
    move-wide/from16 v18, v6

    iget v6, v14, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v15, v6, :cond_ec

    .line 1386
    const/4 v9, 0x0

    .line 1389
    :cond_ec
    iget v6, v10, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 1391
    .local v6, "minLimit":I
    if-lez v4, :cond_179

    .line 1400
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v3, v7}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v7

    .line 1402
    .local v7, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v20, v3

    .end local v3    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .local v20, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    iget v3, v7, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move-object/from16 v21, v5

    .end local v5    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .local v21, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    iget v5, v7, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-ne v3, v5, :cond_10a

    move v3, v8

    move v5, v9

    .end local v8    # "mLimit":I
    .end local v9    # "found":Z
    .local v3, "mLimit":I
    .local v5, "found":Z
    iget-wide v8, v7, Landroid/icu/text/StringSearch$CEI;->ce_:J

    cmp-long v8, v8, v18

    if-eqz v8, :cond_10c

    .line 1403
    const/4 v9, 0x0

    .end local v5    # "found":Z
    .restart local v9    # "found":Z
    goto :goto_10d

    .line 1402
    .end local v3    # "mLimit":I
    .restart local v8    # "mLimit":I
    :cond_10a
    move v3, v8

    move v5, v9

    .line 1406
    .end local v8    # "mLimit":I
    .end local v9    # "found":Z
    .restart local v3    # "mLimit":I
    .restart local v5    # "found":Z
    :cond_10c
    move v9, v5

    .end local v5    # "found":Z
    .restart local v9    # "found":Z
    :goto_10d
    iget v5, v7, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move v8, v5

    .line 1419
    .end local v3    # "mLimit":I
    .local v5, "mLimit":I
    .local v8, "maxLimit":I
    iget-object v3, v0, Landroid/icu/text/StringSearch;->breakIterator:Landroid/icu/text/BreakIterator;

    if-nez v3, :cond_14f

    move/from16 v18, v11

    move/from16 v19, v12

    .end local v11    # "targetIxOffset":I
    .end local v12    # "patIx":I
    .local v18, "targetIxOffset":I
    .local v19, "patIx":I
    iget-wide v11, v7, Landroid/icu/text/StringSearch$CEI;->ce_:J

    const/16 v3, 0x20

    ushr-long/2addr v11, v3

    const-wide v22, 0xffff0000L

    and-long v11, v11, v22

    const-wide/16 v22, 0x0

    cmp-long v3, v11, v22

    if-eqz v3, :cond_153

    iget v3, v10, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v8, v3, :cond_153

    iget v3, v7, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-le v3, v8, :cond_153

    iget-object v3, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    iget-object v11, v0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1423
    invoke-static {v11, v8}, Landroid/icu/text/StringSearch;->codePointAt(Ljava/text/CharacterIterator;I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v3

    if-nez v3, :cond_14e

    iget-object v3, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    iget-object v11, v0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    .line 1424
    invoke-static {v11, v8}, Landroid/icu/text/StringSearch;->codePointBefore(Ljava/text/CharacterIterator;I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v3

    if-eqz v3, :cond_153

    :cond_14e
    goto :goto_156

    .line 1419
    .end local v18    # "targetIxOffset":I
    .end local v19    # "patIx":I
    .restart local v11    # "targetIxOffset":I
    .restart local v12    # "patIx":I
    :cond_14f
    move/from16 v18, v11

    move/from16 v19, v12

    .line 1424
    .end local v11    # "targetIxOffset":I
    .end local v12    # "patIx":I
    .restart local v18    # "targetIxOffset":I
    .restart local v19    # "patIx":I
    :cond_153
    const/4 v3, 0x0

    move/from16 v16, v3

    .line 1436
    .local v16, "allowMidclusterMatch":Z
    :goto_156
    if-ge v6, v8, :cond_165

    .line 1437
    invoke-direct {v0, v6}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v3

    .line 1441
    .local v3, "nba":I
    iget v11, v10, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    if-lt v3, v11, :cond_165

    if-eqz v16, :cond_164

    if-ge v3, v8, :cond_165

    .line 1442
    :cond_164
    move v5, v3

    .line 1446
    .end local v3    # "nba":I
    :cond_165
    if-nez v16, :cond_172

    .line 1449
    if-le v5, v8, :cond_16a

    .line 1450
    const/4 v9, 0x0

    .line 1454
    :cond_16a
    invoke-direct {v0, v5}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v3

    if-nez v3, :cond_172

    .line 1455
    const/4 v3, 0x0

    move v9, v3

    .line 1459
    .end local v7    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v16    # "allowMidclusterMatch":Z
    :cond_172
    move/from16 v24, v8

    move v8, v5

    move v5, v9

    move/from16 v9, v24

    goto :goto_18f

    .line 1464
    .end local v18    # "targetIxOffset":I
    .end local v19    # "patIx":I
    .end local v20    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .end local v21    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .local v3, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .local v5, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .local v8, "mLimit":I
    .restart local v11    # "targetIxOffset":I
    .restart local v12    # "patIx":I
    :cond_179
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move v3, v8

    move v5, v9

    move/from16 v18, v11

    move/from16 v19, v12

    .end local v8    # "mLimit":I
    .end local v9    # "found":Z
    .end local v11    # "targetIxOffset":I
    .end local v12    # "patIx":I
    .local v3, "mLimit":I
    .local v5, "found":Z
    .restart local v18    # "targetIxOffset":I
    .restart local v19    # "patIx":I
    .restart local v20    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .restart local v21    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    invoke-direct {v0, v6}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v7

    .line 1465
    .local v7, "nba":I
    if-lez v7, :cond_18d

    if-le v1, v7, :cond_18d

    move v8, v7

    goto :goto_18e

    :cond_18d
    move v8, v1

    :goto_18e
    move v9, v8

    .line 1468
    .end local v3    # "mLimit":I
    .end local v7    # "nba":I
    .restart local v8    # "mLimit":I
    .local v9, "maxLimit":I
    :goto_18f
    invoke-direct {v0, v15, v8}, Landroid/icu/text/StringSearch;->checkIdentical(II)Z

    move-result v3

    if-nez v3, :cond_197

    .line 1469
    const/4 v3, 0x0

    .end local v5    # "found":Z
    .local v3, "found":Z
    goto :goto_198

    .line 1468
    .end local v3    # "found":Z
    .restart local v5    # "found":Z
    :cond_197
    move v3, v5

    .line 1472
    .end local v5    # "found":Z
    .restart local v3    # "found":Z
    :goto_198
    if-eqz v3, :cond_1a7

    .line 1473
    move v9, v3

    move v7, v15

    .line 1479
    .end local v3    # "found":Z
    .end local v6    # "minLimit":I
    .end local v10    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v14    # "firstCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v15    # "mStart":I
    .end local v18    # "targetIxOffset":I
    .local v7, "mStart":I
    .local v9, "found":Z
    :goto_19c
    if-nez v9, :cond_1a0

    .line 1480
    const/4 v8, -0x1

    .line 1481
    const/4 v7, -0x1

    .line 1484
    :cond_1a0
    if-eqz v2, :cond_1a6

    .line 1485
    iput v7, v2, Landroid/icu/text/StringSearch$Match;->start_:I

    .line 1486
    iput v8, v2, Landroid/icu/text/StringSearch$Match;->limit_:I

    .line 1489
    :cond_1a6
    return v9

    .line 1472
    .end local v7    # "mStart":I
    .restart local v3    # "found":Z
    .restart local v6    # "minLimit":I
    .local v9, "maxLimit":I
    .restart local v10    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .restart local v14    # "firstCEI":Landroid/icu/text/StringSearch$CEI;
    .restart local v15    # "mStart":I
    .restart local v18    # "targetIxOffset":I
    :cond_1a7
    move v9, v3

    move v7, v15

    .line 1320
    .end local v3    # "found":Z
    .end local v6    # "minLimit":I
    .end local v10    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v14    # "firstCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v15    # "mStart":I
    .end local v18    # "targetIxOffset":I
    .restart local v7    # "mStart":I
    .local v9, "found":Z
    :goto_1a9
    add-int/lit8 v4, v4, 0x1

    move v6, v13

    move-object/from16 v3, v20

    move-object/from16 v5, v21

    goto/16 :goto_58

    .line 1327
    .end local v13    # "limitIx":I
    .end local v19    # "patIx":I
    .end local v20    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .end local v21    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .local v3, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    .local v5, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .local v6, "limitIx":I
    .restart local v10    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_1b2
    move-object/from16 v20, v3

    move v13, v6

    move/from16 v17, v7

    move v3, v8

    .end local v6    # "limitIx":I
    .end local v7    # "mStart":I
    .end local v8    # "mLimit":I
    .local v3, "mLimit":I
    .restart local v13    # "limitIx":I
    .restart local v17    # "mStart":I
    .restart local v20    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    new-instance v6, Landroid/icu/util/ICUException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CEBuffer.getPrevious("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") returned null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1269
    .end local v3    # "mLimit":I
    .end local v4    # "targetIx":I
    .end local v5    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v9    # "found":Z
    .end local v10    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v13    # "limitIx":I
    .end local v17    # "mStart":I
    .end local v20    # "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    :cond_1d7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchBackwards("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", m) - expected position to be between "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 1270
    invoke-virtual {v5}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v5}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist test-api getCollator()Landroid/icu/text/RuleBasedCollator;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    return-object v0
.end method

.method public whitelist test-api getIndex()I
    .registers 4

    .line 391
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    .line 392
    .local v0, "result":I
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/icu/text/StringSearch;->isOutOfBounds(III)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 393
    const/4 v1, -0x1

    return v1

    .line 395
    :cond_1a
    return v0
.end method

.method public whitelist test-api getPattern()Ljava/lang/String;
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    return-object v0
.end method

.method protected whitelist test-api handleNext(I)I
    .registers 5
    .param p1, "position"    # I

    .line 471
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    const/4 v1, -0x1

    if-nez v0, :cond_3c

    .line 472
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v2, v2, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-ne v2, v1, :cond_14

    .line 473
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->getIndex()I

    move-result v2

    goto :goto_1a

    :cond_14
    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v2, v2, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    add-int/lit8 v2, v2, 0x1

    :goto_1a
    iput v2, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 474
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 475
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v2, v2, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {v0, v2}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 476
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v2

    if-ne v0, v2, :cond_3b

    .line 477
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 512
    :cond_3b
    return v1

    .line 480
    :cond_3c
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    if-gtz v0, :cond_4a

    .line 487
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    add-int/lit8 v2, p1, -0x1

    iput v2, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 490
    :cond_4a
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 496
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    if-eqz v0, :cond_59

    .line 498
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCanonical()Z

    goto :goto_5c

    .line 500
    :cond_59
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextExact()Z

    .line 503
    :goto_5c
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-ne v0, v1, :cond_6e

    .line 504
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    goto :goto_77

    .line 506
    :cond_6e
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 509
    :goto_77
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return v0
.end method

.method protected whitelist test-api handlePrevious(I)I
    .registers 5
    .param p1, "position"    # I

    .line 520
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    if-nez v0, :cond_42

    .line 521
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 522
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->getIndex()I

    move-result v1

    goto :goto_18

    :cond_14
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    :goto_18
    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 523
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 524
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    goto :goto_54

    .line 526
    :cond_2a
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 527
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 528
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    goto :goto_54

    .line 531
    :cond_42
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 533
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    if-eqz v0, :cond_51

    .line 535
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCanonical()Z

    goto :goto_54

    .line 537
    :cond_51
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousExact()Z

    .line 541
    :goto_54
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return v0
.end method

.method public whitelist test-api isCanonical()Z
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    return v0
.end method

.method public whitelist test-api reset()V
    .registers 9

    .line 420
    const/4 v0, 0x1

    .line 426
    .local v0, "sameCollAttribute":Z
    iget-object v1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v1

    .line 427
    .local v1, "newStrength":I
    iget v2, p0, Landroid/icu/text/StringSearch;->strength_:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_e

    if-ge v1, v3, :cond_14

    :cond_e
    iget v2, p0, Landroid/icu/text/StringSearch;->strength_:I

    if-lt v2, v3, :cond_15

    if-ge v1, v3, :cond_15

    .line 429
    :cond_14
    const/4 v0, 0x0

    .line 432
    :cond_15
    iget-object v2, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v2}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v2

    iput v2, p0, Landroid/icu/text/StringSearch;->strength_:I

    .line 433
    iget v2, p0, Landroid/icu/text/StringSearch;->strength_:I

    invoke-static {v2}, Landroid/icu/text/StringSearch;->getMask(I)I

    move-result v2

    .line 434
    .local v2, "ceMask":I
    iget v3, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    if-eq v3, v2, :cond_2a

    .line 435
    iput v2, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    .line 436
    const/4 v0, 0x0

    .line 439
    :cond_2a
    iget-object v3, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v3}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v3

    .line 440
    .local v3, "shift":Z
    iget-boolean v4, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    if-eq v4, v3, :cond_37

    .line 441
    iput-boolean v3, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    .line 442
    const/4 v0, 0x0

    .line 445
    :cond_37
    iget-object v4, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v4}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v4

    .line 446
    .local v4, "varTop":I
    iget v5, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    if-eq v5, v4, :cond_44

    .line 447
    iput v4, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    .line 448
    const/4 v0, 0x0

    .line 451
    :cond_44
    if-nez v0, :cond_49

    .line 452
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    .line 455
    :cond_49
    iget-object v5, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v6, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v6}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 457
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 458
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v7, -0x1

    iput v7, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 459
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v6, v5, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    .line 460
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v6, v5, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    .line 461
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    sget-object v6, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iput-object v6, v5, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 462
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 463
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v6, v5, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 464
    return-void
.end method

.method public whitelist test-api setCanonical(Z)V
    .registers 3
    .param p1, "allowCanonical"    # Z

    .line 374
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean p1, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    .line 375
    return-void
.end method

.method public whitelist test-api setCollator(Landroid/icu/text/RuleBasedCollator;)V
    .registers 5
    .param p1, "collator"    # Landroid/icu/text/RuleBasedCollator;

    .line 310
    if-eqz p1, :cond_5d

    .line 313
    iput-object p1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    .line 314
    iget-object v0, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/StringSearch;->getMask(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    .line 316
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p1, v0}, Landroid/icu/text/RuleBasedCollator;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 317
    .local v0, "collLocale":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    if-nez v0, :cond_1d

    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    goto :goto_1e

    :cond_1d
    move-object v2, v0

    :goto_1e
    invoke-static {v2}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    .line 318
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v1, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/CharacterIterator;

    invoke-virtual {v1, v2}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 320
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v1

    iput-boolean v1, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    .line 321
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v1

    iput v1, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    .line 322
    new-instance v1, Landroid/icu/text/CollationElementIterator;

    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v2, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    iput-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    .line 323
    new-instance v1, Landroid/icu/text/CollationElementIterator;

    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v2, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    iput-object v1, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    .line 326
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    .line 327
    return-void

    .line 311
    .end local v0    # "collLocale":Landroid/icu/util/ULocale;
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Collator can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setIndex(I)V
    .registers 3
    .param p1, "position"    # I

    .line 407
    invoke-super {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 408
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 409
    return-void
.end method

.method protected greylist-max-o setMatchNotFound()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 827
    invoke-super {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    .line 831
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    if-eqz v0, :cond_19

    .line 832
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    goto :goto_1f

    .line 834
    :cond_19
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 836
    :goto_1f
    return-void
.end method

.method public whitelist test-api setPattern(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 346
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 350
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput-object p1, v0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    .line 352
    return-void

    .line 347
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern to search for can not be null or of length 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTarget(Ljava/text/CharacterIterator;)V
    .registers 3
    .param p1, "text"    # Ljava/text/CharacterIterator;

    .line 382
    invoke-super {p0, p1}, Landroid/icu/text/SearchIterator;->setTarget(Ljava/text/CharacterIterator;)V

    .line 383
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 384
    return-void
.end method
