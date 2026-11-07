.class public Landroid/icu/impl/number/MacroProps;
.super Ljava/lang/Object;
.source "MacroProps.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public blacklist affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

.field public blacklist approximately:Ljava/lang/Boolean;

.field public blacklist decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

.field public blacklist grouping:Ljava/lang/Object;

.field public blacklist integerWidth:Landroid/icu/number/IntegerWidth;

.field public blacklist loc:Landroid/icu/util/ULocale;

.field public blacklist notation:Landroid/icu/number/Notation;

.field public blacklist padder:Landroid/icu/impl/number/Padder;

.field public blacklist perUnit:Landroid/icu/util/MeasureUnit;

.field public blacklist precision:Landroid/icu/number/Precision;

.field public blacklist roundingMode:Ljava/math/RoundingMode;

.field public blacklist rules:Landroid/icu/text/PluralRules;

.field public blacklist scale:Landroid/icu/number/Scale;

.field public blacklist sign:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public blacklist symbols:Ljava/lang/Object;

.field public blacklist threshold:Ljava/lang/Long;

.field public blacklist unit:Landroid/icu/util/MeasureUnit;

.field public blacklist unitDisplayCase:Ljava/lang/String;

.field public blacklist unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public blacklist usage:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 149
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 150
    :catch_5
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "_other"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 118
    return v0

    .line 119
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 120
    return v1

    .line 121
    :cond_8
    instance-of v2, p1, Landroid/icu/impl/number/MacroProps;

    if-nez v2, :cond_d

    .line 122
    return v0

    .line 123
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/icu/impl/number/MacroProps;

    .line 124
    .local v2, "other":Landroid/icu/impl/number/MacroProps;
    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 125
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    .line 126
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 127
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    .line 128
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    .line 129
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    .line 130
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 131
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 132
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 133
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    .line 134
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->approximately:Ljava/lang/Boolean;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->approximately:Ljava/lang/Boolean;

    .line 136
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 137
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    .line 138
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    .line 139
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    .line 140
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    .line 141
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    .line 142
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    move v0, v1

    goto :goto_d1

    :cond_d0
    nop

    .line 124
    :goto_d1
    return v0
.end method

.method public blacklist fallback(Landroid/icu/impl/number/MacroProps;)V
    .registers 3
    .param p1, "fallback"    # Landroid/icu/impl/number/MacroProps;

    .line 52
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    if-nez v0, :cond_8

    .line 53
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    .line 54
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    if-nez v0, :cond_10

    .line 55
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 56
    :cond_10
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    if-nez v0, :cond_18

    .line 57
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    .line 58
    :cond_18
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    if-nez v0, :cond_20

    .line 59
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    .line 60
    :cond_20
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    if-nez v0, :cond_28

    .line 61
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    .line 62
    :cond_28
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    if-nez v0, :cond_30

    .line 63
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    .line 64
    :cond_30
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    if-nez v0, :cond_38

    .line 65
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    .line 66
    :cond_38
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    if-nez v0, :cond_40

    .line 67
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 68
    :cond_40
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    if-nez v0, :cond_48

    .line 69
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 70
    :cond_48
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-nez v0, :cond_50

    .line 71
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 72
    :cond_50
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    if-nez v0, :cond_58

    .line 73
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    .line 74
    :cond_58
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-nez v0, :cond_60

    .line 75
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 76
    :cond_60
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->approximately:Ljava/lang/Boolean;

    if-nez v0, :cond_68

    .line 77
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->approximately:Ljava/lang/Boolean;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->approximately:Ljava/lang/Boolean;

    .line 78
    :cond_68
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-nez v0, :cond_70

    .line 79
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 80
    :cond_70
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    if-nez v0, :cond_78

    .line 81
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    .line 82
    :cond_78
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    if-nez v0, :cond_80

    .line 83
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    .line 84
    :cond_80
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-nez v0, :cond_88

    .line 85
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    .line 86
    :cond_88
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    if-nez v0, :cond_90

    .line 87
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    .line 88
    :cond_90
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    if-nez v0, :cond_98

    .line 89
    iget-object v0, p1, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    .line 90
    :cond_98
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 22

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    iget-object v4, v0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    iget-object v5, v0, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    iget-object v8, v0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    iget-object v10, v0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    iget-object v11, v0, Landroid/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    iget-object v12, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    iget-object v13, v0, Landroid/icu/impl/number/MacroProps;->approximately:Ljava/lang/Boolean;

    iget-object v14, v0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iget-object v15, v0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    move-object/from16 v20, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v20

    filled-new-array/range {v1 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method
