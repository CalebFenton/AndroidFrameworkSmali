.class Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;
.super Ljava/lang/Object;
.source "NumberFormatterFactory.java"

# interfaces
.implements Landroid/icu/message2/Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/NumberFormatterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluralSelectorImpl"
.end annotation


# static fields
.field private static final blacklist NO_MATCH:Ljava/lang/String; = "\ufffdNO_MATCH\ufffe"


# instance fields
.field private blacklist fixedOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist icuFormatter:Landroid/icu/number/LocalizedNumberFormatter;

.field private final blacklist rules:Landroid/icu/text/PluralRules;


# direct methods
.method public static synthetic blacklist $r8$lambda$ycm0n5HIkzu9t7eVcoXaTOtZLDQ(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;->pluralComparator(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Ljava/util/Locale;Landroid/icu/text/PluralRules;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "rules"    # Landroid/icu/text/PluralRules;
    .param p4, "kind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/icu/text/PluralRules;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 171
    .local p3, "fixedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;->rules:Landroid/icu/text/PluralRules;

    .line 173
    iput-object p3, p0, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;->fixedOptions:Ljava/util/Map;

    .line 174
    invoke-static {p1, p3, p4}, Landroid/icu/message2/NumberFormatterFactory;->-$$Nest$smformatterForOptions(Ljava/util/Locale;Ljava/util/Map;Ljava/lang/String;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;->icuFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    .line 175
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale;Landroid/icu/text/PluralRules;Ljava/util/Map;Ljava/lang/String;Landroid/icu/message2/NumberFormatterFactory-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;-><init>(Ljava/util/Locale;Landroid/icu/text/PluralRules;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist matches(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 12
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 233
    .local p3, "variableOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 234
    return v1

    .line 237
    :cond_a
    const-string v0, "icu:offset"

    invoke-static {p3, v0}, Landroid/icu/message2/OptUtils;->getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 238
    .local v2, "offset":Ljava/lang/Integer;
    if-nez v2, :cond_1c

    iget-object v3, p0, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;->fixedOptions:Ljava/util/Map;

    if-eqz v3, :cond_1c

    .line 239
    iget-object v3, p0, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;->fixedOptions:Ljava/util/Map;

    invoke-static {v3, v0}, Landroid/icu/message2/OptUtils;->getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 241
    :cond_1c
    const/4 v0, 0x0

    if-nez v2, :cond_23

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 245
    :cond_23
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 246
    .local v3, "valToCheck":Ljava/lang/Number;
    instance-of v4, p1, Landroid/icu/message2/FormattedPlaceholder;

    if-eqz v4, :cond_34

    .line 247
    move-object v4, p1

    check-cast v4, Landroid/icu/message2/FormattedPlaceholder;

    .line 248
    .local v4, "fph":Landroid/icu/message2/FormattedPlaceholder;
    invoke-virtual {v4}, Landroid/icu/message2/FormattedPlaceholder;->getInput()Ljava/lang/Object;

    move-result-object p1

    .line 251
    .end local v4    # "fph":Landroid/icu/message2/FormattedPlaceholder;
    :cond_34
    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_7b

    .line 252
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 257
    .end local v3    # "valToCheck":Ljava/lang/Number;
    .local v0, "valToCheck":Ljava/lang/Number;
    invoke-static {p2}, Landroid/icu/message2/OptUtils;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v3

    .line 258
    .local v3, "keyNrVal":Ljava/lang/Number;
    if-eqz v3, :cond_56

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_56

    .line 259
    return v1

    .line 262
    :cond_56
    iget-object v1, p0, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;->icuFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/icu/number/LocalizedNumberFormatter;->format(D)Landroid/icu/number/FormattedNumber;

    move-result-object v1

    .line 263
    .local v1, "formatted":Landroid/icu/number/FormattedNumber;
    iget-object v4, p0, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;->rules:Landroid/icu/text/PluralRules;

    invoke-virtual {v4, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/number/FormattedNumber;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "match":Ljava/lang/String;
    const-string v5, "other"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 265
    const-string v4, "*"

    .line 267
    :cond_76
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 254
    .end local v0    # "valToCheck":Ljava/lang/Number;
    .end local v1    # "formatted":Landroid/icu/number/FormattedNumber;
    .end local v4    # "match":Ljava/lang/String;
    .local v3, "valToCheck":Ljava/lang/Number;
    :cond_7b
    return v0
.end method

.method private static blacklist pluralComparator(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "o1"    # Ljava/lang/String;
    .param p1, "o2"    # Ljava/lang/String;

    .line 204
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 205
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_8
    const-string v0, "\ufffdNO_MATCH\ufffe"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 208
    return v2

    .line 210
    :cond_12
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1a

    .line 211
    return v1

    .line 214
    :cond_1a
    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 215
    return v2

    .line 217
    :cond_23
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 218
    return v1

    .line 221
    :cond_2a
    invoke-static {p0}, Landroid/icu/message2/OptUtils;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 222
    return v1

    .line 224
    :cond_31
    invoke-static {p1}, Landroid/icu/message2/OptUtils;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 225
    return v2

    .line 229
    :cond_38
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist matches(Ljava/lang/Object;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "variableOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_8

    .line 185
    return-object v0

    .line 187
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, p1, v2, p3}, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl;->matches(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 191
    :cond_22
    const-string v3, "\ufffdNO_MATCH\ufffe"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v2    # "key":Ljava/lang/String;
    :goto_27
    goto :goto_c

    .line 195
    :cond_28
    new-instance v1, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/icu/message2/NumberFormatterFactory$PluralSelectorImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 196
    return-object v0
.end method
