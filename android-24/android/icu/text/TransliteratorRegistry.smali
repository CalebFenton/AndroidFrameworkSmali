.class Landroid/icu/text/TransliteratorRegistry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorRegistry$AliasEntry;,
        Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;,
        Landroid/icu/text/TransliteratorRegistry$IDEnumeration;,
        Landroid/icu/text/TransliteratorRegistry$LocaleEntry;,
        Landroid/icu/text/TransliteratorRegistry$ResourceEntry;,
        Landroid/icu/text/TransliteratorRegistry$Spec;
    }
.end annotation


# static fields
.field private static final ANY:Ljava/lang/String; = "Any"

.field private static final DEBUG:Z = false

.field private static final LOCALE_SEP:C = '_'

.field private static final NO_VARIANT:Ljava/lang/String; = ""


# instance fields
.field private availableIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private specDAG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 293
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    #@e
    .line 294
    new-instance v0, Ljava/util/HashMap;

    #@10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@13
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    #@19
    .line 295
    new-instance v0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    #@20
    .line 292
    return-void
.end method

.method private find(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 734
    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 735
    .local v0, "stv":[Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    aget-object v1, v0, v1

    #@7
    const/4 v2, 0x1

    #@8
    aget-object v2, v0, v2

    #@a
    const/4 v3, 0x2

    #@b
    aget-object v3, v0, v3

    #@d
    invoke-direct {p0, v1, v2, v3}, Landroid/icu/text/TransliteratorRegistry;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method private find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 763
    new-instance v1, Landroid/icu/text/TransliteratorRegistry$Spec;

    #@3
    invoke-direct {v1, p1}, Landroid/icu/text/TransliteratorRegistry$Spec;-><init>(Ljava/lang/String;)V

    #@6
    .line 764
    .local v1, "src":Landroid/icu/text/TransliteratorRegistry$Spec;
    new-instance v2, Landroid/icu/text/TransliteratorRegistry$Spec;

    #@8
    invoke-direct {v2, p2}, Landroid/icu/text/TransliteratorRegistry$Spec;-><init>(Ljava/lang/String;)V

    #@b
    .line 765
    .local v2, "trg":Landroid/icu/text/TransliteratorRegistry$Spec;
    const/4 v0, 0x0

    #@c
    .line 767
    .local v0, "entry":[Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_2

    #@12
    .line 770
    invoke-direct {p0, v1, v2, p3}, Landroid/icu/text/TransliteratorRegistry;->findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    .line 771
    .local v0, "entry":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@18
    .line 772
    return-object v0

    #@19
    .line 776
    :cond_0
    invoke-direct {p0, v1, v2, p3}, Landroid/icu/text/TransliteratorRegistry;->findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 777
    if-eqz v0, :cond_2

    #@1f
    .line 778
    return-object v0

    #@20
    .line 804
    :cond_1
    invoke-virtual {v2}, Landroid/icu/text/TransliteratorRegistry$Spec;->next()Ljava/lang/String;

    #@23
    .line 783
    .end local v0    # "entry":[Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Landroid/icu/text/TransliteratorRegistry$Spec;->reset()V

    #@26
    .line 786
    :goto_0
    const-string/jumbo v3, ""

    #@29
    invoke-direct {p0, v1, v2, v3}, Landroid/icu/text/TransliteratorRegistry;->findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    .line 787
    .restart local v0    # "entry":[Ljava/lang/Object;
    if-eqz v0, :cond_3

    #@2f
    .line 788
    return-object v0

    #@30
    .line 792
    :cond_3
    const-string/jumbo v3, ""

    #@33
    invoke-direct {p0, v1, v2, v3}, Landroid/icu/text/TransliteratorRegistry;->findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    .line 793
    if-eqz v0, :cond_4

    #@39
    .line 794
    return-object v0

    #@3a
    .line 796
    :cond_4
    invoke-virtual {v1}, Landroid/icu/text/TransliteratorRegistry$Spec;->hasFallback()Z

    #@3d
    move-result v3

    #@3e
    if-nez v3, :cond_5

    #@40
    .line 801
    invoke-virtual {v2}, Landroid/icu/text/TransliteratorRegistry$Spec;->hasFallback()Z

    #@43
    move-result v3

    #@44
    if-nez v3, :cond_1

    #@46
    .line 807
    return-object v4

    #@47
    .line 799
    :cond_5
    invoke-virtual {v1}, Landroid/icu/text/TransliteratorRegistry$Spec;->next()Ljava/lang/String;

    #@4a
    goto :goto_0
.end method

.method private findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;
    .locals 11
    .param p1, "specToOpen"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p2, "specToFind"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "direction"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 663
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->getBundle()Ljava/util/ResourceBundle;

    #@4
    move-result-object v4

    #@5
    .line 665
    .local v4, "res":Ljava/util/ResourceBundle;
    if-nez v4, :cond_0

    #@7
    .line 668
    return-object v10

    #@8
    .line 671
    :cond_0
    const/4 v3, 0x0

    #@9
    .local v3, "pass":I
    :goto_0
    const/4 v7, 0x2

    #@a
    if-ge v3, v7, :cond_7

    #@c
    .line 672
    new-instance v6, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 677
    .local v6, "tag":Ljava/lang/StringBuilder;
    if-nez v3, :cond_3

    #@13
    .line 678
    if-nez p4, :cond_2

    #@15
    .line 679
    const-string/jumbo v7, "TransliterateTo"

    #@18
    .line 678
    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 683
    :goto_2
    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@21
    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 689
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v4, v7}, Ljava/util/ResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    .line 693
    .local v5, "subres":[Ljava/lang/String;
    const/4 v2, 0x0

    #@31
    .line 694
    .local v2, "i":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@34
    move-result v7

    #@35
    if-eqz v7, :cond_1

    #@37
    .line 695
    const/4 v2, 0x0

    #@38
    :goto_3
    array-length v7, v5

    #@39
    if-ge v2, v7, :cond_1

    #@3b
    .line 696
    aget-object v7, v5, v2

    #@3d
    invoke-virtual {v7, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_4

    #@43
    .line 702
    :cond_1
    array-length v7, v5

    #@44
    if-ge v2, v7, :cond_6

    #@46
    .line 714
    if-nez v3, :cond_5

    #@48
    const/4 v0, 0x0

    #@49
    .line 715
    .local v0, "dir":I
    :goto_4
    const/4 v7, 0x1

    #@4a
    new-array v7, v7, [Ljava/lang/Object;

    #@4c
    new-instance v8, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;

    #@4e
    add-int/lit8 v9, v2, 0x1

    #@50
    aget-object v9, v5, v9

    #@52
    invoke-direct {v8, v9, v0}, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;-><init>(Ljava/lang/String;I)V

    #@55
    const/4 v9, 0x0

    #@56
    aput-object v8, v7, v9
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    return-object v7

    #@59
    .line 679
    .end local v0    # "dir":I
    .end local v2    # "i":I
    .end local v5    # "subres":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "TransliterateFrom"

    #@5c
    goto :goto_1

    #@5d
    .line 681
    :cond_3
    const-string/jumbo v7, "Transliterate"

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    goto :goto_2

    #@64
    .line 695
    .restart local v2    # "i":I
    .restart local v5    # "subres":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x2

    #@66
    goto :goto_3

    #@67
    .line 714
    :cond_5
    move v0, p4

    #@68
    .restart local v0    # "dir":I
    goto :goto_4

    #@69
    .line 718
    .end local v0    # "dir":I
    .end local v2    # "i":I
    .end local v5    # "subres":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@6a
    .line 671
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@6c
    goto :goto_0

    #@6d
    .line 727
    .end local v6    # "tag":Ljava/lang/StringBuilder;
    :cond_7
    return-object v10
.end method

.method private findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .param p1, "src"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p2, "trg"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 603
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-static {v1, v2, p3}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 610
    .local v0, "ID":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    #@e
    new-instance v2, Landroid/icu/util/CaseInsensitiveString;

    #@10
    invoke-direct {v2, v0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@13
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [Ljava/lang/Object;

    #@19
    return-object v1
.end method

.method private findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6
    .param p1, "src"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p2, "trg"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 632
    const/4 v4, 0x0

    #@2
    .line 633
    .local v4, "entry":[Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->isLocale()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 634
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/icu/text/TransliteratorRegistry;->findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    .line 641
    .end local v4    # "entry":[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    #@e
    .line 642
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->getTop()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->getTop()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    move-object v0, p0

    #@17
    move-object v3, p3

    #@18
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    #@1b
    .line 645
    :cond_1
    return-object v4

    #@1c
    .line 635
    .restart local v4    # "entry":[Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->isLocale()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 636
    const/4 v0, 0x1

    #@23
    invoke-direct {p0, p2, p1, p3, v0}, Landroid/icu/text/TransliteratorRegistry;->findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    .local v4, "entry":[Ljava/lang/Object;
    goto :goto_0
.end method

.method private instantiateEntry(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;
    .locals 16
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "entryWrapper"    # [Ljava/lang/Object;
    .param p3, "aliasReturn"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 835
    :goto_0
    const/4 v12, 0x0

    #@1
    aget-object v5, p2, v12

    #@3
    .line 837
    .local v5, "entry":Ljava/lang/Object;
    instance-of v12, v5, Landroid/icu/text/RuleBasedTransliterator$Data;

    #@5
    if-eqz v12, :cond_0

    #@7
    move-object v1, v5

    #@8
    .line 838
    nop

    #@9
    nop

    #@a
    .line 839
    .local v1, "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    new-instance v12, Landroid/icu/text/RuleBasedTransliterator;

    #@c
    const/4 v13, 0x0

    #@d
    move-object/from16 v0, p1

    #@f
    invoke-direct {v12, v0, v1, v13}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    #@12
    return-object v12

    #@13
    .line 840
    .end local v1    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    :cond_0
    instance-of v12, v5, Ljava/lang/Class;

    #@15
    if-eqz v12, :cond_1

    #@17
    .line 842
    :try_start_0
    nop

    #@18
    nop

    #@19
    .end local v5    # "entry":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1c
    move-result-object v12

    #@1d
    check-cast v12, Landroid/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    #@1f
    return-object v12

    #@20
    .line 843
    :catch_0
    move-exception v3

    #@21
    .line 845
    :goto_1
    const/4 v12, 0x0

    #@22
    return-object v12

    #@23
    .line 846
    .restart local v5    # "entry":Ljava/lang/Object;
    :cond_1
    instance-of v12, v5, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    #@25
    if-eqz v12, :cond_2

    #@27
    .line 847
    nop

    #@28
    nop

    #@29
    .end local v5    # "entry":Ljava/lang/Object;
    iget-object v12, v5, Landroid/icu/text/TransliteratorRegistry$AliasEntry;->alias:Ljava/lang/String;

    #@2b
    move-object/from16 v0, p3

    #@2d
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 848
    const/4 v12, 0x0

    #@31
    return-object v12

    #@32
    .line 849
    .restart local v5    # "entry":Ljava/lang/Object;
    :cond_2
    instance-of v12, v5, Landroid/icu/text/Transliterator$Factory;

    #@34
    if-eqz v12, :cond_3

    #@36
    .line 850
    check-cast v5, Landroid/icu/text/Transliterator$Factory;

    #@38
    .end local v5    # "entry":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@3a
    invoke-interface {v5, v0}, Landroid/icu/text/Transliterator$Factory;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@3d
    move-result-object v12

    #@3e
    return-object v12

    #@3f
    .line 851
    .restart local v5    # "entry":Ljava/lang/Object;
    :cond_3
    instance-of v12, v5, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    #@41
    if-eqz v12, :cond_4

    #@43
    .line 852
    nop

    #@44
    nop

    #@45
    .end local v5    # "entry":Ljava/lang/Object;
    invoke-virtual {v5}, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->getInstance()Landroid/icu/text/Transliterator;

    #@48
    move-result-object v12

    #@49
    return-object v12

    #@4a
    .line 853
    .restart local v5    # "entry":Ljava/lang/Object;
    :cond_4
    instance-of v12, v5, Landroid/icu/text/AnyTransliterator;

    #@4c
    if-eqz v12, :cond_5

    #@4e
    move-object v9, v5

    #@4f
    .line 854
    nop

    #@50
    nop

    #@51
    .line 855
    .local v9, "temp":Landroid/icu/text/AnyTransliterator;
    invoke-virtual {v9}, Landroid/icu/text/AnyTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    #@54
    move-result-object v12

    #@55
    return-object v12

    #@56
    .line 856
    .end local v9    # "temp":Landroid/icu/text/AnyTransliterator;
    :cond_5
    instance-of v12, v5, Landroid/icu/text/RuleBasedTransliterator;

    #@58
    if-eqz v12, :cond_6

    #@5a
    move-object v11, v5

    #@5b
    .line 857
    nop

    #@5c
    nop

    #@5d
    .line 858
    .local v11, "temp":Landroid/icu/text/RuleBasedTransliterator;
    invoke-virtual {v11}, Landroid/icu/text/RuleBasedTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    #@60
    move-result-object v12

    #@61
    return-object v12

    #@62
    .line 859
    .end local v11    # "temp":Landroid/icu/text/RuleBasedTransliterator;
    :cond_6
    instance-of v12, v5, Landroid/icu/text/CompoundTransliterator;

    #@64
    if-eqz v12, :cond_7

    #@66
    move-object v10, v5

    #@67
    .line 860
    nop

    #@68
    nop

    #@69
    .line 861
    .local v10, "temp":Landroid/icu/text/CompoundTransliterator;
    invoke-virtual {v10}, Landroid/icu/text/CompoundTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    #@6c
    move-result-object v12

    #@6d
    return-object v12

    #@6e
    .line 862
    .end local v10    # "temp":Landroid/icu/text/CompoundTransliterator;
    :cond_7
    instance-of v12, v5, Landroid/icu/text/Transliterator;

    #@70
    if-eqz v12, :cond_8

    #@72
    .line 863
    nop

    #@73
    nop

    #@74
    .end local v5    # "entry":Ljava/lang/Object;
    return-object v5

    #@75
    .line 872
    .restart local v5    # "entry":Ljava/lang/Object;
    :cond_8
    new-instance v7, Landroid/icu/text/TransliteratorParser;

    #@77
    invoke-direct {v7}, Landroid/icu/text/TransliteratorParser;-><init>()V

    #@7a
    .line 876
    .local v7, "parser":Landroid/icu/text/TransliteratorParser;
    :try_start_1
    move-object v0, v5

    #@7b
    check-cast v0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;

    #@7d
    move-object v8, v0

    #@7e
    .line 877
    .local v8, "re":Landroid/icu/text/TransliteratorRegistry$ResourceEntry;
    iget-object v12, v8, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    #@80
    iget v13, v8, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->direction:I

    #@82
    invoke-virtual {v7, v12, v13}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    #@85
    .line 891
    .end local v8    # "re":Landroid/icu/text/TransliteratorRegistry$ResourceEntry;
    :goto_2
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@87
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@8a
    move-result v12

    #@8b
    if-nez v12, :cond_9

    #@8d
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@8f
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@92
    move-result v12

    #@93
    if-nez v12, :cond_9

    #@95
    .line 894
    new-instance v12, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    #@97
    sget-object v13, Landroid/icu/text/NullTransliterator;->_ID:Ljava/lang/String;

    #@99
    invoke-direct {v12, v13}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    #@9c
    const/4 v13, 0x0

    #@9d
    aput-object v12, p2, v13

    #@9f
    goto/16 :goto_0

    #@a1
    .line 879
    :catch_1
    move-exception v2

    #@a2
    .local v2, "e":Ljava/lang/ClassCastException;
    move-object v6, v5

    #@a3
    .line 882
    check-cast v6, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;

    #@a5
    .line 883
    .local v6, "le":Landroid/icu/text/TransliteratorRegistry$LocaleEntry;
    iget-object v12, v6, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->rule:Ljava/lang/String;

    #@a7
    iget v13, v6, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->direction:I

    #@a9
    invoke-virtual {v7, v12, v13}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V

    #@ac
    goto :goto_2

    #@ad
    .line 896
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .end local v6    # "le":Landroid/icu/text/TransliteratorRegistry$LocaleEntry;
    :cond_9
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@af
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@b2
    move-result v12

    #@b3
    if-nez v12, :cond_a

    #@b5
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@b7
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@ba
    move-result v12

    #@bb
    const/4 v13, 0x1

    #@bc
    if-ne v12, v13, :cond_a

    #@be
    .line 899
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@c0
    const/4 v13, 0x0

    #@c1
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c4
    move-result-object v12

    #@c5
    const/4 v13, 0x0

    #@c6
    aput-object v12, p2, v13

    #@c8
    goto/16 :goto_0

    #@ca
    .line 901
    :cond_a
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@cc
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@cf
    move-result v12

    #@d0
    const/4 v13, 0x1

    #@d1
    if-ne v12, v13, :cond_c

    #@d3
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@d5
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@d8
    move-result v12

    #@d9
    if-nez v12, :cond_c

    #@db
    .line 906
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@dd
    if-eqz v12, :cond_b

    #@df
    .line 907
    new-instance v13, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    #@e1
    new-instance v12, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    iget-object v14, v7, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@e8
    const/4 v15, 0x0

    #@e9
    invoke-virtual {v14, v15}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    #@ec
    move-result-object v14

    #@ed
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v12

    #@f1
    const-string/jumbo v14, ";"

    #@f4
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v14

    #@f8
    .line 908
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@fa
    const/4 v15, 0x0

    #@fb
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@fe
    move-result-object v12

    #@ff
    check-cast v12, Ljava/lang/String;

    #@101
    .line 907
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v12

    #@105
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108
    move-result-object v12

    #@109
    invoke-direct {v13, v12}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    #@10c
    const/4 v12, 0x0

    #@10d
    aput-object v13, p2, v12

    #@10f
    goto/16 :goto_0

    #@111
    .line 910
    :cond_b
    new-instance v13, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    #@113
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@115
    const/4 v14, 0x0

    #@116
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@119
    move-result-object v12

    #@11a
    check-cast v12, Ljava/lang/String;

    #@11c
    invoke-direct {v13, v12}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    #@11f
    const/4 v12, 0x0

    #@120
    aput-object v13, p2, v12

    #@122
    goto/16 :goto_0

    #@124
    .line 914
    :cond_c
    new-instance v12, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    #@126
    iget-object v13, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@128
    iget-object v14, v7, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@12a
    .line 915
    iget-object v15, v7, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@12c
    .line 914
    move-object/from16 v0, p1

    #@12e
    invoke-direct {v12, v0, v13, v14, v15}, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/icu/text/UnicodeSet;)V

    #@131
    const/4 v13, 0x0

    #@132
    aput-object v12, p2, v13

    #@134
    goto/16 :goto_0

    #@136
    .line 844
    .end local v5    # "entry":Ljava/lang/Object;
    .end local v7    # "parser":Landroid/icu/text/TransliteratorParser;
    :catch_2
    move-exception v4

    #@137
    .local v4, "e2":Ljava/lang/IllegalAccessException;
    goto/16 :goto_1
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/lang/Object;
    .param p3, "visible"    # Z

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 492
    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v7

    #@7
    .line 494
    .local v7, "stv":[Ljava/lang/String;
    aget-object v0, v7, v4

    #@9
    aget-object v2, v7, v5

    #@b
    aget-object v3, v7, v6

    #@d
    invoke-static {v0, v2, v3}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 495
    .local v1, "id":Ljava/lang/String;
    aget-object v2, v7, v4

    #@13
    aget-object v3, v7, v5

    #@15
    aget-object v4, v7, v6

    #@17
    move-object v0, p0

    #@18
    move-object v5, p2

    #@19
    move v6, p3

    #@1a
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    #@1d
    .line 491
    return-void
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "entry"    # Ljava/lang/Object;
    .param p5, "visible"    # Z

    #@0
    .prologue
    .line 478
    move-object v2, p1

    #@1
    .line 479
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 480
    const-string/jumbo v2, "Any"

    #@a
    .line 482
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .local v1, "ID":Ljava/lang/String;
    move-object v0, p0

    #@f
    move-object v3, p2

    #@10
    move-object v4, p3

    #@11
    move-object v5, p4

    #@12
    move v6, p5

    #@13
    .line 483
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    #@16
    .line 477
    return-void
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .param p5, "entry"    # Ljava/lang/Object;
    .param p6, "visible"    # Z

    #@0
    .prologue
    .line 508
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    #@2
    invoke-direct {v1, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@5
    .line 512
    .local v1, "ciID":Landroid/icu/util/CaseInsensitiveString;
    instance-of v2, p5, [Ljava/lang/Object;

    #@7
    if-eqz v2, :cond_1

    #@9
    move-object v0, p5

    #@a
    .line 513
    nop

    #@b
    nop

    #@c
    .line 518
    .local v0, "arrayOfObj":[Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    #@e
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 519
    if-eqz p6, :cond_2

    #@13
    .line 520
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/text/TransliteratorRegistry;->registerSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 521
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    #@18
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 522
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    #@20
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    .line 507
    :cond_0
    :goto_1
    return-void

    #@24
    .line 515
    .end local v0    # "arrayOfObj":[Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    #@25
    new-array v0, v2, [Ljava/lang/Object;

    #@27
    const/4 v2, 0x0

    #@28
    aput-object p5, v0, v2

    #@2a
    .restart local v0    # "arrayOfObj":[Ljava/lang/Object;
    goto :goto_0

    #@2b
    .line 525
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/text/TransliteratorRegistry;->removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 526
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    #@30
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@33
    goto :goto_1
.end method

.method private registerSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 541
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    #@3
    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@6
    .line 542
    .local v0, "cisrc":Landroid/icu/util/CaseInsensitiveString;
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    #@8
    invoke-direct {v1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@b
    .line 543
    .local v1, "citrg":Landroid/icu/util/CaseInsensitiveString;
    new-instance v2, Landroid/icu/util/CaseInsensitiveString;

    #@d
    invoke-direct {v2, p3}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@10
    .line 544
    .local v2, "civar":Landroid/icu/util/CaseInsensitiveString;
    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    #@12
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/util/Map;

    #@18
    .line 545
    .local v3, "targets":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/CaseInsensitiveString;Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;>;"
    if-nez v3, :cond_0

    #@1a
    .line 546
    new-instance v5, Ljava/util/HashMap;

    #@1c
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@1f
    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@22
    move-result-object v3

    #@23
    .line 547
    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    #@25
    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 549
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Ljava/util/List;

    #@2e
    .line 550
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;"
    if-nez v4, :cond_1

    #@30
    .line 551
    new-instance v4, Ljava/util/ArrayList;

    #@32
    .end local v4    # "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@35
    .line 552
    .restart local v4    # "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;"
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 557
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@3b
    move-result v5

    #@3c
    if-nez v5, :cond_2

    #@3e
    .line 558
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@41
    move-result v5

    #@42
    if-lez v5, :cond_3

    #@44
    .line 559
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@47
    .line 538
    :cond_2
    :goto_0
    return-void

    #@48
    .line 561
    :cond_3
    invoke-interface {v4, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@4b
    goto :goto_0
.end method

.method private removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 574
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@5
    .line 575
    .local v0, "cisrc":Landroid/icu/util/CaseInsensitiveString;
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    #@7
    invoke-direct {v1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@a
    .line 576
    .local v1, "citrg":Landroid/icu/util/CaseInsensitiveString;
    new-instance v2, Landroid/icu/util/CaseInsensitiveString;

    #@c
    invoke-direct {v2, p3}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@f
    .line 577
    .local v2, "civar":Landroid/icu/util/CaseInsensitiveString;
    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    #@11
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Ljava/util/Map;

    #@17
    .line 578
    .local v3, "targets":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/CaseInsensitiveString;Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;>;"
    if-nez v3, :cond_0

    #@19
    .line 579
    return-void

    #@1a
    .line 581
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Ljava/util/List;

    #@20
    .line 582
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;"
    if-nez v4, :cond_1

    #@22
    .line 583
    return-void

    #@23
    .line 585
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@26
    .line 586
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@29
    move-result v5

    #@2a
    if-nez v5, :cond_2

    #@2c
    .line 587
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 588
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@32
    move-result v5

    #@33
    if-nez v5, :cond_2

    #@35
    .line 589
    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    #@37
    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 571
    :cond_2
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;
    .locals 2
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "aliasReturn"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 310
    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorRegistry;->find(Ljava/lang/String;)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 311
    .local v0, "entry":[Ljava/lang/Object;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    .line 312
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/TransliteratorRegistry;->instantiateEntry(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;

    #@b
    move-result-object v1

    #@c
    goto :goto_0
.end method

.method public getAvailableIDs()Ljava/util/Enumeration;
    .locals 2
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
    .line 419
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    #@2
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    #@4
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    #@b
    return-object v0
.end method

.method public getAvailableSources()Ljava/util/Enumeration;
    .locals 2
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
    .line 428
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    #@2
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    #@f
    return-object v0
.end method

.method public getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
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
    const/4 v3, 0x0

    #@1
    .line 438
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    #@3
    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@6
    .line 439
    .local v0, "cisrc":Landroid/icu/util/CaseInsensitiveString;
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    #@8
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/util/Map;

    #@e
    .line 440
    .local v1, "targets":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/CaseInsensitiveString;Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;>;"
    if-nez v1, :cond_0

    #@10
    .line 441
    new-instance v2, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    #@12
    invoke-direct {v2, v3}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    #@15
    return-object v2

    #@16
    .line 443
    :cond_0
    new-instance v2, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    #@18
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    #@23
    return-object v2
.end method

.method public getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
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
    const/4 v5, 0x0

    #@1
    .line 453
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    #@3
    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@6
    .line 454
    .local v0, "cisrc":Landroid/icu/util/CaseInsensitiveString;
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    #@8
    invoke-direct {v1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@b
    .line 455
    .local v1, "citrg":Landroid/icu/util/CaseInsensitiveString;
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    #@d
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Ljava/util/Map;

    #@13
    .line 456
    .local v2, "targets":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/CaseInsensitiveString;Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;>;"
    if-nez v2, :cond_0

    #@15
    .line 457
    new-instance v4, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    #@17
    invoke-direct {v4, v5}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    #@1a
    return-object v4

    #@1b
    .line 459
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/util/List;

    #@21
    .line 460
    .local v3, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;"
    if-nez v3, :cond_1

    #@23
    .line 461
    new-instance v4, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    #@25
    invoke-direct {v4, v5}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    #@28
    return-object v4

    #@29
    .line 463
    :cond_1
    new-instance v4, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    #@2b
    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@2e
    move-result-object v5

    #@2f
    invoke-direct {v4, v5}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    #@32
    return-object v4
.end method

.method public put(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;Z)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "factory"    # Landroid/icu/text/Transliterator$Factory;
    .param p3, "visible"    # Z

    #@0
    .prologue
    .line 334
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@3
    .line 333
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "trans"    # Landroid/icu/text/Transliterator;
    .param p3, "visible"    # Z

    #@0
    .prologue
    .line 369
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@3
    .line 368
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/icu/text/Transliterator;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 323
    .local p2, "transliteratorSubclass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/icu/text/Transliterator;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@3
    .line 322
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "dir"    # I
    .param p5, "visible"    # Z

    #@0
    .prologue
    .line 347
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;

    #@2
    invoke-direct {v0, p2, p3, p4}, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    invoke-direct {p0, p1, v0, p5}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@8
    .line 346
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    #@0
    .prologue
    .line 358
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    #@2
    invoke-direct {v0, p2}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@8
    .line 357
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 8
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 378
    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 380
    .local v1, "stv":[Ljava/lang/String;
    aget-object v2, v1, v5

    #@9
    aget-object v3, v1, v6

    #@b
    aget-object v4, v1, v7

    #@d
    invoke-static {v2, v3, v4}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 381
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    #@13
    new-instance v3, Landroid/icu/util/CaseInsensitiveString;

    #@15
    invoke-direct {v3, v0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@18
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 382
    aget-object v2, v1, v5

    #@1d
    aget-object v3, v1, v6

    #@1f
    aget-object v4, v1, v7

    #@21
    invoke-direct {p0, v2, v3, v4}, Landroid/icu/text/TransliteratorRegistry;->removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 383
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    #@26
    new-instance v3, Landroid/icu/util/CaseInsensitiveString;

    #@28
    invoke-direct {v3, v0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@2e
    .line 377
    return-void
.end method
