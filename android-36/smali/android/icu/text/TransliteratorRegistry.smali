.class Landroid/icu/text/TransliteratorRegistry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorRegistry$ResourceEntry;,
        Landroid/icu/text/TransliteratorRegistry$AliasEntry;,
        Landroid/icu/text/TransliteratorRegistry$IDEnumeration;,
        Landroid/icu/text/TransliteratorRegistry$Spec;,
        Landroid/icu/text/TransliteratorRegistry$LocaleEntry;,
        Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANY:Ljava/lang/String; = "Any"

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o LOCALE_SEP:C = '_'

.field private static final greylist-max-o NO_VARIANT:Ljava/lang/String; = ""


# instance fields
.field private final blacklist availableIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o specDAG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/util/Map<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/util/List<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    .line 325
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/Set;

    .line 326
    return-void
.end method

.method private greylist-max-o find(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 6
    .param p1, "ID"    # Ljava/lang/String;

    .line 772
    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "stv":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Landroid/icu/text/TransliteratorRegistry;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 801
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$Spec;

    invoke-direct {v0, p1}, Landroid/icu/text/TransliteratorRegistry$Spec;-><init>(Ljava/lang/String;)V

    .line 802
    .local v0, "src":Landroid/icu/text/TransliteratorRegistry$Spec;
    new-instance v1, Landroid/icu/text/TransliteratorRegistry$Spec;

    invoke-direct {v1, p2}, Landroid/icu/text/TransliteratorRegistry$Spec;-><init>(Ljava/lang/String;)V

    .line 803
    .local v1, "trg":Landroid/icu/text/TransliteratorRegistry$Spec;
    const/4 v2, 0x0

    .line 805
    .local v2, "entry":[Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 808
    invoke-direct {p0, v0, v1, p3}, Landroid/icu/text/TransliteratorRegistry;->findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 809
    if-eqz v2, :cond_18

    .line 810
    return-object v2

    .line 814
    :cond_18
    invoke-direct {p0, v0, v1, p3}, Landroid/icu/text/TransliteratorRegistry;->findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 815
    if-eqz v2, :cond_1f

    .line 816
    return-object v2

    .line 821
    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry$Spec;->reset()V

    .line 824
    :goto_22
    const-string v3, ""

    invoke-direct {p0, v0, v1, v3}, Landroid/icu/text/TransliteratorRegistry;->findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 825
    if-eqz v2, :cond_2b

    .line 826
    return-object v2

    .line 830
    :cond_2b
    invoke-direct {p0, v0, v1, v3}, Landroid/icu/text/TransliteratorRegistry;->findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 831
    if-eqz v2, :cond_32

    .line 832
    return-object v2

    .line 834
    :cond_32
    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry$Spec;->hasFallback()Z

    move-result v3

    if-nez v3, :cond_46

    .line 835
    nop

    .line 839
    invoke-virtual {v1}, Landroid/icu/text/TransliteratorRegistry$Spec;->hasFallback()Z

    move-result v3

    if-nez v3, :cond_42

    .line 840
    nop

    .line 845
    const/4 v3, 0x0

    return-object v3

    .line 842
    :cond_42
    invoke-virtual {v1}, Landroid/icu/text/TransliteratorRegistry$Spec;->next()Ljava/lang/String;

    goto :goto_1f

    .line 837
    :cond_46
    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry$Spec;->next()Ljava/lang/String;

    goto :goto_22
.end method

.method private greylist-max-o findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;
    .registers 14
    .param p1, "specToOpen"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p2, "specToFind"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "direction"    # I

    .line 701
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->getBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    .line 703
    .local v0, "res":Ljava/util/ResourceBundle;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 706
    return-object v1

    .line 709
    :cond_8
    const/4 v2, 0x0

    .local v2, "pass":I
    :goto_9
    const/4 v3, 0x2

    if-ge v2, v3, :cond_6a

    .line 710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .local v3, "tag":Ljava/lang/StringBuilder;
    if-nez v2, :cond_1e

    .line 716
    if-nez p4, :cond_18

    .line 717
    const-string v4, "TransliterateTo"

    goto :goto_1a

    :cond_18
    const-string v4, "TransliterateFrom"

    .line 716
    :goto_1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 719
    :cond_1e
    const-string v4, "Transliterate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :goto_23
    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    :try_start_30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 731
    .local v4, "subres":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 732
    .local v5, "i":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4f

    .line 733
    const/4 v5, 0x0

    :goto_40
    array-length v6, v4

    if-ge v5, v6, :cond_4f

    .line 734
    aget-object v6, v4, v5

    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 735
    goto :goto_4f

    .line 733
    :cond_4c
    add-int/lit8 v5, v5, 0x2

    goto :goto_40

    .line 740
    :cond_4f
    :goto_4f
    array-length v6, v4

    if-ge v5, v6, :cond_65

    .line 752
    if-nez v2, :cond_56

    const/4 v6, 0x0

    goto :goto_57

    :cond_56
    move v6, p4

    .line 753
    .local v6, "dir":I
    :goto_57
    new-instance v7, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;

    add-int/lit8 v8, v5, 0x1

    aget-object v8, v4, v8

    invoke-direct {v7, v8, v6}, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;-><init>(Ljava/lang/String;I)V

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v1
    :try_end_64
    .catch Ljava/util/MissingResourceException; {:try_start_30 .. :try_end_64} :catch_66

    return-object v1

    .line 760
    .end local v4    # "subres":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "dir":I
    :cond_65
    goto :goto_67

    .line 756
    :catch_66
    move-exception v4

    .line 709
    .end local v3    # "tag":Ljava/lang/StringBuilder;
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 765
    .end local v2    # "pass":I
    :cond_6a
    return-object v1
.end method

.method private greylist-max-o findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7
    .param p1, "src"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p2, "trg"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p3, "variant"    # Ljava/lang/String;

    .line 641
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "ID":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    new-instance v2, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v2, v0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method private greylist-max-o findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 11
    .param p1, "src"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p2, "trg"    # Landroid/icu/text/TransliteratorRegistry$Spec;
    .param p3, "variant"    # Ljava/lang/String;

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "entry":[Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->isLocale()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 672
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/icu/text/TransliteratorRegistry;->findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_1c

    .line 673
    :cond_e
    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->isLocale()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 674
    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/icu/text/TransliteratorRegistry;->findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_1c

    .line 673
    :cond_1b
    move-object v5, v0

    .line 679
    .end local v0    # "entry":[Ljava/lang/Object;
    .local v5, "entry":[Ljava/lang/Object;
    :goto_1c
    if-eqz v5, :cond_2d

    .line 680
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->getTop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->getTop()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p3

    .end local p3    # "variant":Ljava/lang/String;
    .local v4, "variant":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_2e

    .line 679
    .end local v4    # "variant":Ljava/lang/String;
    .restart local p3    # "variant":Ljava/lang/String;
    :cond_2d
    move-object v4, p3

    .line 683
    .end local p3    # "variant":Ljava/lang/String;
    .restart local v4    # "variant":Ljava/lang/String;
    :goto_2e
    return-object v5
.end method

.method private greylist-max-o instantiateEntry(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;
    .registers 11
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "entryWrapper"    # [Ljava/lang/Object;
    .param p3, "aliasReturn"    # Ljava/lang/StringBuffer;

    .line 873
    nop

    :goto_1
    const/4 v0, 0x0

    aget-object v1, p2, v0

    .line 875
    .local v1, "entry":Ljava/lang/Object;
    instance-of v2, v1, Landroid/icu/text/RuleBasedTransliterator$Data;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 876
    move-object v0, v1

    check-cast v0, Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 877
    .local v0, "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    new-instance v2, Landroid/icu/text/RuleBasedTransliterator;

    invoke-direct {v2, p1, v0, v3}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    return-object v2

    .line 878
    .end local v0    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    :cond_12
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_25

    .line 880
    :try_start_16
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Transliterator;
    :try_end_1f
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_1f} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_1f} :catch_20

    return-object v0

    .line 882
    :catch_20
    move-exception v0

    goto :goto_23

    .line 881
    :catch_22
    move-exception v0

    .line 882
    :goto_23
    nop

    .line 883
    return-object v3

    .line 884
    :cond_25
    instance-of v2, v1, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    if-eqz v2, :cond_32

    .line 885
    move-object v0, v1

    check-cast v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    iget-object v0, v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;->alias:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 886
    return-object v3

    .line 887
    :cond_32
    instance-of v2, v1, Landroid/icu/text/Transliterator$Factory;

    if-eqz v2, :cond_3e

    .line 888
    move-object v0, v1

    check-cast v0, Landroid/icu/text/Transliterator$Factory;

    invoke-interface {v0, p1}, Landroid/icu/text/Transliterator$Factory;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    return-object v0

    .line 889
    :cond_3e
    instance-of v2, v1, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    if-eqz v2, :cond_4a

    .line 890
    move-object v0, v1

    check-cast v0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->getInstance()Landroid/icu/text/Transliterator;

    move-result-object v0

    return-object v0

    .line 891
    :cond_4a
    instance-of v2, v1, Landroid/icu/text/AnyTransliterator;

    if-eqz v2, :cond_56

    .line 892
    move-object v0, v1

    check-cast v0, Landroid/icu/text/AnyTransliterator;

    .line 893
    .local v0, "temp":Landroid/icu/text/AnyTransliterator;
    invoke-virtual {v0}, Landroid/icu/text/AnyTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    move-result-object v2

    return-object v2

    .line 894
    .end local v0    # "temp":Landroid/icu/text/AnyTransliterator;
    :cond_56
    instance-of v2, v1, Landroid/icu/text/RuleBasedTransliterator;

    if-eqz v2, :cond_62

    .line 895
    move-object v0, v1

    check-cast v0, Landroid/icu/text/RuleBasedTransliterator;

    .line 896
    .local v0, "temp":Landroid/icu/text/RuleBasedTransliterator;
    invoke-virtual {v0}, Landroid/icu/text/RuleBasedTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    move-result-object v2

    return-object v2

    .line 897
    .end local v0    # "temp":Landroid/icu/text/RuleBasedTransliterator;
    :cond_62
    instance-of v2, v1, Landroid/icu/text/CompoundTransliterator;

    if-eqz v2, :cond_6e

    .line 898
    move-object v0, v1

    check-cast v0, Landroid/icu/text/CompoundTransliterator;

    .line 899
    .local v0, "temp":Landroid/icu/text/CompoundTransliterator;
    invoke-virtual {v0}, Landroid/icu/text/CompoundTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    move-result-object v2

    return-object v2

    .line 900
    .end local v0    # "temp":Landroid/icu/text/CompoundTransliterator;
    :cond_6e
    instance-of v2, v1, Landroid/icu/text/Transliterator;

    if-eqz v2, :cond_76

    .line 901
    move-object v0, v1

    check-cast v0, Landroid/icu/text/Transliterator;

    return-object v0

    .line 910
    :cond_76
    new-instance v2, Landroid/icu/text/TransliteratorParser;

    invoke-direct {v2}, Landroid/icu/text/TransliteratorParser;-><init>()V

    .line 914
    .local v2, "parser":Landroid/icu/text/TransliteratorParser;
    :try_start_7b
    move-object v3, v1

    check-cast v3, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;

    .line 917
    .local v3, "re":Landroid/icu/text/TransliteratorRegistry$ResourceEntry;
    invoke-virtual {v3}, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->getResource()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->direction:I

    invoke-virtual {v2, v4, v5}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V
    :try_end_87
    .catch Ljava/lang/ClassCastException; {:try_start_7b .. :try_end_87} :catch_88

    .line 924
    .end local v3    # "re":Landroid/icu/text/TransliteratorRegistry$ResourceEntry;
    goto :goto_93

    .line 919
    :catch_88
    move-exception v3

    .line 922
    .local v3, "e":Ljava/lang/ClassCastException;
    move-object v4, v1

    check-cast v4, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;

    .line 923
    .local v4, "le":Landroid/icu/text/TransliteratorRegistry$LocaleEntry;
    iget-object v5, v4, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->rule:Ljava/lang/String;

    iget v6, v4, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->direction:I

    invoke-virtual {v2, v5, v6}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V

    .line 931
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .end local v4    # "le":Landroid/icu/text/TransliteratorRegistry$LocaleEntry;
    :goto_93
    iget-object v3, v2, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_ae

    iget-object v3, v2, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_ae

    .line 934
    new-instance v3, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    const-string v4, "Any-Null"

    invoke-direct {v3, v4}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    aput-object v3, p2, v0

    goto/16 :goto_126

    .line 936
    :cond_ae
    iget-object v3, v2, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_c8

    iget-object v3, v2, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_c8

    .line 939
    iget-object v3, v2, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v0

    goto :goto_126

    .line 941
    :cond_c8
    iget-object v3, v2, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_119

    iget-object v3, v2, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_119

    .line 946
    iget-object v3, v2, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v3, :cond_109

    .line 947
    new-instance v3, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, v0}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    .line 948
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    aput-object v3, p2, v0

    goto :goto_126

    .line 950
    :cond_109
    new-instance v3, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    iget-object v4, v2, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    aput-object v3, p2, v0

    goto :goto_126

    .line 954
    :cond_119
    new-instance v3, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    iget-object v4, v2, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    iget-object v5, v2, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    iget-object v6, v2, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-direct {v3, p1, v4, v5, v6}, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/icu/text/UnicodeSet;)V

    aput-object v3, p2, v0

    .line 957
    .end local v1    # "entry":Ljava/lang/Object;
    .end local v2    # "parser":Landroid/icu/text/TransliteratorParser;
    :goto_126
    goto/16 :goto_1
.end method

.method private greylist-max-o registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 18
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/lang/Object;
    .param p3, "visible"    # Z

    .line 532
    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "stv":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    const/4 v5, 0x2

    aget-object v6, v0, v5

    invoke-static {v2, v4, v6}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, "id":Ljava/lang/String;
    aget-object v9, v0, v1

    aget-object v10, v0, v3

    aget-object v11, v0, v5

    move-object v7, p0

    move-object/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 536
    return-void
.end method

.method private greylist-max-o registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 14
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "entry"    # Ljava/lang/Object;
    .param p5, "visible"    # Z

    .line 518
    move-object v0, p1

    .line 519
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 520
    const-string v0, "Any"

    move-object v3, v0

    goto :goto_c

    .line 519
    :cond_b
    move-object v3, v0

    .line 522
    .end local v0    # "s":Ljava/lang/String;
    .local v3, "s":Ljava/lang/String;
    :goto_c
    invoke-static {p1, p2, p3}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "ID":Ljava/lang/String;
    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .end local p2    # "target":Ljava/lang/String;
    .end local p3    # "variant":Ljava/lang/String;
    .end local p4    # "entry":Ljava/lang/Object;
    .end local p5    # "visible":Z
    .local v4, "target":Ljava/lang/String;
    .local v5, "variant":Ljava/lang/String;
    .local v6, "entry":Ljava/lang/Object;
    .local v7, "visible":Z
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 524
    return-void
.end method

.method private greylist-max-o registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 10
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .param p5, "entry"    # Ljava/lang/Object;
    .param p6, "visible"    # Z

    .line 548
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 552
    .local v0, "ciID":Landroid/icu/util/CaseInsensitiveString;
    instance-of v1, p5, [Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 553
    move-object v1, p5

    check-cast v1, [Ljava/lang/Object;

    .local v1, "arrayOfObj":[Ljava/lang/Object;
    goto :goto_11

    .line 555
    .end local v1    # "arrayOfObj":[Ljava/lang/Object;
    :cond_d
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object v1

    .line 558
    .restart local v1    # "arrayOfObj":[Ljava/lang/Object;
    :goto_11
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    if-eqz p6, :cond_21

    .line 560
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/text/TransliteratorRegistry;->registerSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 563
    :cond_21
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/text/TransliteratorRegistry;->removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 566
    :goto_29
    return-void
.end method

.method private greylist-max-o registerSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 579
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "cisrc":Landroid/icu/util/CaseInsensitiveString;
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 581
    .local v1, "citrg":Landroid/icu/util/CaseInsensitiveString;
    new-instance v2, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v2, p3}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 582
    .local v2, "civar":Landroid/icu/util/CaseInsensitiveString;
    iget-object v3, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 583
    .local v3, "targets":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/CaseInsensitiveString;Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;>;"
    if-nez v3, :cond_27

    .line 584
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 585
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_27
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 588
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;"
    if-nez v4, :cond_38

    .line 589
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 590
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_38
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 596
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_48

    .line 597
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 599
    :cond_48
    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 602
    :cond_4c
    :goto_4c
    return-void
.end method

.method private greylist-max-o removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 612
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "cisrc":Landroid/icu/util/CaseInsensitiveString;
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 614
    .local v1, "citrg":Landroid/icu/util/CaseInsensitiveString;
    new-instance v2, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v2, p3}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 615
    .local v2, "civar":Landroid/icu/util/CaseInsensitiveString;
    iget-object v3, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 616
    .local v3, "targets":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/CaseInsensitiveString;Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;>;"
    if-nez v3, :cond_1a

    .line 617
    return-void

    .line 619
    :cond_1a
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 620
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;"
    if-nez v4, :cond_23

    .line 621
    return-void

    .line 623
    :cond_23
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 624
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3a

    .line 625
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_3a

    .line 627
    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_3a
    return-void
.end method


# virtual methods
.method public greylist-max-o get(Ljava/lang/String;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;
    .registers 5
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "aliasReturn"    # Ljava/lang/StringBuffer;

    .line 340
    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorRegistry;->find(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, "entry":[Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    .line 342
    :cond_8
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/TransliteratorRegistry;->instantiateEntry(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;

    move-result-object v1

    .line 341
    :goto_c
    return-object v1
.end method

.method public greylist-max-o getAvailableIDs()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 459
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public greylist-max-o getAvailableSources()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 468
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public greylist-max-o getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 6
    .param p1, "source"    # Ljava/lang/String;
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

    .line 478
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "cisrc":Landroid/icu/util/CaseInsensitiveString;
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 480
    .local v1, "targets":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/CaseInsensitiveString;Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;>;"
    if-nez v1, :cond_16

    .line 481
    new-instance v2, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v2

    .line 483
    :cond_16
    new-instance v2, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v2
.end method

.method public greylist-max-o getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 9
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
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

    .line 493
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 494
    .local v0, "cisrc":Landroid/icu/util/CaseInsensitiveString;
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "citrg":Landroid/icu/util/CaseInsensitiveString;
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 496
    .local v2, "targets":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/CaseInsensitiveString;Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;>;"
    const/4 v3, 0x0

    if-nez v2, :cond_1b

    .line 497
    new-instance v4, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-direct {v4, v3}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v4

    .line 499
    :cond_1b
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 500
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/CaseInsensitiveString;>;"
    if-nez v4, :cond_29

    .line 501
    new-instance v5, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-direct {v5, v3}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v5

    .line 503
    :cond_29
    new-instance v3, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-static {v4}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v3
.end method

.method public greylist-max-o put(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;Z)V
    .registers 4
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "factory"    # Landroid/icu/text/Transliterator$Factory;
    .param p3, "visible"    # Z

    .line 364
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 365
    return-void
.end method

.method public greylist-max-o put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V
    .registers 4
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "trans"    # Landroid/icu/text/Transliterator;
    .param p3, "visible"    # Z

    .line 407
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 408
    return-void
.end method

.method public greylist-max-o put(Ljava/lang/String;Ljava/lang/Class;Z)V
    .registers 4
    .param p1, "ID"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/text/Transliterator;",
            ">;Z)V"
        }
    .end annotation

    .line 353
    .local p2, "transliteratorSubclass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/icu/text/Transliterator;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 354
    return-void
.end method

.method public greylist-max-o put(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "dir"    # I
    .param p4, "visible"    # Z

    .line 376
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;

    invoke-direct {v0, p2, p3}, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p4}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 377
    return-void
.end method

.method public greylist-max-o put(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 396
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    invoke-direct {v0, p2}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 397
    return-void
.end method

.method blacklist put(Ljava/lang/String;Ljava/util/function/Supplier;IZ)V
    .registers 6
    .param p1, "ID"    # Ljava/lang/String;
    .param p3, "dir"    # I
    .param p4, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 384
    .local p2, "resourceSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;

    invoke-direct {v0, p2, p3}, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;-><init>(Ljava/util/function/Supplier;I)V

    invoke-direct {p0, p1, v0, p4}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 385
    return-void
.end method

.method public greylist-max-o remove(Ljava/lang/String;)V
    .registers 9
    .param p1, "ID"    # Ljava/lang/String;

    .line 416
    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "stv":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    const/4 v5, 0x2

    aget-object v6, v0, v5

    invoke-static {v2, v4, v6}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    new-instance v6, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v6, v2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    aget-object v1, v0, v1

    aget-object v3, v0, v3

    aget-object v4, v0, v5

    invoke-direct {p0, v1, v3, v4}, Landroid/icu/text/TransliteratorRegistry;->removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/Set;

    new-instance v3, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v3, v2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 422
    return-void
.end method
