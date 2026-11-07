.class public Landroid/icu/impl/number/parse/DecimalMatcher;
.super Ljava/lang/Object;
.source "DecimalMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/parse/NumberParseMatcher;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist decimalSeparator:Ljava/lang/String;

.field private final blacklist decimalUniSet:Landroid/icu/text/UnicodeSet;

.field private final blacklist digitStrings:[Ljava/lang/String;

.field private final blacklist grouping1:I

.field private final blacklist grouping2:I

.field private final blacklist groupingDisabled:Z

.field private final blacklist groupingSeparator:Ljava/lang/String;

.field private final blacklist groupingUniSet:Landroid/icu/text/UnicodeSet;

.field private final blacklist integerOnly:Z

.field private final blacklist leadSet:Landroid/icu/text/UnicodeSet;

.field private final blacklist requireGroupingMatch:Z

.field private final blacklist separatorSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 20
    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;I)V
    .registers 12
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p2, "grouper"    # Landroid/icu/impl/number/Grouper;
    .param p3, "parseFlags"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_14

    .line 59
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    goto :goto_20

    .line 62
    :cond_14
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    .line 65
    :goto_20
    and-int/lit8 v0, p3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v2

    .line 66
    .local v0, "strictSeparators":Z
    :goto_29
    if-eqz v0, :cond_2e

    sget-object v3, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_ALL_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    goto :goto_30

    :cond_2e
    sget-object v3, Landroid/icu/impl/StaticUnicodeSets$Key;->ALL_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 70
    .local v3, "groupingKey":Landroid/icu/impl/StaticUnicodeSets$Key;
    :goto_30
    invoke-static {v3}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingUniSet:Landroid/icu/text/UnicodeSet;

    .line 71
    iget-object v4, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    .line 72
    if-eqz v0, :cond_3d

    sget-object v5, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_COMMA:Landroid/icu/impl/StaticUnicodeSets$Key;

    goto :goto_3f

    :cond_3d
    sget-object v5, Landroid/icu/impl/StaticUnicodeSets$Key;->COMMA:Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 73
    :goto_3f
    if-eqz v0, :cond_44

    sget-object v6, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_PERIOD:Landroid/icu/impl/StaticUnicodeSets$Key;

    goto :goto_46

    :cond_44
    sget-object v6, Landroid/icu/impl/StaticUnicodeSets$Key;->PERIOD:Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 71
    :goto_46
    invoke-static {v4, v5, v6}, Landroid/icu/impl/StaticUnicodeSets;->chooseFrom(Ljava/lang/String;Landroid/icu/impl/StaticUnicodeSets$Key;Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/impl/StaticUnicodeSets$Key;

    move-result-object v4

    .line 74
    .local v4, "decimalKey":Landroid/icu/impl/StaticUnicodeSets$Key;
    if-eqz v4, :cond_53

    .line 75
    invoke-static {v4}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalUniSet:Landroid/icu/text/UnicodeSet;

    goto :goto_75

    .line 76
    :cond_53
    iget-object v5, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_71

    .line 77
    new-instance v5, Landroid/icu/text/UnicodeSet;

    invoke-direct {v5}, Landroid/icu/text/UnicodeSet;-><init>()V

    iget-object v6, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalUniSet:Landroid/icu/text/UnicodeSet;

    goto :goto_75

    .line 79
    :cond_71
    sget-object v5, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    iput-object v5, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalUniSet:Landroid/icu/text/UnicodeSet;

    .line 82
    :goto_75
    const/4 v5, 0x0

    if-eqz v3, :cond_8c

    if-eqz v4, :cond_8c

    .line 84
    iget-object v6, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingUniSet:Landroid/icu/text/UnicodeSet;

    iput-object v6, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->separatorSet:Landroid/icu/text/UnicodeSet;

    .line 85
    if-eqz v0, :cond_83

    sget-object v6, Landroid/icu/impl/StaticUnicodeSets$Key;->DIGITS_OR_ALL_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    goto :goto_85

    .line 86
    :cond_83
    sget-object v6, Landroid/icu/impl/StaticUnicodeSets$Key;->DIGITS_OR_STRICT_ALL_SEPARATORS:Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 85
    :goto_85
    invoke-static {v6}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v6

    iput-object v6, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->leadSet:Landroid/icu/text/UnicodeSet;

    goto :goto_a5

    .line 88
    :cond_8c
    new-instance v6, Landroid/icu/text/UnicodeSet;

    invoke-direct {v6}, Landroid/icu/text/UnicodeSet;-><init>()V

    iget-object v7, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingUniSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, v7}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalUniSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, v7}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v6

    iput-object v6, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->separatorSet:Landroid/icu/text/UnicodeSet;

    .line 89
    iput-object v5, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->leadSet:Landroid/icu/text/UnicodeSet;

    .line 92
    :goto_a5
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v6

    .line 93
    .local v6, "cpZero":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_bc

    invoke-static {v6}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v7

    if-eqz v7, :cond_bc

    invoke-static {v6}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v7

    if-eqz v7, :cond_b9

    goto :goto_bc

    .line 96
    :cond_b9
    iput-object v5, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    goto :goto_c2

    .line 94
    :cond_bc
    :goto_bc
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    .line 99
    :goto_c2
    and-int/lit8 v5, p3, 0x8

    if-eqz v5, :cond_c8

    move v5, v1

    goto :goto_c9

    :cond_c8
    move v5, v2

    :goto_c9
    iput-boolean v5, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->requireGroupingMatch:Z

    .line 100
    and-int/lit8 v5, p3, 0x20

    if-eqz v5, :cond_d1

    move v5, v1

    goto :goto_d2

    :cond_d1
    move v5, v2

    :goto_d2
    iput-boolean v5, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingDisabled:Z

    .line 101
    and-int/lit8 v5, p3, 0x10

    if-eqz v5, :cond_d9

    goto :goto_da

    :cond_d9
    move v1, v2

    :goto_da
    iput-boolean v1, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->integerOnly:Z

    .line 102
    invoke-virtual {p2}, Landroid/icu/impl/number/Grouper;->getPrimary()S

    move-result v1

    iput v1, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->grouping1:I

    .line 103
    invoke-virtual {p2}, Landroid/icu/impl/number/Grouper;->getSecondary()S

    move-result v1

    iput v1, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->grouping2:I

    .line 108
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;I)Landroid/icu/impl/number/parse/DecimalMatcher;
    .registers 4
    .param p0, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p1, "grouper"    # Landroid/icu/impl/number/Grouper;
    .param p2, "parseFlags"    # I

    .line 54
    new-instance v0, Landroid/icu/impl/number/parse/DecimalMatcher;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/number/parse/DecimalMatcher;-><init>(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;I)V

    return-object v0
.end method

.method private blacklist validateGroup(IIZ)Z
    .registers 7
    .param p1, "sepType"    # I
    .param p2, "count"    # I
    .param p3, "isPrimary"    # Z

    .line 421
    iget-boolean v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->requireGroupingMatch:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 422
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 424
    return v2

    .line 425
    :cond_a
    if-nez p1, :cond_17

    .line 427
    if-eqz p3, :cond_f

    .line 429
    return v2

    .line 431
    :cond_f
    if-eqz p2, :cond_16

    iget v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->grouping2:I

    if-gt p2, v0, :cond_16

    move v1, v2

    :cond_16
    return v1

    .line 433
    :cond_17
    if-ne p1, v2, :cond_27

    .line 435
    if-eqz p3, :cond_21

    .line 436
    iget v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->grouping1:I

    if-ne p2, v0, :cond_20

    move v1, v2

    :cond_20
    return v1

    .line 438
    :cond_21
    iget v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->grouping2:I

    if-ne p2, v0, :cond_26

    move v1, v2

    :cond_26
    return v1

    .line 441
    :cond_27
    nop

    .line 443
    return v2

    .line 446
    :cond_29
    if-ne p1, v2, :cond_2f

    .line 448
    if-eq p2, v2, :cond_2e

    move v1, v2

    :cond_2e
    return v1

    .line 450
    :cond_2f
    return v2
.end method


# virtual methods
.method public blacklist match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 4
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/number/parse/DecimalMatcher;->match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;I)Z

    move-result v0

    return v0
.end method

.method public blacklist match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;I)Z
    .registers 31
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;
    .param p3, "exponentSign"    # I

    .line 122
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v3}, Landroid/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_12

    if-nez v4, :cond_12

    .line 124
    return v5

    .line 125
    :cond_12
    if-eqz v4, :cond_15

    .line 127
    nop

    .line 131
    :cond_15
    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v6

    .line 134
    .local v6, "initialOffset":I
    const/4 v0, 0x0

    .line 137
    .local v0, "maybeMore":Z
    const/4 v7, 0x0

    .line 140
    .local v7, "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    const/4 v8, 0x0

    .line 144
    .local v8, "digitsAfterDecimalPlace":I
    const/4 v9, 0x0

    .line 145
    .local v9, "actualGroupingString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 161
    .local v10, "actualDecimalString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 162
    .local v11, "currGroupOffset":I
    const/4 v12, 0x0

    .line 163
    .local v12, "currGroupSepType":I
    const/4 v13, 0x0

    .line 164
    .local v13, "currGroupCount":I
    const/4 v14, -0x1

    .line 165
    .local v14, "prevGroupOffset":I
    const/4 v15, -0x1

    .line 166
    .local v15, "prevGroupSepType":I
    const/16 v16, -0x1

    move/from16 v17, v16

    .line 168
    .local v17, "prevGroupCount":I
    :goto_27
    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->length()I

    move-result v16

    if-lez v16, :cond_20c

    .line 169
    const/4 v0, 0x0

    .line 172
    const/16 v16, -0x1

    .line 175
    .local v16, "digit":B
    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->getCodePoint()I

    move-result v5

    .line 176
    .local v5, "cp":I
    invoke-static {v5}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v22

    if-eqz v22, :cond_49

    .line 177
    move/from16 v22, v0

    .end local v0    # "maybeMore":Z
    .local v22, "maybeMore":Z
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 178
    invoke-static {v5}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v0

    int-to-byte v0, v0

    .end local v16    # "digit":B
    .local v0, "digit":B
    goto :goto_4d

    .line 176
    .end local v22    # "maybeMore":Z
    .local v0, "maybeMore":Z
    .restart local v16    # "digit":B
    :cond_49
    move/from16 v22, v0

    .end local v0    # "maybeMore":Z
    .restart local v22    # "maybeMore":Z
    move/from16 v0, v16

    .line 182
    .end local v16    # "digit":B
    .local v0, "digit":B
    :goto_4d
    move-object/from16 v16, v7

    const/4 v7, -0x1

    .end local v7    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .local v16, "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    if-ne v0, v7, :cond_98

    iget-object v7, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    if-eqz v7, :cond_98

    .line 183
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_57
    move/from16 v23, v0

    .end local v0    # "digit":B
    .local v23, "digit":B
    iget-object v0, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_93

    .line 184
    iget-object v0, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    aget-object v0, v0, v7

    .line 185
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_6b

    .line 186
    move-object/from16 v24, v10

    goto :goto_8c

    .line 188
    :cond_6b
    move-object/from16 v24, v10

    .end local v10    # "actualDecimalString":Ljava/lang/String;
    .local v24, "actualDecimalString":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v10

    .line 189
    .local v10, "overlap":I
    move-object/from16 v25, v0

    .end local v0    # "str":Ljava/lang/String;
    .local v25, "str":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v10, v0, :cond_7e

    .line 190
    invoke-virtual {v2, v10}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 191
    int-to-byte v0, v7

    .line 192
    .end local v23    # "digit":B
    .local v0, "digit":B
    goto :goto_9e

    .line 194
    .end local v0    # "digit":B
    .restart local v23    # "digit":B
    :cond_7e
    if-nez v22, :cond_89

    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->length()I

    move-result v0

    if-ne v10, v0, :cond_87

    goto :goto_89

    :cond_87
    const/4 v0, 0x0

    goto :goto_8a

    :cond_89
    :goto_89
    const/4 v0, 0x1

    :goto_8a
    move/from16 v22, v0

    .line 183
    .end local v10    # "overlap":I
    .end local v25    # "str":Ljava/lang/String;
    :goto_8c
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v23

    move-object/from16 v10, v24

    goto :goto_57

    .end local v24    # "actualDecimalString":Ljava/lang/String;
    .local v10, "actualDecimalString":Ljava/lang/String;
    :cond_93
    move-object/from16 v24, v10

    .end local v10    # "actualDecimalString":Ljava/lang/String;
    .restart local v24    # "actualDecimalString":Ljava/lang/String;
    move/from16 v0, v23

    goto :goto_9e

    .line 182
    .end local v7    # "i":I
    .end local v23    # "digit":B
    .end local v24    # "actualDecimalString":Ljava/lang/String;
    .restart local v0    # "digit":B
    .restart local v10    # "actualDecimalString":Ljava/lang/String;
    :cond_98
    move/from16 v23, v0

    move-object/from16 v24, v10

    .line 198
    .end local v0    # "digit":B
    .end local v10    # "actualDecimalString":Ljava/lang/String;
    .restart local v23    # "digit":B
    .restart local v24    # "actualDecimalString":Ljava/lang/String;
    move/from16 v0, v23

    .end local v23    # "digit":B
    .restart local v0    # "digit":B
    :goto_9e
    if-ltz v0, :cond_c9

    .line 200
    if-nez v16, :cond_a8

    .line 201
    new-instance v7, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v7}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    .end local v16    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .local v7, "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    goto :goto_aa

    .line 200
    .end local v7    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .restart local v16    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    :cond_a8
    move-object/from16 v7, v16

    .line 203
    .end local v16    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .restart local v7    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    :goto_aa
    move/from16 v23, v14

    const/4 v10, 0x0

    const/4 v14, 0x1

    .end local v14    # "prevGroupOffset":I
    .local v23, "prevGroupOffset":I
    invoke-virtual {v7, v0, v10, v14}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->appendDigit(BIZ)V

    .line 204
    add-int/lit8 v13, v13, 0x1

    .line 205
    if-eqz v24, :cond_c0

    .line 206
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v22

    move/from16 v14, v23

    move-object/from16 v10, v24

    const/4 v5, 0x0

    goto/16 :goto_27

    .line 205
    :cond_c0
    move/from16 v0, v22

    move/from16 v14, v23

    move-object/from16 v10, v24

    const/4 v5, 0x0

    goto/16 :goto_27

    .line 212
    .end local v7    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .end local v23    # "prevGroupOffset":I
    .restart local v14    # "prevGroupOffset":I
    .restart local v16    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    :cond_c9
    move/from16 v23, v14

    .end local v14    # "prevGroupOffset":I
    .restart local v23    # "prevGroupOffset":I
    const/4 v7, 0x0

    .line 213
    .local v7, "isDecimal":Z
    const/4 v10, 0x0

    .line 217
    .local v10, "isGrouping":Z
    if-nez v24, :cond_fd

    iget-object v14, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_fd

    .line 218
    iget-object v14, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v2, v14}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v14

    .line 219
    .local v14, "overlap":I
    if-nez v22, :cond_ea

    move/from16 v25, v0

    .end local v0    # "digit":B
    .local v25, "digit":B
    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->length()I

    move-result v0

    if-ne v14, v0, :cond_e8

    goto :goto_ec

    :cond_e8
    const/4 v0, 0x0

    goto :goto_ed

    .end local v25    # "digit":B
    .restart local v0    # "digit":B
    :cond_ea
    move/from16 v25, v0

    .end local v0    # "digit":B
    .restart local v25    # "digit":B
    :goto_ec
    const/4 v0, 0x1

    :goto_ed
    move/from16 v22, v0

    .line 220
    iget-object v0, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v14, v0, :cond_ff

    .line 221
    const/4 v7, 0x1

    .line 222
    iget-object v0, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalSeparator:Ljava/lang/String;

    move-object/from16 v24, v0

    .end local v24    # "actualDecimalString":Ljava/lang/String;
    .local v0, "actualDecimalString":Ljava/lang/String;
    goto :goto_ff

    .line 217
    .end local v14    # "overlap":I
    .end local v25    # "digit":B
    .local v0, "digit":B
    .restart local v24    # "actualDecimalString":Ljava/lang/String;
    :cond_fd
    move/from16 v25, v0

    .line 227
    .end local v0    # "digit":B
    .restart local v25    # "digit":B
    :cond_ff
    :goto_ff
    if-eqz v9, :cond_11a

    .line 228
    invoke-virtual {v2, v9}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 229
    .local v0, "overlap":I
    if-nez v22, :cond_110

    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->length()I

    move-result v14

    if-ne v0, v14, :cond_10e

    goto :goto_110

    :cond_10e
    const/4 v14, 0x0

    goto :goto_111

    :cond_110
    :goto_110
    const/4 v14, 0x1

    :goto_111
    move/from16 v22, v14

    .line 230
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v0, v14, :cond_11a

    .line 231
    const/4 v10, 0x1

    .line 237
    .end local v0    # "overlap":I
    :cond_11a
    iget-boolean v0, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingDisabled:Z

    if-nez v0, :cond_150

    if-nez v9, :cond_150

    if-nez v24, :cond_150

    iget-object v0, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14d

    .line 241
    iget-object v0, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 242
    .restart local v0    # "overlap":I
    if-nez v22, :cond_13b

    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->length()I

    move-result v14

    if-ne v0, v14, :cond_139

    goto :goto_13b

    :cond_139
    const/4 v14, 0x0

    goto :goto_13c

    :cond_13b
    :goto_13b
    const/4 v14, 0x1

    .line 243
    .end local v22    # "maybeMore":Z
    .local v14, "maybeMore":Z
    :goto_13c
    move/from16 v26, v7

    .end local v7    # "isDecimal":Z
    .local v26, "isDecimal":Z
    iget-object v7, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v0, v7, :cond_14b

    .line 244
    const/4 v10, 0x1

    .line 245
    iget-object v9, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingSeparator:Ljava/lang/String;

    move v0, v14

    goto :goto_154

    .line 243
    :cond_14b
    move v0, v14

    goto :goto_154

    .line 240
    .end local v0    # "overlap":I
    .end local v14    # "maybeMore":Z
    .end local v26    # "isDecimal":Z
    .restart local v7    # "isDecimal":Z
    .restart local v22    # "maybeMore":Z
    :cond_14d
    move/from16 v26, v7

    .end local v7    # "isDecimal":Z
    .restart local v26    # "isDecimal":Z
    goto :goto_152

    .line 237
    .end local v26    # "isDecimal":Z
    .restart local v7    # "isDecimal":Z
    :cond_150
    move/from16 v26, v7

    .line 252
    .end local v7    # "isDecimal":Z
    .restart local v26    # "isDecimal":Z
    :goto_152
    move/from16 v0, v22

    .end local v22    # "maybeMore":Z
    .local v0, "maybeMore":Z
    :goto_154
    if-nez v10, :cond_166

    if-nez v24, :cond_166

    .line 253
    iget-object v7, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->decimalUniSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v7, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_166

    .line 254
    const/4 v7, 0x1

    .line 255
    .end local v26    # "isDecimal":Z
    .restart local v7    # "isDecimal":Z
    invoke-static {v5}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v14

    .end local v24    # "actualDecimalString":Ljava/lang/String;
    .local v14, "actualDecimalString":Ljava/lang/String;
    goto :goto_16a

    .line 261
    .end local v7    # "isDecimal":Z
    .end local v14    # "actualDecimalString":Ljava/lang/String;
    .restart local v24    # "actualDecimalString":Ljava/lang/String;
    .restart local v26    # "isDecimal":Z
    :cond_166
    move-object/from16 v14, v24

    move/from16 v7, v26

    .end local v24    # "actualDecimalString":Ljava/lang/String;
    .end local v26    # "isDecimal":Z
    .restart local v7    # "isDecimal":Z
    .restart local v14    # "actualDecimalString":Ljava/lang/String;
    :goto_16a
    move/from16 v22, v0

    .end local v0    # "maybeMore":Z
    .restart local v22    # "maybeMore":Z
    iget-boolean v0, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingDisabled:Z

    if-nez v0, :cond_182

    if-nez v9, :cond_182

    if-nez v14, :cond_182

    .line 262
    iget-object v0, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->groupingUniSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 263
    const/4 v10, 0x1

    .line 264
    invoke-static {v5}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 269
    :cond_182
    if-nez v7, :cond_18a

    if-nez v10, :cond_18a

    .line 270
    move/from16 v0, v17

    goto/16 :goto_204

    .line 274
    :cond_18a
    if-eqz v7, :cond_194

    iget-boolean v0, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->integerOnly:Z

    if-eqz v0, :cond_194

    .line 275
    move/from16 v0, v17

    goto/16 :goto_204

    .line 276
    :cond_194
    const/4 v0, 0x2

    if-ne v12, v0, :cond_19d

    if-eqz v10, :cond_19d

    .line 278
    move/from16 v0, v17

    goto/16 :goto_204

    .line 282
    :cond_19d
    move/from16 v0, v17

    move/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "cp":I
    .local v0, "prevGroupCount":I
    .local v17, "cp":I
    invoke-direct {v1, v15, v0, v5}, Landroid/icu/impl/number/parse/DecimalMatcher;->validateGroup(IIZ)Z

    move-result v24

    .line 283
    .local v24, "prevValidSecondary":Z
    const/4 v5, 0x1

    invoke-direct {v1, v12, v13, v5}, Landroid/icu/impl/number/parse/DecimalMatcher;->validateGroup(IIZ)Z

    move-result v26

    .line 284
    .local v26, "currValidPrimary":Z
    if-eqz v24, :cond_1f3

    if-eqz v7, :cond_1b2

    if-nez v26, :cond_1b2

    goto :goto_1f3

    .line 294
    :cond_1b2
    iget-boolean v5, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->requireGroupingMatch:Z

    if-eqz v5, :cond_1bc

    if-nez v13, :cond_1bc

    const/4 v5, 0x1

    if-ne v12, v5, :cond_1bc

    .line 295
    goto :goto_204

    .line 298
    :cond_1bc
    move v5, v11

    .line 299
    .end local v23    # "prevGroupOffset":I
    .local v5, "prevGroupOffset":I
    move v0, v13

    .line 300
    if-eqz v7, :cond_1c2

    .line 302
    const/4 v15, -0x1

    goto :goto_1c3

    .line 304
    :cond_1c2
    move v15, v12

    .line 311
    :goto_1c3
    if-eqz v13, :cond_1c9

    .line 312
    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v11

    .line 314
    :cond_1c9
    if-eqz v10, :cond_1ce

    const/16 v20, 0x1

    goto :goto_1d0

    :cond_1ce
    const/16 v20, 0x2

    :goto_1d0
    move/from16 v12, v20

    .line 315
    const/4 v13, 0x0

    .line 316
    if-eqz v10, :cond_1df

    .line 317
    move/from16 v19, v0

    .end local v0    # "prevGroupCount":I
    .local v19, "prevGroupCount":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    goto :goto_1e8

    .line 319
    .end local v19    # "prevGroupCount":I
    .restart local v0    # "prevGroupCount":I
    :cond_1df
    move/from16 v19, v0

    .end local v0    # "prevGroupCount":I
    .restart local v19    # "prevGroupCount":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 321
    .end local v7    # "isDecimal":Z
    .end local v10    # "isGrouping":Z
    .end local v17    # "cp":I
    .end local v24    # "prevValidSecondary":Z
    .end local v25    # "digit":B
    .end local v26    # "currValidPrimary":Z
    :goto_1e8
    move-object v10, v14

    move-object/from16 v7, v16

    move/from16 v17, v19

    move/from16 v0, v22

    move v14, v5

    const/4 v5, 0x0

    goto/16 :goto_27

    .line 286
    .end local v5    # "prevGroupOffset":I
    .end local v19    # "prevGroupCount":I
    .restart local v0    # "prevGroupCount":I
    .restart local v7    # "isDecimal":Z
    .restart local v10    # "isGrouping":Z
    .restart local v17    # "cp":I
    .restart local v23    # "prevGroupOffset":I
    .restart local v24    # "prevValidSecondary":Z
    .restart local v25    # "digit":B
    .restart local v26    # "currValidPrimary":Z
    :cond_1f3
    :goto_1f3
    if-eqz v10, :cond_1f8

    if-nez v13, :cond_1f8

    .line 288
    goto :goto_204

    .line 289
    :cond_1f8
    iget-boolean v5, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->requireGroupingMatch:Z

    if-eqz v5, :cond_204

    .line 291
    const/4 v5, 0x0

    move/from16 v17, v0

    move-object v7, v5

    move-object v10, v14

    move/from16 v0, v22

    .end local v16    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .local v5, "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    goto :goto_212

    .line 326
    .end local v0    # "prevGroupCount":I
    .end local v5    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .end local v7    # "isDecimal":Z
    .end local v10    # "isGrouping":Z
    .end local v24    # "prevValidSecondary":Z
    .end local v25    # "digit":B
    .end local v26    # "currValidPrimary":Z
    .restart local v16    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .local v17, "prevGroupCount":I
    :cond_204
    :goto_204
    move/from16 v17, v0

    move-object v10, v14

    move-object/from16 v7, v16

    move/from16 v0, v22

    .end local v17    # "prevGroupCount":I
    .restart local v0    # "prevGroupCount":I
    goto :goto_212

    .line 168
    .end local v16    # "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .end local v22    # "maybeMore":Z
    .end local v23    # "prevGroupOffset":I
    .local v0, "maybeMore":Z
    .local v7, "digitsConsumed":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    .local v10, "actualDecimalString":Ljava/lang/String;
    .local v14, "prevGroupOffset":I
    .restart local v17    # "prevGroupCount":I
    :cond_20c
    move-object/from16 v16, v7

    move-object/from16 v24, v10

    move/from16 v23, v14

    .line 326
    .end local v14    # "prevGroupOffset":I
    .restart local v23    # "prevGroupOffset":I
    :goto_212
    const/4 v5, 0x2

    if-eq v12, v5, :cond_227

    if-nez v13, :cond_227

    .line 327
    const/4 v0, 0x1

    .line 328
    invoke-virtual {v2, v11}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 329
    move/from16 v11, v23

    .line 330
    move v12, v15

    .line 331
    move/from16 v13, v17

    .line 332
    const/4 v14, -0x1

    .line 333
    .end local v23    # "prevGroupOffset":I
    .restart local v14    # "prevGroupOffset":I
    const/4 v15, 0x0

    .line 334
    const/16 v17, 0x1

    move/from16 v5, v17

    goto :goto_22b

    .line 338
    .end local v14    # "prevGroupOffset":I
    .restart local v23    # "prevGroupOffset":I
    :cond_227
    move/from16 v14, v23

    move/from16 v5, v17

    .end local v17    # "prevGroupCount":I
    .end local v23    # "prevGroupOffset":I
    .local v5, "prevGroupCount":I
    .restart local v14    # "prevGroupOffset":I
    :goto_22b
    move-object/from16 v16, v9

    const/4 v9, 0x0

    .end local v9    # "actualGroupingString":Ljava/lang/String;
    .local v16, "actualGroupingString":Ljava/lang/String;
    invoke-direct {v1, v15, v5, v9}, Landroid/icu/impl/number/parse/DecimalMatcher;->validateGroup(IIZ)Z

    move-result v17

    .line 339
    .local v17, "prevValidSecondary":Z
    const/4 v9, 0x1

    invoke-direct {v1, v12, v13, v9}, Landroid/icu/impl/number/parse/DecimalMatcher;->validateGroup(IIZ)Z

    move-result v21

    .line 340
    .local v21, "currValidPrimary":Z
    iget-boolean v9, v1, Landroid/icu/impl/number/parse/DecimalMatcher;->requireGroupingMatch:Z

    if-nez v9, :cond_262

    .line 344
    const/4 v9, 0x0

    .line 345
    .local v9, "digitsToRemove":I
    if-nez v17, :cond_244

    .line 346
    invoke-virtual {v2, v14}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 347
    add-int/2addr v9, v5

    .line 348
    add-int/2addr v9, v13

    goto :goto_24f

    .line 349
    :cond_244
    if-nez v21, :cond_24f

    if-nez v15, :cond_24a

    if-eqz v5, :cond_24f

    .line 350
    :cond_24a
    const/4 v0, 0x1

    .line 351
    invoke-virtual {v2, v11}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 352
    add-int/2addr v9, v13

    .line 354
    :cond_24f
    :goto_24f
    if-eqz v9, :cond_25b

    .line 355
    move/from16 v23, v0

    .end local v0    # "maybeMore":Z
    .local v23, "maybeMore":Z
    neg-int v0, v9

    invoke-virtual {v7, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->adjustMagnitude(I)V

    .line 356
    invoke-virtual {v7}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->truncate()V

    goto :goto_25d

    .line 354
    .end local v23    # "maybeMore":Z
    .restart local v0    # "maybeMore":Z
    :cond_25b
    move/from16 v23, v0

    .line 358
    .end local v0    # "maybeMore":Z
    .restart local v23    # "maybeMore":Z
    :goto_25d
    const/16 v17, 0x1

    .line 359
    const/16 v21, 0x1

    goto :goto_264

    .line 340
    .end local v9    # "digitsToRemove":I
    .end local v23    # "maybeMore":Z
    .restart local v0    # "maybeMore":Z
    :cond_262
    move/from16 v23, v0

    .line 361
    .end local v0    # "maybeMore":Z
    .restart local v23    # "maybeMore":Z
    :goto_264
    const/4 v0, 0x2

    if-eq v12, v0, :cond_26c

    if-eqz v17, :cond_26b

    if-nez v21, :cond_26c

    .line 363
    :cond_26b
    const/4 v7, 0x0

    .line 368
    :cond_26c
    if-nez v7, :cond_280

    .line 369
    if-nez v23, :cond_27a

    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->length()I

    move-result v0

    if-nez v0, :cond_277

    goto :goto_27a

    :cond_277
    const/16 v18, 0x0

    goto :goto_27c

    :cond_27a
    :goto_27a
    const/16 v18, 0x1

    .line 370
    .end local v23    # "maybeMore":Z
    .local v18, "maybeMore":Z
    :goto_27c
    invoke-virtual {v2, v6}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 371
    return v18

    .line 377
    .end local v18    # "maybeMore":Z
    .restart local v23    # "maybeMore":Z
    :cond_280
    neg-int v0, v8

    invoke-virtual {v7, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->adjustMagnitude(I)V

    .line 380
    if-eqz v4, :cond_2d2

    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v0

    if-eq v0, v6, :cond_2d2

    .line 381
    const/4 v9, 0x0

    .line 382
    .local v9, "overflow":Z
    invoke-virtual {v7}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->fitsInLong()Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 383
    move/from16 v20, v5

    move/from16 v18, v6

    const/4 v1, 0x0

    .end local v5    # "prevGroupCount":I
    .end local v6    # "initialOffset":I
    .local v18, "initialOffset":I
    .local v20, "prevGroupCount":I
    invoke-virtual {v7, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toLong(Z)J

    move-result-wide v5

    .line 384
    .local v5, "exponentLong":J
    nop

    .line 385
    const-wide/32 v24, 0x7fffffff

    cmp-long v0, v5, v24

    if-gtz v0, :cond_2b6

    .line 386
    long-to-int v1, v5

    .line 388
    .local v1, "exponentInt":I
    :try_start_2a5
    iget-object v0, v3, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    :try_end_2a7
    .catch Ljava/lang/ArithmeticException; {:try_start_2a5 .. :try_end_2a7} :catch_2b1

    move/from16 v25, v1

    .end local v1    # "exponentInt":I
    .local v25, "exponentInt":I
    mul-int v1, v4, v25

    :try_start_2ab
    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->adjustMagnitude(I)V
    :try_end_2ae
    .catch Ljava/lang/ArithmeticException; {:try_start_2ab .. :try_end_2ae} :catch_2af

    .line 391
    goto :goto_2b5

    .line 389
    :catch_2af
    move-exception v0

    goto :goto_2b4

    .end local v25    # "exponentInt":I
    .restart local v1    # "exponentInt":I
    :catch_2b1
    move-exception v0

    move/from16 v25, v1

    .line 390
    .end local v1    # "exponentInt":I
    .local v0, "e":Ljava/lang/ArithmeticException;
    .restart local v25    # "exponentInt":I
    :goto_2b4
    const/4 v9, 0x1

    .line 392
    .end local v0    # "e":Ljava/lang/ArithmeticException;
    .end local v25    # "exponentInt":I
    :goto_2b5
    goto :goto_2b7

    .line 393
    :cond_2b6
    const/4 v9, 0x1

    .line 395
    .end local v5    # "exponentLong":J
    :goto_2b7
    goto :goto_2bd

    .line 396
    .end local v18    # "initialOffset":I
    .end local v20    # "prevGroupCount":I
    .local v5, "prevGroupCount":I
    .restart local v6    # "initialOffset":I
    :cond_2b8
    move/from16 v20, v5

    move/from16 v18, v6

    .end local v5    # "prevGroupCount":I
    .end local v6    # "initialOffset":I
    .restart local v18    # "initialOffset":I
    .restart local v20    # "prevGroupCount":I
    const/4 v9, 0x1

    .line 398
    :goto_2bd
    if-eqz v9, :cond_2d1

    .line 399
    const/4 v1, -0x1

    if-ne v4, v1, :cond_2c8

    .line 401
    iget-object v0, v3, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->clear()Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;

    goto :goto_2d1

    .line 404
    :cond_2c8
    const/4 v0, 0x0

    iput-object v0, v3, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 405
    iget v0, v3, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v3, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 408
    .end local v9    # "overflow":Z
    :cond_2d1
    :goto_2d1
    goto :goto_2d8

    .line 380
    .end local v18    # "initialOffset":I
    .end local v20    # "prevGroupCount":I
    .restart local v5    # "prevGroupCount":I
    .restart local v6    # "initialOffset":I
    :cond_2d2
    move/from16 v20, v5

    move/from16 v18, v6

    .line 409
    .end local v5    # "prevGroupCount":I
    .end local v6    # "initialOffset":I
    .restart local v18    # "initialOffset":I
    .restart local v20    # "prevGroupCount":I
    iput-object v7, v3, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 413
    :goto_2d8
    if-eqz v10, :cond_2e0

    .line 414
    iget v0, v3, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v3, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 416
    :cond_2e0
    invoke-virtual {v3, v2}, Landroid/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Landroid/icu/impl/StringSegment;)V

    .line 417
    invoke-virtual {v2}, Landroid/icu/impl/StringSegment;->length()I

    move-result v0

    if-eqz v0, :cond_2ee

    if-eqz v23, :cond_2ec

    goto :goto_2ee

    :cond_2ec
    const/4 v5, 0x0

    goto :goto_2ef

    :cond_2ee
    :goto_2ee
    const/4 v5, 0x1

    :goto_2ef
    return v5
.end method

.method public blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 2
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 478
    return-void
.end method

.method public blacklist smokeTest(Landroid/icu/impl/StringSegment;)Z
    .registers 6
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;

    .line 458
    iget-object v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->leadSet:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_f

    .line 459
    iget-object v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->leadSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->startsWith(Landroid/icu/text/UnicodeSet;)Z

    move-result v0

    return v0

    .line 461
    :cond_f
    iget-object v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->separatorSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->startsWith(Landroid/icu/text/UnicodeSet;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getCodePoint()I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_3e

    .line 464
    :cond_23
    iget-object v0, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_29

    .line 465
    return v2

    .line 467
    :cond_29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    iget-object v3, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3d

    .line 468
    iget-object v3, p0, Landroid/icu/impl/number/parse/DecimalMatcher;->digitStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/icu/impl/StringSegment;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 469
    return v1

    .line 467
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 472
    .end local v0    # "i":I
    :cond_3d
    return v2

    .line 462
    :cond_3e
    :goto_3e
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 482
    const-string v0, "<DecimalMatcher>"

    return-object v0
.end method
