.class public abstract Landroid/icu/text/Transliterator;
.super Ljava/lang/Object;
.source "Transliterator.java"

# interfaces
.implements Landroid/icu/text/StringTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Transliterator$Factory;,
        Landroid/icu/text/Transliterator$Position;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final FORWARD:I = 0x0

.field static final ID_DELIM:C = ';'

.field static final ID_SEP:C = '-'

.field private static final RB_DISPLAY_NAME_PATTERN:Ljava/lang/String; = "TransliteratorNamePattern"

.field private static final RB_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "%Translit%%"

.field private static final RB_RULE_BASED_IDS:Ljava/lang/String; = "RuleBasedTransliteratorIDs"

.field private static final RB_SCRIPT_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "%Translit%"

.field public static final REVERSE:I = 0x1

.field private static final ROOT:Ljava/lang/String; = "root"

.field static final VARIANT_SEP:C = '/'

.field private static displayNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static registry:Landroid/icu/text/TransliteratorRegistry;


# instance fields
.field private ID:Ljava/lang/String;

.field private filter:Landroid/icu/text/UnicodeSet;

.field private maximumContextLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    #@0
    .prologue
    const/4 v15, 0x1

    #@1
    const/4 v14, 0x0

    #@2
    .line 1825
    new-instance v0, Landroid/icu/text/TransliteratorRegistry;

    #@4
    invoke-direct {v0}, Landroid/icu/text/TransliteratorRegistry;-><init>()V

    #@7
    sput-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@9
    .line 1828
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    #@14
    .line 1864
    const-string/jumbo v0, "android/icu/impl/data/icudt56b/translit"

    #@17
    const-string/jumbo v3, "root"

    #@1a
    invoke-static {v0, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1d
    move-result-object v6

    #@1e
    .line 1865
    .local v6, "bundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v0, "RuleBasedTransliteratorIDs"

    #@21
    invoke-virtual {v6, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@24
    move-result-object v12

    #@25
    .line 1868
    .local v12, "transIDs":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v12}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@28
    move-result v9

    #@29
    .line 1869
    .local v9, "maxRows":I
    const/4 v11, 0x0

    #@2a
    .local v11, "row":I
    :goto_0
    if-ge v11, v9, :cond_4

    #@2c
    .line 1870
    invoke-virtual {v12, v11}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@2f
    move-result-object v7

    #@30
    .line 1871
    .local v7, "colBund":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 1872
    .local v1, "ID":Ljava/lang/String;
    invoke-virtual {v7, v14}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@37
    move-result-object v10

    #@38
    .line 1873
    .local v10, "res":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@3b
    move-result-object v13

    #@3c
    .line 1874
    .local v13, "type":Ljava/lang/String;
    const-string/jumbo v0, "file"

    #@3f
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_0

    #@45
    const-string/jumbo v0, "internal"

    #@48
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 1877
    :cond_0
    const-string/jumbo v0, "resource"

    #@51
    invoke-virtual {v10, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 1879
    .local v2, "resString":Ljava/lang/String;
    const-string/jumbo v0, "direction"

    #@58
    invoke-virtual {v10, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    .line 1880
    .local v8, "direction":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    #@5f
    move-result v0

    #@60
    sparse-switch v0, :sswitch_data_0

    #@63
    .line 1888
    new-instance v0, Ljava/lang/RuntimeException;

    #@65
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "Can\'t parse direction: "

    #@6d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v0

    #@7d
    .line 1882
    :sswitch_0
    const/4 v4, 0x0

    #@7e
    .line 1890
    .local v4, "dir":I
    :goto_1
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@80
    .line 1892
    const-string/jumbo v3, "UTF-16"

    #@83
    .line 1894
    const-string/jumbo v5, "internal"

    #@86
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v5

    #@8a
    if-eqz v5, :cond_1

    #@8c
    move v5, v14

    #@8d
    .line 1890
    :goto_2
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    #@90
    .line 1869
    .end local v4    # "dir":I
    .end local v8    # "direction":Ljava/lang/String;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    #@92
    goto :goto_0

    #@93
    .line 1885
    .restart local v8    # "direction":Ljava/lang/String;
    :sswitch_1
    const/4 v4, 0x1

    #@94
    .line 1886
    .restart local v4    # "dir":I
    goto :goto_1

    #@95
    :cond_1
    move v5, v15

    #@96
    .line 1894
    goto :goto_2

    #@97
    .line 1895
    .end local v2    # "resString":Ljava/lang/String;
    .end local v4    # "dir":I
    .end local v8    # "direction":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "alias"

    #@9a
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v0

    #@9e
    if-eqz v0, :cond_3

    #@a0
    .line 1897
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@a3
    move-result-object v2

    #@a4
    .line 1898
    .restart local v2    # "resString":Ljava/lang/String;
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@a6
    invoke-virtual {v0, v1, v2, v15}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    #@a9
    goto :goto_3

    #@aa
    .line 1901
    .end local v2    # "resString":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    #@ac
    new-instance v3, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v5, "Unknow type: "

    #@b4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v3

    #@b8
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v0

    #@c4
    .line 1905
    .end local v1    # "ID":Ljava/lang/String;
    .end local v7    # "colBund":Landroid/icu/util/UResourceBundle;
    .end local v10    # "res":Landroid/icu/util/UResourceBundle;
    .end local v13    # "type":Ljava/lang/String;
    :cond_4
    sget-object v0, Landroid/icu/text/NullTransliterator;->SHORT_ID:Ljava/lang/String;

    #@c6
    sget-object v3, Landroid/icu/text/NullTransliterator;->SHORT_ID:Ljava/lang/String;

    #@c8
    invoke-static {v0, v3, v14}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    #@cb
    .line 1908
    sget-object v0, Landroid/icu/text/NullTransliterator;->_ID:Ljava/lang/String;

    #@cd
    .line 1909
    const-class v3, Landroid/icu/text/NullTransliterator;

    #@cf
    const/4 v5, 0x0

    #@d0
    .line 1908
    invoke-static {v0, v3, v5}, Landroid/icu/text/Transliterator;->registerClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    #@d3
    .line 1910
    invoke-static {}, Landroid/icu/text/RemoveTransliterator;->register()V

    #@d6
    .line 1911
    invoke-static {}, Landroid/icu/text/EscapeTransliterator;->register()V

    #@d9
    .line 1912
    invoke-static {}, Landroid/icu/text/UnescapeTransliterator;->register()V

    #@dc
    .line 1913
    invoke-static {}, Landroid/icu/text/LowercaseTransliterator;->register()V

    #@df
    .line 1914
    invoke-static {}, Landroid/icu/text/UppercaseTransliterator;->register()V

    #@e2
    .line 1915
    invoke-static {}, Landroid/icu/text/TitlecaseTransliterator;->register()V

    #@e5
    .line 1916
    invoke-static {}, Landroid/icu/text/CaseFoldTransliterator;->register()V

    #@e8
    .line 1917
    invoke-static {}, Landroid/icu/text/UnicodeNameTransliterator;->register()V

    #@eb
    .line 1918
    invoke-static {}, Landroid/icu/text/NameUnicodeTransliterator;->register()V

    #@ee
    .line 1919
    invoke-static {}, Landroid/icu/text/NormalizationTransliterator;->register()V

    #@f1
    .line 1920
    invoke-static {}, Landroid/icu/text/BreakTransliterator;->register()V

    #@f4
    .line 1921
    invoke-static {}, Landroid/icu/text/AnyTransliterator;->register()V

    #@f7
    .line 228
    return-void

    #@f8
    .line 1880
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/icu/text/UnicodeFilter;

    #@0
    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 419
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    #@6
    .line 486
    if-nez p1, :cond_0

    #@8
    .line 487
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@d
    throw v0

    #@e
    .line 489
    :cond_0
    iput-object p1, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    #@10
    .line 490
    invoke-virtual {p0, p2}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    #@13
    .line 485
    return-void
.end method

.method public static final createFromRules(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    .locals 13
    .param p0, "ID"    # Ljava/lang/String;
    .param p1, "rules"    # Ljava/lang/String;
    .param p2, "dir"    # I

    #@0
    .prologue
    .line 1374
    const/4 v7, 0x0

    #@1
    .line 1376
    .local v7, "t":Landroid/icu/text/Transliterator;
    new-instance v4, Landroid/icu/text/TransliteratorParser;

    #@3
    invoke-direct {v4}, Landroid/icu/text/TransliteratorParser;-><init>()V

    #@6
    .line 1377
    .local v4, "parser":Landroid/icu/text/TransliteratorParser;
    invoke-virtual {v4, p1, p2}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V

    #@9
    .line 1380
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@b
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@e
    move-result v10

    #@f
    if-nez v10, :cond_1

    #@11
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@13
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@16
    move-result v10

    #@17
    if-nez v10, :cond_1

    #@19
    .line 1381
    new-instance v7, Landroid/icu/text/NullTransliterator;

    #@1b
    .end local v7    # "t":Landroid/icu/text/Transliterator;
    invoke-direct {v7}, Landroid/icu/text/NullTransliterator;-><init>()V

    #@1e
    .line 1429
    .local v7, "t":Landroid/icu/text/Transliterator;
    :cond_0
    :goto_0
    return-object v7

    #@1f
    .line 1383
    .local v7, "t":Landroid/icu/text/Transliterator;
    :cond_1
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@21
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@24
    move-result v10

    #@25
    if-nez v10, :cond_2

    #@27
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@29
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@2c
    move-result v10

    #@2d
    const/4 v11, 0x1

    #@2e
    if-ne v10, v11, :cond_2

    #@30
    .line 1384
    new-instance v7, Landroid/icu/text/RuleBasedTransliterator;

    #@32
    .end local v7    # "t":Landroid/icu/text/Transliterator;
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@34
    const/4 v11, 0x0

    #@35
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v10

    #@39
    check-cast v10, Landroid/icu/text/RuleBasedTransliterator$Data;

    #@3b
    iget-object v11, v4, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@3d
    invoke-direct {v7, p0, v10, v11}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    #@40
    .line 1383
    .local v7, "t":Landroid/icu/text/Transliterator;
    goto :goto_0

    #@41
    .line 1386
    .local v7, "t":Landroid/icu/text/Transliterator;
    :cond_2
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@43
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@46
    move-result v10

    #@47
    const/4 v11, 0x1

    #@48
    if-ne v10, v11, :cond_4

    #@4a
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@4c
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@4f
    move-result v10

    #@50
    if-nez v10, :cond_4

    #@52
    .line 1391
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@54
    if-eqz v10, :cond_3

    #@56
    .line 1392
    new-instance v10, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    iget-object v11, v4, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@5d
    const/4 v12, 0x0

    #@5e
    invoke-virtual {v11, v12}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    #@61
    move-result-object v11

    #@62
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v10

    #@66
    const-string/jumbo v11, ";"

    #@69
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v11

    #@6d
    .line 1393
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@6f
    const/4 v12, 0x0

    #@70
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@73
    move-result-object v10

    #@74
    check-cast v10, Ljava/lang/String;

    #@76
    .line 1392
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v10

    #@7a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v10

    #@7e
    invoke-static {v10}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@81
    move-result-object v7

    #@82
    .line 1398
    .local v7, "t":Landroid/icu/text/Transliterator;
    :goto_1
    if-eqz v7, :cond_0

    #@84
    .line 1399
    invoke-virtual {v7, p0}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    #@87
    goto :goto_0

    #@88
    .line 1395
    .local v7, "t":Landroid/icu/text/Transliterator;
    :cond_3
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@8a
    const/4 v11, 0x0

    #@8b
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v10

    #@8f
    check-cast v10, Ljava/lang/String;

    #@91
    invoke-static {v10}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@94
    move-result-object v7

    #@95
    .local v7, "t":Landroid/icu/text/Transliterator;
    goto :goto_1

    #@96
    .line 1403
    .local v7, "t":Landroid/icu/text/Transliterator;
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    #@98
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@9b
    .line 1404
    .local v9, "transliterators":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    const/4 v5, 0x1

    #@9c
    .line 1406
    .local v5, "passNumber":I
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@9e
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@a1
    move-result v10

    #@a2
    iget-object v11, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@a4
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@a7
    move-result v11

    #@a8
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@ab
    move-result v3

    #@ac
    .line 1407
    .local v3, "limit":I
    const/4 v1, 0x0

    #@ad
    .local v1, "i":I
    move v6, v5

    #@ae
    .end local v5    # "passNumber":I
    .local v6, "passNumber":I
    :goto_2
    if-ge v1, v3, :cond_6

    #@b0
    .line 1408
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@b2
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@b5
    move-result v10

    #@b6
    if-ge v1, v10, :cond_5

    #@b8
    .line 1409
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@ba
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@bd
    move-result-object v2

    #@be
    check-cast v2, Ljava/lang/String;

    #@c0
    .line 1410
    .local v2, "idBlock":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@c3
    move-result v10

    #@c4
    if-lez v10, :cond_5

    #@c6
    .line 1411
    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@c9
    move-result-object v8

    #@ca
    .line 1412
    .local v8, "temp":Landroid/icu/text/Transliterator;
    instance-of v10, v8, Landroid/icu/text/NullTransliterator;

    #@cc
    if-nez v10, :cond_5

    #@ce
    .line 1413
    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@d1
    move-result-object v10

    #@d2
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d5
    .line 1416
    .end local v2    # "idBlock":Ljava/lang/String;
    .end local v8    # "temp":Landroid/icu/text/Transliterator;
    :cond_5
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@d7
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@da
    move-result v10

    #@db
    if-ge v1, v10, :cond_7

    #@dd
    .line 1417
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@df
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e2
    move-result-object v0

    #@e3
    check-cast v0, Landroid/icu/text/RuleBasedTransliterator$Data;

    #@e5
    .line 1418
    .local v0, "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    new-instance v10, Landroid/icu/text/RuleBasedTransliterator;

    #@e7
    new-instance v11, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v12, "%Pass"

    #@ef
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v11

    #@f3
    add-int/lit8 v5, v6, 0x1

    #@f5
    .end local v6    # "passNumber":I
    .restart local v5    # "passNumber":I
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v11

    #@f9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v11

    #@fd
    const/4 v12, 0x0

    #@fe
    invoke-direct {v10, v11, v0, v12}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    #@101
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@104
    .line 1407
    .end local v0    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@106
    move v6, v5

    #@107
    .end local v5    # "passNumber":I
    .restart local v6    # "passNumber":I
    goto :goto_2

    #@108
    .line 1422
    :cond_6
    new-instance v7, Landroid/icu/text/CompoundTransliterator;

    #@10a
    .end local v7    # "t":Landroid/icu/text/Transliterator;
    add-int/lit8 v10, v6, -0x1

    #@10c
    invoke-direct {v7, v9, v10}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    #@10f
    .line 1423
    .local v7, "t":Landroid/icu/text/Transliterator;
    invoke-virtual {v7, p0}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    #@112
    .line 1424
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@114
    if-eqz v10, :cond_0

    #@116
    .line 1425
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@118
    invoke-virtual {v7, v10}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    #@11b
    goto/16 :goto_0

    #@11d
    .local v7, "t":Landroid/icu/text/Transliterator;
    :cond_7
    move v5, v6

    #@11e
    .end local v6    # "passNumber":I
    .restart local v5    # "passNumber":I
    goto :goto_3
.end method

.method private filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V
    .locals 24
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z
    .param p4, "rollback"    # Z

    #@0
    .prologue
    .line 781
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@4
    move-object/from16 v21, v0

    #@6
    if-nez v21, :cond_0

    #@8
    if-eqz p4, :cond_3

    #@a
    .line 810
    :cond_0
    move-object/from16 v0, p2

    #@c
    iget v7, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@e
    .line 822
    .local v7, "globalLimit":I
    const/4 v10, 0x0

    #@f
    .line 829
    .local v10, "log":Ljava/lang/StringBuffer;
    :cond_1
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@13
    move-object/from16 v21, v0

    #@15
    if-eqz v21, :cond_5

    #@17
    .line 835
    :goto_0
    move-object/from16 v0, p2

    #@19
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@1b
    move/from16 v21, v0

    #@1d
    move/from16 v0, v21

    #@1f
    if-ge v0, v7, :cond_2

    #@21
    .line 836
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@25
    move-object/from16 v21, v0

    #@27
    move-object/from16 v0, p2

    #@29
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@2b
    move/from16 v22, v0

    #@2d
    move-object/from16 v0, p1

    #@2f
    move/from16 v1, v22

    #@31
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@34
    move-result v4

    #@35
    .local v4, "c":I
    move-object/from16 v0, v21

    #@37
    invoke-virtual {v0, v4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@3a
    move-result v21

    #@3b
    if-eqz v21, :cond_4

    #@3d
    .line 841
    .end local v4    # "c":I
    :cond_2
    move-object/from16 v0, p2

    #@3f
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@41
    move/from16 v21, v0

    #@43
    move/from16 v0, v21

    #@45
    move-object/from16 v1, p2

    #@47
    iput v0, v1, Landroid/icu/text/Transliterator$Position;->limit:I

    #@49
    .line 842
    :goto_1
    move-object/from16 v0, p2

    #@4b
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@4d
    move/from16 v21, v0

    #@4f
    move/from16 v0, v21

    #@51
    if-ge v0, v7, :cond_5

    #@53
    .line 843
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@57
    move-object/from16 v21, v0

    #@59
    move-object/from16 v0, p2

    #@5b
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@5d
    move/from16 v22, v0

    #@5f
    move-object/from16 v0, p1

    #@61
    move/from16 v1, v22

    #@63
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@66
    move-result v4

    #@67
    .restart local v4    # "c":I
    move-object/from16 v0, v21

    #@69
    invoke-virtual {v0, v4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@6c
    move-result v21

    #@6d
    .line 842
    if-eqz v21, :cond_5

    #@6f
    .line 844
    move-object/from16 v0, p2

    #@71
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@73
    move/from16 v21, v0

    #@75
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@78
    move-result v22

    #@79
    add-int v21, v21, v22

    #@7b
    move/from16 v0, v21

    #@7d
    move-object/from16 v1, p2

    #@7f
    iput v0, v1, Landroid/icu/text/Transliterator$Position;->limit:I

    #@81
    goto :goto_1

    #@82
    .line 782
    .end local v4    # "c":I
    .end local v7    # "globalLimit":I
    .end local v10    # "log":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual/range {p0 .. p3}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    #@85
    .line 783
    return-void

    #@86
    .line 837
    .restart local v4    # "c":I
    .restart local v7    # "globalLimit":I
    .restart local v10    # "log":Ljava/lang/StringBuffer;
    :cond_4
    move-object/from16 v0, p2

    #@88
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@8a
    move/from16 v21, v0

    #@8c
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@8f
    move-result v22

    #@90
    add-int v21, v21, v22

    #@92
    move/from16 v0, v21

    #@94
    move-object/from16 v1, p2

    #@96
    iput v0, v1, Landroid/icu/text/Transliterator$Position;->start:I

    #@98
    goto/16 :goto_0

    #@9a
    .line 851
    .end local v4    # "c":I
    :cond_5
    move-object/from16 v0, p2

    #@9c
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@9e
    move/from16 v21, v0

    #@a0
    move-object/from16 v0, p2

    #@a2
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@a4
    move/from16 v22, v0

    #@a6
    move/from16 v0, v21

    #@a8
    move/from16 v1, v22

    #@aa
    if-ne v0, v1, :cond_7

    #@ac
    .line 1070
    :cond_6
    :goto_2
    move-object/from16 v0, p2

    #@ae
    iput v7, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@b0
    .line 778
    return-void

    #@b1
    .line 860
    :cond_7
    move-object/from16 v0, p2

    #@b3
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@b5
    move/from16 v21, v0

    #@b7
    move/from16 v0, v21

    #@b9
    if-ge v0, v7, :cond_8

    #@bb
    const/4 v8, 0x0

    #@bc
    .line 892
    :goto_3
    if-eqz p4, :cond_b

    #@be
    if-eqz v8, :cond_b

    #@c0
    .line 900
    move-object/from16 v0, p2

    #@c2
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@c4
    move/from16 v18, v0

    #@c6
    .line 901
    .local v18, "runStart":I
    move-object/from16 v0, p2

    #@c8
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@ca
    move/from16 v17, v0

    #@cc
    .line 902
    .local v17, "runLimit":I
    sub-int v16, v17, v18

    #@ce
    .line 905
    .local v16, "runLength":I
    invoke-interface/range {p1 .. p1}, Landroid/icu/text/Replaceable;->length()I

    #@d1
    move-result v13

    #@d2
    .line 906
    .local v13, "rollbackOrigin":I
    move-object/from16 v0, p1

    #@d4
    move/from16 v1, v18

    #@d6
    move/from16 v2, v17

    #@d8
    invoke-interface {v0, v1, v2, v13}, Landroid/icu/text/Replaceable;->copy(III)V

    #@db
    .line 913
    move/from16 v12, v18

    #@dd
    .line 914
    .local v12, "passStart":I
    move v14, v13

    #@de
    .line 918
    .local v14, "rollbackStart":I
    move-object/from16 v0, p2

    #@e0
    iget v11, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@e2
    .line 922
    .local v11, "passLimit":I
    const/16 v20, 0x0

    #@e4
    .line 925
    .local v20, "uncommittedLength":I
    const/16 v19, 0x0

    #@e6
    .line 933
    .local v19, "totalDelta":I
    :goto_4
    move-object/from16 v0, p1

    #@e8
    invoke-interface {v0, v11}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@eb
    move-result v21

    #@ec
    invoke-static/range {v21 .. v21}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@ef
    move-result v5

    #@f0
    .line 934
    .local v5, "charLength":I
    add-int/2addr v11, v5

    #@f1
    .line 935
    move/from16 v0, v17

    #@f3
    if-le v11, v0, :cond_9

    #@f5
    .line 1012
    add-int v13, v13, v19

    #@f7
    .line 1013
    add-int v7, v7, v19

    #@f9
    .line 1016
    add-int v21, v13, v16

    #@fb
    const-string/jumbo v22, ""

    #@fe
    move-object/from16 v0, p1

    #@100
    move/from16 v1, v21

    #@102
    move-object/from16 v2, v22

    #@104
    invoke-interface {v0, v13, v1, v2}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@107
    .line 1019
    move-object/from16 v0, p2

    #@109
    iput v12, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@10b
    .line 1060
    .end local v5    # "charLength":I
    .end local v11    # "passLimit":I
    .end local v12    # "passStart":I
    .end local v13    # "rollbackOrigin":I
    .end local v14    # "rollbackStart":I
    .end local v16    # "runLength":I
    .end local v17    # "runLimit":I
    .end local v18    # "runStart":I
    .end local v19    # "totalDelta":I
    .end local v20    # "uncommittedLength":I
    :goto_5
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@10f
    move-object/from16 v21, v0

    #@111
    if-eqz v21, :cond_6

    #@113
    if-eqz v8, :cond_1

    #@115
    goto :goto_2

    #@116
    .line 860
    :cond_8
    move/from16 v8, p3

    #@118
    .local v8, "isIncrementalRun":Z
    goto :goto_3

    #@119
    .line 938
    .end local v8    # "isIncrementalRun":Z
    .restart local v5    # "charLength":I
    .restart local v11    # "passLimit":I
    .restart local v12    # "passStart":I
    .restart local v13    # "rollbackOrigin":I
    .restart local v14    # "rollbackStart":I
    .restart local v16    # "runLength":I
    .restart local v17    # "runLimit":I
    .restart local v18    # "runStart":I
    .restart local v19    # "totalDelta":I
    .restart local v20    # "uncommittedLength":I
    :cond_9
    add-int v20, v20, v5

    #@11b
    .line 940
    move-object/from16 v0, p2

    #@11d
    iput v11, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@11f
    .line 952
    const/16 v21, 0x1

    #@121
    move-object/from16 v0, p0

    #@123
    move-object/from16 v1, p1

    #@125
    move-object/from16 v2, p2

    #@127
    move/from16 v3, v21

    #@129
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    #@12c
    .line 959
    move-object/from16 v0, p2

    #@12e
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@130
    move/from16 v21, v0

    #@132
    sub-int v6, v21, v11

    #@134
    .line 964
    .local v6, "delta":I
    move-object/from16 v0, p2

    #@136
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@138
    move/from16 v21, v0

    #@13a
    move-object/from16 v0, p2

    #@13c
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@13e
    move/from16 v22, v0

    #@140
    move/from16 v0, v21

    #@142
    move/from16 v1, v22

    #@144
    if-eq v0, v1, :cond_a

    #@146
    .line 967
    add-int v21, v14, v6

    #@148
    move-object/from16 v0, p2

    #@14a
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@14c
    move/from16 v22, v0

    #@14e
    sub-int v22, v22, v12

    #@150
    sub-int v15, v21, v22

    #@152
    .line 970
    .local v15, "rs":I
    move-object/from16 v0, p2

    #@154
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@156
    move/from16 v21, v0

    #@158
    const-string/jumbo v22, ""

    #@15b
    move-object/from16 v0, p1

    #@15d
    move/from16 v1, v21

    #@15f
    move-object/from16 v2, v22

    #@161
    invoke-interface {v0, v12, v1, v2}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@164
    .line 973
    add-int v21, v15, v20

    #@166
    move-object/from16 v0, p1

    #@168
    move/from16 v1, v21

    #@16a
    invoke-interface {v0, v15, v1, v12}, Landroid/icu/text/Replaceable;->copy(III)V

    #@16d
    .line 976
    move-object/from16 v0, p2

    #@16f
    iput v12, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@171
    .line 977
    move-object/from16 v0, p2

    #@173
    iput v11, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@175
    .line 978
    move-object/from16 v0, p2

    #@177
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@179
    move/from16 v21, v0

    #@17b
    sub-int v21, v21, v6

    #@17d
    move/from16 v0, v21

    #@17f
    move-object/from16 v1, p2

    #@181
    iput v0, v1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@183
    goto/16 :goto_4

    #@185
    .line 990
    .end local v15    # "rs":I
    :cond_a
    move-object/from16 v0, p2

    #@187
    iget v11, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@189
    move v12, v11

    #@18a
    .line 996
    add-int v21, v6, v20

    #@18c
    add-int v14, v14, v21

    #@18e
    .line 997
    const/16 v20, 0x0

    #@190
    .line 1000
    add-int v17, v17, v6

    #@192
    .line 1001
    add-int v19, v19, v6

    #@194
    goto/16 :goto_4

    #@196
    .line 1030
    .end local v5    # "charLength":I
    .end local v6    # "delta":I
    .end local v11    # "passLimit":I
    .end local v12    # "passStart":I
    .end local v13    # "rollbackOrigin":I
    .end local v14    # "rollbackStart":I
    .end local v16    # "runLength":I
    .end local v17    # "runLimit":I
    .end local v18    # "runStart":I
    .end local v19    # "totalDelta":I
    .end local v20    # "uncommittedLength":I
    :cond_b
    move-object/from16 v0, p2

    #@198
    iget v9, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@19a
    .line 1031
    .local v9, "limit":I
    move-object/from16 v0, p0

    #@19c
    move-object/from16 v1, p1

    #@19e
    move-object/from16 v2, p2

    #@1a0
    invoke-virtual {v0, v1, v2, v8}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    #@1a3
    .line 1032
    move-object/from16 v0, p2

    #@1a5
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@1a7
    move/from16 v21, v0

    #@1a9
    sub-int v6, v21, v9

    #@1ab
    .line 1046
    .restart local v6    # "delta":I
    if-nez v8, :cond_c

    #@1ad
    move-object/from16 v0, p2

    #@1af
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@1b1
    move/from16 v21, v0

    #@1b3
    move-object/from16 v0, p2

    #@1b5
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@1b7
    move/from16 v22, v0

    #@1b9
    move/from16 v0, v21

    #@1bb
    move/from16 v1, v22

    #@1bd
    if-eq v0, v1, :cond_c

    #@1bf
    .line 1047
    new-instance v21, Ljava/lang/RuntimeException;

    #@1c1
    new-instance v22, Ljava/lang/StringBuilder;

    #@1c3
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1c6
    const-string/jumbo v23, "ERROR: Incomplete non-incremental transliteration by "

    #@1c9
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v22

    #@1cd
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@1d0
    move-result-object v23

    #@1d1
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v22

    #@1d5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d8
    move-result-object v22

    #@1d9
    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1dc
    throw v21

    #@1dd
    .line 1053
    :cond_c
    add-int/2addr v7, v6

    #@1de
    goto/16 :goto_5
.end method

.method public static final getAvailableIDs()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1791
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableIDs()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final getAvailableSources()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1801
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableSources()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1811
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1820
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/TransliteratorRegistry;->getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "canonID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1352
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 1353
    .local v0, "s":Ljava/lang/StringBuffer;
    sget-object v2, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@8
    invoke-virtual {v2, p0, v0}, Landroid/icu/text/TransliteratorRegistry;->get(Ljava/lang/String;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;

    #@b
    move-result-object v1

    #@c
    .line 1354
    .local v1, "t":Landroid/icu/text/Transliterator;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1357
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-static {v2, v3}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    #@19
    move-result-object v1

    #@1a
    .line 1359
    :cond_0
    if-eqz v1, :cond_1

    #@1c
    if-eqz p1, :cond_1

    #@1e
    .line 1360
    invoke-virtual {v1, p1}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    #@21
    .line 1362
    :cond_1
    return-object v1
.end method

.method public static final getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1146
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 14
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "inLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/16 v13, 0x2f

    #@2
    const/4 v12, 0x1

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v11, 0x2

    #@5
    .line 1198
    const-string/jumbo v9, "android/icu/impl/data/icudt56b/translit"

    #@8
    .line 1197
    invoke-static {v9, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@e
    .line 1201
    .local v2, "bundle":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {p0}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    #@11
    move-result-object v8

    #@12
    .line 1202
    .local v8, "stv":[Ljava/lang/String;
    if-nez v8, :cond_0

    #@14
    .line 1204
    const-string/jumbo v9, ""

    #@17
    return-object v9

    #@18
    .line 1206
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    aget-object v10, v8, v10

    #@1f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v9

    #@23
    const/16 v10, 0x2d

    #@25
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    move-result-object v9

    #@29
    aget-object v10, v8, v12

    #@2b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v9

    #@2f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 1207
    .local v0, "ID":Ljava/lang/String;
    aget-object v9, v8, v11

    #@35
    if-eqz v9, :cond_1

    #@37
    aget-object v9, v8, v11

    #@39
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@3c
    move-result v9

    #@3d
    if-lez v9, :cond_1

    #@3f
    .line 1208
    new-instance v9, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v9

    #@4c
    aget-object v10, v8, v11

    #@4e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v9

    #@52
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    .line 1212
    :cond_1
    sget-object v9, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    #@58
    new-instance v10, Landroid/icu/util/CaseInsensitiveString;

    #@5a
    invoke-direct {v10, v0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@5d
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    move-result-object v7

    #@61
    check-cast v7, Ljava/lang/String;

    #@63
    .line 1213
    .local v7, "n":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@65
    .line 1214
    return-object v7

    #@66
    .line 1220
    :cond_2
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v10, "%Translit%%"

    #@6e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v2, v9}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@7d
    move-result-object v9

    #@7e
    return-object v9

    #@7f
    .line 1221
    :catch_0
    move-exception v3

    #@80
    .line 1226
    .local v3, "e":Ljava/util/MissingResourceException;
    :try_start_1
    new-instance v5, Ljava/text/MessageFormat;

    #@82
    .line 1227
    const-string/jumbo v9, "TransliteratorNamePattern"

    #@85
    invoke-virtual {v2, v9}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    .line 1226
    invoke-direct {v5, v9}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@8c
    .line 1229
    .local v5, "format":Ljava/text/MessageFormat;
    const/4 v9, 0x3

    #@8d
    new-array v1, v9, [Ljava/lang/Object;

    #@8f
    const/4 v9, 0x2

    #@90
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@93
    move-result-object v9

    #@94
    const/4 v10, 0x0

    #@95
    aput-object v9, v1, v10

    #@97
    const/4 v9, 0x0

    #@98
    aget-object v9, v8, v9

    #@9a
    const/4 v10, 0x1

    #@9b
    aput-object v9, v1, v10

    #@9d
    const/4 v9, 0x1

    #@9e
    aget-object v9, v8, v9

    #@a0
    const/4 v10, 0x2

    #@a1
    aput-object v9, v1, v10
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@a3
    .line 1232
    .local v1, "args":[Ljava/lang/Object;
    const/4 v6, 0x1

    #@a4
    .local v6, "j":I
    :goto_0
    if-gt v6, v11, :cond_3

    #@a6
    .line 1234
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v10, "%Translit%"

    #@ae
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v10

    #@b2
    .line 1235
    aget-object v9, v1, v6

    #@b4
    check-cast v9, Ljava/lang/String;

    #@b6
    .line 1234
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v9

    #@ba
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v9

    #@be
    invoke-virtual {v2, v9}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@c1
    move-result-object v9

    #@c2
    aput-object v9, v1, v6
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    #@c4
    .line 1232
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@c6
    goto :goto_0

    #@c7
    .line 1240
    :cond_3
    const/4 v9, 0x2

    #@c8
    :try_start_3
    aget-object v9, v8, v9

    #@ca
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@cd
    move-result v9

    #@ce
    if-lez v9, :cond_4

    #@d0
    .line 1241
    new-instance v9, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    invoke-virtual {v5, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@d8
    move-result-object v10

    #@d9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v9

    #@dd
    const/16 v10, 0x2f

    #@df
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v9

    #@e3
    const/4 v10, 0x2

    #@e4
    aget-object v10, v8, v10

    #@e6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v9

    #@ea
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v9

    #@ee
    .line 1240
    :goto_2
    return-object v9

    #@ef
    .line 1242
    :cond_4
    invoke-virtual {v5, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    #@f2
    move-result-object v9

    #@f3
    goto :goto_2

    #@f4
    .line 1243
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v5    # "format":Ljava/text/MessageFormat;
    .end local v6    # "j":I
    :catch_1
    move-exception v4

    #@f5
    .line 1248
    .local v4, "e2":Ljava/util/MissingResourceException;
    new-instance v9, Ljava/lang/RuntimeException;

    #@f7
    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    #@fa
    throw v9

    #@fb
    .line 1236
    .end local v4    # "e2":Ljava/util/MissingResourceException;
    .restart local v1    # "args":[Ljava/lang/Object;
    .restart local v5    # "format":Ljava/text/MessageFormat;
    .restart local v6    # "j":I
    :catch_2
    move-exception v3

    #@fc
    goto :goto_1
.end method

.method public static getDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "inLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1168
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 1
    .param p0, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1292
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    .locals 8
    .param p0, "ID"    # Ljava/lang/String;
    .param p1, "dir"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1311
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 1312
    .local v0, "canonID":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 1313
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/TransliteratorIDParser$SingleID;>;"
    new-array v1, v7, [Landroid/icu/text/UnicodeSet;

    #@e
    .line 1314
    .local v1, "globalFilter":[Landroid/icu/text/UnicodeSet;
    invoke-static {p0, p1, v0, v2, v1}, Landroid/icu/text/TransliteratorIDParser;->parseCompoundID(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;[Landroid/icu/text/UnicodeSet;)Z

    #@11
    move-result v5

    #@12
    if-nez v5, :cond_0

    #@14
    .line 1315
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v6, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v7, "Invalid ID "

    #@1e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v5

    #@2e
    .line 1318
    :cond_0
    invoke-static {v2}, Landroid/icu/text/TransliteratorIDParser;->instantiateList(Ljava/util/List;)Ljava/util/List;

    #@31
    move-result-object v4

    #@32
    .line 1321
    .local v4, "translits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    const/4 v3, 0x0

    #@33
    .line 1322
    .local v3, "t":Landroid/icu/text/Transliterator;
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@36
    move-result v5

    #@37
    if-gt v5, v7, :cond_1

    #@39
    const-string/jumbo v5, ";"

    #@3c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    #@3f
    move-result v5

    #@40
    if-ltz v5, :cond_3

    #@42
    .line 1328
    :cond_1
    new-instance v3, Landroid/icu/text/CompoundTransliterator;

    #@44
    .end local v3    # "t":Landroid/icu/text/Transliterator;
    invoke-direct {v3, v4}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;)V

    #@47
    .line 1334
    .local v3, "t":Landroid/icu/text/Transliterator;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v3, v5}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    #@4e
    .line 1335
    aget-object v5, v1, v6

    #@50
    if-eqz v5, :cond_2

    #@52
    .line 1336
    aget-object v5, v1, v6

    #@54
    invoke-virtual {v3, v5}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    #@57
    .line 1338
    :cond_2
    return-object v3

    #@58
    .line 1331
    .local v3, "t":Landroid/icu/text/Transliterator;
    :cond_3
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v3

    #@5c
    .end local v3    # "t":Landroid/icu/text/Transliterator;
    check-cast v3, Landroid/icu/text/Transliterator;

    #@5e
    .local v3, "t":Landroid/icu/text/Transliterator;
    goto :goto_0
.end method

.method public static registerAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "aliasID"    # Ljava/lang/String;
    .param p1, "realID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1726
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    #@6
    .line 1725
    return-void
.end method

.method public static registerAny()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1931
    invoke-static {}, Landroid/icu/text/AnyTransliterator;->register()V

    #@3
    .line 1930
    return-void
.end method

.method public static registerClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0, "ID"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/icu/text/Transliterator;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1666
    .local p1, "transClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/icu/text/Transliterator;>;"
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/Class;Z)V

    #@6
    .line 1667
    if-eqz p2, :cond_0

    #@8
    .line 1668
    sget-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    #@a
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    #@c
    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@f
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 1665
    :cond_0
    return-void
.end method

.method public static registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V
    .locals 2
    .param p0, "ID"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/icu/text/Transliterator$Factory;

    #@0
    .prologue
    .line 1684
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;Z)V

    #@6
    .line 1683
    return-void
.end method

.method public static registerInstance(Landroid/icu/text/Transliterator;)V
    .locals 3
    .param p0, "trans"    # Landroid/icu/text/Transliterator;

    #@0
    .prologue
    .line 1697
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@2
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, v1, p0, v2}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V

    #@a
    .line 1696
    return-void
.end method

.method static registerInstance(Landroid/icu/text/Transliterator;Z)V
    .locals 2
    .param p0, "trans"    # Landroid/icu/text/Transliterator;
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 1710
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@2
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p0, p1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V

    #@9
    .line 1709
    return-void
.end method

.method static registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "inverseTarget"    # Ljava/lang/String;
    .param p2, "bidirectional"    # Z

    #@0
    .prologue
    .line 1764
    invoke-static {p0, p1, p2}, Landroid/icu/text/TransliteratorIDParser;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    #@3
    .line 1763
    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 2
    .param p0, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1775
    sget-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    #@2
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    #@4
    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 1776
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    #@c
    invoke-virtual {v0, p0}, Landroid/icu/text/TransliteratorRegistry;->remove(Ljava/lang/String;)V

    #@f
    .line 1774
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 7
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1594
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    .line 1595
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    new-instance v5, Landroid/icu/text/UnicodeSet;

    #@6
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->handleGetSourceSet()Landroid/icu/text/UnicodeSet;

    #@9
    move-result-object v6

    #@a
    invoke-direct {v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@d
    invoke-virtual {v5, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@10
    move-result-object v4

    #@11
    .line 1597
    .local v4, "temp":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p2, v4}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@14
    .line 1599
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v2

    #@18
    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_1

    #@1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Ljava/lang/String;

    #@24
    .line 1600
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 1601
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_0

    #@2e
    .line 1602
    invoke-virtual {p3, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@31
    goto :goto_0

    #@32
    .line 1593
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected final baseToRules(Z)Ljava/lang/String;
    .locals 7
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    const/16 v6, 0x3b

    #@2
    .line 1455
    if-eqz p1, :cond_2

    #@4
    .line 1456
    new-instance v3, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 1457
    .local v3, "rulesSource":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 1458
    .local v2, "id":Ljava/lang/String;
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@11
    move-result v4

    #@12
    if-ge v1, v4, :cond_1

    #@14
    .line 1459
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@17
    move-result v0

    #@18
    .line 1460
    .local v0, "c":I
    invoke-static {v3, v0}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 1461
    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@21
    .line 1463
    :cond_0
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@24
    move-result v4

    #@25
    add-int/2addr v1, v4

    #@26
    goto :goto_0

    #@27
    .line 1465
    .end local v0    # "c":I
    :cond_1
    const-string/jumbo v4, "::"

    #@2a
    const/4 v5, 0x0

    #@2b
    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    .line 1466
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@31
    .line 1467
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    return-object v4

    #@36
    .line 1469
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "rulesSource":Ljava/lang/StringBuffer;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v5, "::"

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    return-object v4
.end method

.method public filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 1
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    #@0
    .prologue
    .line 1091
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    #@4
    .line 1090
    return-void
.end method

.method public final finishTransliteration(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)V
    .locals 2
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;

    #@0
    .prologue
    .line 663
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2, v0}, Landroid/icu/text/Transliterator$Position;->validate(I)V

    #@7
    .line 664
    const/4 v0, 0x0

    #@8
    const/4 v1, 0x1

    #@9
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    #@c
    .line 662
    return-void
.end method

.method public getElements()[Landroid/icu/text/Transliterator;
    .locals 4

    #@0
    .prologue
    .line 1487
    instance-of v3, p0, Landroid/icu/text/CompoundTransliterator;

    #@2
    if-eqz v3, :cond_0

    #@4
    move-object v0, p0

    #@5
    .line 1488
    nop

    #@6
    nop

    #@7
    .line 1489
    .local v0, "cpd":Landroid/icu/text/CompoundTransliterator;
    invoke-virtual {v0}, Landroid/icu/text/CompoundTransliterator;->getCount()I

    #@a
    move-result v3

    #@b
    new-array v2, v3, [Landroid/icu/text/Transliterator;

    #@d
    .line 1490
    .local v2, "result":[Landroid/icu/text/Transliterator;
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@f
    if-ge v1, v3, :cond_1

    #@11
    .line 1491
    invoke-virtual {v0, v1}, Landroid/icu/text/CompoundTransliterator;->getTransliterator(I)Landroid/icu/text/Transliterator;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v2, v1

    #@17
    .line 1490
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1494
    .end local v0    # "cpd":Landroid/icu/text/CompoundTransliterator;
    .end local v1    # "i":I
    .end local v2    # "result":[Landroid/icu/text/Transliterator;
    :cond_0
    const/4 v3, 0x1

    #@1b
    new-array v2, v3, [Landroid/icu/text/Transliterator;

    #@1d
    const/4 v3, 0x0

    #@1e
    aput-object p0, v2, v3

    #@20
    .line 1496
    .restart local v2    # "result":[Landroid/icu/text/Transliterator;
    :cond_1
    return-object v2
.end method

.method public final getFilter()Landroid/icu/text/UnicodeFilter;
    .locals 1

    #@0
    .prologue
    .line 1256
    iget-object v0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@2
    return-object v0
.end method

.method public getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 4
    .param p1, "externalFilter"    # Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1617
    iget-object v3, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 1618
    return-object p1

    #@5
    .line 1620
    :cond_0
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@7
    invoke-direct {v1, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@a
    .line 1625
    .local v1, "filterSet":Landroid/icu/text/UnicodeSet;
    :try_start_0
    iget-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1629
    .local v2, "temp":Landroid/icu/text/UnicodeSet;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@13
    move-result-object v3

    #@14
    return-object v3

    #@15
    .line 1626
    .end local v2    # "temp":Landroid/icu/text/UnicodeSet;
    :catch_0
    move-exception v0

    #@16
    .line 1627
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v3, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@18
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@1a
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@1d
    .restart local v2    # "temp":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v3, v2}, Landroid/icu/text/UnicodeSet;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    #@20
    goto :goto_0
.end method

.method public final getID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1128
    iget-object v0, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getInverse()Landroid/icu/text/Transliterator;
    .locals 2

    #@0
    .prologue
    .line 1650
    iget-object v0, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final getMaximumContextLength()I
    .locals 1

    #@0
    .prologue
    .line 1106
    iget v0, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    #@2
    return v0
.end method

.method public final getSourceSet()Landroid/icu/text/UnicodeSet;
    .locals 3

    #@0
    .prologue
    .line 1512
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@5
    .line 1513
    .local v0, "result":Landroid/icu/text/UnicodeSet;
    sget-object v1, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    #@7
    invoke-virtual {p0, v1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@a
    move-result-object v1

    #@b
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@d
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@10
    invoke-virtual {p0, v1, v0, v2}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    #@13
    .line 1514
    return-object v0
.end method

.method public getTargetSet()Landroid/icu/text/UnicodeSet;
    .locals 3

    #@0
    .prologue
    .line 1554
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@5
    .line 1555
    .local v0, "result":Landroid/icu/text/UnicodeSet;
    sget-object v1, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    #@7
    invoke-virtual {p0, v1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@a
    move-result-object v1

    #@b
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@d
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@10
    invoke-virtual {p0, v1, v2, v0}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    #@13
    .line 1556
    return-object v0
.end method

.method protected handleGetSourceSet()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    .prologue
    .line 1530
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@5
    return-object v0
.end method

.method protected abstract handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
.end method

.method public setFilter(Landroid/icu/text/UnicodeFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/icu/text/UnicodeFilter;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1268
    if-nez p1, :cond_0

    #@3
    .line 1269
    iput-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@5
    .line 1267
    :goto_0
    return-void

    #@6
    .line 1273
    :cond_0
    :try_start_0
    new-instance v3, Landroid/icu/text/UnicodeSet;

    #@8
    move-object v0, p1

    #@9
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@b
    move-object v2, v0

    #@c
    invoke-direct {v3, v2}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@f
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@12
    move-result-object v2

    #@13
    iput-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 1274
    :catch_0
    move-exception v1

    #@17
    .line 1275
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@19
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@1c
    iput-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@1e
    .line 1276
    iget-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@20
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeFilter;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    #@23
    .line 1277
    iget-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    #@25
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@28
    goto :goto_0
.end method

.method protected final setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1136
    iput-object p1, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    #@2
    .line 1135
    return-void
.end method

.method protected setMaximumContextLength(I)V
    .locals 3
    .param p1, "a"    # I

    #@0
    .prologue
    .line 1114
    if-gez p1, :cond_0

    #@2
    .line 1115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Invalid context length "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1117
    :cond_0
    iput p1, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    #@1e
    .line 1113
    return-void
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 1
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    .line 1439
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->baseToRules(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1955
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transform(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1956
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;II)I
    .locals 3
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 508
    if-ltz p2, :cond_0

    #@3
    .line 509
    if-ge p3, p2, :cond_1

    #@5
    .line 511
    :cond_0
    const/4 v1, -0x1

    #@6
    return v1

    #@7
    .line 510
    :cond_1
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    #@a
    move-result v1

    #@b
    if-lt v1, p3, :cond_0

    #@d
    .line 514
    new-instance v0, Landroid/icu/text/Transliterator$Position;

    #@f
    invoke-direct {v0, p2, p3, p2}, Landroid/icu/text/Transliterator$Position;-><init>(III)V

    #@12
    .line 515
    .local v0, "pos":Landroid/icu/text/Transliterator$Position;
    const/4 v1, 0x1

    #@13
    invoke-direct {p0, p1, v0, v2, v1}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    #@16
    .line 516
    iget v1, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@18
    return v1
.end method

.method public final transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 534
    new-instance v0, Landroid/icu/text/ReplaceableString;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    #@5
    .line 535
    .local v0, "result":Landroid/icu/text/ReplaceableString;
    invoke-virtual {p0, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;)V

    #@8
    .line 536
    invoke-virtual {v0}, Landroid/icu/text/ReplaceableString;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;)V
    .locals 2
    .param p1, "text"    # Landroid/icu/text/Replaceable;

    #@0
    .prologue
    .line 524
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;II)I

    #@8
    .line 523
    return-void
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)V
    .locals 1
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;

    #@0
    .prologue
    .line 648
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V

    #@4
    .line 647
    return-void
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;I)V
    .locals 1
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "insertion"    # I

    #@0
    .prologue
    .line 633
    invoke-static {p3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V

    #@7
    .line 632
    return-void
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "insertion"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 588
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    #@4
    move-result v0

    #@5
    invoke-virtual {p2, v0}, Landroid/icu/text/Transliterator$Position;->validate(I)V

    #@8
    .line 591
    if-eqz p3, :cond_0

    #@a
    .line 592
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@c
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@e
    invoke-interface {p1, v0, v1, p3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@11
    .line 593
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@13
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@1a
    .line 594
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@1c
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@1f
    move-result v1

    #@20
    add-int/2addr v0, v1

    #@21
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@23
    .line 597
    :cond_0
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@25
    if-lez v0, :cond_1

    #@27
    .line 598
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@29
    add-int/lit8 v0, v0, -0x1

    #@2b
    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@2e
    move-result v0

    #@2f
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@32
    move-result v0

    #@33
    .line 597
    if-eqz v0, :cond_1

    #@35
    .line 603
    return-void

    #@36
    .line 606
    :cond_1
    invoke-direct {p0, p1, p2, v2, v2}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    #@39
    .line 587
    return-void
.end method
