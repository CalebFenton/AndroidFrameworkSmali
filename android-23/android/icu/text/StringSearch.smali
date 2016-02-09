.class public final Landroid/icu/text/StringSearch;
.super Landroid/icu/text/SearchIterator;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/StringSearch$Match;,
        Landroid/icu/text/StringSearch$Pattern;,
        Landroid/icu/text/StringSearch$CollationPCE;,
        Landroid/icu/text/StringSearch$CEI;,
        Landroid/icu/text/StringSearch$CEBuffer;
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
    .line 933
    const/4 v0, 0x5

    #@1
    sput v0, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    #@3
    .line 934
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
    .line 280
    new-instance v1, Ljava/text/StringCharacterIterator;

    #@2
    invoke-direct {v1, p2}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    #@5
    .line 281
    invoke-static {}, Landroid/icu/text/Collator;->getInstance()Landroid/icu/text/Collator;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    #@b
    const/4 v2, 0x0

    #@c
    .line 280
    invoke-direct {p0, p1, v1, v0, v2}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    #@f
    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/text/CharacterIterator;
    .param p3, "collator"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 228
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    #@4
    .line 227
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
    .line 177
    invoke-direct {p0, p2, p4}, Landroid/icu/text/SearchIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/BreakIterator;)V

    #@4
    .line 180
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getNumericCollation()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 181
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@c
    const-string/jumbo v2, "Numeric collation is not supported by StringSearch"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 184
    :cond_0
    iput-object p3, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@15
    .line 185
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    #@18
    move-result v1

    #@19
    iput v1, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@1b
    .line 186
    iget v1, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@1d
    invoke-static {v1}, Landroid/icu/text/StringSearch;->getMask(I)I

    #@20
    move-result v1

    #@21
    iput v1, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    #@23
    .line 187
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    #@26
    move-result v1

    #@27
    iput-boolean v1, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    #@29
    .line 188
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    #@2f
    .line 190
    new-instance v1, Landroid/icu/text/StringSearch$Pattern;

    #@31
    invoke-direct {v1, p1}, Landroid/icu/text/StringSearch$Pattern;-><init>(Ljava/lang/String;)V

    #@34
    iput-object v1, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@36
    .line 192
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@38
    const/4 v2, 0x0

    #@39
    invoke-virtual {v1, v2}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@3c
    .line 193
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3e
    const/4 v2, -0x1

    #@3f
    iput v2, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@41
    .line 195
    iput-object v3, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@43
    .line 196
    new-instance v1, Landroid/icu/text/CollationElementIterator;

    #@45
    invoke-direct {v1, p2, p3}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    #@48
    iput-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@4a
    .line 198
    iput-object v3, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    #@4c
    .line 208
    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@4e
    invoke-virtual {p3, v1}, Landroid/icu/text/RuleBasedCollator;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@51
    move-result-object v0

    #@52
    .line 209
    .local v0, "collLocale":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@54
    if-nez v0, :cond_1

    #@56
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@58
    .end local v0    # "collLocale":Landroid/icu/util/ULocale;
    :cond_1
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@5b
    move-result-object v2

    #@5c
    iput-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@5e
    .line 210
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@60
    iget-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@62
    invoke-interface {p2}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@65
    move-result-object v1

    #@66
    check-cast v1, Ljava/text/CharacterIterator;

    #@68
    invoke-virtual {v2, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@6b
    .line 212
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    #@6e
    .line 173
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
    .line 244
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/util/ULocale;)V

    #@7
    .line 243
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
    .line 656
    move v0, p2

    #@2
    .line 657
    .local v0, "newlength":I
    add-int/lit8 v2, p1, 0x1

    #@4
    if-ne v2, v0, :cond_0

    #@6
    .line 658
    add-int/2addr v0, p4

    #@7
    .line 659
    new-array v1, v0, [I

    #@9
    .line 660
    .local v1, "temp":[I
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@c
    .line 661
    move-object p0, v1

    #@d
    .line 663
    .end local v1    # "temp":[I
    :cond_0
    aput p3, p0, p1

    #@f
    .line 664
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
    .line 681
    move v0, p2

    #@2
    .line 682
    .local v0, "newlength":I
    add-int/lit8 v2, p1, 0x1

    #@4
    if-ne v2, v0, :cond_0

    #@6
    .line 683
    add-int/2addr v0, p5

    #@7
    .line 684
    new-array v1, v0, [J

    #@9
    .line 685
    .local v1, "temp":[J
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@c
    .line 686
    move-object p0, v1

    #@d
    .line 688
    .end local v1    # "temp":[J
    :cond_0
    aput-wide p3, p0, p1

    #@f
    .line 689
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
    .line 867
    iget v2, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@3
    const/16 v3, 0xf

    #@5
    if-eq v2, v3, :cond_0

    #@7
    .line 868
    const/4 v2, 0x1

    #@8
    return v2

    #@9
    .line 872
    :cond_0
    iget-object v2, p0, Landroid/icu/text/StringSearch;->targetText:Ljava/text/CharacterIterator;

    #@b
    sub-int v3, p2, p1

    #@d
    invoke-static {v2, p1, v3}, Landroid/icu/text/StringSearch;->getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 873
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
    .line 874
    invoke-static {v1, v4}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 876
    :cond_1
    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@21
    iget-object v0, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@23
    .line 877
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
    .line 878
    invoke-static {v0, v4}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 880
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    return v2
.end method

.method private static compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I
    .locals 14
    .param p0, "targCE"    # J
    .param p2, "patCE"    # J
    .param p4, "compareType"    # Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@0
    .prologue
    .line 937
    cmp-long v12, p0, p2

    #@2
    if-nez v12, :cond_0

    #@4
    .line 938
    const/4 v12, -0x1

    #@5
    return v12

    #@6
    .line 940
    :cond_0
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@8
    move-object/from16 v0, p4

    #@a
    if-ne v0, v12, :cond_1

    #@c
    .line 941
    const/4 v12, 0x0

    #@d
    return v12

    #@e
    .line 944
    :cond_1
    const/16 v12, 0x20

    #@10
    ushr-long v8, p0, v12

    #@12
    .line 945
    .local v8, "targCEshifted":J
    const/16 v12, 0x20

    #@14
    ushr-long v2, p2, v12

    #@16
    .line 948
    .local v2, "patCEshifted":J
    const-wide v12, 0xffff0000L

    #@1b
    .line 949
    and-long/2addr v12, v8

    #@1c
    long-to-int v7, v12

    #@1d
    .line 948
    .local v7, "targLev1":I
    const-wide v12, 0xffff0000L

    #@22
    .line 950
    and-long/2addr v12, v2

    #@23
    long-to-int v4, v12

    #@24
    .line 951
    .local v4, "patLev1":I
    if-eq v7, v4, :cond_4

    #@26
    .line 952
    if-nez v7, :cond_2

    #@28
    .line 953
    const/4 v12, 0x1

    #@29
    return v12

    #@2a
    .line 955
    :cond_2
    if-nez v4, :cond_3

    #@2c
    .line 956
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@2e
    move-object/from16 v0, p4

    #@30
    if-ne v0, v12, :cond_3

    #@32
    .line 957
    const/4 v12, 0x2

    #@33
    return v12

    #@34
    .line 959
    :cond_3
    const/4 v12, 0x0

    #@35
    return v12

    #@36
    .line 962
    :cond_4
    const-wide/32 v12, 0xffff

    #@39
    .line 963
    and-long/2addr v12, v8

    #@3a
    long-to-int v10, v12

    #@3b
    .line 962
    .local v10, "targLev2":I
    const-wide/32 v12, 0xffff

    #@3e
    .line 964
    and-long/2addr v12, v2

    #@3f
    long-to-int v5, v12

    #@40
    .line 965
    .local v5, "patLev2":I
    if-eq v10, v5, :cond_9

    #@42
    .line 966
    if-nez v10, :cond_5

    #@44
    .line 967
    const/4 v12, 0x1

    #@45
    return v12

    #@46
    .line 969
    :cond_5
    if-nez v5, :cond_6

    #@48
    .line 970
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@4a
    move-object/from16 v0, p4

    #@4c
    if-ne v0, v12, :cond_6

    #@4e
    .line 971
    const/4 v12, 0x2

    #@4f
    return v12

    #@50
    .line 973
    :cond_6
    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    #@52
    if-eq v5, v12, :cond_7

    #@54
    .line 974
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@56
    move-object/from16 v0, p4

    #@58
    if-ne v0, v12, :cond_8

    #@5a
    .line 975
    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    #@5c
    if-ne v10, v12, :cond_8

    #@5e
    :cond_7
    const/4 v12, -0x1

    #@5f
    .line 973
    :goto_0
    return v12

    #@60
    .line 975
    :cond_8
    const/4 v12, 0x0

    #@61
    goto :goto_0

    #@62
    .line 978
    :cond_9
    const-wide v12, 0xffff0000L

    #@67
    .line 979
    and-long/2addr v12, p0

    #@68
    long-to-int v11, v12

    #@69
    .line 978
    .local v11, "targLev3":I
    const-wide v12, 0xffff0000L

    #@6e
    .line 980
    and-long v12, v12, p2

    #@70
    long-to-int v6, v12

    #@71
    .line 981
    .local v6, "patLev3":I
    if-eq v11, v6, :cond_c

    #@73
    .line 982
    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    #@75
    if-eq v6, v12, :cond_a

    #@77
    .line 983
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@79
    move-object/from16 v0, p4

    #@7b
    if-ne v0, v12, :cond_b

    #@7d
    .line 984
    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    #@7f
    if-ne v11, v12, :cond_b

    #@81
    :cond_a
    const/4 v12, -0x1

    #@82
    .line 982
    :goto_1
    return v12

    #@83
    .line 984
    :cond_b
    const/4 v12, 0x0

    #@84
    goto :goto_1

    #@85
    .line 987
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
    .line 620
    iget v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    #@3
    and-int/2addr p1, v0

    #@4
    .line 622
    iget-boolean v0, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 628
    iget v0, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    #@a
    if-le v0, p1, :cond_0

    #@c
    .line 629
    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@e
    if-lt v0, v1, :cond_1

    #@10
    .line 630
    const/high16 v0, -0x10000

    #@12
    and-int/2addr p1, v0

    #@13
    .line 639
    :cond_0
    :goto_0
    return p1

    #@14
    .line 632
    :cond_1
    const/4 p1, 0x0

    #@15
    goto :goto_0

    #@16
    .line 635
    :cond_2
    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@18
    if-lt v0, v1, :cond_0

    #@1a
    if-nez p1, :cond_0

    #@1c
    .line 636
    const p1, 0xffff

    #@1f
    goto :goto_0
.end method

.method private static getMask(I)I
    .locals 1
    .param p0, "strength"    # I

    #@0
    .prologue
    .line 574
    packed-switch p0, :pswitch_data_0

    #@3
    .line 580
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 576
    :pswitch_0
    const/high16 v0, -0x10000

    #@7
    return v0

    #@8
    .line 578
    :pswitch_1
    const/16 v0, -0x100

    #@a
    return v0

    #@b
    .line 574
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
    .line 1501
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@5
    .line 1502
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    #@8
    move-result v1

    #@9
    .line 1503
    .local v1, "offset":I
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@c
    .line 1504
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@f
    .line 1505
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    #@12
    move-result v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 1506
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    #@19
    .line 1504
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1508
    :cond_0
    invoke-interface {p0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@1f
    .line 1509
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
    .line 1423
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
    .line 1427
    iget-object v2, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@5
    move-result v1

    #@6
    .line 1428
    .local v1, "textOffset":I
    new-instance v0, Landroid/icu/text/StringSearch$Match;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {v0, v2}, Landroid/icu/text/StringSearch$Match;-><init>(Landroid/icu/text/StringSearch$Match;)V

    #@c
    .line 1430
    .local v0, "match":Landroid/icu/text/StringSearch$Match;
    invoke-direct {p0, v1, v0}, Landroid/icu/text/StringSearch;->search(ILandroid/icu/text/StringSearch$Match;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1431
    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@14
    iget v3, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@16
    iput v3, v2, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@18
    .line 1432
    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1a
    iget v3, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    #@1c
    iget v4, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@1e
    sub-int/2addr v3, v4

    #@1f
    invoke-virtual {v2, v3}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@22
    .line 1433
    const/4 v2, 0x1

    #@23
    return v2

    #@24
    .line 1435
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    #@27
    .line 1436
    const/4 v2, 0x0

    #@28
    return v2
.end method

.method private handleNextExact()Z
    .locals 1

    #@0
    .prologue
    .line 1419
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
    .line 1450
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
    .line 1456
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@4
    iget-boolean v5, v5, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    #@6
    if-eqz v5, :cond_4

    #@8
    .line 1457
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a
    iget v5, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@c
    const/4 v6, -0x1

    #@d
    if-eq v5, v6, :cond_0

    #@f
    .line 1458
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@11
    iget v5, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@13
    iget-object v6, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@15
    invoke-virtual {v6}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    #@18
    move-result v6

    #@19
    add-int/2addr v5, v6

    #@1a
    add-int/lit8 v4, v5, -0x1

    #@1c
    .line 1479
    .local v4, "textOffset":I
    :goto_0
    new-instance v0, Landroid/icu/text/StringSearch$Match;

    #@1e
    invoke-direct {v0, v9}, Landroid/icu/text/StringSearch$Match;-><init>(Landroid/icu/text/StringSearch$Match;)V

    #@21
    .line 1480
    .local v0, "match":Landroid/icu/text/StringSearch$Match;
    invoke-direct {p0, v4, v0}, Landroid/icu/text/StringSearch;->searchBackwards(ILandroid/icu/text/StringSearch$Match;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_5

    #@27
    .line 1481
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@29
    iget v6, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@2b
    iput v6, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@2d
    .line 1482
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2f
    iget v6, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    #@31
    iget v7, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@33
    sub-int/2addr v6, v7

    #@34
    invoke-virtual {v5, v6}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@37
    .line 1483
    const/4 v5, 0x1

    #@38
    return v5

    #@39
    .line 1461
    .end local v0    # "match":Landroid/icu/text/StringSearch$Match;
    .end local v4    # "textOffset":I
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    #@3c
    .line 1462
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initTextProcessedIter()Z

    #@3f
    move-result v5

    #@40
    if-nez v5, :cond_1

    #@42
    .line 1463
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    #@45
    .line 1464
    return v8

    #@46
    .line 1466
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
    .line 1467
    iget-object v5, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    #@51
    invoke-virtual {v5, v9}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    #@54
    move-result-wide v2

    #@55
    .line 1468
    .local v2, "pce":J
    const-wide/16 v6, -0x1

    #@57
    cmp-long v5, v2, v6

    #@59
    if-nez v5, :cond_3

    #@5b
    .line 1473
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
    .line 1466
    .end local v4    # "textOffset":I
    .restart local v2    # "pce":J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@64
    goto :goto_1

    #@65
    .line 1476
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
    .line 1485
    .restart local v0    # "match":Landroid/icu/text/StringSearch$Match;
    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    #@6f
    .line 1486
    return v8
.end method

.method private handlePreviousExact()Z
    .locals 1

    #@0
    .prologue
    .line 1446
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
    .line 884
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 885
    new-instance v0, Landroid/icu/text/StringSearch$CollationPCE;

    #@6
    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@8
    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE;-><init>(Landroid/icu/text/CollationElementIterator;)V

    #@b
    iput-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    #@d
    .line 889
    :goto_0
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 887
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
    .line 816
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePattern()I

    #@3
    .line 815
    return-void
.end method

.method private initializePattern()I
    .locals 2

    #@0
    .prologue
    .line 795
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@2
    const/4 v1, 0x0

    #@3
    iput-object v1, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@5
    .line 798
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
    .line 702
    const/16 v9, 0x100

    #@3
    new-array v1, v9, [I

    #@5
    .line 703
    .local v1, "cetable":[I
    array-length v2, v1

    #@6
    .line 704
    .local v2, "cetablesize":I
    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@8
    iget-object v9, v9, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@d
    move-result v6

    #@e
    .line 705
    .local v6, "patternlength":I
    iget-object v3, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@10
    .line 707
    .local v3, "coleiter":Landroid/icu/text/CollationElementIterator;
    if-nez v3, :cond_1

    #@12
    .line 708
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
    .line 709
    .restart local v3    # "coleiter":Landroid/icu/text/CollationElementIterator;
    iput-object v3, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@1f
    .line 714
    :goto_0
    const/4 v5, 0x0

    #@20
    .line 715
    .local v5, "offset":I
    const/4 v7, 0x0

    #@21
    .line 718
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
    .line 719
    invoke-direct {p0, v0}, Landroid/icu/text/StringSearch;->getCE(I)I

    #@2b
    move-result v4

    #@2c
    .line 720
    .local v4, "newce":I
    if-eqz v4, :cond_0

    #@2e
    .line 722
    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@31
    move-result v9

    #@32
    sub-int v9, v6, v9

    #@34
    add-int/lit8 v9, v9, 0x1

    #@36
    .line 721
    invoke-static {v1, v5, v2, v4, v9}, Landroid/icu/text/StringSearch;->addToIntArray([IIIII)[I

    #@39
    move-result-object v8

    #@3a
    .line 723
    .local v8, "temp":[I
    add-int/lit8 v5, v5, 0x1

    #@3c
    .line 724
    move-object v1, v8

    #@3d
    .line 726
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
    .line 711
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
    .line 729
    .restart local v0    # "ce":I
    .restart local v5    # "offset":I
    .restart local v7    # "result":I
    :cond_2
    aput v11, v1, v5

    #@4f
    .line 730
    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@51
    iput-object v1, v9, Landroid/icu/text/StringSearch$Pattern;->CE_:[I

    #@53
    .line 731
    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@55
    iput v5, v9, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    #@57
    .line 733
    return v7
.end method

.method private initializePatternPCETable()I
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 745
    const/16 v6, 0x100

    #@3
    new-array v1, v6, [J

    #@5
    .line 746
    .local v1, "pcetable":[J
    array-length v3, v1

    #@6
    .line 747
    .local v3, "pcetablesize":I
    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@8
    iget-object v6, v6, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@d
    move-result v8

    #@e
    .line 748
    .local v8, "patternlength":I
    iget-object v0, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@10
    .line 750
    .local v0, "coleiter":Landroid/icu/text/CollationElementIterator;
    if-nez v0, :cond_0

    #@12
    .line 751
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
    .line 752
    .restart local v0    # "coleiter":Landroid/icu/text/CollationElementIterator;
    iput-object v0, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    #@1f
    .line 757
    :goto_0
    const/4 v2, 0x0

    #@20
    .line 758
    .local v2, "offset":I
    const/4 v9, 0x0

    #@21
    .line 761
    .local v9, "result":I
    new-instance v7, Landroid/icu/text/StringSearch$CollationPCE;

    #@23
    invoke-direct {v7, v0}, Landroid/icu/text/StringSearch$CollationPCE;-><init>(Landroid/icu/text/CollationElementIterator;)V

    #@26
    .line 766
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
    .line 767
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
    .line 768
    .local v10, "temp":[J
    add-int/lit8 v2, v2, 0x1

    #@3e
    .line 769
    move-object v1, v10

    #@3f
    goto :goto_1

    #@40
    .line 754
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
    .line 772
    .restart local v2    # "offset":I
    .restart local v4    # "pce":J
    .restart local v7    # "iter":Landroid/icu/text/StringSearch$CollationPCE;
    .restart local v9    # "result":I
    :cond_1
    const-wide/16 v12, 0x0

    #@4a
    aput-wide v12, v1, v2

    #@4c
    .line 773
    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@4e
    iput-object v1, v6, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@50
    .line 774
    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@52
    iput v2, v6, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@54
    .line 776
    return v9
.end method

.method private isBreakBoundary(I)Z
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 917
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v0

    #@6
    .line 919
    .local v0, "breakiterator":Landroid/icu/text/BreakIterator;
    if-nez v0, :cond_0

    #@8
    .line 920
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a
    iget-object v0, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@c
    .line 923
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
    .line 857
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
    .line 898
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v0

    #@6
    .line 900
    .local v0, "breakiterator":Landroid/icu/text/BreakIterator;
    if-nez v0, :cond_0

    #@8
    .line 901
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a
    iget-object v0, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@c
    .line 904
    :cond_0
    if-eqz v0, :cond_1

    #@e
    .line 905
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 908
    :cond_1
    return p1
.end method

.method private search(ILandroid/icu/text/StringSearch$Match;)Z
    .locals 28
    .param p1, "startIdx"    # I
    .param p2, "m"    # Landroid/icu/text/StringSearch$Match;

    #@0
    .prologue
    .line 1001
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@4
    move-object/from16 v24, v0

    #@6
    move-object/from16 v0, v24

    #@8
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    #@a
    move/from16 v24, v0

    #@c
    if-eqz v24, :cond_0

    #@e
    .line 1002
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@12
    move-object/from16 v24, v0

    #@14
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@17
    move-result v24

    #@18
    move/from16 v0, p1

    #@1a
    move/from16 v1, v24

    #@1c
    if-ge v0, v1, :cond_1

    #@1e
    .line 1004
    :cond_0
    new-instance v24, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v25, Ljava/lang/StringBuilder;

    #@22
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v26, "search("

    #@28
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v25

    #@2c
    move-object/from16 v0, v25

    #@2e
    move/from16 v1, p1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v25

    #@34
    const-string/jumbo v26, ", m) - expected position to be between "

    #@37
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v25

    #@3b
    .line 1005
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3f
    move-object/from16 v26, v0

    #@41
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@44
    move-result v26

    #@45
    .line 1004
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v25

    #@49
    .line 1005
    const-string/jumbo v26, " and "

    #@4c
    .line 1004
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v25

    #@50
    .line 1005
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@54
    move-object/from16 v26, v0

    #@56
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@59
    move-result v26

    #@5a
    .line 1004
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v25

    #@5e
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v25

    #@62
    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v24

    #@66
    .line 1003
    :cond_1
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@6a
    move-object/from16 v24, v0

    #@6c
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@6f
    move-result v24

    #@70
    move/from16 v0, p1

    #@72
    move/from16 v1, v24

    #@74
    if-gt v0, v1, :cond_0

    #@76
    .line 1008
    move-object/from16 v0, p0

    #@78
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@7a
    move-object/from16 v24, v0

    #@7c
    move-object/from16 v0, v24

    #@7e
    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@80
    move-object/from16 v24, v0

    #@82
    if-nez v24, :cond_2

    #@84
    .line 1009
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    #@87
    .line 1012
    :cond_2
    move-object/from16 v0, p0

    #@89
    iget-object v0, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@8b
    move-object/from16 v24, v0

    #@8d
    move-object/from16 v0, v24

    #@8f
    move/from16 v1, p1

    #@91
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@94
    .line 1013
    new-instance v7, Landroid/icu/text/StringSearch$CEBuffer;

    #@96
    move-object/from16 v0, p0

    #@98
    invoke-direct {v7, v0}, Landroid/icu/text/StringSearch$CEBuffer;-><init>(Landroid/icu/text/StringSearch;)V

    #@9b
    .line 1015
    .local v7, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    const/16 v22, 0x0

    #@9d
    .line 1016
    .local v22, "targetIx":I
    const/16 v21, 0x0

    #@9f
    .line 1020
    .local v21, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    const/4 v12, -0x1

    #@a0
    .line 1021
    .local v12, "mStart":I
    const/4 v11, -0x1

    #@a1
    .line 1038
    .local v11, "mLimit":I
    const/16 v22, 0x0

    #@a3
    .line 1039
    .end local v21    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :goto_0
    const/4 v9, 0x1

    #@a4
    .line 1042
    .local v9, "found":Z
    const/16 v23, 0x0

    #@a6
    .line 1043
    .local v23, "targetIxOffset":I
    const-wide/16 v18, 0x0

    #@a8
    .line 1047
    .local v18, "patCE":J
    move/from16 v0, v22

    #@aa
    invoke-virtual {v7, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    #@ad
    move-result-object v8

    #@ae
    .line 1048
    .local v8, "firstCEI":Landroid/icu/text/StringSearch$CEI;
    if-nez v8, :cond_3

    #@b0
    .line 1049
    new-instance v24, Landroid/icu/util/ICUException;

    #@b2
    new-instance v25, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v26, "CEBuffer.get("

    #@ba
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v25

    #@be
    move-object/from16 v0, v25

    #@c0
    move/from16 v1, v22

    #@c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v25

    #@c6
    const-string/jumbo v26, ") returned null."

    #@c9
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v25

    #@cd
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v25

    #@d1
    invoke-direct/range {v24 .. v25}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@d4
    throw v24

    #@d5
    .line 1052
    :cond_3
    const/16 v17, 0x0

    #@d7
    .local v17, "patIx":I
    :goto_1
    move-object/from16 v0, p0

    #@d9
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@db
    move-object/from16 v24, v0

    #@dd
    move-object/from16 v0, v24

    #@df
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@e1
    move/from16 v24, v0

    #@e3
    move/from16 v0, v17

    #@e5
    move/from16 v1, v24

    #@e7
    if-ge v0, v1, :cond_4

    #@e9
    .line 1053
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@ed
    move-object/from16 v24, v0

    #@ef
    move-object/from16 v0, v24

    #@f1
    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@f3
    move-object/from16 v24, v0

    #@f5
    aget-wide v18, v24, v17

    #@f7
    .line 1054
    add-int v24, v22, v17

    #@f9
    add-int v24, v24, v23

    #@fb
    move/from16 v0, v24

    #@fd
    invoke-virtual {v7, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    #@100
    move-result-object v21

    #@101
    .line 1058
    .local v21, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, v21

    #@103
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@105
    move-wide/from16 v24, v0

    #@107
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@10b
    move-object/from16 v26, v0

    #@10d
    move-object/from16 v0, v26

    #@10f
    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@111
    move-object/from16 v26, v0

    #@113
    move-wide/from16 v0, v24

    #@115
    move-wide/from16 v2, v18

    #@117
    move-object/from16 v4, v26

    #@119
    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    #@11c
    move-result v6

    #@11d
    .line 1059
    .local v6, "ceMatch":I
    if-nez v6, :cond_6

    #@11f
    .line 1060
    const/4 v9, 0x0

    #@120
    .line 1073
    .end local v6    # "ceMatch":I
    .end local v21    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_4
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@124
    move-object/from16 v24, v0

    #@126
    move-object/from16 v0, v24

    #@128
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@12a
    move/from16 v24, v0

    #@12c
    add-int v23, v23, v24

    #@12e
    .line 1075
    if-nez v9, :cond_9

    #@130
    if-eqz v21, :cond_5

    #@132
    move-object/from16 v0, v21

    #@134
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@136
    move-wide/from16 v24, v0

    #@138
    const-wide/16 v26, -0x1

    #@13a
    cmp-long v24, v24, v26

    #@13c
    if-eqz v24, :cond_9

    #@13e
    .line 1038
    :cond_5
    add-int/lit8 v22, v22, 0x1

    #@140
    goto/16 :goto_0

    #@142
    .line 1062
    .restart local v6    # "ceMatch":I
    .restart local v21    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_6
    if-lez v6, :cond_7

    #@144
    .line 1063
    const/16 v24, 0x1

    #@146
    move/from16 v0, v24

    #@148
    if-ne v6, v0, :cond_8

    #@14a
    .line 1065
    add-int/lit8 v17, v17, -0x1

    #@14c
    .line 1066
    add-int/lit8 v23, v23, 0x1

    #@14e
    .line 1052
    :cond_7
    :goto_2
    add-int/lit8 v17, v17, 0x1

    #@150
    goto :goto_1

    #@151
    .line 1069
    :cond_8
    add-int/lit8 v23, v23, -0x1

    #@153
    goto :goto_2

    #@154
    .line 1080
    .end local v6    # "ceMatch":I
    .end local v21    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_9
    if-nez v9, :cond_c

    #@156
    .line 1200
    :goto_3
    if-nez v9, :cond_a

    #@158
    .line 1201
    const/4 v11, -0x1

    #@159
    .line 1202
    const/4 v12, -0x1

    #@15a
    .line 1205
    :cond_a
    if-eqz p2, :cond_b

    #@15c
    .line 1206
    move-object/from16 v0, p2

    #@15e
    iput v12, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@160
    .line 1207
    move-object/from16 v0, p2

    #@162
    iput v11, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    #@164
    .line 1210
    :cond_b
    return v9

    #@165
    .line 1090
    :cond_c
    add-int v24, v22, v23

    #@167
    add-int/lit8 v24, v24, -0x1

    #@169
    move/from16 v0, v24

    #@16b
    invoke-virtual {v7, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    #@16e
    move-result-object v10

    #@16f
    .line 1092
    .local v10, "lastCEI":Landroid/icu/text/StringSearch$CEI;
    iget v12, v8, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@171
    .line 1093
    iget v14, v10, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@173
    .line 1103
    .local v14, "minLimit":I
    const/16 v16, 0x0

    #@175
    .line 1104
    .local v16, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@179
    move-object/from16 v24, v0

    #@17b
    move-object/from16 v0, v24

    #@17d
    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@17f
    move-object/from16 v24, v0

    #@181
    sget-object v25, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@183
    move-object/from16 v0, v24

    #@185
    move-object/from16 v1, v25

    #@187
    if-ne v0, v1, :cond_15

    #@189
    .line 1105
    add-int v24, v22, v23

    #@18b
    move/from16 v0, v24

    #@18d
    invoke-virtual {v7, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    #@190
    move-result-object v16

    #@191
    .line 1106
    .local v16, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, v16

    #@193
    iget v13, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@195
    .line 1107
    .local v13, "maxLimit":I
    move-object/from16 v0, v16

    #@197
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@199
    move/from16 v24, v0

    #@19b
    move-object/from16 v0, v16

    #@19d
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@19f
    move/from16 v25, v0

    #@1a1
    move/from16 v0, v24

    #@1a3
    move/from16 v1, v25

    #@1a5
    if-ne v0, v1, :cond_d

    #@1a7
    move-object/from16 v0, v16

    #@1a9
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@1ab
    move-wide/from16 v24, v0

    #@1ad
    const-wide/16 v26, -0x1

    #@1af
    cmp-long v24, v24, v26

    #@1b1
    if-eqz v24, :cond_d

    #@1b3
    .line 1108
    const/4 v9, 0x0

    #@1b4
    .line 1145
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    #@1b6
    invoke-direct {v0, v12}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    #@1b9
    move-result v24

    #@1ba
    if-nez v24, :cond_e

    #@1bc
    .line 1146
    const/4 v9, 0x0

    #@1bd
    .line 1154
    :cond_e
    iget v0, v8, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@1bf
    move/from16 v20, v0

    #@1c1
    .line 1155
    .local v20, "secondIx":I
    move/from16 v0, v20

    #@1c3
    if-ne v12, v0, :cond_f

    #@1c5
    .line 1156
    const/4 v9, 0x0

    #@1c6
    .line 1161
    :cond_f
    move v11, v13

    #@1c7
    .line 1162
    if-ge v14, v13, :cond_10

    #@1c9
    .line 1169
    iget v0, v10, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@1cb
    move/from16 v24, v0

    #@1cd
    move/from16 v0, v24

    #@1cf
    if-ne v14, v0, :cond_18

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    invoke-direct {v0, v14}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    #@1d6
    move-result v24

    #@1d7
    if-eqz v24, :cond_18

    #@1d9
    .line 1170
    move v11, v14

    #@1da
    .line 1181
    :cond_10
    :goto_5
    if-le v11, v13, :cond_11

    #@1dc
    .line 1182
    const/4 v9, 0x0

    #@1dd
    .line 1185
    :cond_11
    move-object/from16 v0, p0

    #@1df
    invoke-direct {v0, v11}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    #@1e2
    move-result v24

    #@1e3
    if-nez v24, :cond_12

    #@1e5
    .line 1186
    const/4 v9, 0x0

    #@1e6
    .line 1189
    :cond_12
    move-object/from16 v0, p0

    #@1e8
    invoke-direct {v0, v12, v11}, Landroid/icu/text/StringSearch;->checkIdentical(II)Z

    #@1eb
    move-result v24

    #@1ec
    if-nez v24, :cond_13

    #@1ee
    .line 1190
    const/4 v9, 0x0

    #@1ef
    .line 1193
    :cond_13
    if-eqz v9, :cond_5

    #@1f1
    goto/16 :goto_3

    #@1f3
    .line 1111
    .end local v20    # "secondIx":I
    .restart local v6    # "ceMatch":I
    :cond_14
    add-int/lit8 v23, v23, 0x1

    #@1f5
    .line 1112
    .end local v6    # "ceMatch":I
    .end local v13    # "maxLimit":I
    .end local v16    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_15
    add-int v24, v22, v23

    #@1f7
    move/from16 v0, v24

    #@1f9
    invoke-virtual {v7, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    #@1fc
    move-result-object v16

    #@1fd
    .line 1113
    .restart local v16    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, v16

    #@1ff
    iget v13, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@201
    .line 1115
    .restart local v13    # "maxLimit":I
    move-object/from16 v0, v16

    #@203
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@205
    move-wide/from16 v24, v0

    #@207
    const-wide/16 v26, -0x1

    #@209
    cmp-long v24, v24, v26

    #@20b
    if-eqz v24, :cond_d

    #@20d
    .line 1121
    move-object/from16 v0, v16

    #@20f
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@211
    move-wide/from16 v24, v0

    #@213
    const/16 v26, 0x20

    #@215
    ushr-long v24, v24, v26

    #@217
    const-wide v26, 0xffff0000L

    #@21c
    and-long v24, v24, v26

    #@21e
    const-wide/16 v26, 0x0

    #@220
    cmp-long v24, v24, v26

    #@222
    if-nez v24, :cond_17

    #@224
    .line 1122
    move-object/from16 v0, v16

    #@226
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@228
    move-wide/from16 v24, v0

    #@22a
    move-object/from16 v0, p0

    #@22c
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@22e
    move-object/from16 v26, v0

    #@230
    move-object/from16 v0, v26

    #@232
    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@234
    move-object/from16 v26, v0

    #@236
    move-wide/from16 v0, v24

    #@238
    move-wide/from16 v2, v18

    #@23a
    move-object/from16 v4, v26

    #@23c
    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    #@23f
    move-result v6

    #@240
    .line 1123
    .restart local v6    # "ceMatch":I
    if-eqz v6, :cond_16

    #@242
    const/16 v24, 0x2

    #@244
    move/from16 v0, v24

    #@246
    if-ne v6, v0, :cond_14

    #@248
    .line 1124
    :cond_16
    const/4 v9, 0x0

    #@249
    .line 1125
    goto/16 :goto_4

    #@24b
    .line 1129
    .end local v6    # "ceMatch":I
    :cond_17
    move-object/from16 v0, v16

    #@24d
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@24f
    move/from16 v24, v0

    #@251
    move-object/from16 v0, v16

    #@253
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@255
    move/from16 v25, v0

    #@257
    move/from16 v0, v24

    #@259
    move/from16 v1, v25

    #@25b
    if-ne v0, v1, :cond_d

    #@25d
    .line 1130
    const/4 v9, 0x0

    #@25e
    .line 1131
    goto/16 :goto_4

    #@260
    .line 1172
    .restart local v20    # "secondIx":I
    :cond_18
    move-object/from16 v0, p0

    #@262
    invoke-direct {v0, v14}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    #@265
    move-result v15

    #@266
    .line 1173
    .local v15, "nba":I
    iget v0, v10, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@268
    move/from16 v24, v0

    #@26a
    move/from16 v0, v24

    #@26c
    if-lt v15, v0, :cond_10

    #@26e
    .line 1174
    move v11, v15

    #@26f
    goto/16 :goto_5
.end method

.method private searchBackwards(ILandroid/icu/text/StringSearch$Match;)Z
    .locals 30
    .param p1, "startIdx"    # I
    .param p2, "m"    # Landroid/icu/text/StringSearch$Match;

    #@0
    .prologue
    .line 1217
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@4
    move-object/from16 v26, v0

    #@6
    move-object/from16 v0, v26

    #@8
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    #@a
    move/from16 v26, v0

    #@c
    if-eqz v26, :cond_0

    #@e
    .line 1218
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@12
    move-object/from16 v26, v0

    #@14
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@17
    move-result v26

    #@18
    move/from16 v0, p1

    #@1a
    move/from16 v1, v26

    #@1c
    if-ge v0, v1, :cond_1

    #@1e
    .line 1220
    :cond_0
    new-instance v26, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v27, Ljava/lang/StringBuilder;

    #@22
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v28, "searchBackwards("

    #@28
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v27

    #@2c
    move-object/from16 v0, v27

    #@2e
    move/from16 v1, p1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v27

    #@34
    const-string/jumbo v28, ", m) - expected position to be between "

    #@37
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v27

    #@3b
    .line 1221
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3f
    move-object/from16 v28, v0

    #@41
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@44
    move-result v28

    #@45
    .line 1220
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v27

    #@49
    .line 1221
    const-string/jumbo v28, " and "

    #@4c
    .line 1220
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v27

    #@50
    .line 1221
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@54
    move-object/from16 v28, v0

    #@56
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@59
    move-result v28

    #@5a
    .line 1220
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v27

    #@5e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v27

    #@62
    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v26

    #@66
    .line 1219
    :cond_1
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@6a
    move-object/from16 v26, v0

    #@6c
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@6f
    move-result v26

    #@70
    move/from16 v0, p1

    #@72
    move/from16 v1, v26

    #@74
    if-gt v0, v1, :cond_0

    #@76
    .line 1224
    move-object/from16 v0, p0

    #@78
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@7a
    move-object/from16 v26, v0

    #@7c
    move-object/from16 v0, v26

    #@7e
    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@80
    move-object/from16 v26, v0

    #@82
    if-nez v26, :cond_2

    #@84
    .line 1225
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    #@87
    .line 1228
    :cond_2
    new-instance v8, Landroid/icu/text/StringSearch$CEBuffer;

    #@89
    move-object/from16 v0, p0

    #@8b
    invoke-direct {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;-><init>(Landroid/icu/text/StringSearch;)V

    #@8e
    .line 1229
    .local v8, "ceb":Landroid/icu/text/StringSearch$CEBuffer;
    const/16 v24, 0x0

    #@90
    .line 1240
    .local v24, "targetIx":I
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@94
    move-object/from16 v26, v0

    #@96
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@99
    move-result v26

    #@9a
    move/from16 v0, p1

    #@9c
    move/from16 v1, v26

    #@9e
    if-ge v0, v1, :cond_4

    #@a0
    .line 1241
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a4
    move-object/from16 v26, v0

    #@a6
    move-object/from16 v0, v26

    #@a8
    iget-object v6, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@aa
    .line 1242
    .local v6, "bi":Landroid/icu/text/BreakIterator;
    move/from16 v0, p1

    #@ac
    invoke-virtual {v6, v0}, Landroid/icu/text/BreakIterator;->following(I)I

    #@af
    move-result v18

    #@b0
    .line 1244
    .local v18, "next":I
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@b4
    move-object/from16 v26, v0

    #@b6
    move-object/from16 v0, v26

    #@b8
    move/from16 v1, v18

    #@ba
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@bd
    .line 1246
    const/16 v24, 0x0

    #@bf
    .line 1247
    :goto_0
    move/from16 v0, v24

    #@c1
    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    #@c4
    move-result-object v26

    #@c5
    move-object/from16 v0, v26

    #@c7
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@c9
    move/from16 v26, v0

    #@cb
    move/from16 v0, v26

    #@cd
    move/from16 v1, p1

    #@cf
    if-ge v0, v1, :cond_3

    #@d1
    .line 1255
    .end local v6    # "bi":Landroid/icu/text/BreakIterator;
    .end local v18    # "next":I
    :goto_1
    const/16 v23, 0x0

    #@d3
    .line 1259
    .local v23, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    move/from16 v12, v24

    #@d5
    .line 1260
    .local v12, "limitIx":I
    const/4 v14, -0x1

    #@d6
    .line 1261
    .local v14, "mStart":I
    const/4 v13, -0x1

    #@d7
    .line 1271
    .local v13, "mLimit":I
    move/from16 v24, v12

    #@d9
    .line 1272
    .end local v23    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :goto_2
    const/4 v10, 0x1

    #@da
    .line 1276
    .local v10, "found":Z
    move/from16 v0, v24

    #@dc
    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    #@df
    move-result-object v11

    #@e0
    .line 1277
    .local v11, "lastCEI":Landroid/icu/text/StringSearch$CEI;
    if-nez v11, :cond_5

    #@e2
    .line 1278
    new-instance v26, Landroid/icu/util/ICUException;

    #@e4
    new-instance v27, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v28, "CEBuffer.getPrevious("

    #@ec
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v27

    #@f0
    move-object/from16 v0, v27

    #@f2
    move/from16 v1, v24

    #@f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v27

    #@f8
    const-string/jumbo v28, ") returned null."

    #@fb
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v27

    #@ff
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v27

    #@103
    invoke-direct/range {v26 .. v27}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@106
    throw v26

    #@107
    .line 1246
    .end local v10    # "found":Z
    .end local v11    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .end local v12    # "limitIx":I
    .end local v13    # "mLimit":I
    .end local v14    # "mStart":I
    .restart local v6    # "bi":Landroid/icu/text/BreakIterator;
    .restart local v18    # "next":I
    :cond_3
    add-int/lit8 v24, v24, 0x1

    #@109
    goto :goto_0

    #@10a
    .line 1252
    .end local v6    # "bi":Landroid/icu/text/BreakIterator;
    .end local v18    # "next":I
    :cond_4
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@10e
    move-object/from16 v26, v0

    #@110
    move-object/from16 v0, v26

    #@112
    move/from16 v1, p1

    #@114
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@117
    goto :goto_1

    #@118
    .line 1282
    .restart local v10    # "found":Z
    .restart local v11    # "lastCEI":Landroid/icu/text/StringSearch$CEI;
    .restart local v12    # "limitIx":I
    .restart local v13    # "mLimit":I
    .restart local v14    # "mStart":I
    :cond_5
    const/16 v25, 0x0

    #@11a
    .line 1283
    .local v25, "targetIxOffset":I
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@11e
    move-object/from16 v26, v0

    #@120
    move-object/from16 v0, v26

    #@122
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@124
    move/from16 v26, v0

    #@126
    add-int/lit8 v22, v26, -0x1

    #@128
    .local v22, "patIx":I
    :goto_3
    if-ltz v22, :cond_6

    #@12a
    .line 1284
    move-object/from16 v0, p0

    #@12c
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@12e
    move-object/from16 v26, v0

    #@130
    move-object/from16 v0, v26

    #@132
    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    #@134
    move-object/from16 v26, v0

    #@136
    aget-wide v20, v26, v22

    #@138
    .line 1286
    .local v20, "patCE":J
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@13c
    move-object/from16 v26, v0

    #@13e
    move-object/from16 v0, v26

    #@140
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@142
    move/from16 v26, v0

    #@144
    add-int v26, v26, v24

    #@146
    add-int/lit8 v26, v26, -0x1

    #@148
    sub-int v26, v26, v22

    #@14a
    add-int v26, v26, v25

    #@14c
    move/from16 v0, v26

    #@14e
    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    #@151
    move-result-object v23

    #@152
    .line 1290
    .local v23, "targetCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, v23

    #@154
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@156
    move-wide/from16 v26, v0

    #@158
    move-object/from16 v0, p0

    #@15a
    iget-object v0, v0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@15c
    move-object/from16 v28, v0

    #@15e
    move-object/from16 v0, v28

    #@160
    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@162
    move-object/from16 v28, v0

    #@164
    move-wide/from16 v0, v26

    #@166
    move-wide/from16 v2, v20

    #@168
    move-object/from16 v4, v28

    #@16a
    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    #@16d
    move-result v7

    #@16e
    .line 1291
    .local v7, "ceMatch":I
    if-nez v7, :cond_8

    #@170
    .line 1292
    const/4 v10, 0x0

    #@171
    .line 1306
    .end local v7    # "ceMatch":I
    .end local v20    # "patCE":J
    .end local v23    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_6
    if-nez v10, :cond_b

    #@173
    if-eqz v23, :cond_7

    #@175
    move-object/from16 v0, v23

    #@177
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@179
    move-wide/from16 v26, v0

    #@17b
    const-wide/16 v28, -0x1

    #@17d
    cmp-long v26, v26, v28

    #@17f
    if-eqz v26, :cond_b

    #@181
    .line 1271
    :cond_7
    add-int/lit8 v24, v24, 0x1

    #@183
    goto/16 :goto_2

    #@185
    .line 1294
    .restart local v7    # "ceMatch":I
    .restart local v20    # "patCE":J
    .restart local v23    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_8
    if-lez v7, :cond_9

    #@187
    .line 1295
    const/16 v26, 0x1

    #@189
    move/from16 v0, v26

    #@18b
    if-ne v7, v0, :cond_a

    #@18d
    .line 1297
    add-int/lit8 v22, v22, 0x1

    #@18f
    .line 1298
    add-int/lit8 v25, v25, 0x1

    #@191
    .line 1283
    :cond_9
    :goto_4
    add-int/lit8 v22, v22, -0x1

    #@193
    goto :goto_3

    #@194
    .line 1301
    :cond_a
    add-int/lit8 v25, v25, -0x1

    #@196
    goto :goto_4

    #@197
    .line 1311
    .end local v7    # "ceMatch":I
    .end local v20    # "patCE":J
    .end local v23    # "targetCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_b
    if-nez v10, :cond_e

    #@199
    .line 1400
    :goto_5
    if-nez v10, :cond_c

    #@19b
    .line 1401
    const/4 v13, -0x1

    #@19c
    .line 1402
    const/4 v14, -0x1

    #@19d
    .line 1405
    :cond_c
    if-eqz p2, :cond_d

    #@19f
    .line 1406
    move-object/from16 v0, p2

    #@1a1
    iput v14, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    #@1a3
    .line 1407
    move-object/from16 v0, p2

    #@1a5
    iput v13, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    #@1a7
    .line 1410
    :cond_d
    return v10

    #@1a8
    .line 1321
    :cond_e
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@1ac
    move-object/from16 v26, v0

    #@1ae
    move-object/from16 v0, v26

    #@1b0
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    #@1b2
    move/from16 v26, v0

    #@1b4
    add-int v26, v26, v24

    #@1b6
    add-int/lit8 v26, v26, -0x1

    #@1b8
    add-int v26, v26, v25

    #@1ba
    move/from16 v0, v26

    #@1bc
    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    #@1bf
    move-result-object v9

    #@1c0
    .line 1322
    .local v9, "firstCEI":Landroid/icu/text/StringSearch$CEI;
    iget v14, v9, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@1c2
    .line 1330
    move-object/from16 v0, p0

    #@1c4
    invoke-direct {v0, v14}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    #@1c7
    move-result v26

    #@1c8
    if-nez v26, :cond_f

    #@1ca
    .line 1331
    const/4 v10, 0x0

    #@1cb
    .line 1336
    :cond_f
    iget v0, v9, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@1cd
    move/from16 v26, v0

    #@1cf
    move/from16 v0, v26

    #@1d1
    if-ne v14, v0, :cond_10

    #@1d3
    .line 1337
    const/4 v10, 0x0

    #@1d4
    .line 1340
    :cond_10
    iget v0, v11, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@1d6
    move/from16 v16, v0

    #@1d8
    .line 1342
    .local v16, "minLimit":I
    if-lez v24, :cond_16

    #@1da
    .line 1351
    add-int/lit8 v26, v24, -0x1

    #@1dc
    move/from16 v0, v26

    #@1de
    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    #@1e1
    move-result-object v19

    #@1e2
    .line 1353
    .local v19, "nextCEI":Landroid/icu/text/StringSearch$CEI;
    move-object/from16 v0, v19

    #@1e4
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@1e6
    move/from16 v26, v0

    #@1e8
    move-object/from16 v0, v19

    #@1ea
    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@1ec
    move/from16 v27, v0

    #@1ee
    move/from16 v0, v26

    #@1f0
    move/from16 v1, v27

    #@1f2
    if-ne v0, v1, :cond_11

    #@1f4
    move-object/from16 v0, v19

    #@1f6
    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    #@1f8
    move-wide/from16 v26, v0

    #@1fa
    const-wide/16 v28, -0x1

    #@1fc
    cmp-long v26, v26, v28

    #@1fe
    if-eqz v26, :cond_11

    #@200
    .line 1354
    const/4 v10, 0x0

    #@201
    .line 1357
    :cond_11
    move-object/from16 v0, v19

    #@203
    iget v15, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    #@205
    .local v15, "maxLimit":I
    move v13, v15

    #@206
    .line 1361
    move/from16 v0, v16

    #@208
    if-ge v0, v15, :cond_12

    #@20a
    .line 1362
    move-object/from16 v0, p0

    #@20c
    move/from16 v1, v16

    #@20e
    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    #@211
    move-result v17

    #@212
    .line 1364
    .local v17, "nba":I
    iget v0, v11, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    #@214
    move/from16 v26, v0

    #@216
    move/from16 v0, v17

    #@218
    move/from16 v1, v26

    #@21a
    if-lt v0, v1, :cond_12

    #@21c
    .line 1365
    move/from16 v13, v17

    #@21e
    .line 1371
    .end local v17    # "nba":I
    :cond_12
    if-le v13, v15, :cond_13

    #@220
    .line 1372
    const/4 v10, 0x0

    #@221
    .line 1376
    :cond_13
    move-object/from16 v0, p0

    #@223
    invoke-direct {v0, v13}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    #@226
    move-result v26

    #@227
    if-nez v26, :cond_14

    #@229
    .line 1377
    const/4 v10, 0x0

    #@22a
    .line 1389
    .end local v19    # "nextCEI":Landroid/icu/text/StringSearch$CEI;
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    #@22c
    invoke-direct {v0, v14, v13}, Landroid/icu/text/StringSearch;->checkIdentical(II)Z

    #@22f
    move-result v26

    #@230
    if-nez v26, :cond_15

    #@232
    .line 1390
    const/4 v10, 0x0

    #@233
    .line 1393
    :cond_15
    if-eqz v10, :cond_7

    #@235
    goto/16 :goto_5

    #@237
    .line 1385
    .end local v15    # "maxLimit":I
    :cond_16
    move-object/from16 v0, p0

    #@239
    move/from16 v1, v16

    #@23b
    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    #@23e
    move-result v17

    #@23f
    .line 1386
    .restart local v17    # "nba":I
    if-lez v17, :cond_17

    #@241
    move/from16 v0, p1

    #@243
    move/from16 v1, v17

    #@245
    if-le v0, v1, :cond_17

    #@247
    move/from16 v15, v17

    #@249
    .restart local v15    # "maxLimit":I
    :goto_7
    move v13, v15

    #@24a
    goto :goto_6

    #@24b
    .end local v15    # "maxLimit":I
    :cond_17
    move/from16 v15, p1

    #@24d
    goto :goto_7
.end method


# virtual methods
.method public getCollator()Landroid/icu/text/RuleBasedCollator;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@2
    return-object v0
.end method

.method public getIndex()I
    .locals 3

    #@0
    .prologue
    .line 398
    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@5
    move-result v0

    #@6
    .line 399
    .local v0, "result":I
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@8
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@b
    move-result v1

    #@c
    iget-object v2, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

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
    .line 400
    const/4 v1, -0x1

    #@19
    return v1

    #@1a
    .line 402
    :cond_0
    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 336
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
    .line 481
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@4
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    #@6
    if-nez v0, :cond_2

    #@8
    .line 482
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@c
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@e
    if-ne v0, v2, :cond_1

    #@10
    .line 483
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->getIndex()I

    #@13
    move-result v0

    #@14
    .line 482
    :goto_0
    iput v0, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@16
    .line 484
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@18
    invoke-virtual {v0, v3}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@1b
    .line 485
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@1d
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1f
    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@21
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@24
    .line 486
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@26
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@28
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2a
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@2d
    move-result v1

    #@2e
    if-ne v0, v1, :cond_0

    #@30
    .line 487
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@32
    iput v2, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@34
    .line 522
    :cond_0
    return v2

    #@35
    .line 483
    :cond_1
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@37
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@39
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 490
    :cond_2
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3e
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    #@41
    move-result v0

    #@42
    if-gtz v0, :cond_3

    #@44
    .line 497
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@46
    add-int/lit8 v1, p1, -0x1

    #@48
    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@4a
    .line 500
    :cond_3
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@4c
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@4f
    .line 506
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@51
    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@53
    if-eqz v0, :cond_4

    #@55
    .line 508
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCanonical()Z

    #@58
    .line 513
    :goto_1
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@5a
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@5c
    if-ne v0, v2, :cond_5

    #@5e
    .line 514
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@60
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@62
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@65
    move-result v1

    #@66
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@69
    .line 519
    :goto_2
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@6b
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@6d
    return v0

    #@6e
    .line 510
    :cond_4
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextExact()Z

    #@71
    goto :goto_1

    #@72
    .line 516
    :cond_5
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@74
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

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
    .line 531
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@3
    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    #@5
    if-nez v0, :cond_2

    #@7
    .line 532
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@9
    .line 533
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

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
    .line 532
    :goto_0
    iput v0, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@16
    .line 534
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@18
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@1a
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1c
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@1f
    move-result v1

    #@20
    if-ne v0, v1, :cond_1

    #@22
    .line 535
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    #@25
    .line 552
    :goto_1
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@27
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@29
    return v0

    #@2a
    .line 533
    :cond_0
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2c
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@2e
    goto :goto_0

    #@2f
    .line 537
    :cond_1
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@31
    iget v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@33
    add-int/lit8 v1, v1, -0x1

    #@35
    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@37
    .line 538
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@39
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3b
    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@3d
    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@40
    .line 539
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@42
    invoke-virtual {v0, v3}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@45
    goto :goto_1

    #@46
    .line 542
    :cond_2
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@48
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@4b
    .line 544
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@4d
    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@4f
    if-eqz v0, :cond_3

    #@51
    .line 546
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCanonical()Z

    #@54
    goto :goto_1

    #@55
    .line 548
    :cond_3
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousExact()Z

    #@58
    goto :goto_1
.end method

.method public isCanonical()Z
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

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
    .line 429
    const/4 v2, 0x1

    #@4
    .line 435
    .local v2, "sameCollAttribute":Z
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@6
    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    #@9
    move-result v1

    #@a
    .line 436
    .local v1, "newStrength":I
    iget v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@c
    if-ge v5, v6, :cond_5

    #@e
    if-lt v1, v6, :cond_5

    #@10
    .line 438
    :goto_0
    const/4 v2, 0x0

    #@11
    .line 441
    :cond_0
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@13
    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    #@16
    move-result v5

    #@17
    iput v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@19
    .line 442
    iget v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    #@1b
    invoke-static {v5}, Landroid/icu/text/StringSearch;->getMask(I)I

    #@1e
    move-result v0

    #@1f
    .line 443
    .local v0, "ceMask":I
    iget v5, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    #@21
    if-eq v5, v0, :cond_1

    #@23
    .line 444
    iput v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    #@25
    .line 445
    const/4 v2, 0x0

    #@26
    .line 448
    :cond_1
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@28
    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    #@2b
    move-result v3

    #@2c
    .line 449
    .local v3, "shift":Z
    iget-boolean v5, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    #@2e
    if-eq v5, v3, :cond_2

    #@30
    .line 450
    iput-boolean v3, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    #@32
    .line 451
    const/4 v2, 0x0

    #@33
    .line 454
    :cond_2
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@35
    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    #@38
    move-result v4

    #@39
    .line 455
    .local v4, "varTop":I
    iget v5, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    #@3b
    if-eq v5, v4, :cond_3

    #@3d
    .line 456
    iput v4, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    #@3f
    .line 457
    const/4 v2, 0x0

    #@40
    .line 460
    :cond_3
    if-nez v2, :cond_4

    #@42
    .line 461
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    #@45
    .line 464
    :cond_4
    iget-object v5, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@47
    iget-object v6, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@49
    invoke-virtual {v6}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v5, v6}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    #@50
    .line 466
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@52
    invoke-virtual {v5, v7}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@55
    .line 467
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@57
    const/4 v6, -0x1

    #@58
    iput v6, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@5a
    .line 468
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@5c
    iput-boolean v7, v5, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    #@5e
    .line 469
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@60
    iput-boolean v7, v5, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@62
    .line 470
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@64
    sget-object v6, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@66
    iput-object v6, v5, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@68
    .line 471
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@6a
    iput-boolean v8, v5, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@6c
    .line 472
    iget-object v5, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@6e
    iput-boolean v8, v5, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    #@70
    .line 424
    return-void

    #@71
    .line 437
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
    .line 379
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    iput-boolean p1, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@4
    .line 378
    return-void
.end method

.method public setCollator(Landroid/icu/text/RuleBasedCollator;)V
    .locals 3
    .param p1, "collator"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 311
    if-nez p1, :cond_0

    #@2
    .line 312
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Collator can not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 314
    :cond_0
    iput-object p1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    #@d
    .line 315
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
    .line 317
    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@1b
    invoke-virtual {p1, v1}, Landroid/icu/text/RuleBasedCollator;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@1e
    move-result-object v0

    #@1f
    .line 318
    .local v0, "collLocale":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

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
    .line 319
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2d
    iget-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@2f
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

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
    .line 321
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    #@41
    move-result v1

    #@42
    iput-boolean v1, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    #@44
    .line 322
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    #@47
    move-result v1

    #@48
    iput v1, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    #@4a
    .line 323
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
    .line 324
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
    .line 327
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    #@63
    .line 310
    return-void
.end method

.method public setIndex(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    #@3
    .line 416
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@8
    .line 410
    return-void
.end method

.method protected setMatchNotFound()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 838
    invoke-super {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    #@3
    .line 842
    iget-object v0, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    #@5
    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 843
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@b
    iget-object v1, p0, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

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
    .line 837
    :goto_0
    return-void

    #@19
    .line 845
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
    .line 349
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-gtz v0, :cond_1

    #@8
    .line 350
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 351
    const-string/jumbo v1, "Pattern to search for can not be null or of length 0"

    #@d
    .line 350
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 353
    :cond_1
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    #@13
    iput-object p1, v0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    #@15
    .line 354
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    #@18
    .line 348
    return-void
.end method

.method public setTarget(Ljava/text/CharacterIterator;)V
    .locals 1
    .param p1, "text"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/icu/text/SearchIterator;->setTarget(Ljava/text/CharacterIterator;)V

    #@3
    .line 389
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    #@8
    .line 387
    return-void
.end method
