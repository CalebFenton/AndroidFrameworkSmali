.class public abstract Landroid/icu/text/Transliterator;
.super Ljava/lang/Object;
.source "Transliterator.java"

# interfaces
.implements Landroid/icu/text/StringTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Transliterator$Position;,
        Landroid/icu/text/Transliterator$Factory;
    }
.end annotation


# static fields
.field static final greylist-max-o DEBUG:Z = false

.field public static final whitelist test-api FORWARD:I = 0x0

.field static final greylist-max-o ID_DELIM:C = ';'

.field static final greylist-max-o ID_SEP:C = '-'

.field private static final greylist-max-o RB_DISPLAY_NAME_PATTERN:Ljava/lang/String; = "TransliteratorNamePattern"

.field private static final greylist-max-o RB_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "%Translit%%"

.field private static final greylist-max-o RB_RULE_BASED_IDS:Ljava/lang/String; = "RuleBasedTransliteratorIDs"

.field private static final greylist-max-o RB_SCRIPT_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "%Translit%"

.field public static final whitelist test-api REVERSE:I = 0x1

.field private static final greylist-max-o ROOT:Ljava/lang/String; = "root"

.field static final greylist-max-o VARIANT_SEP:C = '/'

.field private static greylist-max-o displayNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o registry:Landroid/icu/text/TransliteratorRegistry;


# instance fields
.field private greylist-max-o ID:Ljava/lang/String;

.field private greylist-max-o filter:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o maximumContextLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 2060
    new-instance v0, Landroid/icu/text/TransliteratorRegistry;

    invoke-direct {v0}, Landroid/icu/text/TransliteratorRegistry;-><init>()V

    sput-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    .line 2063
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    .line 2099
    const-string v0, "android/icu/impl/data/icudata/translit"

    const-string v1, "root"

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 2100
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    const-string v1, "RuleBasedTransliteratorIDs"

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 2103
    .local v1, "transIDs":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v2

    .line 2104
    .local v2, "maxRows":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_25
    const/4 v4, 0x0

    if-ge v3, v2, :cond_be

    .line 2105
    invoke-virtual {v1, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    .line 2106
    .local v5, "colBund":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 2107
    .local v6, "ID":Ljava/lang/String;
    const-string v7, "-t-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_3a

    .line 2108
    goto/16 :goto_ba

    .line 2110
    :cond_3a
    invoke-virtual {v5, v4}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    .line 2111
    .local v7, "res":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 2112
    .local v8, "type":Ljava/lang/String;
    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "internal"

    const/4 v11, 0x1

    if-nez v9, :cond_7f

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_54

    goto :goto_7f

    .line 2144
    :cond_54
    const-string v4, "alias"

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 2146
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2147
    .local v4, "resString":Ljava/lang/String;
    sget-object v9, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v9, v6, v4, v11}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2148
    .end local v4    # "resString":Ljava/lang/String;
    goto :goto_ba

    .line 2150
    :cond_66
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2117
    :cond_7f
    :goto_7f
    move v9, v3

    .line 2118
    .local v9, "rowIndex":I
    new-instance v12, Landroid/icu/text/Transliterator$$ExternalSyntheticLambda0;

    invoke-direct {v12, v9}, Landroid/icu/text/Transliterator$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2128
    .local v12, "resSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    const-string v13, "direction"

    invoke-virtual {v7, v13}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2129
    .local v13, "direction":Ljava/lang/String;
    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_f0

    .line 2137
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t parse direction: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2134
    :sswitch_ab
    const/4 v4, 0x1

    .line 2135
    .local v4, "dir":I
    goto :goto_af

    .line 2131
    .end local v4    # "dir":I
    :sswitch_ad
    const/4 v4, 0x0

    .line 2132
    .restart local v4    # "dir":I
    nop

    .line 2139
    :goto_af
    sget-object v14, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    .line 2142
    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 2139
    xor-int/2addr v10, v11

    invoke-virtual {v14, v6, v12, v4, v10}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/util/function/Supplier;IZ)V

    .line 2144
    .end local v4    # "dir":I
    .end local v9    # "rowIndex":I
    .end local v12    # "resSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    .end local v13    # "direction":Ljava/lang/String;
    nop

    .line 2104
    .end local v6    # "ID":Ljava/lang/String;
    .end local v7    # "res":Landroid/icu/util/UResourceBundle;
    .end local v8    # "type":Ljava/lang/String;
    :goto_ba
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_25

    .line 2154
    .end local v5    # "colBund":Landroid/icu/util/UResourceBundle;
    :cond_be
    const-string v5, "Null"

    invoke-static {v5, v5, v4}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2157
    const-class v4, Landroid/icu/text/NullTransliterator;

    const/4 v5, 0x0

    const-string v6, "Any-Null"

    invoke-static {v6, v4, v5}, Landroid/icu/text/Transliterator;->registerClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 2159
    invoke-static {}, Landroid/icu/text/RemoveTransliterator;->register()V

    .line 2160
    invoke-static {}, Landroid/icu/text/EscapeTransliterator;->register()V

    .line 2161
    invoke-static {}, Landroid/icu/text/UnescapeTransliterator;->register()V

    .line 2162
    invoke-static {}, Landroid/icu/text/LowercaseTransliterator;->register()V

    .line 2163
    invoke-static {}, Landroid/icu/text/UppercaseTransliterator;->register()V

    .line 2164
    invoke-static {}, Landroid/icu/text/TitlecaseTransliterator;->register()V

    .line 2165
    invoke-static {}, Landroid/icu/text/CaseFoldTransliterator;->register()V

    .line 2166
    invoke-static {}, Landroid/icu/text/UnicodeNameTransliterator;->register()V

    .line 2167
    invoke-static {}, Landroid/icu/text/NameUnicodeTransliterator;->register()V

    .line 2168
    invoke-static {}, Landroid/icu/text/NormalizationTransliterator;->register()V

    .line 2169
    invoke-static {}, Landroid/icu/text/BreakTransliterator;->register()V

    .line 2170
    invoke-static {}, Landroid/icu/text/AnyTransliterator;->register()V

    .line 2171
    .end local v0    # "bundle":Landroid/icu/util/UResourceBundle;
    .end local v1    # "transIDs":Landroid/icu/util/UResourceBundle;
    .end local v2    # "maxRows":I
    .end local v3    # "row":I
    return-void

    :sswitch_data_f0
    .sparse-switch
        0x46 -> :sswitch_ad
        0x52 -> :sswitch_ab
    .end sparse-switch
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V
    .registers 4
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/icu/text/UnicodeFilter;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    .line 713
    if-eqz p1, :cond_e

    .line 716
    iput-object p1, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    .line 717
    invoke-virtual {p0, p2}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    .line 718
    return-void

    .line 714
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static final whitelist test-api createFromRules(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    .registers 13
    .param p0, "ID"    # Ljava/lang/String;
    .param p1, "rules"    # Ljava/lang/String;
    .param p2, "dir"    # I

    .line 1605
    const/4 v0, 0x0

    .line 1607
    .local v0, "t":Landroid/icu/text/Transliterator;
    new-instance v1, Landroid/icu/text/TransliteratorParser;

    invoke-direct {v1}, Landroid/icu/text/TransliteratorParser;-><init>()V

    .line 1608
    .local v1, "parser":Landroid/icu/text/TransliteratorParser;
    invoke-virtual {v1, p1, p2}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V

    .line 1611
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_20

    .line 1612
    new-instance v2, Landroid/icu/text/NullTransliterator;

    invoke-direct {v2}, Landroid/icu/text/NullTransliterator;-><init>()V

    .end local v0    # "t":Landroid/icu/text/Transliterator;
    .local v2, "t":Landroid/icu/text/Transliterator;
    goto/16 :goto_11a

    .line 1614
    .end local v2    # "t":Landroid/icu/text/Transliterator;
    .restart local v0    # "t":Landroid/icu/text/Transliterator;
    :cond_20
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_43

    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_43

    .line 1615
    new-instance v2, Landroid/icu/text/RuleBasedTransliterator;

    iget-object v4, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v4, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-direct {v2, p0, v3, v4}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    .end local v0    # "t":Landroid/icu/text/Transliterator;
    .restart local v2    # "t":Landroid/icu/text/Transliterator;
    goto/16 :goto_11a

    .line 1617
    .end local v2    # "t":Landroid/icu/text/Transliterator;
    .restart local v0    # "t":Landroid/icu/text/Transliterator;
    :cond_43
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_96

    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_96

    .line 1622
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v2, :cond_82

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v3}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    .line 1624
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1623
    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    move-object v2, v0

    goto :goto_8f

    .line 1626
    :cond_82
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    move-object v2, v0

    .line 1629
    .end local v0    # "t":Landroid/icu/text/Transliterator;
    .restart local v2    # "t":Landroid/icu/text/Transliterator;
    :goto_8f
    if-eqz v2, :cond_11a

    .line 1630
    invoke-virtual {v2, p0}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    goto/16 :goto_11a

    .line 1634
    .end local v2    # "t":Landroid/icu/text/Transliterator;
    .restart local v0    # "t":Landroid/icu/text/Transliterator;
    :cond_96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1635
    .local v2, "transliterators":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    const/4 v3, 0x1

    .line 1637
    .local v3, "passNumber":I
    iget-object v4, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1638
    .local v4, "limit":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_ad
    if-ge v5, v4, :cond_106

    .line 1639
    iget-object v6, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d4

    .line 1640
    iget-object v6, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1641
    .local v6, "idBlock":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d4

    .line 1642
    invoke-static {v6}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v7

    .line 1643
    .local v7, "temp":Landroid/icu/text/Transliterator;
    instance-of v8, v7, Landroid/icu/text/NullTransliterator;

    if-nez v8, :cond_d4

    .line 1644
    invoke-static {v6}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    .end local v6    # "idBlock":Ljava/lang/String;
    .end local v7    # "temp":Landroid/icu/text/Transliterator;
    :cond_d4
    iget-object v6, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_103

    .line 1648
    iget-object v6, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 1649
    .local v6, "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    new-instance v7, Landroid/icu/text/RuleBasedTransliterator;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%Pass"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "passNumber":I
    .local v9, "passNumber":I
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-direct {v7, v3, v6, v8}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v9

    .line 1638
    .end local v6    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    .end local v9    # "passNumber":I
    .restart local v3    # "passNumber":I
    :cond_103
    add-int/lit8 v5, v5, 0x1

    goto :goto_ad

    .line 1653
    .end local v5    # "i":I
    :cond_106
    new-instance v5, Landroid/icu/text/CompoundTransliterator;

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v5, v2, v6}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    .line 1654
    .end local v0    # "t":Landroid/icu/text/Transliterator;
    .local v5, "t":Landroid/icu/text/Transliterator;
    invoke-virtual {v5, p0}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    .line 1655
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_119

    .line 1656
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, v0}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    .line 1660
    .end local v2    # "transliterators":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    .end local v3    # "passNumber":I
    .end local v4    # "limit":I
    :cond_119
    move-object v2, v5

    .end local v5    # "t":Landroid/icu/text/Transliterator;
    .local v2, "t":Landroid/icu/text/Transliterator;
    :cond_11a
    :goto_11a
    return-object v2
.end method

.method private greylist-max-o filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V
    .registers 25
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z
    .param p4, "rollback"    # Z

    .line 1008
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    if-nez v3, :cond_10

    if-nez p4, :cond_10

    .line 1009
    invoke-virtual/range {p0 .. p3}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    .line 1010
    return-void

    .line 1037
    :cond_10
    iget v3, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 1049
    .local v3, "globalLimit":I
    const/4 v4, 0x0

    .line 1056
    .local v4, "log":Ljava/lang/StringBuffer;
    :goto_13
    iget-object v5, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    if-eqz v5, :cond_55

    .line 1062
    :goto_17
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->start:I

    if-ge v5, v3, :cond_34

    iget-object v5, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    iget v6, v2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 1063
    invoke-interface {v1, v6}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v6

    move v7, v6

    .local v7, "c":I
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_34

    .line 1064
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-static {v7}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/icu/text/Transliterator$Position;->start:I

    goto :goto_17

    .line 1068
    .end local v7    # "c":I
    :cond_34
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->start:I

    iput v5, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 1069
    :goto_38
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ge v5, v3, :cond_55

    iget-object v5, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    iget v6, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 1070
    invoke-interface {v1, v6}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v6

    move v7, v6

    .restart local v7    # "c":I
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1071
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-static {v7}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    goto :goto_38

    .line 1078
    .end local v7    # "c":I
    :cond_55
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v6, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v5, v6, :cond_5f

    .line 1079
    move-object/from16 v17, v4

    goto/16 :goto_124

    .line 1087
    :cond_5f
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ge v5, v3, :cond_65

    const/4 v5, 0x0

    goto :goto_67

    :cond_65
    move/from16 v5, p3

    .line 1119
    .local v5, "isIncrementalRun":Z
    :goto_67
    if-eqz p4, :cond_e4

    if-eqz v5, :cond_e4

    .line 1127
    iget v6, v2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 1128
    .local v6, "runStart":I
    iget v7, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 1129
    .local v7, "runLimit":I
    sub-int v8, v7, v6

    .line 1132
    .local v8, "runLength":I
    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v9

    .line 1133
    .local v9, "rollbackOrigin":I
    invoke-interface {v1, v6, v7, v9}, Landroid/icu/text/Replaceable;->copy(III)V

    .line 1140
    move v10, v6

    .line 1141
    .local v10, "passStart":I
    move v11, v9

    .line 1145
    .local v11, "rollbackStart":I
    iget v12, v2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 1149
    .local v12, "passLimit":I
    const/4 v13, 0x0

    .line 1152
    .local v13, "uncommittedLength":I
    const/4 v14, 0x0

    .line 1159
    .local v14, "totalDelta":I
    :goto_7e
    nop

    .line 1160
    invoke-interface {v1, v12}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v15

    invoke-static {v15}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v15

    .line 1161
    .local v15, "charLength":I
    add-int/2addr v12, v15

    .line 1162
    move/from16 v16, v3

    .end local v3    # "globalLimit":I
    .local v16, "globalLimit":I
    const-string v3, ""

    if-le v12, v7, :cond_9e

    .line 1163
    nop

    .line 1239
    .end local v15    # "charLength":I
    add-int/2addr v9, v14

    .line 1240
    add-int v15, v16, v14

    .line 1243
    .end local v16    # "globalLimit":I
    .local v15, "globalLimit":I
    move-object/from16 v17, v4

    .end local v4    # "log":Ljava/lang/StringBuffer;
    .local v17, "log":Ljava/lang/StringBuffer;
    add-int v4, v9, v8

    invoke-interface {v1, v9, v4, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 1246
    iput v10, v2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 1247
    .end local v6    # "runStart":I
    .end local v7    # "runLimit":I
    .end local v8    # "runLength":I
    .end local v9    # "rollbackOrigin":I
    .end local v10    # "passStart":I
    .end local v11    # "rollbackStart":I
    .end local v12    # "passLimit":I
    .end local v13    # "uncommittedLength":I
    .end local v14    # "totalDelta":I
    move v3, v15

    goto/16 :goto_119

    .line 1165
    .end local v17    # "log":Ljava/lang/StringBuffer;
    .restart local v4    # "log":Ljava/lang/StringBuffer;
    .restart local v6    # "runStart":I
    .restart local v7    # "runLimit":I
    .restart local v8    # "runLength":I
    .restart local v9    # "rollbackOrigin":I
    .restart local v10    # "passStart":I
    .restart local v11    # "rollbackStart":I
    .restart local v12    # "passLimit":I
    .restart local v13    # "uncommittedLength":I
    .restart local v14    # "totalDelta":I
    .local v15, "charLength":I
    .restart local v16    # "globalLimit":I
    :cond_9e
    move-object/from16 v17, v4

    .end local v4    # "log":Ljava/lang/StringBuffer;
    .restart local v17    # "log":Ljava/lang/StringBuffer;
    add-int/2addr v13, v15

    .line 1167
    iput v12, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 1179
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    .line 1186
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v4, v12

    .line 1191
    .local v4, "delta":I
    move/from16 v18, v4

    .end local v4    # "delta":I
    .local v18, "delta":I
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v19, v6

    .end local v6    # "runStart":I
    .local v19, "runStart":I
    iget v6, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-eq v4, v6, :cond_cf

    .line 1194
    add-int v4, v11, v18

    iget v6, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v6, v10

    sub-int/2addr v4, v6

    .line 1197
    .local v4, "rs":I
    iget v6, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-interface {v1, v10, v6, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 1200
    add-int v3, v4, v13

    invoke-interface {v1, v4, v3, v10}, Landroid/icu/text/Replaceable;->copy(III)V

    .line 1203
    iput v10, v2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 1204
    iput v12, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 1205
    iget v3, v2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    sub-int v3, v3, v18

    iput v3, v2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 1210
    .end local v4    # "rs":I
    goto :goto_dd

    .line 1217
    :cond_cf
    iget v3, v2, Landroid/icu/text/Transliterator$Position;->start:I

    move v4, v3

    .line 1223
    .end local v10    # "passStart":I
    .end local v12    # "passLimit":I
    .local v3, "passStart":I
    .local v4, "passLimit":I
    add-int v6, v18, v13

    add-int/2addr v11, v6

    .line 1224
    const/4 v6, 0x0

    .line 1227
    .end local v13    # "uncommittedLength":I
    .local v6, "uncommittedLength":I
    add-int v7, v7, v18

    .line 1228
    add-int v14, v14, v18

    move v10, v3

    move v12, v4

    move v13, v6

    .line 1234
    .end local v3    # "passStart":I
    .end local v4    # "passLimit":I
    .end local v6    # "uncommittedLength":I
    .end local v15    # "charLength":I
    .restart local v10    # "passStart":I
    .restart local v12    # "passLimit":I
    .restart local v13    # "uncommittedLength":I
    :goto_dd
    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v6, v19

    goto :goto_7e

    .line 1119
    .end local v7    # "runLimit":I
    .end local v8    # "runLength":I
    .end local v9    # "rollbackOrigin":I
    .end local v10    # "passStart":I
    .end local v11    # "rollbackStart":I
    .end local v12    # "passLimit":I
    .end local v13    # "uncommittedLength":I
    .end local v14    # "totalDelta":I
    .end local v16    # "globalLimit":I
    .end local v17    # "log":Ljava/lang/StringBuffer;
    .end local v18    # "delta":I
    .end local v19    # "runStart":I
    .local v3, "globalLimit":I
    .local v4, "log":Ljava/lang/StringBuffer;
    :cond_e4
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 1257
    .end local v3    # "globalLimit":I
    .end local v4    # "log":Ljava/lang/StringBuffer;
    .restart local v16    # "globalLimit":I
    .restart local v17    # "log":Ljava/lang/StringBuffer;
    iget v3, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 1258
    .local v3, "limit":I
    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    .line 1259
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v4, v3

    .line 1273
    .local v4, "delta":I
    if-nez v5, :cond_116

    iget v6, v2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v7, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v6, v7, :cond_f9

    goto :goto_116

    .line 1274
    :cond_f9
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: Incomplete non-incremental transliteration by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1280
    :cond_116
    :goto_116
    add-int v6, v16, v4

    move v3, v6

    .line 1287
    .end local v4    # "delta":I
    .end local v16    # "globalLimit":I
    .local v3, "globalLimit":I
    :goto_119
    iget-object v4, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    if-eqz v4, :cond_124

    if-eqz v5, :cond_120

    .line 1288
    goto :goto_124

    .line 1293
    .end local v5    # "isIncrementalRun":Z
    :cond_120
    move-object/from16 v4, v17

    goto/16 :goto_13

    .line 1297
    :cond_124
    :goto_124
    iput v3, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 1303
    return-void
.end method

.method public static final whitelist test-api getAvailableIDs()Ljava/util/Enumeration;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2026
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableIDs()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getAvailableSources()Ljava/util/Enumeration;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2036
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableSources()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2046
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2055
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/TransliteratorRegistry;->getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "canonID"    # Ljava/lang/String;

    .line 1577
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1578
    .local v0, "s":Ljava/lang/StringBuffer;
    sget-object v1, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v1, p0, v0}, Landroid/icu/text/TransliteratorRegistry;->get(Ljava/lang/String;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;

    move-result-object v1

    .line 1579
    .local v1, "t":Landroid/icu/text/Transliterator;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 1582
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object v1

    .line 1584
    :cond_1a
    if-eqz v1, :cond_21

    if-eqz p1, :cond_21

    .line 1585
    invoke-virtual {v1, p1}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    .line 1587
    :cond_21
    return-object v1
.end method

.method public static final whitelist test-api getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "ID"    # Ljava/lang/String;

    .line 1374
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 13
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "inLocale"    # Landroid/icu/util/ULocale;

    .line 1425
    nop

    .line 1426
    const-string v0, "android/icu/impl/data/icudata/translit"

    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 1429
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {p0}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1430
    .local v1, "stv":[Ljava/lang/String;
    if-nez v1, :cond_12

    .line 1432
    const-string v2, ""

    return-object v2

    .line 1434
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1435
    .local v2, "ID":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v6, v1, v5

    const/16 v7, 0x2f

    if-eqz v6, :cond_55

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_55

    .line 1436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v1, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1440
    :cond_55
    sget-object v6, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v8, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v8, v2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1441
    .local v6, "n":Ljava/lang/String;
    if-eqz v6, :cond_65

    .line 1442
    return-object v6

    .line 1448
    :cond_65
    :try_start_65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%Translit%%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_7c
    .catch Ljava/util/MissingResourceException; {:try_start_65 .. :try_end_7c} :catch_7d

    return-object v3

    .line 1449
    :catch_7d
    move-exception v8

    .line 1454
    :try_start_7e
    new-instance v8, Ljava/text/MessageFormat;

    const-string v9, "TransliteratorNamePattern"

    .line 1455
    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v8, "format":Ljava/text/MessageFormat;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    filled-new-array {v9, v3, v4}, [Ljava/lang/Object;

    move-result-object v3
    :try_end_95
    .catch Ljava/util/MissingResourceException; {:try_start_7e .. :try_end_95} :catch_e4

    .line 1460
    .local v3, "args":[Ljava/lang/Object;
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_96
    if-gt v4, v5, :cond_bb

    .line 1462
    :try_start_98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%Translit%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v4

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4
    :try_end_b5
    .catch Ljava/util/MissingResourceException; {:try_start_98 .. :try_end_b5} :catch_b6

    goto :goto_b7

    .line 1464
    :catch_b6
    move-exception v9

    :goto_b7
    nop

    .line 1460
    add-int/lit8 v4, v4, 0x1

    goto :goto_96

    .line 1468
    .end local v4    # "j":I
    :cond_bb
    :try_start_bb
    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_df

    .line 1469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e3

    .line 1470
    :cond_df
    invoke-virtual {v8, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_e3
    .catch Ljava/util/MissingResourceException; {:try_start_bb .. :try_end_e3} :catch_e4

    .line 1468
    :goto_e3
    return-object v4

    .line 1471
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v8    # "format":Ljava/text/MessageFormat;
    :catch_e4
    move-exception v3

    .line 1476
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static whitelist test-api getDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "inLocale"    # Ljava/util/Locale;

    .line 1396
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .registers 2
    .param p0, "ID"    # Ljava/lang/String;

    .line 1519
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    .registers 10
    .param p0, "ID"    # Ljava/lang/String;
    .param p1, "dir"    # I

    .line 1536
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1537
    .local v0, "canonID":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1538
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/TransliteratorIDParser$SingleID;>;"
    const/4 v2, 0x1

    new-array v3, v2, [Landroid/icu/text/UnicodeSet;

    .line 1539
    .local v3, "globalFilter":[Landroid/icu/text/UnicodeSet;
    invoke-static {p0, p1, v0, v1, v3}, Landroid/icu/text/TransliteratorIDParser;->parseCompoundID(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;[Landroid/icu/text/UnicodeSet;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1543
    invoke-static {v1}, Landroid/icu/text/TransliteratorIDParser;->instantiateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1546
    .local v4, "translits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    const/4 v5, 0x0

    .line 1547
    .local v5, "t":Landroid/icu/text/Transliterator;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    if-gt v6, v2, :cond_2f

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_28

    goto :goto_2f

    .line 1556
    :cond_28
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/Transliterator;

    .end local v5    # "t":Landroid/icu/text/Transliterator;
    .local v2, "t":Landroid/icu/text/Transliterator;
    goto :goto_34

    .line 1553
    .end local v2    # "t":Landroid/icu/text/Transliterator;
    .restart local v5    # "t":Landroid/icu/text/Transliterator;
    :cond_2f
    :goto_2f
    new-instance v2, Landroid/icu/text/CompoundTransliterator;

    invoke-direct {v2, v4}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;)V

    .line 1559
    .end local v5    # "t":Landroid/icu/text/Transliterator;
    .restart local v2    # "t":Landroid/icu/text/Transliterator;
    :goto_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    .line 1560
    aget-object v5, v3, v7

    if-eqz v5, :cond_44

    .line 1561
    aget-object v5, v3, v7

    invoke-virtual {v2, v5}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    .line 1563
    :cond_44
    return-object v2

    .line 1540
    .end local v2    # "t":Landroid/icu/text/Transliterator;
    .end local v4    # "translits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    :cond_45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic blacklist lambda$static$0(I)Ljava/lang/String;
    .registers 5
    .param p0, "rowIndex"    # I

    .line 2121
    const-string v0, "android/icu/impl/data/icudata/translit"

    const-string v1, "root"

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 2123
    .local v0, "rootBund":Landroid/icu/util/UResourceBundle;
    const-string v1, "RuleBasedTransliteratorIDs"

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 2124
    .local v1, "transIDsBund":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v1, p0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 2125
    .local v2, "thisBund":Landroid/icu/util/UResourceBundle;
    const-string v3, "resource"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o registerAlias(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "aliasID"    # Ljava/lang/String;
    .param p1, "realID"    # Ljava/lang/String;

    .line 1961
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1962
    return-void
.end method

.method public static greylist-max-o registerAny()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2181
    invoke-static {}, Landroid/icu/text/AnyTransliterator;->register()V

    .line 2182
    return-void
.end method

.method public static greylist-max-o registerClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p0, "ID"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/text/Transliterator;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1898
    .local p1, "transClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/icu/text/Transliterator;>;"
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 1899
    if-eqz p2, :cond_12

    .line 1900
    sget-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    :cond_12
    return-void
.end method

.method public static greylist-max-o registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V
    .registers 4
    .param p0, "ID"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/icu/text/Transliterator$Factory;

    .line 1917
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;Z)V

    .line 1918
    return-void
.end method

.method public static greylist-max-o registerInstance(Landroid/icu/text/Transliterator;)V
    .registers 4
    .param p0, "trans"    # Landroid/icu/text/Transliterator;

    .line 1931
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V

    .line 1932
    return-void
.end method

.method static greylist-max-o registerInstance(Landroid/icu/text/Transliterator;Z)V
    .registers 4
    .param p0, "trans"    # Landroid/icu/text/Transliterator;
    .param p1, "visible"    # Z

    .line 1944
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V

    .line 1945
    return-void
.end method

.method static greylist-max-o registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "inverseTarget"    # Ljava/lang/String;
    .param p2, "bidirectional"    # Z

    .line 1999
    invoke-static {p0, p1, p2}, Landroid/icu/text/TransliteratorIDParser;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2000
    return-void
.end method

.method public static greylist-max-o unregister(Ljava/lang/String;)V
    .registers 3
    .param p0, "ID"    # Ljava/lang/String;

    .line 2011
    sget-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0}, Landroid/icu/text/TransliteratorRegistry;->remove(Ljava/lang/String;)V

    .line 2013
    return-void
.end method


# virtual methods
.method public greylist-max-o addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 10
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1825
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 1826
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->handleGetSourceSet()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 1828
    .local v1, "temp":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 1830
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1831
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1832
    .local v4, "t":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 1833
    invoke-virtual {p3, v4}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 1835
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/String;
    :cond_31
    goto :goto_18

    .line 1836
    :cond_32
    return-void
.end method

.method protected final greylist-max-o baseToRules(Z)Ljava/lang/String;
    .registers 9
    .param p1, "escapeUnprintable"    # Z

    .line 1687
    const/16 v0, 0x3b

    const-string v1, "::"

    if-eqz p1, :cond_35

    .line 1688
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1689
    .local v2, "rulesSource":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v3

    .line 1690
    .local v3, "id":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_29

    .line 1691
    invoke-static {v3, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    .line 1692
    .local v5, "c":I
    invoke-static {v2, v5}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result v6

    if-nez v6, :cond_23

    .line 1693
    invoke-static {v2, v5}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 1695
    :cond_23
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 1696
    .end local v5    # "c":I
    goto :goto_10

    .line 1697
    .end local v4    # "i":I
    :cond_29
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1698
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1699
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1701
    .end local v2    # "rulesSource":Ljava/lang/StringBuffer;
    .end local v3    # "id":Ljava/lang/String;
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 5
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    .line 1318
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    .line 1319
    return-void
.end method

.method public final whitelist test-api finishTransliteration(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)V
    .registers 5
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;

    .line 889
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/icu/text/Transliterator$Position;->validate(I)V

    .line 890
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    .line 891
    return-void
.end method

.method public whitelist test-api getElements()[Landroid/icu/text/Transliterator;
    .registers 5

    .line 1719
    instance-of v0, p0, Landroid/icu/text/CompoundTransliterator;

    if-eqz v0, :cond_1b

    .line 1720
    move-object v0, p0

    check-cast v0, Landroid/icu/text/CompoundTransliterator;

    .line 1721
    .local v0, "cpd":Landroid/icu/text/CompoundTransliterator;
    invoke-virtual {v0}, Landroid/icu/text/CompoundTransliterator;->getCount()I

    move-result v1

    new-array v1, v1, [Landroid/icu/text/Transliterator;

    .line 1722
    .local v1, "result":[Landroid/icu/text/Transliterator;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    .line 1723
    invoke-virtual {v0, v2}, Landroid/icu/text/CompoundTransliterator;->getTransliterator(I)Landroid/icu/text/Transliterator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1722
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1725
    .end local v0    # "cpd":Landroid/icu/text/CompoundTransliterator;
    .end local v2    # "i":I
    :cond_1a
    goto :goto_20

    .line 1726
    .end local v1    # "result":[Landroid/icu/text/Transliterator;
    :cond_1b
    filled-new-array {p0}, [Landroid/icu/text/Transliterator;

    move-result-object v0

    move-object v1, v0

    .line 1728
    .restart local v1    # "result":[Landroid/icu/text/Transliterator;
    :goto_20
    return-object v1
.end method

.method public final whitelist test-api getFilter()Landroid/icu/text/UnicodeFilter;
    .registers 2

    .line 1484
    iget-object v0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public greylist-max-o getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 7
    .param p1, "externalFilter"    # Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1849
    iget-object v0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    if-nez v0, :cond_5

    .line 1850
    return-object p1

    .line 1852
    :cond_5
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 1857
    .local v0, "filterSet":Landroid/icu/text/UnicodeSet;
    :try_start_a
    iget-object v1, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_c} :catch_d

    .line 1860
    .local v1, "temp":Landroid/icu/text/UnicodeSet;
    goto :goto_1a

    .line 1858
    .end local v1    # "temp":Landroid/icu/text/UnicodeSet;
    :catch_d
    move-exception v1

    .line 1859
    .local v1, "e":Ljava/lang/ClassCastException;
    iget-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    new-instance v3, Landroid/icu/text/UnicodeSet;

    invoke-direct {v3}, Landroid/icu/text/UnicodeSet;-><init>()V

    move-object v4, v3

    .local v4, "temp":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    move-object v1, v4

    .line 1861
    .end local v4    # "temp":Landroid/icu/text/UnicodeSet;
    .local v1, "temp":Landroid/icu/text/UnicodeSet;
    :goto_1a
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    return-object v2
.end method

.method public final whitelist test-api getID()Ljava/lang/String;
    .registers 2

    .line 1355
    iget-object v0, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getInverse()Landroid/icu/text/Transliterator;
    .registers 3

    .line 1881
    iget-object v0, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getMaximumContextLength()I
    .registers 2

    .line 1333
    iget v0, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    return v0
.end method

.method public final whitelist test-api getSourceSet()Landroid/icu/text/UnicodeSet;
    .registers 4

    .line 1741
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1742
    .local v0, "result":Landroid/icu/text/UnicodeSet;
    sget-object v1, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v1, v0, v2}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    .line 1743
    return-object v0
.end method

.method public whitelist test-api getTargetSet()Landroid/icu/text/UnicodeSet;
    .registers 4

    .line 1784
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1785
    .local v0, "result":Landroid/icu/text/UnicodeSet;
    sget-object v1, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    .line 1786
    return-object v0
.end method

.method protected greylist-max-o handleGetSourceSet()Landroid/icu/text/UnicodeSet;
    .registers 2

    .line 1760
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    return-object v0
.end method

.method protected abstract greylist-max-o handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
.end method

.method public whitelist test-api setFilter(Landroid/icu/text/UnicodeFilter;)V
    .registers 4
    .param p1, "filter"    # Landroid/icu/text/UnicodeFilter;

    .line 1496
    if-nez p1, :cond_6

    .line 1497
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    goto :goto_27

    .line 1501
    :cond_6
    :try_start_6
    new-instance v0, Landroid/icu/text/UnicodeSet;

    move-object v1, p1

    check-cast v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15

    .line 1506
    goto :goto_27

    .line 1502
    :catch_15
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v1, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    .line 1504
    iget-object v1, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeFilter;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    .line 1505
    iget-object v1, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 1508
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    return-void
.end method

.method protected final greylist-max-o setID(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 1364
    iput-object p1, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    .line 1365
    return-void
.end method

.method protected greylist-max-o setMaximumContextLength(I)V
    .registers 5
    .param p1, "a"    # I

    .line 1342
    if-ltz p1, :cond_5

    .line 1345
    iput p1, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    .line 1346
    return-void

    .line 1343
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid context length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toRules(Z)Ljava/lang/String;
    .registers 3
    .param p1, "escapeUnprintable"    # Z

    .line 1670
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->baseToRules(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 455
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o transform(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .line 2209
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api transliterate(Landroid/icu/text/Replaceable;II)I
    .registers 7
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 735
    if-ltz p2, :cond_18

    if-lt p3, p2, :cond_18

    .line 737
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-ge v0, p3, :cond_b

    goto :goto_18

    .line 741
    :cond_b
    new-instance v0, Landroid/icu/text/Transliterator$Position;

    invoke-direct {v0, p2, p3, p2}, Landroid/icu/text/Transliterator$Position;-><init>(III)V

    .line 742
    .local v0, "pos":Landroid/icu/text/Transliterator$Position;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    .line 743
    iget v1, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    return v1

    .line 738
    .end local v0    # "pos":Landroid/icu/text/Transliterator$Position;
    :cond_18
    :goto_18
    const/4 v0, -0x1

    return v0
.end method

.method public final whitelist test-api transliterate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 761
    new-instance v0, Landroid/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, "result":Landroid/icu/text/ReplaceableString;
    invoke-virtual {p0, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;)V

    .line 763
    invoke-virtual {v0}, Landroid/icu/text/ReplaceableString;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist test-api transliterate(Landroid/icu/text/Replaceable;)V
    .registers 4
    .param p1, "text"    # Landroid/icu/text/Replaceable;

    .line 751
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;II)I

    .line 752
    return-void
.end method

.method public final whitelist test-api transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)V
    .registers 4
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;

    .line 874
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public final whitelist test-api transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;I)V
    .registers 5
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "insertion"    # I

    .line 859
    invoke-static {p3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public final whitelist test-api transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "insertion"    # Ljava/lang/String;

    .line 814
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/icu/text/Transliterator$Position;->validate(I)V

    .line 817
    if-eqz p3, :cond_22

    .line 818
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-interface {p1, v0, v1, p3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 819
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 820
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 823
    :cond_22
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    const/4 v1, 0x1

    if-lez v0, :cond_35

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v0, v1

    .line 824
    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 829
    return-void

    .line 832
    :cond_35
    invoke-direct {p0, p1, p2, v1, v1}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    .line 840
    return-void
.end method
