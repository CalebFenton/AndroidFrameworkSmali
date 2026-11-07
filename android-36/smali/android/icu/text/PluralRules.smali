.class public Landroid/icu/text/PluralRules;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralRules$RuleList;,
        Landroid/icu/text/PluralRules$Constraint;,
        Landroid/icu/text/PluralRules$SimpleTokenizer;,
        Landroid/icu/text/PluralRules$FixedDecimal;,
        Landroid/icu/text/PluralRules$Operand;,
        Landroid/icu/text/PluralRules$RangeConstraint;,
        Landroid/icu/text/PluralRules$AndConstraint;,
        Landroid/icu/text/PluralRules$OrConstraint;,
        Landroid/icu/text/PluralRules$Rule;,
        Landroid/icu/text/PluralRules$DecimalQuantitySamples;,
        Landroid/icu/text/PluralRules$SampleType;,
        Landroid/icu/text/PluralRules$Factory;,
        Landroid/icu/text/PluralRules$PluralType;,
        Landroid/icu/text/PluralRules$IFixedDecimal;,
        Landroid/icu/text/PluralRules$KeywordStatus;,
        Landroid/icu/text/PluralRules$BinaryConstraint;,
        Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;
    }
.end annotation


# static fields
.field static final greylist-max-o ALLOWED_ID:Landroid/icu/text/UnicodeSet;

.field static final greylist-max-o AND_SEPARATED:Ljava/util/regex/Pattern;

.field static final greylist-max-o AT_SEPARATED:Ljava/util/regex/Pattern;

.field private static final greylist-max-o CATEGORY_SEPARATOR:Ljava/lang/String; = ";  "

.field static final greylist-max-o COMMA_SEPARATED:Ljava/util/regex/Pattern;

.field public static final whitelist test-api DEFAULT:Landroid/icu/text/PluralRules;

.field private static final greylist-max-o DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

.field static final greylist-max-o DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

.field public static final whitelist test-api KEYWORD_FEW:Ljava/lang/String; = "few"

.field public static final whitelist test-api KEYWORD_MANY:Ljava/lang/String; = "many"

.field public static final whitelist test-api KEYWORD_ONE:Ljava/lang/String; = "one"

.field public static final whitelist test-api KEYWORD_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist test-api KEYWORD_TWO:Ljava/lang/String; = "two"

.field public static final whitelist test-api KEYWORD_ZERO:Ljava/lang/String; = "zero"

.field private static final greylist-max-o NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

.field public static final whitelist test-api NO_UNIQUE_VALUE:D = -0.00123456777

.field public static final blacklist NO_UNIQUE_VALUE_DECIMAL_QUANTITY:Landroid/icu/impl/number/DecimalQuantity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o OR_SEPARATED:Ljava/util/regex/Pattern;

.field static final greylist-max-o SEMI_SEPARATED:Ljava/util/regex/Pattern;

.field static final greylist-max-o TILDE_SEPARATED:Ljava/util/regex/Pattern;

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final transient greylist-max-o keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o rules:Landroid/icu/text/PluralRules$RuleList;

.field private final transient blacklist standardPluralRanges:Landroid/icu/impl/number/range/StandardPluralRanges;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smaddRange(Ljava/lang/StringBuilder;DDZ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/icu/text/PluralRules;->addRange(Ljava/lang/StringBuilder;DDZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smparseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;
    .registers 1

    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 177
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[a-z]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->ALLOWED_ID:Landroid/icu/text/UnicodeSet;

    .line 344
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    const-wide v1, -0x40abc5d8f366e181L    # -0.00123456777

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    sput-object v0, Landroid/icu/text/PluralRules;->NO_UNIQUE_VALUE_DECIMAL_QUANTITY:Landroid/icu/impl/number/DecimalQuantity;

    .line 364
    new-instance v0, Landroid/icu/text/PluralRules$1;

    invoke-direct {v0}, Landroid/icu/text/PluralRules$1;-><init>()V

    sput-object v0, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    .line 386
    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    sget-object v1, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    const-string v2, "other"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$DecimalQuantitySamples;Landroid/icu/text/PluralRules$DecimalQuantitySamples;)V

    sput-object v0, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    .line 430
    new-instance v0, Landroid/icu/text/PluralRules;

    new-instance v1, Landroid/icu/text/PluralRules$RuleList;

    invoke-direct {v1, v3}, Landroid/icu/text/PluralRules$RuleList;-><init>(Landroid/icu/text/PluralRules-IA;)V

    sget-object v2, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    .line 431
    invoke-virtual {v1, v2}, Landroid/icu/text/PluralRules$RuleList;->addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/number/range/StandardPluralRanges;->DEFAULT:Landroid/icu/impl/number/range/StandardPluralRanges;

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PluralRules;-><init>(Landroid/icu/text/PluralRules$RuleList;Landroid/icu/impl/number/range/StandardPluralRanges;)V

    sput-object v0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    .line 1625
    const-string v0, "\\s*\\Q\\E@\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    .line 1626
    const-string v0, "\\s*or\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    .line 1627
    const-string v0, "\\s*and\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    .line 1628
    const-string v0, "\\s*,\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    .line 1629
    const-string v0, "\\s*\\Q..\\E\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

    .line 1630
    const-string v0, "\\s*~\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    .line 1631
    const-string v0, "\\s*;\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/text/PluralRules$RuleList;Landroid/icu/impl/number/range/StandardPluralRanges;)V
    .registers 4
    .param p1, "rules"    # Landroid/icu/text/PluralRules$RuleList;
    .param p2, "standardPluralRanges"    # Landroid/icu/impl/number/range/StandardPluralRanges;

    .line 2217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2218
    iput-object p1, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    .line 2219
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$RuleList;->getKeywords()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    .line 2220
    iput-object p2, p0, Landroid/icu/text/PluralRules;->standardPluralRanges:Landroid/icu/impl/number/range/StandardPluralRanges;

    .line 2221
    return-void
.end method

.method private greylist-max-o addConditional(Ljava/util/Set;Ljava/util/Set;D)Z
    .registers 7
    .param p3, "trial"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$IFixedDecimal;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$IFixedDecimal;",
            ">;D)Z"
        }
    .end annotation

    .line 2104
    .local p1, "toAddTo":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/PluralRules$IFixedDecimal;>;"
    .local p2, "others":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/PluralRules$IFixedDecimal;>;"
    new-instance v0, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v0, p3, p4}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    .line 2105
    .local v0, "toAdd":Landroid/icu/text/PluralRules$IFixedDecimal;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2106
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2107
    const/4 v1, 0x1

    .local v1, "added":Z
    goto :goto_17

    .line 2109
    .end local v1    # "added":Z
    :cond_16
    const/4 v1, 0x0

    .line 2111
    .restart local v1    # "added":Z
    :goto_17
    return v1
.end method

.method private static greylist-max-o addRange(Ljava/lang/StringBuilder;DDZ)V
    .registers 8
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "lb"    # D
    .param p3, "ub"    # D
    .param p5, "addSeparator"    # Z

    .line 1833
    if-eqz p5, :cond_7

    .line 1834
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    :cond_7
    cmpl-double v0, p1, p3

    if-nez v0, :cond_13

    .line 1837
    invoke-static {p1, p2}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 1839
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    :goto_35
    return-void
.end method

.method private blacklist addSample(Ljava/lang/String;Landroid/icu/impl/number/DecimalQuantity;ILjava/util/Set;)Z
    .registers 7
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sample"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p3, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/impl/number/DecimalQuantity;",
            "I",
            "Ljava/util/Set<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;)Z"
        }
    .end annotation

    .line 2541
    .local p4, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/number/DecimalQuantity;>;"
    invoke-virtual {p0, p2}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    .line 2542
    .local v0, "selectedKeyword":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2543
    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2544
    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_13

    .line 2545
    const/4 v1, 0x0

    return v1

    .line 2548
    :cond_13
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist test-api createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .registers 3
    .param p0, "description"    # Ljava/lang/String;

    .line 407
    :try_start_0
    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 408
    :catch_5
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist test-api forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 2138
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/PluralRulesLoader;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "type"    # Landroid/icu/text/PluralRules$PluralType;

    .line 2180
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/PluralRulesLoader;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 2159
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api forLocale(Ljava/util/Locale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "type"    # Landroid/icu/text/PluralRules$PluralType;

    .line 2201
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o format(D)Ljava/lang/String;
    .registers 6
    .param p0, "lb"    # D

    .line 1844
    double-to-long v0, p0

    .line 1845
    .local v0, "lbi":J
    long-to-double v2, v0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_b

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_b
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    :goto_f
    return-object v2
.end method

.method public static greylist-max-o getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 1

    .line 2576
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/PluralRulesLoader;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "isAvailable"    # [Z

    .line 2596
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/PluralRulesLoader;->getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o isValidKeyword(Ljava/lang/String;)Z
    .registers 2
    .param p0, "token"    # Ljava/lang/String;

    .line 2211
    sget-object v0, Landroid/icu/text/PluralRules;->ALLOWED_ID:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist newInternal(Ljava/lang/String;Landroid/icu/impl/number/range/StandardPluralRanges;)Landroid/icu/text/PluralRules;
    .registers 4
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "ranges"    # Landroid/icu/impl/number/range/StandardPluralRanges;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 421
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 422
    sget-object v0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    goto :goto_16

    .line 423
    :cond_d
    new-instance v0, Landroid/icu/text/PluralRules;

    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseRuleChain(Ljava/lang/String;)Landroid/icu/text/PluralRules$RuleList;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/icu/text/PluralRules;-><init>(Landroid/icu/text/PluralRules$RuleList;Landroid/icu/impl/number/range/StandardPluralRanges;)V

    .line 421
    :goto_16
    return-object v0
.end method

.method private static greylist-max-o nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "tokens"    # [Ljava/lang/String;
    .param p1, "x"    # I
    .param p2, "context"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1645
    array-length v0, p0

    if-ge p1, v0, :cond_6

    .line 1646
    aget-object v0, p0, p1

    return-object v0

    .line 1648
    :cond_6
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing token at end of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static greylist-max-o parseConstraint(Ljava/lang/String;)Landroid/icu/text/PluralRules$Constraint;
    .registers 40
    .param p0, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1477
    const/4 v0, 0x0

    .line 1478
    .local v0, "result":Landroid/icu/text/PluralRules$Constraint;
    sget-object v1, Landroid/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-virtual {v1, v3, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 1479
    .local v1, "or_together":[Ljava/lang/String;
    const/4 v4, 0x0

    move v5, v4

    move-object v4, v0

    .end local v0    # "result":Landroid/icu/text/PluralRules$Constraint;
    .local v4, "result":Landroid/icu/text/PluralRules$Constraint;
    .local v5, "i":I
    :goto_d
    array-length v0, v1

    if-ge v5, v0, :cond_2c2

    .line 1480
    const/4 v0, 0x0

    .line 1481
    .local v0, "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    sget-object v6, Landroid/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    aget-object v7, v1, v5

    invoke-virtual {v6, v7, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v6

    .line 1482
    .local v6, "and_together":[Ljava/lang/String;
    const/4 v7, 0x0

    move v8, v7

    move-object v7, v0

    .end local v0    # "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    .local v7, "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    .local v8, "j":I
    :goto_1c
    array-length v0, v6

    if-ge v8, v0, :cond_2a2

    .line 1483
    sget-object v9, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    .line 1485
    .local v9, "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    aget-object v0, v6, v8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1486
    .local v10, "condition":Ljava/lang/String;
    invoke-static {v10}, Landroid/icu/text/PluralRules$SimpleTokenizer;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1488
    .local v11, "tokens":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1489
    .local v12, "mod":I
    const/4 v13, 0x1

    .line 1490
    .local v13, "inRange":Z
    const/4 v14, 0x1

    .line 1491
    .local v14, "integersOnly":Z
    const-wide/high16 v15, 0x43e0000000000000L    # 9.223372036854776E18

    .line 1492
    .local v15, "lowBound":D
    const-wide/high16 v17, -0x3c20000000000000L    # -9.223372036854776E18

    .line 1493
    .local v17, "highBound":D
    const/16 v19, 0x0

    .line 1495
    .local v19, "vals":[J
    const/4 v0, 0x0

    .line 1496
    .local v0, "x":I
    add-int/lit8 v2, v0, 0x1

    move-object/from16 v20, v1

    .end local v0    # "x":I
    .end local v1    # "or_together":[Ljava/lang/String;
    .local v2, "x":I
    .local v20, "or_together":[Ljava/lang/String;
    aget-object v1, v11, v0

    .line 1497
    .local v1, "t":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1500
    .local v21, "hackForCompatibility":Z
    :try_start_3d
    invoke-static {v1}, Landroid/icu/text/PluralRules$FixedDecimal;->getOperand(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_292

    move-object/from16 v25, v0

    .line 1503
    .local v25, "operand":Landroid/icu/text/PluralRules$Operand;
    nop

    .line 1504
    array-length v0, v11

    if-ge v2, v0, :cond_26e

    .line 1505
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "x":I
    .restart local v0    # "x":I
    aget-object v1, v11, v2

    .line 1506
    const-string v2, "mod"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "%"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1507
    :cond_5b
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "x":I
    .restart local v2    # "x":I
    aget-object v0, v11, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1508
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "x":I
    .restart local v0    # "x":I
    invoke-static {v11, v2, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1510
    :cond_69
    const-string v2, "not"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    const-string v3, "="

    if-eqz v22, :cond_8d

    .line 1511
    xor-int/lit8 v22, v13, 0x1

    move/from16 v13, v22

    .line 1512
    add-int/lit8 v22, v0, 0x1

    .end local v0    # "x":I
    .local v22, "x":I
    invoke-static {v11, v0, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1513
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    move/from16 v32, v5

    move/from16 v0, v22

    goto :goto_ad

    .line 1514
    :cond_88
    invoke-static {v1, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1516
    .end local v22    # "x":I
    .restart local v0    # "x":I
    :cond_8d
    move/from16 v32, v5

    .end local v5    # "i":I
    .local v32, "i":I
    const-string v5, "!"

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 1517
    xor-int/lit8 v5, v13, 0x1

    move v13, v5

    .line 1518
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "x":I
    .local v5, "x":I
    invoke-static {v11, v0, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1519
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    move v0, v5

    goto :goto_ad

    .line 1520
    :cond_a8
    invoke-static {v1, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1523
    .end local v5    # "x":I
    .restart local v0    # "x":I
    :cond_ad
    :goto_ad
    const-string v5, "is"

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_dd

    move-object/from16 v33, v6

    .end local v6    # "and_together":[Ljava/lang/String;
    .local v33, "and_together":[Ljava/lang/String;
    const-string v6, "in"

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_df

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    goto :goto_df

    .line 1529
    :cond_c6
    const-string v3, "within"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 1530
    const/4 v14, 0x0

    .line 1531
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "x":I
    .local v3, "x":I
    invoke-static {v11, v0, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move/from16 v26, v14

    .end local v1    # "t":Ljava/lang/String;
    .local v0, "t":Ljava/lang/String;
    goto :goto_f5

    .line 1533
    .end local v3    # "x":I
    .local v0, "x":I
    .restart local v1    # "t":Ljava/lang/String;
    :cond_d8
    invoke-static {v1, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2

    .line 1523
    .end local v33    # "and_together":[Ljava/lang/String;
    .restart local v6    # "and_together":[Ljava/lang/String;
    :cond_dd
    move-object/from16 v33, v6

    .line 1524
    .end local v6    # "and_together":[Ljava/lang/String;
    .restart local v33    # "and_together":[Ljava/lang/String;
    :cond_df
    :goto_df
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 1525
    if-eqz v21, :cond_ed

    if-eqz v13, :cond_e8

    goto :goto_ed

    .line 1526
    :cond_e8
    invoke-static {v1, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2

    .line 1528
    :cond_ed
    :goto_ed
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "x":I
    .restart local v3    # "x":I
    invoke-static {v11, v0, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move/from16 v26, v14

    .line 1535
    .end local v1    # "t":Ljava/lang/String;
    .end local v14    # "integersOnly":Z
    .local v0, "t":Ljava/lang/String;
    .local v26, "integersOnly":Z
    :goto_f5
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 1536
    if-nez v21, :cond_105

    if-eqz v13, :cond_100

    goto :goto_105

    .line 1537
    :cond_100
    invoke-static {v0, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1

    .line 1539
    :cond_105
    :goto_105
    if-nez v13, :cond_109

    const/4 v1, 0x1

    goto :goto_10a

    :cond_109
    const/4 v1, 0x0

    :goto_10a
    move v13, v1

    .line 1540
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "x":I
    .local v1, "x":I
    invoke-static {v11, v3, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v3, v1

    move/from16 v24, v13

    goto :goto_117

    .line 1535
    .end local v1    # "x":I
    .restart local v3    # "x":I
    :cond_115
    move/from16 v24, v13

    .line 1543
    .end local v13    # "inRange":Z
    .local v24, "inRange":Z
    :goto_117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-wide v5, v15

    move-wide/from16 v13, v17

    .line 1547
    .end local v15    # "lowBound":D
    .end local v17    # "highBound":D
    .local v1, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v5, "lowBound":D
    .local v13, "highBound":D
    :goto_11f
    move/from16 v34, v8

    move-object/from16 v35, v9

    .end local v8    # "j":I
    .end local v9    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .local v34, "j":I
    .local v35, "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1548
    .local v8, "low":J
    move-wide v15, v8

    .line 1549
    .local v15, "high":J
    array-length v2, v11

    move-object/from16 v17, v0

    .end local v0    # "t":Ljava/lang/String;
    .local v17, "t":Ljava/lang/String;
    const-string v0, ","

    if-ge v3, v2, :cond_190

    .line 1550
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "x":I
    .restart local v2    # "x":I
    invoke-static {v11, v3, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1551
    .end local v17    # "t":Ljava/lang/String;
    .local v3, "t":Ljava/lang/String;
    move-wide/from16 v22, v15

    .end local v15    # "high":J
    .local v22, "high":J
    const-string v15, "."

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17e

    .line 1552
    move-object/from16 v36, v4

    .end local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    .local v36, "result":Landroid/icu/text/PluralRules$Constraint;
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "x":I
    .local v4, "x":I
    invoke-static {v11, v2, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1553
    .end local v3    # "t":Ljava/lang/String;
    .local v2, "t":Ljava/lang/String;
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_179

    .line 1556
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "x":I
    .local v3, "x":I
    invoke-static {v11, v4, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1557
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 1558
    .end local v22    # "high":J
    .restart local v15    # "high":J
    array-length v4, v11

    if-ge v3, v4, :cond_172

    .line 1559
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "x":I
    .restart local v4    # "x":I
    invoke-static {v11, v3, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1560
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16d

    move/from16 v37, v4

    move-object v4, v2

    move-wide v2, v15

    move/from16 v15, v37

    goto :goto_199

    .line 1562
    :cond_16d
    invoke-static {v2, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1558
    .end local v4    # "x":I
    .restart local v3    # "x":I
    :cond_172
    move-object v4, v2

    move-wide/from16 v37, v15

    move v15, v3

    move-wide/from16 v2, v37

    goto :goto_199

    .line 1554
    .end local v3    # "x":I
    .end local v15    # "high":J
    .restart local v4    # "x":I
    .restart local v22    # "high":J
    :cond_179
    invoke-static {v2, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1565
    .end local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    .local v2, "x":I
    .local v3, "t":Ljava/lang/String;
    .local v4, "result":Landroid/icu/text/PluralRules$Constraint;
    :cond_17e
    move-object/from16 v36, v4

    .end local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    .restart local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18b

    move v15, v2

    move-object v4, v3

    move-wide/from16 v2, v22

    goto :goto_199

    .line 1567
    :cond_18b
    invoke-static {v3, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1549
    .end local v2    # "x":I
    .end local v22    # "high":J
    .end local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    .local v3, "x":I
    .restart local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    .restart local v15    # "high":J
    .restart local v17    # "t":Ljava/lang/String;
    :cond_190
    move-object/from16 v36, v4

    move-wide/from16 v22, v15

    .end local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    .end local v15    # "high":J
    .restart local v22    # "high":J
    .restart local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    move v15, v3

    move-object/from16 v4, v17

    move-wide/from16 v2, v22

    .line 1571
    .end local v3    # "x":I
    .end local v17    # "t":Ljava/lang/String;
    .end local v22    # "high":J
    .local v2, "high":J
    .local v4, "t":Ljava/lang/String;
    .local v15, "x":I
    :goto_199
    cmp-long v16, v8, v2

    if-gtz v16, :cond_250

    .line 1573
    if-eqz v12, :cond_1c3

    move-wide/from16 v16, v13

    .end local v13    # "highBound":D
    .local v16, "highBound":D
    int-to-long v13, v12

    cmp-long v13, v2, v13

    if-gez v13, :cond_1a7

    goto :goto_1c5

    .line 1574
    :cond_1a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ">mod="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1573
    .end local v16    # "highBound":D
    .restart local v13    # "highBound":D
    :cond_1c3
    move-wide/from16 v16, v13

    .line 1576
    .end local v13    # "highBound":D
    .restart local v16    # "highBound":D
    :goto_1c5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    long-to-double v13, v8

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v27

    .line 1579
    .end local v5    # "lowBound":D
    .local v27, "lowBound":D
    long-to-double v5, v2

    move-wide/from16 v13, v16

    .end local v16    # "highBound":D
    .restart local v13    # "highBound":D
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v29

    .line 1580
    .end local v13    # "highBound":D
    .local v29, "highBound":D
    array-length v5, v11

    if-lt v15, v5, :cond_23a

    .line 1581
    nop

    .line 1586
    .end local v2    # "high":J
    .end local v8    # "low":J
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_235

    .line 1590
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f4

    .line 1591
    const/4 v0, 0x0

    move-object/from16 v31, v0

    .end local v19    # "vals":[J
    .local v0, "vals":[J
    goto :goto_20f

    .line 1593
    .end local v0    # "vals":[J
    .restart local v19    # "vals":[J
    :cond_1f4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 1594
    .end local v19    # "vals":[J
    .restart local v0    # "vals":[J
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1fb
    array-length v3, v0

    if-ge v2, v3, :cond_20d

    .line 1595
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v2

    .line 1594
    add-int/lit8 v2, v2, 0x1

    goto :goto_1fb

    :cond_20d
    move-object/from16 v31, v0

    .line 1600
    .end local v0    # "vals":[J
    .end local v2    # "k":I
    .local v31, "vals":[J
    :goto_20f
    cmpl-double v0, v27, v29

    if-eqz v0, :cond_21f

    if-eqz v21, :cond_21f

    if-eqz v24, :cond_218

    goto :goto_21f

    .line 1601
    :cond_218
    const-string v0, "is not <range>"

    invoke-static {v0, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1604
    :cond_21f
    :goto_21f
    new-instance v22, Landroid/icu/text/PluralRules$RangeConstraint;

    move/from16 v23, v12

    .end local v12    # "mod":I
    .local v23, "mod":I
    invoke-direct/range {v22 .. v31}, Landroid/icu/text/PluralRules$RangeConstraint;-><init>(IZLandroid/icu/text/PluralRules$Operand;ZDD[J)V

    move-object/from16 v9, v22

    move-object v1, v4

    move v2, v15

    move/from16 v13, v24

    move/from16 v14, v26

    move-wide/from16 v15, v27

    move-wide/from16 v17, v29

    move-object/from16 v19, v31

    .end local v35    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .restart local v9    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    goto :goto_278

    .line 1587
    .end local v9    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .end local v23    # "mod":I
    .end local v31    # "vals":[J
    .restart local v12    # "mod":I
    .restart local v19    # "vals":[J
    .restart local v35    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    :cond_235
    invoke-static {v4, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1583
    .local v2, "high":J
    .restart local v8    # "low":J
    :cond_23a
    move/from16 v23, v12

    .end local v12    # "mod":I
    .restart local v23    # "mod":I
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "x":I
    .local v0, "x":I
    invoke-static {v11, v15, v10}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1584
    .end local v4    # "t":Ljava/lang/String;
    .end local v8    # "low":J
    .local v2, "t":Ljava/lang/String;
    move v3, v0

    move-object v0, v2

    move-wide/from16 v5, v27

    move-wide/from16 v13, v29

    move/from16 v8, v34

    move-object/from16 v9, v35

    move-object/from16 v4, v36

    goto/16 :goto_11f

    .line 1572
    .end local v0    # "x":I
    .end local v23    # "mod":I
    .end local v27    # "lowBound":D
    .end local v29    # "highBound":D
    .local v2, "high":J
    .restart local v4    # "t":Ljava/lang/String;
    .restart local v5    # "lowBound":D
    .restart local v8    # "low":J
    .restart local v12    # "mod":I
    .restart local v13    # "highBound":D
    .restart local v15    # "x":I
    :cond_250
    move/from16 v23, v12

    .end local v12    # "mod":I
    .restart local v23    # "mod":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "~"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1504
    .end local v23    # "mod":I
    .end local v24    # "inRange":Z
    .end local v26    # "integersOnly":Z
    .end local v32    # "i":I
    .end local v33    # "and_together":[Ljava/lang/String;
    .end local v34    # "j":I
    .end local v35    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .end local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    .local v1, "t":Ljava/lang/String;
    .local v2, "x":I
    .local v4, "result":Landroid/icu/text/PluralRules$Constraint;
    .local v5, "i":I
    .restart local v6    # "and_together":[Ljava/lang/String;
    .local v8, "j":I
    .restart local v9    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .restart local v12    # "mod":I
    .local v13, "inRange":Z
    .restart local v14    # "integersOnly":Z
    .local v15, "lowBound":D
    .local v17, "highBound":D
    :cond_26e
    move-object/from16 v36, v4

    move/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v34, v8

    move-object/from16 v35, v9

    .line 1608
    .end local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    .end local v5    # "i":I
    .end local v6    # "and_together":[Ljava/lang/String;
    .end local v8    # "j":I
    .restart local v32    # "i":I
    .restart local v33    # "and_together":[Ljava/lang/String;
    .restart local v34    # "j":I
    .restart local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    :goto_278
    if-nez v7, :cond_27d

    .line 1609
    move-object v0, v9

    move-object v7, v0

    .end local v7    # "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    .local v0, "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    goto :goto_283

    .line 1611
    .end local v0    # "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    .restart local v7    # "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    :cond_27d
    new-instance v0, Landroid/icu/text/PluralRules$AndConstraint;

    invoke-direct {v0, v7, v9}, Landroid/icu/text/PluralRules$AndConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    move-object v7, v0

    .line 1482
    .end local v1    # "t":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v9    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .end local v10    # "condition":Ljava/lang/String;
    .end local v11    # "tokens":[Ljava/lang/String;
    .end local v12    # "mod":I
    .end local v13    # "inRange":Z
    .end local v14    # "integersOnly":Z
    .end local v15    # "lowBound":D
    .end local v17    # "highBound":D
    .end local v19    # "vals":[J
    .end local v21    # "hackForCompatibility":Z
    .end local v25    # "operand":Landroid/icu/text/PluralRules$Operand;
    :goto_283
    add-int/lit8 v8, v34, 0x1

    const/4 v2, 0x0

    move-object/from16 v3, p0

    move-object/from16 v1, v20

    move/from16 v5, v32

    move-object/from16 v6, v33

    move-object/from16 v4, v36

    .end local v34    # "j":I
    .restart local v8    # "j":I
    goto/16 :goto_1c

    .line 1501
    .end local v32    # "i":I
    .end local v33    # "and_together":[Ljava/lang/String;
    .end local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    .restart local v1    # "t":Ljava/lang/String;
    .restart local v2    # "x":I
    .restart local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    .restart local v5    # "i":I
    .restart local v6    # "and_together":[Ljava/lang/String;
    .restart local v9    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .restart local v10    # "condition":Ljava/lang/String;
    .restart local v11    # "tokens":[Ljava/lang/String;
    .restart local v12    # "mod":I
    .restart local v13    # "inRange":Z
    .restart local v14    # "integersOnly":Z
    .restart local v15    # "lowBound":D
    .restart local v17    # "highBound":D
    .restart local v19    # "vals":[J
    .restart local v21    # "hackForCompatibility":Z
    :catch_292
    move-exception v0

    move-object/from16 v36, v4

    move/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v34, v8

    move-object/from16 v35, v9

    .line 1502
    .end local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    .end local v5    # "i":I
    .end local v6    # "and_together":[Ljava/lang/String;
    .end local v8    # "j":I
    .end local v9    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v32    # "i":I
    .restart local v33    # "and_together":[Ljava/lang/String;
    .restart local v34    # "j":I
    .restart local v35    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .restart local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    invoke-static {v1, v10}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3

    .line 1482
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "x":I
    .end local v10    # "condition":Ljava/lang/String;
    .end local v11    # "tokens":[Ljava/lang/String;
    .end local v12    # "mod":I
    .end local v13    # "inRange":Z
    .end local v14    # "integersOnly":Z
    .end local v15    # "lowBound":D
    .end local v17    # "highBound":D
    .end local v19    # "vals":[J
    .end local v20    # "or_together":[Ljava/lang/String;
    .end local v21    # "hackForCompatibility":Z
    .end local v32    # "i":I
    .end local v33    # "and_together":[Ljava/lang/String;
    .end local v34    # "j":I
    .end local v35    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .end local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    .local v1, "or_together":[Ljava/lang/String;
    .restart local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    .restart local v5    # "i":I
    .restart local v6    # "and_together":[Ljava/lang/String;
    .restart local v8    # "j":I
    :cond_2a2
    move-object/from16 v20, v1

    move-object/from16 v36, v4

    move/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v34, v8

    .line 1616
    .end local v1    # "or_together":[Ljava/lang/String;
    .end local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    .end local v5    # "i":I
    .end local v6    # "and_together":[Ljava/lang/String;
    .end local v8    # "j":I
    .restart local v20    # "or_together":[Ljava/lang/String;
    .restart local v32    # "i":I
    .restart local v33    # "and_together":[Ljava/lang/String;
    .restart local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    if-nez v36, :cond_2b1

    .line 1617
    move-object v0, v7

    move-object v4, v0

    .end local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    .local v0, "result":Landroid/icu/text/PluralRules$Constraint;
    goto :goto_2b9

    .line 1619
    .end local v0    # "result":Landroid/icu/text/PluralRules$Constraint;
    .restart local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    :cond_2b1
    new-instance v0, Landroid/icu/text/PluralRules$OrConstraint;

    move-object/from16 v1, v36

    .end local v36    # "result":Landroid/icu/text/PluralRules$Constraint;
    .local v1, "result":Landroid/icu/text/PluralRules$Constraint;
    invoke-direct {v0, v1, v7}, Landroid/icu/text/PluralRules$OrConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    move-object v4, v0

    .line 1479
    .end local v1    # "result":Landroid/icu/text/PluralRules$Constraint;
    .end local v7    # "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    .end local v33    # "and_together":[Ljava/lang/String;
    .restart local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    :goto_2b9
    add-int/lit8 v5, v32, 0x1

    const/4 v2, 0x0

    move-object/from16 v3, p0

    move-object/from16 v1, v20

    .end local v32    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_d

    .end local v20    # "or_together":[Ljava/lang/String;
    .local v1, "or_together":[Ljava/lang/String;
    :cond_2c2
    move-object/from16 v20, v1

    move-object v1, v4

    .line 1622
    .end local v4    # "result":Landroid/icu/text/PluralRules$Constraint;
    .end local v5    # "i":I
    .local v1, "result":Landroid/icu/text/PluralRules$Constraint;
    .restart local v20    # "or_together":[Ljava/lang/String;
    return-object v1
.end method

.method public static whitelist test-api parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .registers 2
    .param p0, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 396
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/PluralRules;->newInternal(Ljava/lang/String;Landroid/icu/impl/number/range/StandardPluralRanges;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;
    .registers 11
    .param p0, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1657
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 1658
    sget-object v0, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    return-object v0

    .line 1661
    :cond_9
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1663
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1664
    .local v0, "x":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_ef

    .line 1669
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1670
    .local v1, "keyword":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/text/PluralRules;->isValidKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 1675
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1676
    sget-object v3, Landroid/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v3

    .line 1677
    .local v3, "constraintOrSamples":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1678
    .local v4, "sampleFailure":Z
    const/4 v5, 0x0

    .local v5, "integerSamples":Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    const/4 v6, 0x0

    .line 1679
    .local v6, "decimalSamples":Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    array-length v7, v3

    const/4 v8, 0x1

    packed-switch v7, :pswitch_data_10e

    .line 1696
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many samples in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1689
    :pswitch_58
    aget-object v7, v3, v8

    invoke-static {v7}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    move-result-object v5

    .line 1690
    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-static {v7}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    move-result-object v6

    .line 1691
    iget-object v7, v5, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    sget-object v9, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    if-ne v7, v9, :cond_72

    iget-object v7, v6, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    sget-object v9, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    if-ne v7, v9, :cond_72

    goto :goto_9b

    .line 1692
    :cond_72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Must have @integer then @decimal in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1682
    :pswitch_8b
    aget-object v7, v3, v8

    invoke-static {v7}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    move-result-object v5

    .line 1683
    iget-object v7, v5, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    sget-object v9, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    if-ne v7, v9, :cond_9b

    .line 1684
    move-object v6, v5

    .line 1685
    const/4 v5, 0x0

    goto :goto_9b

    .line 1680
    :pswitch_9a
    nop

    .line 1698
    :cond_9b
    :goto_9b
    if-nez v4, :cond_c8

    .line 1703
    const-string v7, "other"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1704
    .local v7, "isOther":Z
    aget-object v9, v3, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_ac

    goto :goto_ad

    :cond_ac
    move v8, v2

    :goto_ad
    if-ne v7, v8, :cond_c0

    .line 1709
    if-eqz v7, :cond_b4

    .line 1710
    sget-object v2, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    .local v2, "constraint":Landroid/icu/text/PluralRules$Constraint;
    goto :goto_ba

    .line 1712
    .end local v2    # "constraint":Landroid/icu/text/PluralRules$Constraint;
    :cond_b4
    aget-object v2, v3, v2

    invoke-static {v2}, Landroid/icu/text/PluralRules;->parseConstraint(Ljava/lang/String;)Landroid/icu/text/PluralRules$Constraint;

    move-result-object v2

    .line 1714
    .restart local v2    # "constraint":Landroid/icu/text/PluralRules$Constraint;
    :goto_ba
    new-instance v8, Landroid/icu/text/PluralRules$Rule;

    invoke-direct {v8, v1, v2, v5, v6}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$DecimalQuantitySamples;Landroid/icu/text/PluralRules$DecimalQuantitySamples;)V

    return-object v8

    .line 1705
    .end local v2    # "constraint":Landroid/icu/text/PluralRules$Constraint;
    :cond_c0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v8, "The keyword \'other\' must have no constraints, just samples."

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1699
    .end local v7    # "isOther":Z
    :cond_c8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "Ill-formed samples\u2014\'@\' characters."

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1671
    .end local v3    # "constraintOrSamples":[Ljava/lang/String;
    .end local v4    # "sampleFailure":Z
    .end local v5    # "integerSamples":Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    .end local v6    # "decimalSamples":Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    :cond_d0
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyword \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1665
    .end local v1    # "keyword":Ljava/lang/String;
    :cond_ef
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing \':\' in rule description \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_8b
        :pswitch_58
    .end packed-switch
.end method

.method private static greylist-max-o parseRuleChain(Ljava/lang/String;)Landroid/icu/text/PluralRules$RuleList;
    .registers 9
    .param p0, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1725
    new-instance v0, Landroid/icu/text/PluralRules$RuleList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/PluralRules$RuleList;-><init>(Landroid/icu/text/PluralRules-IA;)V

    .line 1727
    .local v0, "result":Landroid/icu/text/PluralRules$RuleList;
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    .line 1728
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1730
    :cond_19
    sget-object v1, Landroid/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, "rules":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    array-length v5, v1

    if-ge v4, v5, :cond_4b

    .line 1732
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    move-result-object v5

    .line 1733
    .local v5, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-static {v0}, Landroid/icu/text/PluralRules$RuleList;->-$$Nest$fgethasExplicitBoundingInfo(Landroid/icu/text/PluralRules$RuleList;)Z

    move-result v6

    invoke-static {v5}, Landroid/icu/text/PluralRules$Rule;->-$$Nest$fgetintegerSamples(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    move-result-object v7

    if-nez v7, :cond_40

    invoke-static {v5}, Landroid/icu/text/PluralRules$Rule;->-$$Nest$fgetdecimalSamples(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    move-result-object v7

    if-eqz v7, :cond_3e

    goto :goto_40

    :cond_3e
    move v7, v3

    goto :goto_41

    :cond_40
    :goto_40
    move v7, v2

    :goto_41
    or-int/2addr v6, v7

    invoke-static {v0, v6}, Landroid/icu/text/PluralRules$RuleList;->-$$Nest$fputhasExplicitBoundingInfo(Landroid/icu/text/PluralRules$RuleList;Z)V

    .line 1734
    invoke-virtual {v0, v5}, Landroid/icu/text/PluralRules$RuleList;->addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;

    .line 1731
    .end local v5    # "rule":Landroid/icu/text/PluralRules$Rule;
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1736
    .end local v4    # "i":I
    :cond_4b
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$RuleList;->finish()Landroid/icu/text/PluralRules$RuleList;

    move-result-object v2

    return-object v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2774
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;
    .registers 5
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "context"    # Ljava/lang/String;

    .line 1636
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2769
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2778
    new-instance v0, Landroid/icu/text/PluralRulesSerialProxy;

    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/PluralRulesSerialProxy;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/icu/text/PluralRules;)I
    .registers 4
    .param p1, "other"    # Landroid/icu/text/PluralRules;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2788
    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .registers 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2815
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Landroid/icu/text/PluralRules;)Z
    .registers 4
    .param p1, "rhs"    # Landroid/icu/text/PluralRules;

    .line 2622
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 2612
    instance-of v0, p1, Landroid/icu/text/PluralRules;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/icu/text/PluralRules;

    invoke-virtual {p0, v0}, Landroid/icu/text/PluralRules;->equals(Landroid/icu/text/PluralRules;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist getAllKeywordDecimalQuantityValues(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2404
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;
    .registers 8
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2379
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->getAllKeywordDecimalQuantityValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 2380
    .local v0, "samples":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/impl/number/DecimalQuantity;>;"
    if-nez v0, :cond_8

    .line 2381
    const/4 v1, 0x0

    return-object v1

    .line 2383
    :cond_8
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2384
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/number/DecimalQuantity;

    .line 2385
    .local v3, "dq":Landroid/icu/impl/number/DecimalQuantity;
    invoke-interface {v3}, Landroid/icu/impl/number/DecimalQuantity;->toDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2386
    .end local v3    # "dq":Landroid/icu/impl/number/DecimalQuantity;
    goto :goto_11

    .line 2387
    :cond_29
    return-object v1
.end method

.method public greylist-max-o getAllKeywordValues(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .registers 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2422
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2423
    const/4 v0, 0x0

    return-object v0

    .line 2425
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->getDecimalQuantitySamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDecimalQuantitySamples(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2454
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules;->getDecimalQuantitySamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDecimalQuantitySamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .registers 9
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2502
    iget-object v0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2503
    return-object v1

    .line 2505
    :cond_a
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2507
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/number/DecimalQuantity;>;"
    iget-object v2, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-static {v2}, Landroid/icu/text/PluralRules$RuleList;->-$$Nest$fgethasExplicitBoundingInfo(Landroid/icu/text/PluralRules$RuleList;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2508
    iget-object v1, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    move-result-object v1

    .line 2509
    .local v1, "samples":Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    if-nez v1, :cond_24

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_2c

    .line 2510
    :cond_24
    invoke-virtual {v1, v0}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->addDecimalQuantitySamples(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 2509
    :goto_2c
    return-object v2

    .line 2514
    .end local v1    # "samples":Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    :cond_2d
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v2

    if-eqz v2, :cond_37

    const v2, 0x7fffffff

    goto :goto_39

    :cond_37
    const/16 v2, 0x14

    .line 2516
    .local v2, "maxCount":I
    :goto_39
    invoke-virtual {p2}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_90

    goto :goto_83

    .line 2526
    :pswitch_41
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_42
    const/16 v4, 0x7d0

    if-ge v3, v4, :cond_59

    .line 2527
    new-instance v4, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v4, v3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(I)V

    .line 2528
    .local v4, "nextSample":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->adjustMagnitude(I)V

    .line 2529
    invoke-direct {p0, p1, v4, v2, v0}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Landroid/icu/impl/number/DecimalQuantity;ILjava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 2530
    goto :goto_59

    .line 2526
    .end local v4    # "nextSample":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 2533
    .end local v3    # "i":I
    :cond_59
    :goto_59
    const-string v3, "1000000.0"

    invoke-static {v3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->fromExponentString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2, v0}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Landroid/icu/impl/number/DecimalQuantity;ILjava/util/Set;)Z

    goto :goto_83

    .line 2518
    :pswitch_63
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_64
    const/16 v4, 0xc8

    if-ge v3, v4, :cond_77

    .line 2519
    new-instance v4, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v4, v3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(I)V

    invoke-direct {p0, p1, v4, v2, v0}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Landroid/icu/impl/number/DecimalQuantity;ILjava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 2520
    goto :goto_77

    .line 2518
    :cond_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 2523
    .end local v3    # "i":I
    :cond_77
    :goto_77
    new-instance v3, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    const v4, 0xf4240

    invoke-direct {v3, v4}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(I)V

    invoke-direct {p0, p1, v3, v2, v0}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Landroid/icu/impl/number/DecimalQuantity;ILjava/util/Set;)Z

    .line 2524
    nop

    .line 2537
    :goto_83
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_8a

    goto :goto_8e

    :cond_8a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    :goto_8e
    return-object v1

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_63
        :pswitch_41
    .end packed-switch
.end method

.method public blacklist getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    .registers 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2567
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;)Landroid/icu/text/PluralRules$KeywordStatus;
    .registers 11
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;)",
            "Landroid/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .line 2681
    .local p3, "explicits":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/number/DecimalQuantity;>;"
    .local p4, "uniqueValue":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/number/DecimalQuantity;>;"
    sget-object v5, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "keyword":Ljava/lang/String;
    .end local p2    # "offset":I
    .end local p3    # "explicits":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/number/DecimalQuantity;>;"
    .end local p4    # "uniqueValue":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/number/DecimalQuantity;>;"
    .local v1, "keyword":Ljava/lang/String;
    .local v2, "offset":I
    .local v3, "explicits":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/number/DecimalQuantity;>;"
    .local v4, "uniqueValue":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/number/DecimalQuantity;>;"
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/PluralRules;->getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$KeywordStatus;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$KeywordStatus;
    .registers 15
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p5, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/impl/number/DecimalQuantity;",
            ">;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Landroid/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2704
    .local p3, "explicits":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/number/DecimalQuantity;>;"
    .local p4, "uniqueValue":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/impl/number/DecimalQuantity;>;"
    if-eqz p4, :cond_5

    .line 2705
    const/4 v0, 0x0

    iput-object v0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2708
    :cond_5
    iget-object v0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2709
    sget-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v0

    .line 2712
    :cond_10
    invoke-virtual {p0, p1, p5}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2713
    sget-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v0

    .line 2716
    :cond_19
    invoke-virtual {p0, p1, p5}, Landroid/icu/text/PluralRules;->getDecimalQuantitySamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object v0

    .line 2718
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/impl/number/DecimalQuantity;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 2720
    .local v1, "originalSize":I
    if-nez p3, :cond_27

    .line 2721
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    .line 2726
    :cond_27
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_42

    .line 2727
    if-ne v1, v3, :cond_3f

    .line 2728
    if-eqz p4, :cond_3c

    .line 2729
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2731
    :cond_3c
    sget-object v2, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v2

    .line 2733
    :cond_3f
    sget-object v2, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v2

    .line 2738
    :cond_42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2739
    .local v2, "subtractedSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/number/DecimalQuantity;>;"
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/number/DecimalQuantity;

    .line 2740
    .local v5, "explicit":Landroid/icu/impl/number/DecimalQuantity;
    invoke-interface {v5}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v6

    .line 2741
    .local v6, "explicitBd":Ljava/math/BigDecimal;
    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, p2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 2742
    .local v7, "valToRemoveBd":Ljava/math/BigDecimal;
    new-instance v8, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v8, v7}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/math/BigDecimal;)V

    .line 2743
    .local v8, "valToRemove":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2744
    .end local v5    # "explicit":Landroid/icu/impl/number/DecimalQuantity;
    .end local v6    # "explicitBd":Ljava/math/BigDecimal;
    .end local v7    # "valToRemoveBd":Ljava/math/BigDecimal;
    .end local v8    # "valToRemove":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    goto :goto_4b

    .line 2745
    :cond_6d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_76

    .line 2746
    sget-object v3, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v3

    .line 2749
    :cond_76
    if-eqz p4, :cond_88

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_88

    .line 2750
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2753
    :cond_88
    if-ne v1, v3, :cond_8d

    sget-object v3, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    goto :goto_8f

    :cond_8d
    sget-object v3, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    :goto_8f
    return-object v3
.end method

.method public whitelist test-api getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2334
    iget-object v0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    return-object v0
.end method

.method public greylist-max-o getRules(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2763
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$RuleList;->getRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSamples(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2438
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules;->getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .registers 9
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2474
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->getDecimalQuantitySamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object v0

    .line 2475
    .local v0, "samples":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/impl/number/DecimalQuantity;>;"
    if-nez v0, :cond_8

    .line 2476
    const/4 v1, 0x0

    return-object v1

    .line 2478
    :cond_8
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2479
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/number/DecimalQuantity;

    .line 2480
    .local v3, "dq":Landroid/icu/impl/number/DecimalQuantity;
    invoke-interface {v3}, Landroid/icu/impl/number/DecimalQuantity;->toDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2481
    .end local v3    # "dq":Landroid/icu/impl/number/DecimalQuantity;
    goto :goto_11

    .line 2482
    :cond_29
    return-object v1
.end method

.method public blacklist getUniqueKeywordDecimalQuantityValue(Ljava/lang/String;)Landroid/icu/impl/number/DecimalQuantity;
    .registers 5
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2363
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->getAllKeywordDecimalQuantityValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 2364
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/impl/number/DecimalQuantity;>;"
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 2365
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/number/DecimalQuantity;

    return-object v1

    .line 2367
    :cond_18
    sget-object v1, Landroid/icu/text/PluralRules;->NO_UNIQUE_VALUE_DECIMAL_QUANTITY:Landroid/icu/impl/number/DecimalQuantity;

    return-object v1
.end method

.method public whitelist test-api getUniqueKeywordValue(Ljava/lang/String;)D
    .registers 5
    .param p1, "keyword"    # Ljava/lang/String;

    .line 2345
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->getUniqueKeywordDecimalQuantityValue(Ljava/lang/String;)Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v0

    .line 2346
    .local v0, "uniqValDq":Landroid/icu/impl/number/DecimalQuantity;
    sget-object v1, Landroid/icu/text/PluralRules;->NO_UNIQUE_VALUE_DECIMAL_QUANTITY:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2347
    const-wide v1, -0x40abc5d8f366e181L    # -0.00123456777

    return-wide v1

    .line 2349
    :cond_12
    invoke-interface {v0}, Landroid/icu/impl/number/DecimalQuantity;->toDouble()D

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2229
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method greylist-max-o isLimited(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "keyword"    # Ljava/lang/String;

    .line 2795
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v0, p1, v1}, Landroid/icu/text/PluralRules$RuleList;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .registers 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2805
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o matches(Landroid/icu/text/PluralRules$FixedDecimal;Ljava/lang/String;)Z
    .registers 4
    .param p1, "sample"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2324
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$IFixedDecimal;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api select(D)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # D

    .line 2240
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v1, p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o select(DIJ)Ljava/lang/String;
    .registers 13
    .param p1, "number"    # D
    .param p3, "countVisibleFractionDigits"    # I
    .param p4, "fractionaldigits"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2296
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    .end local p1    # "number":D
    .end local p3    # "countVisibleFractionDigits":I
    .end local p4    # "fractionaldigits":J
    .local v2, "number":D
    .local v4, "countVisibleFractionDigits":I
    .local v5, "fractionaldigits":J
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api select(Landroid/icu/number/FormattedNumber;)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # Landroid/icu/number/FormattedNumber;

    .line 2255
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {p1}, Landroid/icu/number/FormattedNumber;->getFixedDecimal()Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api select(Landroid/icu/number/FormattedNumberRange;)Ljava/lang/String;
    .registers 6
    .param p1, "range"    # Landroid/icu/number/FormattedNumberRange;

    .line 2273
    iget-object v0, p0, Landroid/icu/text/PluralRules;->standardPluralRanges:Landroid/icu/impl/number/range/StandardPluralRanges;

    if-eqz v0, :cond_29

    .line 2276
    nop

    .line 2277
    invoke-virtual {p1}, Landroid/icu/number/FormattedNumberRange;->getFirstFixedDecimal()Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    .line 2276
    invoke-static {v0}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    .line 2278
    .local v0, "form1":Landroid/icu/impl/StandardPlural;
    nop

    .line 2279
    invoke-virtual {p1}, Landroid/icu/number/FormattedNumberRange;->getSecondFixedDecimal()Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v1

    .line 2278
    invoke-static {v1}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    .line 2280
    .local v1, "form2":Landroid/icu/impl/StandardPlural;
    iget-object v2, p0, Landroid/icu/text/PluralRules;->standardPluralRanges:Landroid/icu/impl/number/range/StandardPluralRanges;

    invoke-virtual {v2, v0, v1}, Landroid/icu/impl/number/range/StandardPluralRanges;->resolve(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v2

    .line 2281
    .local v2, "result":Landroid/icu/impl/StandardPlural;
    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2274
    .end local v0    # "form1":Landroid/icu/impl/StandardPlural;
    .end local v1    # "form2":Landroid/icu/impl/StandardPlural;
    .end local v2    # "result":Landroid/icu/impl/StandardPlural;
    :cond_29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Plural ranges are unavailable on this instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;
    .registers 3
    .param p1, "number"    # Landroid/icu/text/PluralRules$IFixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2310
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2604
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules$RuleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
