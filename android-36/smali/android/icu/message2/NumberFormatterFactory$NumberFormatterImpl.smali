.class Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;
.super Ljava/lang/Object;
.source "NumberFormatterFactory.java"

# interfaces
.implements Landroid/icu/message2/Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/NumberFormatterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberFormatterImpl"
.end annotation


# instance fields
.field final blacklist advanced:Z

.field private final blacklist fixedOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist icuFormatter:Landroid/icu/number/LocalizedNumberFormatter;

.field private final blacklist kind:Ljava/lang/String;

.field private final blacklist locale:Ljava/util/Locale;


# direct methods
.method constructor blacklist <init>(Ljava/util/Locale;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;
    .param p3, "kind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    .local p2, "fixedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->locale:Ljava/util/Locale;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->fixedOptions:Ljava/util/Map;

    .line 88
    const-string v0, "icu:skeleton"

    invoke-static {p2, v0}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "skeleton":Ljava/lang/String;
    if-eqz v0, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 90
    .local v1, "fancy":Z
    :goto_17
    invoke-static {p1, p2, p3}, Landroid/icu/message2/NumberFormatterFactory;->-$$Nest$smformatterForOptions(Ljava/util/Locale;Ljava/util/Map;Ljava/lang/String;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->icuFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    .line 91
    iput-boolean v1, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->advanced:Z

    .line 92
    iput-object p3, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->kind:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/lang/Object;Ljava/util/Map;)Landroid/icu/message2/FormattedPlaceholder;
    .registers 12
    .param p1, "toFormat"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/FormattedPlaceholder;"
        }
    .end annotation

    .line 113
    .local p2, "variableOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->icuFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    .local v0, "realFormatter":Landroid/icu/number/LocalizedNumberFormatter;
    goto :goto_1c

    .line 116
    .end local v0    # "realFormatter":Landroid/icu/number/LocalizedNumberFormatter;
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->fixedOptions:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 117
    .local v0, "mergedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 121
    iget-object v1, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->kind:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/icu/message2/NumberFormatterFactory;->-$$Nest$smformatterForOptions(Ljava/util/Locale;Ljava/util/Map;Ljava/lang/String;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v1

    move-object v0, v1

    .line 124
    .local v0, "realFormatter":Landroid/icu/number/LocalizedNumberFormatter;
    :goto_1c
    const-string v1, "icu:offset"

    invoke-static {p2, v1}, Landroid/icu/message2/OptUtils;->getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 125
    .local v2, "offset":Ljava/lang/Integer;
    if-nez v2, :cond_2e

    iget-object v3, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->fixedOptions:Ljava/util/Map;

    if-eqz v3, :cond_2e

    .line 126
    iget-object v3, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->fixedOptions:Ljava/util/Map;

    invoke-static {v3, v1}, Landroid/icu/message2/OptUtils;->getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 128
    :cond_2e
    if-nez v2, :cond_35

    .line 129
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 132
    :cond_35
    const/4 v1, 0x0

    .line 133
    .local v1, "result":Landroid/icu/text/FormattedValue;
    if-eqz p1, :cond_f6

    .line 136
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_4f

    .line 137
    move-object v3, p1

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Landroid/icu/number/LocalizedNumberFormatter;->format(D)Landroid/icu/number/FormattedNumber;

    move-result-object v1

    goto/16 :goto_f0

    .line 138
    :cond_4f
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_66

    .line 139
    move-object v3, p1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object v1

    goto/16 :goto_f0

    .line 140
    :cond_66
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_7d

    .line 141
    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object v1

    goto/16 :goto_f0

    .line 142
    :cond_7d
    instance-of v3, p1, Landroid/icu/math/BigDecimal;

    if-eqz v3, :cond_96

    .line 143
    move-object v3, p1

    check-cast v3, Landroid/icu/math/BigDecimal;

    .line 144
    .local v3, "bd":Landroid/icu/math/BigDecimal;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object v1

    .line 145
    .end local v3    # "bd":Landroid/icu/math/BigDecimal;
    goto :goto_f0

    :cond_96
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_ac

    .line 146
    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Landroid/icu/number/LocalizedNumberFormatter;->format(D)Landroid/icu/number/FormattedNumber;

    move-result-object v1

    goto :goto_f0

    .line 147
    :cond_ac
    instance-of v3, p1, Landroid/icu/util/CurrencyAmount;

    if-eqz v3, :cond_b8

    .line 148
    move-object v3, p1

    check-cast v3, Landroid/icu/util/CurrencyAmount;

    invoke-virtual {v0, v3}, Landroid/icu/number/LocalizedNumberFormatter;->format(Landroid/icu/util/Measure;)Landroid/icu/number/FormattedNumber;

    move-result-object v1

    goto :goto_f0

    .line 152
    :cond_b8
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "strValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/message2/OptUtils;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v4

    .line 154
    .local v4, "nrValue":Ljava/lang/Number;
    if-eqz v4, :cond_d1

    .line 155
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Landroid/icu/number/LocalizedNumberFormatter;->format(D)Landroid/icu/number/FormattedNumber;

    move-result-object v1

    goto :goto_f0

    .line 157
    :cond_d1
    new-instance v5, Landroid/icu/message2/PlainStringFormattedValue;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/icu/message2/PlainStringFormattedValue;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 160
    .end local v3    # "strValue":Ljava/lang/String;
    .end local v4    # "nrValue":Ljava/lang/Number;
    :goto_f0
    new-instance v3, Landroid/icu/message2/FormattedPlaceholder;

    invoke-direct {v3, p1, v1}, Landroid/icu/message2/FormattedPlaceholder;-><init>(Ljava/lang/Object;Landroid/icu/text/FormattedValue;)V

    return-object v3

    .line 135
    :cond_f6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Argument to format can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist formatToString(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p1, "toFormat"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 104
    .local p2, "variableOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->format(Ljava/lang/Object;Ljava/util/Map;)Landroid/icu/message2/FormattedPlaceholder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/message2/FormattedPlaceholder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getIcuFormatter()Landroid/icu/number/LocalizedNumberFormatter;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/icu/message2/NumberFormatterFactory$NumberFormatterImpl;->icuFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    return-object v0
.end method
