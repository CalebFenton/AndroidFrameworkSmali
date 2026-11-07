.class public Landroid/icu/impl/number/parse/AffixPatternMatcher;
.super Landroid/icu/impl/number/parse/SeriesMatcher;
.source "AffixPatternMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/AffixUtils$TokenConsumer;


# instance fields
.field private final blacklist affixPattern:Ljava/lang/String;

.field private blacklist factory:Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;

.field private blacklist ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

.field private blacklist lastTypeOrCp:I


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "affixPattern"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Landroid/icu/impl/number/parse/SeriesMatcher;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static blacklist fromAffixPattern(Ljava/lang/String;Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;I)Landroid/icu/impl/number/parse/AffixPatternMatcher;
    .registers 6
    .param p0, "affixPattern"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;
    .param p2, "parseFlags"    # I

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 37
    return-object v1

    .line 40
    :cond_8
    new-instance v0, Landroid/icu/impl/number/parse/AffixPatternMatcher;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "series":Landroid/icu/impl/number/parse/AffixPatternMatcher;
    iput-object p1, v0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->factory:Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;

    .line 42
    and-int/lit16 v2, p2, 0x200

    if-eqz v2, :cond_15

    move-object v2, v1

    goto :goto_19

    .line 43
    :cond_15
    invoke-virtual {p1}, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->ignorables()Landroid/icu/impl/number/parse/IgnorablesMatcher;

    move-result-object v2

    :goto_19
    iput-object v2, v0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    .line 44
    const/4 v2, 0x0

    iput v2, v0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->lastTypeOrCp:I

    .line 45
    invoke-static {p0, v0}, Landroid/icu/impl/number/AffixUtils;->iterateWithConsumer(Ljava/lang/CharSequence;Landroid/icu/impl/number/AffixUtils$TokenConsumer;)V

    .line 48
    iput-object v1, v0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->factory:Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;

    .line 49
    iput-object v1, v0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    .line 50
    iput v2, v0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->lastTypeOrCp:I

    .line 52
    invoke-virtual {v0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->freeze()V

    .line 53
    return-object v0
.end method


# virtual methods
.method public blacklist consumeToken(I)V
    .registers 4
    .param p1, "typeOrCp"    # I

    .line 66
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    if-eqz v0, :cond_21

    .line 67
    invoke-virtual {p0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->length()I

    move-result v0

    if-lez v0, :cond_21

    iget v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->lastTypeOrCp:I

    if-ltz v0, :cond_1c

    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    .line 68
    invoke-virtual {v0}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->getSet()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->lastTypeOrCp:I

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 69
    :cond_1c
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 72
    :cond_21
    if-gez p1, :cond_5e

    .line 74
    packed-switch p1, :pswitch_data_7a

    .line 96
    :pswitch_26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :pswitch_2c
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->factory:Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-virtual {v0}, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->minusSign()Landroid/icu/impl/number/parse/MinusSignMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 77
    goto :goto_76

    .line 79
    :pswitch_36
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->factory:Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-virtual {v0}, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->plusSign()Landroid/icu/impl/number/parse/PlusSignMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 80
    goto :goto_76

    .line 82
    :pswitch_40
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->factory:Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-virtual {v0}, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->percent()Landroid/icu/impl/number/parse/PercentMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 83
    goto :goto_76

    .line 85
    :pswitch_4a
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->factory:Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-virtual {v0}, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->permille()Landroid/icu/impl/number/parse/PermilleMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 86
    goto :goto_76

    .line 93
    :pswitch_54
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->factory:Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-virtual {v0}, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->currency()Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 94
    goto :goto_76

    .line 99
    :cond_5e
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    invoke-virtual {v0}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->getSet()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    goto :goto_76

    .line 105
    :cond_6f
    invoke-static {p1}, Landroid/icu/impl/number/parse/CodePointMatcher;->getInstance(I)Landroid/icu/impl/number/parse/CodePointMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Landroid/icu/impl/number/parse/NumberParseMatcher;)V

    .line 107
    :goto_76
    iput p1, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->lastTypeOrCp:I

    .line 108
    return-void

    nop

    :pswitch_data_7a
    .packed-switch -0xa
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_4a
        :pswitch_40
        :pswitch_26
        :pswitch_36
        :pswitch_2c
    .end packed-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 116
    if-ne p0, p1, :cond_4

    .line 117
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_4
    instance-of v0, p1, Landroid/icu/impl/number/parse/AffixPatternMatcher;

    if-nez v0, :cond_a

    .line 119
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v1, v1, Landroid/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPattern()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    return-object v0
.end method
