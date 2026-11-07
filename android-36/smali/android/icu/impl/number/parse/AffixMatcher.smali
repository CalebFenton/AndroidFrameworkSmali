.class public Landroid/icu/impl/number/parse/AffixMatcher;
.super Ljava/lang/Object;
.source "AffixMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/parse/NumberParseMatcher;


# static fields
.field public static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/icu/impl/number/parse/AffixMatcher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist flags:I

.field private final blacklist prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

.field private final blacklist suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetprefix(Landroid/icu/impl/number/parse/AffixMatcher;)Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsuffix(Landroid/icu/impl/number/parse/AffixMatcher;)Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smlength(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/number/parse/AffixMatcher;->length(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/icu/impl/number/parse/AffixMatcher$1;

    invoke-direct {v0}, Landroid/icu/impl/number/parse/AffixMatcher$1;-><init>()V

    sput-object v0, Landroid/icu/impl/number/parse/AffixMatcher;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/impl/number/parse/AffixPatternMatcher;Landroid/icu/impl/number/parse/AffixPatternMatcher;I)V
    .registers 4
    .param p1, "prefix"    # Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .param p2, "suffix"    # Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .param p3, "flags"    # I

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    .line 176
    iput-object p2, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    .line 177
    iput p3, p0, Landroid/icu/impl/number/parse/AffixMatcher;->flags:I

    .line 178
    return-void
.end method

.method public static blacklist createMatchers(Landroid/icu/impl/number/AffixPatternProvider;Landroid/icu/impl/number/parse/NumberParserImpl;Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;Landroid/icu/impl/number/parse/IgnorablesMatcher;I)V
    .registers 24
    .param p0, "patternInfo"    # Landroid/icu/impl/number/AffixPatternProvider;
    .param p1, "output"    # Landroid/icu/impl/number/parse/NumberParserImpl;
    .param p2, "factory"    # Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;
    .param p3, "ignorables"    # Landroid/icu/impl/number/parse/IgnorablesMatcher;
    .param p4, "parseFlags"    # I

    .line 86
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p0

    move-object/from16 v9, p3

    invoke-static {v2, v9, v1}, Landroid/icu/impl/number/parse/AffixMatcher;->isInteresting(Landroid/icu/impl/number/AffixPatternProvider;Landroid/icu/impl/number/parse/IgnorablesMatcher;I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 87
    return-void

    .line 92
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v8, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v3

    .line 94
    .local v10, "matchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/number/parse/AffixMatcher;>;"
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    move v13, v3

    .line 96
    .local v13, "includeUnpaired":Z
    const/4 v3, 0x0

    .line 97
    .local v3, "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    const/4 v4, 0x0

    .line 100
    .local v4, "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    sget-object v14, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->VALUES:[Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    array-length v15, v14

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v15, :cond_d2

    move-object v6, v4

    .end local v4    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v6, "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    aget-object v4, v14, v5

    .line 103
    .local v4, "type":Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
    sget-object v7, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    if-ne v4, v7, :cond_3b

    and-int/lit16 v7, v1, 0x400

    if-eqz v7, :cond_3b

    .line 105
    move-object v11, v3

    move/from16 v18, v5

    move-object v12, v6

    goto :goto_90

    .line 107
    :cond_3b
    sget-object v7, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    if-ne v4, v7, :cond_48

    and-int/lit16 v7, v1, 0x400

    if-nez v7, :cond_48

    .line 109
    move-object v11, v3

    move/from16 v18, v5

    move-object v12, v6

    goto :goto_90

    .line 114
    :cond_48
    move-object v7, v6

    .end local v6    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v7, "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    sget-object v6, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    move-object/from16 v16, v7

    .end local v7    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v16, "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    const/4 v7, 0x0

    move-object/from16 v17, v3

    .end local v3    # "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v17, "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    const/4 v3, 0x1

    move/from16 v18, v5

    const/4 v5, 0x0

    move-object/from16 v12, v16

    move-object/from16 v11, v17

    .end local v16    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .end local v17    # "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v11, "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v12, "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    invoke-static/range {v2 .. v8}, Landroid/icu/impl/number/PatternStringUtils;->patternInfoToStringBuilder(Landroid/icu/impl/number/AffixPatternProvider;ZLandroid/icu/impl/number/PatternStringUtils$PatternSignType;ZLandroid/icu/impl/StandardPlural;ZLjava/lang/StringBuilder;)V

    .line 121
    nop

    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->fromAffixPattern(Ljava/lang/String;Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;I)Landroid/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v2

    .line 126
    .local v2, "prefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    sget-object v6, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    const/4 v3, 0x0

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    .end local v2    # "prefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v17, "prefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    invoke-static/range {v2 .. v8}, Landroid/icu/impl/number/PatternStringUtils;->patternInfoToStringBuilder(Landroid/icu/impl/number/AffixPatternProvider;ZLandroid/icu/impl/number/PatternStringUtils$PatternSignType;ZLandroid/icu/impl/StandardPlural;ZLjava/lang/StringBuilder;)V

    .line 133
    nop

    .line 134
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->fromAffixPattern(Ljava/lang/String;Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;I)Landroid/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v2

    .line 136
    .local v2, "suffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    sget-object v3, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    if-ne v4, v3, :cond_81

    .line 137
    move-object/from16 v3, v17

    .line 138
    .end local v11    # "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .restart local v3    # "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    move-object v5, v2

    move-object v11, v3

    move-object v12, v5

    .end local v12    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v5, "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    goto :goto_93

    .line 139
    .end local v3    # "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .end local v5    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .restart local v11    # "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .restart local v12    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    :cond_81
    move-object/from16 v3, v17

    .end local v17    # "prefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v3, "prefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    invoke-static {v3, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-static {v2, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 141
    nop

    .line 100
    .end local v2    # "suffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .end local v4    # "type":Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
    .end local v11    # "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .end local v12    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v3, "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .restart local v6    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    :goto_90
    move-object v3, v11

    move-object v4, v12

    .end local v3    # "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .end local v6    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .restart local v11    # "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .restart local v12    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    goto :goto_cc

    .line 145
    .restart local v2    # "suffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v3, "prefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .restart local v4    # "type":Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
    :cond_93
    :goto_93
    sget-object v5, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    if-ne v4, v5, :cond_99

    const/4 v5, 0x1

    goto :goto_9a

    :cond_99
    const/4 v5, 0x0

    .line 149
    .local v5, "flags":I
    :goto_9a
    invoke-static {v3, v2, v5}, Landroid/icu/impl/number/parse/AffixMatcher;->getInstance(Landroid/icu/impl/number/parse/AffixPatternMatcher;Landroid/icu/impl/number/parse/AffixPatternMatcher;I)Landroid/icu/impl/number/parse/AffixMatcher;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    if-eqz v13, :cond_ca

    if-eqz v3, :cond_ca

    if-eqz v2, :cond_ca

    .line 152
    sget-object v6, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    const/4 v7, 0x0

    if-eq v4, v6, :cond_b2

    invoke-static {v3, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b9

    .line 153
    :cond_b2
    invoke-static {v3, v7, v5}, Landroid/icu/impl/number/parse/AffixMatcher;->getInstance(Landroid/icu/impl/number/parse/AffixPatternMatcher;Landroid/icu/impl/number/parse/AffixPatternMatcher;I)Landroid/icu/impl/number/parse/AffixMatcher;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_b9
    sget-object v6, Landroid/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Landroid/icu/impl/number/PatternStringUtils$PatternSignType;

    if-eq v4, v6, :cond_c3

    invoke-static {v2, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ca

    .line 156
    :cond_c3
    invoke-static {v7, v2, v5}, Landroid/icu/impl/number/parse/AffixMatcher;->getInstance(Landroid/icu/impl/number/parse/AffixPatternMatcher;Landroid/icu/impl/number/parse/AffixPatternMatcher;I)Landroid/icu/impl/number/parse/AffixMatcher;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v2    # "suffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .end local v3    # "prefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .end local v4    # "type":Landroid/icu/impl/number/PatternStringUtils$PatternSignType;
    .end local v5    # "flags":I
    :cond_ca
    move-object v3, v11

    move-object v4, v12

    .end local v11    # "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .end local v12    # "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v3, "posPrefix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .local v4, "posSuffix":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    :goto_cc
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v2, p0

    goto/16 :goto_29

    .line 162
    :cond_d2
    sget-object v2, Landroid/icu/impl/number/parse/AffixMatcher;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    move-object/from16 v2, p1

    invoke-virtual {v2, v10}, Landroid/icu/impl/number/parse/NumberParserImpl;->addMatchers(Ljava/util/Collection;)V

    .line 164
    return-void
.end method

.method private static final blacklist getInstance(Landroid/icu/impl/number/parse/AffixPatternMatcher;Landroid/icu/impl/number/parse/AffixPatternMatcher;I)Landroid/icu/impl/number/parse/AffixMatcher;
    .registers 4
    .param p0, "prefix"    # Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .param p1, "suffix"    # Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .param p2, "flags"    # I

    .line 171
    new-instance v0, Landroid/icu/impl/number/parse/AffixMatcher;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/number/parse/AffixMatcher;-><init>(Landroid/icu/impl/number/parse/AffixPatternMatcher;Landroid/icu/impl/number/parse/AffixPatternMatcher;I)V

    return-object v0
.end method

.method private static blacklist isInteresting(Landroid/icu/impl/number/AffixPatternProvider;Landroid/icu/impl/number/parse/IgnorablesMatcher;I)Z
    .registers 11
    .param p0, "patternInfo"    # Landroid/icu/impl/number/AffixPatternProvider;
    .param p1, "ignorables"    # Landroid/icu/impl/number/parse/IgnorablesMatcher;
    .param p2, "parseFlags"    # I

    .line 53
    const/16 v0, 0x100

    invoke-interface {p0, v0}, Landroid/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "posPrefixString":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "posSuffixString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 56
    .local v3, "negPrefixString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 57
    .local v4, "negSuffixString":Ljava/lang/String;
    invoke-interface {p0}, Landroid/icu/impl/number/AffixPatternProvider;->hasNegativeSubpattern()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 58
    const/16 v5, 0x300

    invoke-interface {p0, v5}, Landroid/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    const/16 v5, 0x200

    invoke-interface {p0, v5}, Landroid/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    :cond_1f
    and-int/lit16 v5, p2, 0x100

    if-nez v5, :cond_66

    .line 63
    invoke-virtual {p1}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->getSet()Landroid/icu/text/UnicodeSet;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/icu/impl/number/AffixUtils;->containsOnlySymbolsAndIgnorables(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 64
    invoke-virtual {p1}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->getSet()Landroid/icu/text/UnicodeSet;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/icu/impl/number/AffixUtils;->containsOnlySymbolsAndIgnorables(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 65
    invoke-virtual {p1}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->getSet()Landroid/icu/text/UnicodeSet;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/icu/impl/number/AffixUtils;->containsOnlySymbolsAndIgnorables(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 66
    invoke-virtual {p1}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->getSet()Landroid/icu/text/UnicodeSet;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/icu/impl/number/AffixUtils;->containsOnlySymbolsAndIgnorables(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 69
    const/4 v5, -0x2

    invoke-static {v2, v5}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-nez v6, :cond_66

    .line 70
    const/4 v6, -0x1

    invoke-static {v2, v6}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-nez v7, :cond_66

    .line 71
    invoke-static {v4, v5}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-nez v5, :cond_66

    .line 72
    invoke-static {v4, v6}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-nez v5, :cond_66

    .line 75
    return v1

    .line 77
    :cond_66
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist length(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I
    .registers 2
    .param p0, "matcher"    # Landroid/icu/impl/number/parse/AffixPatternMatcher;

    .line 261
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_c
    return v0
.end method

.method static blacklist matched(Landroid/icu/impl/number/parse/AffixPatternMatcher;Ljava/lang/String;)Z
    .registers 3
    .param p0, "affix"    # Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .param p1, "patternString"    # Ljava/lang/String;

    .line 253
    if-nez p0, :cond_4

    if-eqz p1, :cond_10

    :cond_4
    if-eqz p0, :cond_12

    .line 254
    invoke-virtual {p0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 253
    :goto_13
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "_other"    # Ljava/lang/Object;

    .line 266
    instance-of v0, p1, Landroid/icu/impl/number/parse/AffixMatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 267
    return v1

    .line 269
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/number/parse/AffixMatcher;

    .line 270
    .local v0, "other":Landroid/icu/impl/number/parse/AffixMatcher;
    iget-object v2, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v3, v0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v3, v0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    .line 271
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Landroid/icu/impl/number/parse/AffixMatcher;->flags:I

    iget v3, v0, Landroid/icu/impl/number/parse/AffixMatcher;->flags:I

    if-ne v2, v3, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    .line 270
    :goto_26
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 277
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/icu/impl/number/parse/AffixMatcher;->flags:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 6
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 182
    invoke-virtual {p2}, Landroid/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 187
    iget-object v0, p2, Landroid/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    if-nez v0, :cond_10

    goto :goto_29

    .line 192
    :cond_10
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v0

    .line 193
    .local v0, "initialOffset":I
    iget-object v1, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v1, p1, p2}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z

    move-result v1

    .line 194
    .local v1, "maybeMore":Z
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v2

    if-eq v0, v2, :cond_28

    .line 195
    iget-object v2, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v2}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->getPattern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    .line 197
    :cond_28
    return v1

    .line 188
    .end local v0    # "initialOffset":I
    .end local v1    # "maybeMore":Z
    :cond_29
    :goto_29
    return v1

    .line 205
    :cond_2a
    iget-object v0, p2, Landroid/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    if-nez v0, :cond_56

    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v2, p2, Landroid/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/icu/impl/number/parse/AffixMatcher;->matched(Landroid/icu/impl/number/parse/AffixPatternMatcher;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_56

    .line 210
    :cond_3d
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v0

    .line 211
    .restart local v0    # "initialOffset":I
    iget-object v1, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v1, p1, p2}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z

    move-result v1

    .line 212
    .restart local v1    # "maybeMore":Z
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v2

    if-eq v0, v2, :cond_55

    .line 213
    iget-object v2, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v2}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->getPattern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    .line 215
    :cond_55
    return v1

    .line 206
    .end local v0    # "initialOffset":I
    .end local v1    # "maybeMore":Z
    :cond_56
    :goto_56
    return v1
.end method

.method public blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 4
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 228
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v1, p1, Landroid/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/number/parse/AffixMatcher;->matched(Landroid/icu/impl/number/parse/AffixPatternMatcher;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v1, p1, Landroid/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/number/parse/AffixMatcher;->matched(Landroid/icu/impl/number/parse/AffixPatternMatcher;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 231
    iget-object v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_1c

    .line 232
    iput-object v1, p1, Landroid/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    .line 234
    :cond_1c
    iget-object v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 235
    iput-object v1, p1, Landroid/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    .line 237
    :cond_22
    iget v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    iget v1, p0, Landroid/icu/impl/number/parse/AffixMatcher;->flags:I

    or-int/2addr v0, v1

    iput v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 238
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    if-eqz v0, :cond_32

    .line 239
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 241
    :cond_32
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    if-eqz v0, :cond_3b

    .line 242
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 245
    :cond_3b
    return-void
.end method

.method public blacklist smokeTest(Landroid/icu/impl/StringSegment;)Z
    .registers 3
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;

    .line 221
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->smokeTest(Landroid/icu/impl/StringSegment;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    .line 222
    invoke-virtual {v0, p1}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->smokeTest(Landroid/icu/impl/StringSegment;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 221
    :goto_1b
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 282
    iget v0, p0, Landroid/icu/impl/number/parse/AffixMatcher;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 283
    .local v1, "isNegative":Z
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<AffixMatcher"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v1, :cond_18

    const-string v2, ":negative "

    goto :goto_1a

    :cond_18
    const-string v2, " "

    :goto_1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/impl/number/parse/AffixMatcher;->prefix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/impl/number/parse/AffixMatcher;->suffix:Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
