.class public Landroid/icu/text/PluralRules;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralRules$Factory;,
        Landroid/icu/text/PluralRules$PluralType;,
        Landroid/icu/text/PluralRules$Operand;,
        Landroid/icu/text/PluralRules$FixedDecimal;,
        Landroid/icu/text/PluralRules$SampleType;,
        Landroid/icu/text/PluralRules$FixedDecimalRange;,
        Landroid/icu/text/PluralRules$FixedDecimalSamples;,
        Landroid/icu/text/PluralRules$Constraint;,
        Landroid/icu/text/PluralRules$SimpleTokenizer;,
        Landroid/icu/text/PluralRules$RangeConstraint;,
        Landroid/icu/text/PluralRules$BinaryConstraint;,
        Landroid/icu/text/PluralRules$AndConstraint;,
        Landroid/icu/text/PluralRules$OrConstraint;,
        Landroid/icu/text/PluralRules$Rule;,
        Landroid/icu/text/PluralRules$RuleList;,
        Landroid/icu/text/PluralRules$StandardPluralCategories;,
        Landroid/icu/text/PluralRules$KeywordStatus;,
        Landroid/icu/text/PluralRules$1;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_text_PluralRules$SampleTypeSwitchesValues:[I = null

.field static final ALLOWED_ID:Landroid/icu/text/UnicodeSet;

.field static final AND_SEPARATED:Ljava/util/regex/Pattern;

.field static final AT_SEPARATED:Ljava/util/regex/Pattern;

.field public static final CATEGORY_SEPARATOR:Ljava/lang/String; = ";  "
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final COMMA_SEPARATED:Ljava/util/regex/Pattern;

.field public static final DEFAULT:Landroid/icu/text/PluralRules;

.field private static final DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

.field static final DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

.field public static final KEYWORD_FEW:Ljava/lang/String; = "few"

.field public static final KEYWORD_MANY:Ljava/lang/String; = "many"

.field public static final KEYWORD_ONE:Ljava/lang/String; = "one"

.field public static final KEYWORD_OTHER:Ljava/lang/String; = "other"

.field public static final KEYWORD_RULE_SEPARATOR:Ljava/lang/String; = ": "
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYWORD_TWO:Ljava/lang/String; = "two"

.field public static final KEYWORD_ZERO:Ljava/lang/String; = "zero"

.field private static final NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

.field public static final NO_UNIQUE_VALUE:D = -0.00123456777

.field static final OR_SEPARATED:Ljava/util/regex/Pattern;

.field static final SEMI_SEPARATED:Ljava/util/regex/Pattern;

.field static final TILDE_SEPARATED:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Landroid/icu/text/PluralRules$RuleList;


# direct methods
.method private static synthetic -getandroid_icu_text_PluralRules$SampleTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/PluralRules;->-android_icu_text_PluralRules$SampleTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/PluralRules;->-android_icu_text_PluralRules$SampleTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/PluralRules$SampleType;->values()[Landroid/icu/text/PluralRules$SampleType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Landroid/icu/text/PluralRules;->-android_icu_text_PluralRules$SampleTypeSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;
    .locals 1
    .param p0, "description"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/StringBuilder;DDZ)V
    .locals 1
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "lb"    # D
    .param p3, "ub"    # D
    .param p5, "addSeparator"    # Z

    #@0
    .prologue
    invoke-static/range {p0 .. p5}, Landroid/icu/text/PluralRules;->addRange(Ljava/lang/StringBuilder;DDZ)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 171
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@3
    const-string/jumbo v1, "[a-z]"

    #@6
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Landroid/icu/text/PluralRules;->ALLOWED_ID:Landroid/icu/text/UnicodeSet;

    #@f
    .line 354
    new-instance v0, Landroid/icu/text/PluralRules$1;

    #@11
    invoke-direct {v0}, Landroid/icu/text/PluralRules$1;-><init>()V

    #@14
    sput-object v0, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    #@16
    .line 373
    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    #@18
    const-string/jumbo v1, "other"

    #@1b
    sget-object v2, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    #@1d
    invoke-direct {v0, v1, v2, v3, v3}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    #@20
    sput-object v0, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    #@22
    .line 409
    new-instance v0, Landroid/icu/text/PluralRules;

    #@24
    new-instance v1, Landroid/icu/text/PluralRules$RuleList;

    #@26
    invoke-direct {v1, v3}, Landroid/icu/text/PluralRules$RuleList;-><init>(Landroid/icu/text/PluralRules$RuleList;)V

    #@29
    sget-object v2, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    #@2b
    invoke-virtual {v1, v2}, Landroid/icu/text/PluralRules$RuleList;->addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Landroid/icu/text/PluralRules;-><init>(Landroid/icu/text/PluralRules$RuleList;)V

    #@32
    sput-object v0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    #@34
    .line 1319
    const-string/jumbo v0, "\\s*\\Q\\E@\\s*"

    #@37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3a
    move-result-object v0

    #@3b
    sput-object v0, Landroid/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    #@3d
    .line 1320
    const-string/jumbo v0, "\\s*or\\s*"

    #@40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@43
    move-result-object v0

    #@44
    sput-object v0, Landroid/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    #@46
    .line 1321
    const-string/jumbo v0, "\\s*and\\s*"

    #@49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@4c
    move-result-object v0

    #@4d
    sput-object v0, Landroid/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    #@4f
    .line 1322
    const-string/jumbo v0, "\\s*,\\s*"

    #@52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@55
    move-result-object v0

    #@56
    sput-object v0, Landroid/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    #@58
    .line 1323
    const-string/jumbo v0, "\\s*\\Q..\\E\\s*"

    #@5b
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@5e
    move-result-object v0

    #@5f
    sput-object v0, Landroid/icu/text/PluralRules;->DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

    #@61
    .line 1324
    const-string/jumbo v0, "\\s*~\\s*"

    #@64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@67
    move-result-object v0

    #@68
    sput-object v0, Landroid/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    #@6a
    .line 1325
    const-string/jumbo v0, "\\s*;\\s*"

    #@6d
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@70
    move-result-object v0

    #@71
    sput-object v0, Landroid/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    #@73
    .line 169
    return-void
.end method

.method private constructor <init>(Landroid/icu/text/PluralRules$RuleList;)V
    .locals 1
    .param p1, "rules"    # Landroid/icu/text/PluralRules$RuleList;

    #@0
    .prologue
    .line 1973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1974
    iput-object p1, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@5
    .line 1975
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$RuleList;->getKeywords()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    #@f
    .line 1973
    return-void
.end method

.method private addConditional(Ljava/util/Set;Ljava/util/Set;D)Z
    .locals 3
    .param p3, "trial"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;D)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1854
    .local p1, "toAddTo":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    .local p2, "others":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/PluralRules$FixedDecimal;>;"
    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    #@2
    invoke-direct {v1, p3, p4}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    #@5
    .line 1855
    .local v1, "toAdd":Landroid/icu/text/PluralRules$FixedDecimal;
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 1859
    :cond_0
    const/4 v0, 0x0

    #@12
    .line 1861
    .local v0, "added":Z
    :goto_0
    return v0

    #@13
    .line 1856
    .end local v0    # "added":Z
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@16
    .line 1857
    const/4 v0, 0x1

    #@17
    .line 1855
    .restart local v0    # "added":Z
    goto :goto_0
.end method

.method private static addRange(Ljava/lang/StringBuilder;DDZ)V
    .locals 3
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "lb"    # D
    .param p3, "ub"    # D
    .param p5, "addSeparator"    # Z

    #@0
    .prologue
    .line 1524
    if-eqz p5, :cond_0

    #@2
    .line 1525
    const-string/jumbo v0, ","

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 1527
    :cond_0
    cmpl-double v0, p1, p3

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1528
    invoke-static {p1, p2}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 1523
    :goto_0
    return-void

    #@14
    .line 1530
    :cond_1
    invoke-static {p1, p2}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, ".."

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-static {p3, p4}, Landroid/icu/text/PluralRules;->format(D)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    goto :goto_0
.end method

.method public static createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .locals 2
    .param p0, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
    :try_start_0
    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 399
    :catch_0
    move-exception v0

    #@6
    .line 400
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@7
    return-object v1
.end method

.method public static forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1889
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@6
    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/PluralRulesLoader;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "type"    # Landroid/icu/text/PluralRules$PluralType;

    #@0
    .prologue
    .line 1934
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/PluralRulesLoader;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1912
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static forLocale(Ljava/util/Locale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "type"    # Landroid/icu/text/PluralRules$PluralType;

    #@0
    .prologue
    .line 1957
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static format(D)Ljava/lang/String;
    .locals 4
    .param p0, "lb"    # D

    #@0
    .prologue
    .line 1535
    double-to-long v0, p0

    #@1
    .line 1536
    .local v0, "lbi":J
    long-to-double v2, v0

    #@2
    cmpl-double v2, p0, v2

    #@4
    if-nez v2, :cond_0

    #@6
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    :goto_0
    return-object v2

    #@b
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    goto :goto_0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 2208
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/PluralRulesLoader;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "isAvailable"    # [Z

    #@0
    .prologue
    .line 2229
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/PluralRulesLoader;->getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static isValidKeyword(Ljava/lang/String;)Z
    .locals 1
    .param p0, "token"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1967
    sget-object v0, Landroid/icu/text/PluralRules;->ALLOWED_ID:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "tokens"    # [Ljava/lang/String;
    .param p1, "x"    # I
    .param p2, "context"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1339
    array-length v0, p0

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 1340
    aget-object v0, p0, p1

    #@5
    return-object v0

    #@6
    .line 1342
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "missing token at end of \'"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "\'"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    const/4 v2, -0x1

    #@24
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@27
    throw v0
.end method

.method private static parseConstraint(Ljava/lang/String;)Landroid/icu/text/PluralRules$Constraint;
    .locals 38
    .param p0, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1171
    const/16 v28, 0x0

    #@2
    .line 1172
    .local v28, "result":Landroid/icu/text/PluralRules$Constraint;
    sget-object v35, Landroid/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    #@4
    move-object/from16 v0, v35

    #@6
    move-object/from16 v1, p0

    #@8
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@b
    move-result-object v25

    #@c
    .line 1173
    .local v25, "or_together":[Ljava/lang/String;
    const/16 v22, 0x0

    #@e
    .end local v28    # "result":Landroid/icu/text/PluralRules$Constraint;
    .local v22, "i":I
    :goto_0
    move-object/from16 v0, v25

    #@10
    array-length v0, v0

    #@11
    move/from16 v35, v0

    #@13
    move/from16 v0, v22

    #@15
    move/from16 v1, v35

    #@17
    if-ge v0, v1, :cond_1f

    #@19
    .line 1174
    const/4 v4, 0x0

    #@1a
    .line 1175
    .local v4, "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    sget-object v35, Landroid/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    #@1c
    aget-object v36, v25, v22

    #@1e
    invoke-virtual/range {v35 .. v36}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@21
    move-result-object v16

    #@22
    .line 1176
    .local v16, "and_together":[Ljava/lang/String;
    const/16 v23, 0x0

    #@24
    .end local v4    # "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    .local v23, "j":I
    :goto_1
    move-object/from16 v0, v16

    #@26
    array-length v0, v0

    #@27
    move/from16 v35, v0

    #@29
    move/from16 v0, v23

    #@2b
    move/from16 v1, v35

    #@2d
    if-ge v0, v1, :cond_1d

    #@2f
    .line 1177
    sget-object v5, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    #@31
    .line 1179
    .local v5, "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    aget-object v35, v16, v23

    #@33
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@36
    move-result-object v17

    #@37
    .line 1180
    .local v17, "condition":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/icu/text/PluralRules$SimpleTokenizer;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3a
    move-result-object v31

    #@3b
    .line 1182
    .local v31, "tokens":[Ljava/lang/String;
    const/4 v6, 0x0

    #@3c
    .line 1183
    .local v6, "mod":I
    const/4 v7, 0x1

    #@3d
    .line 1184
    .local v7, "inRange":Z
    const/4 v9, 0x1

    #@3e
    .line 1185
    .local v9, "integersOnly":Z
    const-wide/high16 v10, 0x43e0000000000000L    # 9.223372036854776E18

    #@40
    .line 1186
    .local v10, "lowBound":D
    const-wide/high16 v12, -0x3c20000000000000L    # -9.223372036854776E18

    #@42
    .line 1187
    .local v12, "highBound":D
    const/4 v14, 0x0

    #@43
    .line 1189
    .local v14, "vals":[J
    const/16 v35, 0x0

    #@45
    .line 1190
    const/16 v33, 0x1

    #@47
    .local v33, "x":I
    aget-object v30, v31, v35

    #@49
    .line 1191
    .local v30, "t":Ljava/lang/String;
    const/16 v19, 0x0

    #@4b
    .line 1194
    .local v19, "hackForCompatibility":Z
    :try_start_0
    invoke-static/range {v30 .. v30}, Landroid/icu/text/PluralRules$FixedDecimal;->getOperand(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    move-result-object v8

    #@4f
    .line 1198
    .local v8, "operand":Landroid/icu/text/PluralRules$Operand;
    move-object/from16 v0, v31

    #@51
    array-length v0, v0

    #@52
    move/from16 v35, v0

    #@54
    move/from16 v0, v33

    #@56
    move/from16 v1, v35

    #@58
    if-ge v0, v1, :cond_19

    #@5a
    .line 1199
    add-int/lit8 v34, v33, 0x1

    #@5c
    .end local v33    # "x":I
    .local v34, "x":I
    aget-object v30, v31, v33

    #@5e
    .line 1200
    const-string/jumbo v35, "mod"

    #@61
    move-object/from16 v0, v35

    #@63
    move-object/from16 v1, v30

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v35

    #@69
    if-nez v35, :cond_0

    #@6b
    const-string/jumbo v35, "%"

    #@6e
    move-object/from16 v0, v35

    #@70
    move-object/from16 v1, v30

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v35

    #@76
    if-eqz v35, :cond_20

    #@78
    .line 1201
    :cond_0
    add-int/lit8 v33, v34, 0x1

    #@7a
    .end local v34    # "x":I
    .restart local v33    # "x":I
    aget-object v35, v31, v34

    #@7c
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7f
    move-result v6

    #@80
    .line 1202
    add-int/lit8 v34, v33, 0x1

    #@82
    .end local v33    # "x":I
    .restart local v34    # "x":I
    move-object/from16 v0, v31

    #@84
    move/from16 v1, v33

    #@86
    move-object/from16 v2, v17

    #@88
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@8b
    move-result-object v30

    #@8c
    move/from16 v33, v34

    #@8e
    .line 1204
    .end local v34    # "x":I
    .restart local v33    # "x":I
    :goto_2
    const-string/jumbo v35, "not"

    #@91
    move-object/from16 v0, v35

    #@93
    move-object/from16 v1, v30

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v35

    #@99
    if-eqz v35, :cond_2

    #@9b
    .line 1205
    if-eqz v7, :cond_1

    #@9d
    const/4 v7, 0x0

    #@9e
    .line 1206
    :goto_3
    add-int/lit8 v34, v33, 0x1

    #@a0
    .end local v33    # "x":I
    .restart local v34    # "x":I
    move-object/from16 v0, v31

    #@a2
    move/from16 v1, v33

    #@a4
    move-object/from16 v2, v17

    #@a6
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@a9
    move-result-object v30

    #@aa
    .line 1207
    const-string/jumbo v35, "="

    #@ad
    move-object/from16 v0, v35

    #@af
    move-object/from16 v1, v30

    #@b1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v35

    #@b5
    if-eqz v35, :cond_4

    #@b7
    .line 1208
    move-object/from16 v0, v30

    #@b9
    move-object/from16 v1, v17

    #@bb
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@be
    move-result-object v35

    #@bf
    throw v35

    #@c0
    .line 1195
    .end local v8    # "operand":Landroid/icu/text/PluralRules$Operand;
    .end local v34    # "x":I
    .restart local v33    # "x":I
    :catch_0
    move-exception v18

    #@c1
    .line 1196
    .local v18, "e":Ljava/lang/Exception;
    move-object/from16 v0, v30

    #@c3
    move-object/from16 v1, v17

    #@c5
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@c8
    move-result-object v35

    #@c9
    throw v35

    #@ca
    .line 1205
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v8    # "operand":Landroid/icu/text/PluralRules$Operand;
    :cond_1
    const/4 v7, 0x1

    #@cb
    goto :goto_3

    #@cc
    .line 1210
    :cond_2
    const-string/jumbo v35, "!"

    #@cf
    move-object/from16 v0, v35

    #@d1
    move-object/from16 v1, v30

    #@d3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result v35

    #@d7
    if-eqz v35, :cond_5

    #@d9
    .line 1211
    if-eqz v7, :cond_3

    #@db
    const/4 v7, 0x0

    #@dc
    .line 1212
    :goto_4
    add-int/lit8 v34, v33, 0x1

    #@de
    .end local v33    # "x":I
    .restart local v34    # "x":I
    move-object/from16 v0, v31

    #@e0
    move/from16 v1, v33

    #@e2
    move-object/from16 v2, v17

    #@e4
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@e7
    move-result-object v30

    #@e8
    .line 1213
    const-string/jumbo v35, "="

    #@eb
    move-object/from16 v0, v35

    #@ed
    move-object/from16 v1, v30

    #@ef
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f2
    move-result v35

    #@f3
    if-nez v35, :cond_4

    #@f5
    .line 1214
    move-object/from16 v0, v30

    #@f7
    move-object/from16 v1, v17

    #@f9
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@fc
    move-result-object v35

    #@fd
    throw v35

    #@fe
    .line 1211
    .end local v34    # "x":I
    .restart local v33    # "x":I
    :cond_3
    const/4 v7, 0x1

    #@ff
    goto :goto_4

    #@100
    .end local v33    # "x":I
    .restart local v34    # "x":I
    :cond_4
    move/from16 v33, v34

    #@102
    .line 1217
    .end local v34    # "x":I
    .restart local v33    # "x":I
    :cond_5
    const-string/jumbo v35, "is"

    #@105
    move-object/from16 v0, v35

    #@107
    move-object/from16 v1, v30

    #@109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10c
    move-result v35

    #@10d
    if-nez v35, :cond_6

    #@10f
    const-string/jumbo v35, "in"

    #@112
    move-object/from16 v0, v35

    #@114
    move-object/from16 v1, v30

    #@116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@119
    move-result v35

    #@11a
    if-nez v35, :cond_6

    #@11c
    const-string/jumbo v35, "="

    #@11f
    move-object/from16 v0, v35

    #@121
    move-object/from16 v1, v30

    #@123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@126
    move-result v35

    #@127
    if-eqz v35, :cond_b

    #@129
    .line 1218
    :cond_6
    const-string/jumbo v35, "is"

    #@12c
    move-object/from16 v0, v35

    #@12e
    move-object/from16 v1, v30

    #@130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@133
    move-result v19

    #@134
    .line 1219
    .local v19, "hackForCompatibility":Z
    if-eqz v19, :cond_7

    #@136
    if-eqz v7, :cond_a

    #@138
    .line 1222
    :cond_7
    add-int/lit8 v34, v33, 0x1

    #@13a
    .end local v33    # "x":I
    .restart local v34    # "x":I
    move-object/from16 v0, v31

    #@13c
    move/from16 v1, v33

    #@13e
    move-object/from16 v2, v17

    #@140
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@143
    move-result-object v30

    #@144
    move/from16 v33, v34

    #@146
    .line 1229
    .end local v19    # "hackForCompatibility":Z
    .end local v34    # "x":I
    .restart local v33    # "x":I
    :goto_5
    const-string/jumbo v35, "not"

    #@149
    move-object/from16 v0, v35

    #@14b
    move-object/from16 v1, v30

    #@14d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@150
    move-result v35

    #@151
    if-eqz v35, :cond_9

    #@153
    .line 1230
    if-nez v19, :cond_8

    #@155
    if-eqz v7, :cond_d

    #@157
    .line 1233
    :cond_8
    if-eqz v7, :cond_e

    #@159
    const/4 v7, 0x0

    #@15a
    .line 1234
    :goto_6
    add-int/lit8 v34, v33, 0x1

    #@15c
    .end local v33    # "x":I
    .restart local v34    # "x":I
    move-object/from16 v0, v31

    #@15e
    move/from16 v1, v33

    #@160
    move-object/from16 v2, v17

    #@162
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@165
    move-result-object v30

    #@166
    move/from16 v33, v34

    #@168
    .line 1237
    .end local v34    # "x":I
    .restart local v33    # "x":I
    :cond_9
    new-instance v32, Ljava/util/ArrayList;

    #@16a
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    #@16d
    .line 1241
    .local v32, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_7
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@170
    move-result-wide v26

    #@171
    .line 1242
    .local v26, "low":J
    move-wide/from16 v20, v26

    #@173
    .line 1243
    .local v20, "high":J
    move-object/from16 v0, v31

    #@175
    array-length v0, v0

    #@176
    move/from16 v35, v0

    #@178
    move/from16 v0, v33

    #@17a
    move/from16 v1, v35

    #@17c
    if-ge v0, v1, :cond_11

    #@17e
    .line 1244
    add-int/lit8 v34, v33, 0x1

    #@180
    .end local v33    # "x":I
    .restart local v34    # "x":I
    move-object/from16 v0, v31

    #@182
    move/from16 v1, v33

    #@184
    move-object/from16 v2, v17

    #@186
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@189
    move-result-object v30

    #@18a
    .line 1245
    const-string/jumbo v35, "."

    #@18d
    move-object/from16 v0, v30

    #@18f
    move-object/from16 v1, v35

    #@191
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@194
    move-result v35

    #@195
    if-eqz v35, :cond_10

    #@197
    .line 1246
    add-int/lit8 v33, v34, 0x1

    #@199
    .end local v34    # "x":I
    .restart local v33    # "x":I
    move-object/from16 v0, v31

    #@19b
    move/from16 v1, v34

    #@19d
    move-object/from16 v2, v17

    #@19f
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@1a2
    move-result-object v30

    #@1a3
    .line 1247
    const-string/jumbo v35, "."

    #@1a6
    move-object/from16 v0, v30

    #@1a8
    move-object/from16 v1, v35

    #@1aa
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ad
    move-result v35

    #@1ae
    if-nez v35, :cond_f

    #@1b0
    .line 1248
    move-object/from16 v0, v30

    #@1b2
    move-object/from16 v1, v17

    #@1b4
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@1b7
    move-result-object v35

    #@1b8
    throw v35

    #@1b9
    .line 1220
    .end local v20    # "high":J
    .end local v26    # "low":J
    .end local v32    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v19    # "hackForCompatibility":Z
    :cond_a
    move-object/from16 v0, v30

    #@1bb
    move-object/from16 v1, v17

    #@1bd
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@1c0
    move-result-object v35

    #@1c1
    throw v35

    #@1c2
    .line 1223
    .local v19, "hackForCompatibility":Z
    :cond_b
    const-string/jumbo v35, "within"

    #@1c5
    move-object/from16 v0, v35

    #@1c7
    move-object/from16 v1, v30

    #@1c9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1cc
    move-result v35

    #@1cd
    if-eqz v35, :cond_c

    #@1cf
    .line 1224
    const/4 v9, 0x0

    #@1d0
    .line 1225
    add-int/lit8 v34, v33, 0x1

    #@1d2
    .end local v33    # "x":I
    .restart local v34    # "x":I
    move-object/from16 v0, v31

    #@1d4
    move/from16 v1, v33

    #@1d6
    move-object/from16 v2, v17

    #@1d8
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@1db
    move-result-object v30

    #@1dc
    move/from16 v33, v34

    #@1de
    .end local v34    # "x":I
    .restart local v33    # "x":I
    goto/16 :goto_5

    #@1e0
    .line 1227
    :cond_c
    move-object/from16 v0, v30

    #@1e2
    move-object/from16 v1, v17

    #@1e4
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@1e7
    move-result-object v35

    #@1e8
    throw v35

    #@1e9
    .line 1231
    .end local v19    # "hackForCompatibility":Z
    :cond_d
    move-object/from16 v0, v30

    #@1eb
    move-object/from16 v1, v17

    #@1ed
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@1f0
    move-result-object v35

    #@1f1
    throw v35

    #@1f2
    .line 1233
    :cond_e
    const/4 v7, 0x1

    #@1f3
    goto/16 :goto_6

    #@1f5
    .line 1250
    .restart local v20    # "high":J
    .restart local v26    # "low":J
    .restart local v32    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_f
    add-int/lit8 v34, v33, 0x1

    #@1f7
    .end local v33    # "x":I
    .restart local v34    # "x":I
    move-object/from16 v0, v31

    #@1f9
    move/from16 v1, v33

    #@1fb
    move-object/from16 v2, v17

    #@1fd
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@200
    move-result-object v30

    #@201
    .line 1251
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@204
    move-result-wide v20

    #@205
    .line 1252
    move-object/from16 v0, v31

    #@207
    array-length v0, v0

    #@208
    move/from16 v35, v0

    #@20a
    move/from16 v0, v34

    #@20c
    move/from16 v1, v35

    #@20e
    if-ge v0, v1, :cond_12

    #@210
    .line 1253
    add-int/lit8 v33, v34, 0x1

    #@212
    .end local v34    # "x":I
    .restart local v33    # "x":I
    move-object/from16 v0, v31

    #@214
    move/from16 v1, v34

    #@216
    move-object/from16 v2, v17

    #@218
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@21b
    move-result-object v30

    #@21c
    .line 1254
    const-string/jumbo v35, ","

    #@21f
    move-object/from16 v0, v30

    #@221
    move-object/from16 v1, v35

    #@223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@226
    move-result v35

    #@227
    if-nez v35, :cond_11

    #@229
    .line 1256
    move-object/from16 v0, v30

    #@22b
    move-object/from16 v1, v17

    #@22d
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@230
    move-result-object v35

    #@231
    throw v35

    #@232
    .line 1259
    .end local v33    # "x":I
    .restart local v34    # "x":I
    :cond_10
    const-string/jumbo v35, ","

    #@235
    move-object/from16 v0, v30

    #@237
    move-object/from16 v1, v35

    #@239
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23c
    move-result v35

    #@23d
    if-nez v35, :cond_12

    #@23f
    .line 1261
    move-object/from16 v0, v30

    #@241
    move-object/from16 v1, v17

    #@243
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@246
    move-result-object v35

    #@247
    throw v35

    #@248
    .end local v34    # "x":I
    .restart local v33    # "x":I
    :cond_11
    move/from16 v34, v33

    #@24a
    .line 1265
    .end local v33    # "x":I
    .restart local v34    # "x":I
    :cond_12
    cmp-long v35, v26, v20

    #@24c
    if-lez v35, :cond_13

    #@24e
    .line 1266
    new-instance v35, Ljava/lang/StringBuilder;

    #@250
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@253
    move-object/from16 v0, v35

    #@255
    move-wide/from16 v1, v26

    #@257
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v35

    #@25b
    const-string/jumbo v36, "~"

    #@25e
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v35

    #@262
    move-object/from16 v0, v35

    #@264
    move-wide/from16 v1, v20

    #@266
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@269
    move-result-object v35

    #@26a
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26d
    move-result-object v35

    #@26e
    move-object/from16 v0, v35

    #@270
    move-object/from16 v1, v17

    #@272
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@275
    move-result-object v35

    #@276
    throw v35

    #@277
    .line 1267
    :cond_13
    if-eqz v6, :cond_14

    #@279
    int-to-long v0, v6

    #@27a
    move-wide/from16 v36, v0

    #@27c
    cmp-long v35, v20, v36

    #@27e
    if-ltz v35, :cond_14

    #@280
    .line 1268
    new-instance v35, Ljava/lang/StringBuilder;

    #@282
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@285
    move-object/from16 v0, v35

    #@287
    move-wide/from16 v1, v20

    #@289
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v35

    #@28d
    const-string/jumbo v36, ">mod="

    #@290
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@293
    move-result-object v35

    #@294
    move-object/from16 v0, v35

    #@296
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@299
    move-result-object v35

    #@29a
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29d
    move-result-object v35

    #@29e
    move-object/from16 v0, v35

    #@2a0
    move-object/from16 v1, v17

    #@2a2
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@2a5
    move-result-object v35

    #@2a6
    throw v35

    #@2a7
    .line 1270
    :cond_14
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2aa
    move-result-object v35

    #@2ab
    move-object/from16 v0, v32

    #@2ad
    move-object/from16 v1, v35

    #@2af
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b2
    .line 1271
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2b5
    move-result-object v35

    #@2b6
    move-object/from16 v0, v32

    #@2b8
    move-object/from16 v1, v35

    #@2ba
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2bd
    .line 1272
    move-wide/from16 v0, v26

    #@2bf
    long-to-double v0, v0

    #@2c0
    move-wide/from16 v36, v0

    #@2c2
    move-wide/from16 v0, v36

    #@2c4
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(DD)D

    #@2c7
    move-result-wide v10

    #@2c8
    .line 1273
    move-wide/from16 v0, v20

    #@2ca
    long-to-double v0, v0

    #@2cb
    move-wide/from16 v36, v0

    #@2cd
    move-wide/from16 v0, v36

    #@2cf
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    #@2d2
    move-result-wide v12

    #@2d3
    .line 1274
    move-object/from16 v0, v31

    #@2d5
    array-length v0, v0

    #@2d6
    move/from16 v35, v0

    #@2d8
    move/from16 v0, v34

    #@2da
    move/from16 v1, v35

    #@2dc
    if-lt v0, v1, :cond_15

    #@2de
    .line 1280
    const-string/jumbo v35, ","

    #@2e1
    move-object/from16 v0, v30

    #@2e3
    move-object/from16 v1, v35

    #@2e5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e8
    move-result v35

    #@2e9
    if-eqz v35, :cond_16

    #@2eb
    .line 1281
    move-object/from16 v0, v30

    #@2ed
    move-object/from16 v1, v17

    #@2ef
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@2f2
    move-result-object v35

    #@2f3
    throw v35

    #@2f4
    .line 1277
    :cond_15
    add-int/lit8 v33, v34, 0x1

    #@2f6
    .end local v34    # "x":I
    .restart local v33    # "x":I
    move-object/from16 v0, v31

    #@2f8
    move/from16 v1, v34

    #@2fa
    move-object/from16 v2, v17

    #@2fc
    invoke-static {v0, v1, v2}, Landroid/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    #@2ff
    move-result-object v30

    #@300
    goto/16 :goto_7

    #@302
    .line 1284
    .end local v33    # "x":I
    .restart local v34    # "x":I
    :cond_16
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    #@305
    move-result v35

    #@306
    const/16 v36, 0x2

    #@308
    move/from16 v0, v35

    #@30a
    move/from16 v1, v36

    #@30c
    if-ne v0, v1, :cond_1a

    #@30e
    .line 1285
    const/4 v14, 0x0

    #@30f
    .line 1294
    .end local v14    # "vals":[J
    :cond_17
    cmpl-double v35, v10, v12

    #@311
    if-eqz v35, :cond_18

    #@313
    if-eqz v19, :cond_18

    #@315
    if-eqz v7, :cond_1b

    #@317
    .line 1299
    :cond_18
    new-instance v5, Landroid/icu/text/PluralRules$RangeConstraint;

    #@319
    .end local v5    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    invoke-direct/range {v5 .. v14}, Landroid/icu/text/PluralRules$RangeConstraint;-><init>(IZLandroid/icu/text/PluralRules$Operand;ZDD[J)V

    #@31c
    .restart local v5    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    move/from16 v33, v34

    #@31e
    .line 1302
    .end local v20    # "high":J
    .end local v26    # "low":J
    .end local v32    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v34    # "x":I
    .restart local v33    # "x":I
    :cond_19
    if-nez v4, :cond_1c

    #@320
    .line 1303
    move-object v4, v5

    #@321
    .line 1176
    .local v4, "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    :goto_8
    add-int/lit8 v23, v23, 0x1

    #@323
    goto/16 :goto_1

    #@325
    .line 1287
    .end local v4    # "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    .end local v33    # "x":I
    .restart local v14    # "vals":[J
    .restart local v20    # "high":J
    .restart local v26    # "low":J
    .restart local v32    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v34    # "x":I
    :cond_1a
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    #@328
    move-result v35

    #@329
    move/from16 v0, v35

    #@32b
    new-array v14, v0, [J

    #@32d
    .line 1288
    .local v14, "vals":[J
    const/16 v24, 0x0

    #@32f
    .local v24, "k":I
    :goto_9
    array-length v0, v14

    #@330
    move/from16 v35, v0

    #@332
    move/from16 v0, v24

    #@334
    move/from16 v1, v35

    #@336
    if-ge v0, v1, :cond_17

    #@338
    .line 1289
    move-object/from16 v0, v32

    #@33a
    move/from16 v1, v24

    #@33c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@33f
    move-result-object v35

    #@340
    check-cast v35, Ljava/lang/Long;

    #@342
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    #@345
    move-result-wide v36

    #@346
    aput-wide v36, v14, v24

    #@348
    .line 1288
    add-int/lit8 v24, v24, 0x1

    #@34a
    goto :goto_9

    #@34b
    .line 1295
    .end local v14    # "vals":[J
    .end local v24    # "k":I
    :cond_1b
    const-string/jumbo v35, "is not <range>"

    #@34e
    move-object/from16 v0, v35

    #@350
    move-object/from16 v1, v17

    #@352
    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    #@355
    move-result-object v35

    #@356
    throw v35

    #@357
    .line 1305
    .end local v20    # "high":J
    .end local v26    # "low":J
    .end local v32    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v34    # "x":I
    .restart local v33    # "x":I
    :cond_1c
    new-instance v15, Landroid/icu/text/PluralRules$AndConstraint;

    #@359
    invoke-direct {v15, v4, v5}, Landroid/icu/text/PluralRules$AndConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    #@35c
    .local v15, "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    move-object v4, v15

    #@35d
    .end local v15    # "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    .restart local v4    # "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    goto :goto_8

    #@35e
    .line 1310
    .end local v4    # "andConstraint":Landroid/icu/text/PluralRules$Constraint;
    .end local v5    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .end local v6    # "mod":I
    .end local v7    # "inRange":Z
    .end local v8    # "operand":Landroid/icu/text/PluralRules$Operand;
    .end local v9    # "integersOnly":Z
    .end local v10    # "lowBound":D
    .end local v12    # "highBound":D
    .end local v17    # "condition":Ljava/lang/String;
    .end local v30    # "t":Ljava/lang/String;
    .end local v31    # "tokens":[Ljava/lang/String;
    .end local v33    # "x":I
    :cond_1d
    if-nez v28, :cond_1e

    #@360
    .line 1311
    move-object/from16 v28, v4

    #@362
    .line 1173
    .local v28, "result":Landroid/icu/text/PluralRules$Constraint;
    :goto_a
    add-int/lit8 v22, v22, 0x1

    #@364
    goto/16 :goto_0

    #@366
    .line 1313
    .end local v28    # "result":Landroid/icu/text/PluralRules$Constraint;
    :cond_1e
    new-instance v29, Landroid/icu/text/PluralRules$OrConstraint;

    #@368
    move-object/from16 v0, v29

    #@36a
    move-object/from16 v1, v28

    #@36c
    invoke-direct {v0, v1, v4}, Landroid/icu/text/PluralRules$OrConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    #@36f
    .local v29, "result":Landroid/icu/text/PluralRules$Constraint;
    move-object/from16 v28, v29

    #@371
    .end local v29    # "result":Landroid/icu/text/PluralRules$Constraint;
    .restart local v28    # "result":Landroid/icu/text/PluralRules$Constraint;
    goto :goto_a

    #@372
    .line 1316
    .end local v16    # "and_together":[Ljava/lang/String;
    .end local v23    # "j":I
    .end local v28    # "result":Landroid/icu/text/PluralRules$Constraint;
    :cond_1f
    return-object v28

    #@373
    .restart local v5    # "newConstraint":Landroid/icu/text/PluralRules$Constraint;
    .restart local v6    # "mod":I
    .restart local v7    # "inRange":Z
    .restart local v8    # "operand":Landroid/icu/text/PluralRules$Operand;
    .restart local v9    # "integersOnly":Z
    .restart local v10    # "lowBound":D
    .restart local v12    # "highBound":D
    .local v14, "vals":[J
    .restart local v16    # "and_together":[Ljava/lang/String;
    .restart local v17    # "condition":Ljava/lang/String;
    .restart local v19    # "hackForCompatibility":Z
    .restart local v23    # "j":I
    .restart local v30    # "t":Ljava/lang/String;
    .restart local v31    # "tokens":[Ljava/lang/String;
    .restart local v34    # "x":I
    :cond_20
    move/from16 v33, v34

    #@375
    .end local v34    # "x":I
    .restart local v33    # "x":I
    goto/16 :goto_2
.end method

.method public static parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .locals 2
    .param p0, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    .line 386
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    sget-object v0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    #@c
    :goto_0
    return-object v0

    #@d
    :cond_0
    new-instance v0, Landroid/icu/text/PluralRules;

    #@f
    invoke-static {p0}, Landroid/icu/text/PluralRules;->parseRuleChain(Ljava/lang/String;)Landroid/icu/text/PluralRules$RuleList;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Landroid/icu/text/PluralRules;-><init>(Landroid/icu/text/PluralRules$RuleList;)V

    #@16
    goto :goto_0
.end method

.method private static parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;
    .locals 12
    .param p0, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1351
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v10

    #@6
    if-nez v10, :cond_0

    #@8
    .line 1352
    sget-object v8, Landroid/icu/text/PluralRules;->DEFAULT_RULE:Landroid/icu/text/PluralRules$Rule;

    #@a
    return-object v8

    #@b
    .line 1355
    :cond_0
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@d
    invoke-virtual {p0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@10
    move-result-object p0

    #@11
    .line 1357
    const/16 v10, 0x3a

    #@13
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v7

    #@17
    .line 1358
    .local v7, "x":I
    const/4 v10, -0x1

    #@18
    if-ne v7, v10, :cond_1

    #@1a
    .line 1359
    new-instance v8, Ljava/text/ParseException;

    #@1c
    new-instance v10, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v11, "missing \':\' in rule description \'"

    #@24
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v10

    #@28
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v10

    #@2c
    .line 1360
    const-string/jumbo v11, "\'"

    #@2f
    .line 1359
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v10

    #@33
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v10

    #@37
    invoke-direct {v8, v10, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@3a
    throw v8

    #@3b
    .line 1363
    :cond_1
    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v10

    #@3f
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 1364
    .local v5, "keyword":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/text/PluralRules;->isValidKeyword(Ljava/lang/String;)Z

    #@46
    move-result v10

    #@47
    if-nez v10, :cond_2

    #@49
    .line 1365
    new-instance v8, Ljava/text/ParseException;

    #@4b
    new-instance v10, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v11, "keyword \'"

    #@53
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v10

    #@5b
    .line 1366
    const-string/jumbo v11, " is not valid"

    #@5e
    .line 1365
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v10

    #@62
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v10

    #@66
    invoke-direct {v8, v10, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@69
    throw v8

    #@6a
    .line 1369
    :cond_2
    add-int/lit8 v10, v7, 0x1

    #@6c
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6f
    move-result-object v10

    #@70
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@73
    move-result-object p0

    #@74
    .line 1370
    sget-object v10, Landroid/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    #@76
    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    .line 1371
    .local v1, "constraintOrSamples":[Ljava/lang/String;
    const/4 v6, 0x0

    #@7b
    .line 1372
    .local v6, "sampleFailure":Z
    const/4 v3, 0x0

    #@7c
    .local v3, "integerSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    const/4 v2, 0x0

    #@7d
    .line 1373
    .local v2, "decimalSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    array-length v10, v1

    #@7e
    packed-switch v10, :pswitch_data_0

    #@81
    .line 1390
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@83
    new-instance v9, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v10, "Too many samples in "

    #@8b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v9

    #@93
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v9

    #@97
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v8

    #@9b
    .line 1376
    :pswitch_0
    aget-object v10, v1, v8

    #@9d
    invoke-static {v10}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@a0
    move-result-object v3

    #@a1
    .line 1377
    .local v3, "integerSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    iget-object v10, v3, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    #@a3
    sget-object v11, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    #@a5
    if-ne v10, v11, :cond_3

    #@a7
    .line 1378
    move-object v2, v3

    #@a8
    .line 1379
    .local v2, "decimalSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    const/4 v3, 0x0

    #@a9
    .line 1392
    .end local v2    # "decimalSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .end local v3    # "integerSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    :cond_3
    :pswitch_1
    if-eqz v6, :cond_5

    #@ab
    .line 1393
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@ad
    const-string/jumbo v9, "Ill-formed samples\u2014\'@\' characters."

    #@b0
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v8

    #@b4
    .line 1383
    .local v2, "decimalSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .local v3, "integerSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    :pswitch_2
    aget-object v10, v1, v8

    #@b6
    invoke-static {v10}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@b9
    move-result-object v3

    #@ba
    .line 1384
    .local v3, "integerSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    const/4 v10, 0x2

    #@bb
    aget-object v10, v1, v10

    #@bd
    invoke-static {v10}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@c0
    move-result-object v2

    #@c1
    .line 1385
    .local v2, "decimalSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    iget-object v10, v3, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    #@c3
    sget-object v11, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@c5
    if-ne v10, v11, :cond_4

    #@c7
    iget-object v10, v2, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    #@c9
    sget-object v11, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    #@cb
    if-eq v10, v11, :cond_3

    #@cd
    .line 1386
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@cf
    new-instance v9, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v10, "Must have @integer then @decimal in "

    #@d7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v9

    #@db
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v9

    #@df
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v9

    #@e3
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e6
    throw v8

    #@e7
    .line 1397
    .end local v2    # "decimalSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .end local v3    # "integerSamples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    :cond_5
    const-string/jumbo v10, "other"

    #@ea
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result v4

    #@ee
    .line 1398
    .local v4, "isOther":Z
    aget-object v10, v1, v9

    #@f0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@f3
    move-result v10

    #@f4
    if-nez v10, :cond_6

    #@f6
    :goto_0
    if-eq v4, v8, :cond_7

    #@f8
    .line 1399
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@fa
    const-string/jumbo v9, "The keyword \'other\' must have no constraints, just samples."

    #@fd
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@100
    throw v8

    #@101
    :cond_6
    move v8, v9

    #@102
    .line 1398
    goto :goto_0

    #@103
    .line 1403
    :cond_7
    if-eqz v4, :cond_8

    #@105
    .line 1404
    sget-object v0, Landroid/icu/text/PluralRules;->NO_CONSTRAINT:Landroid/icu/text/PluralRules$Constraint;

    #@107
    .line 1408
    .local v0, "constraint":Landroid/icu/text/PluralRules$Constraint;
    :goto_1
    new-instance v8, Landroid/icu/text/PluralRules$Rule;

    #@109
    invoke-direct {v8, v5, v0, v3, v2}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    #@10c
    return-object v8

    #@10d
    .line 1406
    .end local v0    # "constraint":Landroid/icu/text/PluralRules$Constraint;
    :cond_8
    aget-object v8, v1, v9

    #@10f
    invoke-static {v8}, Landroid/icu/text/PluralRules;->parseConstraint(Ljava/lang/String;)Landroid/icu/text/PluralRules$Constraint;

    #@112
    move-result-object v0

    #@113
    .restart local v0    # "constraint":Landroid/icu/text/PluralRules$Constraint;
    goto :goto_1

    #@114
    .line 1373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static parseRuleChain(Ljava/lang/String;)Landroid/icu/text/PluralRules$RuleList;
    .locals 8
    .param p0, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 1419
    new-instance v1, Landroid/icu/text/PluralRules$RuleList;

    #@5
    invoke-direct {v1, v4}, Landroid/icu/text/PluralRules$RuleList;-><init>(Landroid/icu/text/PluralRules$RuleList;)V

    #@8
    .line 1421
    .local v1, "result":Landroid/icu/text/PluralRules$RuleList;
    const-string/jumbo v4, ";"

    #@b
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 1422
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v4

    #@15
    add-int/lit8 v4, v4, -0x1

    #@17
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    .line 1424
    :cond_0
    sget-object v4, Landroid/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    #@1d
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 1425
    .local v3, "rules":[Ljava/lang/String;
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@23
    if-ge v0, v4, :cond_3

    #@25
    .line 1426
    aget-object v4, v3, v0

    #@27
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v4}, Landroid/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    #@2e
    move-result-object v2

    #@2f
    .line 1427
    .local v2, "rule":Landroid/icu/text/PluralRules$Rule;
    invoke-static {v1}, Landroid/icu/text/PluralRules$RuleList;->-get0(Landroid/icu/text/PluralRules$RuleList;)Z

    #@32
    move-result v7

    #@33
    invoke-static {v2}, Landroid/icu/text/PluralRules$Rule;->-get1(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@36
    move-result-object v4

    #@37
    if-nez v4, :cond_1

    #@39
    invoke-static {v2}, Landroid/icu/text/PluralRules$Rule;->-get0(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@3c
    move-result-object v4

    #@3d
    if-eqz v4, :cond_2

    #@3f
    :cond_1
    move v4, v5

    #@40
    :goto_1
    or-int/2addr v4, v7

    #@41
    invoke-static {v1, v4}, Landroid/icu/text/PluralRules$RuleList;->-set0(Landroid/icu/text/PluralRules$RuleList;Z)Z

    #@44
    .line 1428
    invoke-virtual {v1, v2}, Landroid/icu/text/PluralRules$RuleList;->addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;

    #@47
    .line 1425
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_0

    #@4a
    :cond_2
    move v4, v6

    #@4b
    .line 1427
    goto :goto_1

    #@4c
    .line 1430
    .end local v2    # "rule":Landroid/icu/text/PluralRules$Rule;
    :cond_3
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$RuleList;->finish()Landroid/icu/text/PluralRules$RuleList;

    #@4f
    move-result-object v4

    #@50
    return-object v4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2410
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method

.method private static unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "context"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1330
    new-instance v0, Ljava/text/ParseException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "unexpected token \'"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 1331
    const-string/jumbo v2, "\' in \'"

    #@15
    .line 1330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 1331
    const-string/jumbo v2, "\'"

    #@20
    .line 1330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 1331
    const/4 v2, -0x1

    #@29
    .line 1330
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@2c
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2405
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 2414
    new-instance v0, Landroid/icu/text/PluralRulesSerialProxy;

    #@2
    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/icu/text/PluralRulesSerialProxy;-><init>(Ljava/lang/String;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sample"    # Ljava/lang/Number;
    .param p3, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Double;>;"
    const/4 v4, 0x0

    #@1
    .line 2173
    instance-of v1, p2, Landroid/icu/text/PluralRules$FixedDecimal;

    #@3
    if-eqz v1, :cond_0

    #@5
    move-object v1, p2

    #@6
    check-cast v1, Landroid/icu/text/PluralRules$FixedDecimal;

    #@8
    invoke-virtual {p0, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 2174
    .local v0, "selectedKeyword":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 2175
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    #@15
    move-result-wide v2

    #@16
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1d
    .line 2176
    add-int/lit8 p3, p3, -0x1

    #@1f
    if-gez p3, :cond_1

    #@21
    .line 2177
    return v4

    #@22
    .line 2173
    .end local v0    # "selectedKeyword":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    #@25
    move-result-wide v2

    #@26
    invoke-virtual {p0, v2, v3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .restart local v0    # "selectedKeyword":Ljava/lang/String;
    goto :goto_0

    #@2b
    .line 2180
    :cond_1
    const/4 v1, 0x1

    #@2c
    return v1
.end method

.method public compareTo(Landroid/icu/text/PluralRules;)I
    .locals 2
    .param p1, "other"    # Landroid/icu/text/PluralRules;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2423
    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2450
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Landroid/icu/text/PluralRules;)Z
    .locals 2
    .param p1, "rhs"    # Landroid/icu/text/PluralRules;

    #@0
    .prologue
    .line 2256
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1}, Landroid/icu/text/PluralRules;->toString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2245
    instance-of v0, p1, Landroid/icu/text/PluralRules;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Landroid/icu/text/PluralRules;

    #@6
    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->equals(Landroid/icu/text/PluralRules;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2078
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAllKeywordValues(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2095
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 2096
    return-object v1

    #@8
    .line 2098
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    #@b
    move-result-object v0

    #@c
    .line 2099
    .local v0, "samples":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    if-nez v0, :cond_1

    #@e
    :goto_0
    return-object v1

    #@f
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@12
    move-result-object v1

    #@13
    goto :goto_0
.end method

.method public getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2198
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;)Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroid/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    #@0
    .prologue
    .line 2321
    .local p3, "explicits":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Double;>;"
    .local p4, "uniqueValue":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Double;>;"
    sget-object v5, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v3, p3

    #@6
    move-object v4, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/PluralRules;->getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$KeywordStatus;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Landroid/icu/util/Output;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 10
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p5, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Landroid/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2344
    .local p3, "explicits":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Double;>;"
    .local p4, "uniqueValue":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Double;>;"
    if-eqz p4, :cond_0

    #@2
    .line 2345
    const/4 v5, 0x0

    #@3
    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@5
    .line 2348
    :cond_0
    iget-object v5, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    #@7
    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v5

    #@b
    if-nez v5, :cond_1

    #@d
    .line 2349
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    #@f
    return-object v5

    #@10
    .line 2352
    :cond_1
    invoke-virtual {p0, p1, p5}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_2

    #@16
    .line 2353
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@18
    return-object v5

    #@19
    .line 2356
    :cond_2
    invoke-virtual {p0, p1, p5}, Landroid/icu/text/PluralRules;->getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    #@1c
    move-result-object v4

    #@1d
    .line 2358
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    #@20
    move-result v2

    #@21
    .line 2360
    .local v2, "originalSize":I
    if-nez p3, :cond_3

    #@23
    .line 2361
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@26
    move-result-object p3

    #@27
    .line 2366
    :cond_3
    invoke-interface {p3}, Ljava/util/Set;->size()I

    #@2a
    move-result v5

    #@2b
    if-le v2, v5, :cond_6

    #@2d
    .line 2367
    const/4 v5, 0x1

    #@2e
    if-ne v2, v5, :cond_5

    #@30
    .line 2368
    if-eqz p4, :cond_4

    #@32
    .line 2369
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v5

    #@36
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v5

    #@3a
    check-cast v5, Ljava/lang/Double;

    #@3c
    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@3e
    .line 2371
    :cond_4
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    #@40
    return-object v5

    #@41
    .line 2373
    :cond_5
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@43
    return-object v5

    #@44
    .line 2378
    :cond_6
    new-instance v3, Ljava/util/HashSet;

    #@46
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@49
    .line 2379
    .local v3, "subtractedSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Double;>;"
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v1

    #@4d
    .local v1, "explicit$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_7

    #@53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Ljava/lang/Double;

    #@59
    .line 2380
    .local v0, "explicit":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@5c
    move-result-wide v6

    #@5d
    int-to-double v8, p2

    #@5e
    sub-double/2addr v6, v8

    #@5f
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@66
    goto :goto_0

    #@67
    .line 2382
    .end local v0    # "explicit":Ljava/lang/Double;
    :cond_7
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    #@6a
    move-result v5

    #@6b
    if-nez v5, :cond_8

    #@6d
    .line 2383
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@6f
    return-object v5

    #@70
    .line 2386
    :cond_8
    if-eqz p4, :cond_9

    #@72
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    #@75
    move-result v5

    #@76
    const/4 v6, 0x1

    #@77
    if-ne v5, v6, :cond_9

    #@79
    .line 2387
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@7c
    move-result-object v5

    #@7d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v5

    #@81
    check-cast v5, Ljava/lang/Double;

    #@83
    iput-object v5, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@85
    .line 2390
    :cond_9
    const/4 v5, 0x1

    #@86
    if-ne v2, v5, :cond_a

    #@88
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    #@8a
    :goto_1
    return-object v5

    #@8b
    :cond_a
    sget-object v5, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    #@8d
    goto :goto_1
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2049
    iget-object v0, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2399
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$RuleList;->getRules(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSamples(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2113
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules;->getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .locals 11
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2132
    iget-object v5, p0, Landroid/icu/text/PluralRules;->keywords:Ljava/util/Set;

    #@4
    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 2133
    return-object v4

    #@b
    .line 2135
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    #@d
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@10
    .line 2137
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Double;>;"
    iget-object v5, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@12
    invoke-static {v5}, Landroid/icu/text/PluralRules$RuleList;->-get0(Landroid/icu/text/PluralRules$RuleList;)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_2

    #@18
    .line 2138
    iget-object v4, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@1a
    invoke-virtual {v4, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@1d
    move-result-object v3

    #@1e
    .line 2139
    .local v3, "samples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    if-nez v3, :cond_1

    #@20
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@23
    move-result-object v4

    #@24
    :goto_0
    return-object v4

    #@25
    .line 2140
    :cond_1
    invoke-virtual {v3, v2}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->addSamples(Ljava/util/Set;)Ljava/util/Set;

    #@28
    move-result-object v4

    #@29
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@2c
    move-result-object v4

    #@2d
    goto :goto_0

    #@2e
    .line 2144
    .end local v3    # "samples":Landroid/icu/text/PluralRules$FixedDecimalSamples;
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_3

    #@34
    const v1, 0x7fffffff

    #@37
    .line 2146
    .local v1, "maxCount":I
    :goto_1
    invoke-static {}, Landroid/icu/text/PluralRules;->-getandroid_icu_text_PluralRules$SampleTypeSwitchesValues()[I

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {p2}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    #@3e
    move-result v6

    #@3f
    aget v5, v5, v6

    #@41
    packed-switch v5, :pswitch_data_0

    #@44
    .line 2164
    :goto_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@47
    move-result v5

    #@48
    if-nez v5, :cond_8

    #@4a
    :goto_3
    return-object v4

    #@4b
    .line 2144
    .end local v1    # "maxCount":I
    :cond_3
    const/16 v1, 0x14

    #@4d
    .restart local v1    # "maxCount":I
    goto :goto_1

    #@4e
    .line 2148
    :pswitch_0
    const/4 v0, 0x0

    #@4f
    .local v0, "i":I
    :goto_4
    const/16 v5, 0xc8

    #@51
    if-ge v0, v5, :cond_4

    #@53
    .line 2149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    #@5a
    move-result v5

    #@5b
    if-nez v5, :cond_5

    #@5d
    .line 2153
    :cond_4
    const v5, 0xf4240

    #@60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    #@67
    goto :goto_2

    #@68
    .line 2148
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@6a
    goto :goto_4

    #@6b
    .line 2156
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    #@6c
    .restart local v0    # "i":I
    :goto_5
    const/16 v5, 0x7d0

    #@6e
    if-ge v0, v5, :cond_6

    #@70
    .line 2157
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    #@72
    int-to-double v6, v0

    #@73
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    #@75
    div-double/2addr v6, v8

    #@76
    invoke-direct {v5, v6, v7, v10}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    #@79
    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    #@7c
    move-result v5

    #@7d
    if-nez v5, :cond_7

    #@7f
    .line 2161
    :cond_6
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    #@81
    const-wide v6, 0x412e848000000000L    # 1000000.0

    #@86
    invoke-direct {v5, v6, v7, v10}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    #@89
    invoke-virtual {p0, p1, v5, v1, v2}, Landroid/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    #@8c
    goto :goto_2

    #@8d
    .line 2156
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@8f
    goto :goto_5

    #@90
    .line 2164
    .end local v0    # "i":I
    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@93
    move-result-object v4

    #@94
    goto :goto_3

    #@95
    .line 2146
    nop

    #@96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUniqueKeywordValue(Ljava/lang/String;)D
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2061
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    .line 2062
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    if-eqz v0, :cond_0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@9
    move-result v1

    #@a
    const/4 v2, 0x1

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 2063
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/Double;

    #@17
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@1a
    move-result-wide v2

    #@1b
    return-wide v2

    #@1c
    .line 2065
    :cond_0
    const-wide v2, -0x40abc5d8f366e181L    # -0.00123456777

    #@21
    return-wide v2
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1985
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$RuleList;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isLimited(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2432
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@4
    invoke-virtual {v0, p1, v1}, Landroid/icu/text/PluralRules$RuleList;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2441
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public matches(Landroid/icu/text/PluralRules$FixedDecimal;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sample"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2038
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$FixedDecimal;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public select(D)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 1996
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    #@7
    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public select(DIJ)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # D
    .param p3, "countVisibleFractionDigits"    # I
    .param p4, "fractionaldigits"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2010
    iget-object v6, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    new-instance v0, Landroid/icu/text/PluralRules$FixedDecimal;

    #@4
    move-wide v1, p1

    #@5
    move v3, p3

    #@6
    move-wide v4, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    #@a
    invoke-virtual {v6, v0}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .locals 1
    .param p1, "sample"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2024
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$RuleList;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2237
    iget-object v0, p0, Landroid/icu/text/PluralRules;->rules:Landroid/icu/text/PluralRules$RuleList;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$RuleList;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
