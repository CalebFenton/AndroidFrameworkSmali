.class public Landroid/icu/impl/locale/LocaleExtensions;
.super Ljava/lang/Object;
.source "LocaleExtensions.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

.field public static final EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

.field private static final EMPTY_MAP:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;


# instance fields
.field private _id:Ljava/lang/String;

.field private _map:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x75

    #@2
    const-class v0, Landroid/icu/impl/locale/LocaleExtensions;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    sput-boolean v0, Landroid/icu/impl/locale/LocaleExtensions;->-assertionsDisabled:Z

    #@d
    .line 27
    new-instance v0, Ljava/util/TreeMap;

    #@f
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    #@15
    move-result-object v0

    #@16
    .line 26
    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    #@18
    .line 34
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    #@1a
    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    #@1d
    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    #@1f
    .line 35
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    #@21
    const-string/jumbo v1, ""

    #@24
    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@26
    .line 36
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    #@28
    sget-object v1, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    #@2a
    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@2c
    .line 38
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    #@2e
    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    #@31
    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    #@33
    .line 39
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    #@35
    const-string/jumbo v1, "u-ca-japanese"

    #@38
    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@3a
    .line 40
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    #@3c
    new-instance v1, Ljava/util/TreeMap;

    #@3e
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@41
    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@43
    .line 41
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    #@45
    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@47
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@4a
    move-result-object v1

    #@4b
    sget-object v2, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@4d
    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 43
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    #@52
    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    #@55
    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    #@57
    .line 44
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    #@59
    const-string/jumbo v1, "u-nu-thai"

    #@5c
    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@5e
    .line 45
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    #@60
    new-instance v1, Ljava/util/TreeMap;

    #@62
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@65
    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@67
    .line 46
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    #@69
    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@6b
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@6e
    move-result-object v1

    #@6f
    sget-object v2, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@71
    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    .line 21
    return-void

    #@75
    :cond_0
    const/4 v0, 0x1

    #@76
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    .local p1, "extensions":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    .local p2, "uattributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;>;"
    .local p3, "ukeywords":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    if-eqz p1, :cond_3

    #@5
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    #@8
    move-result v20

    #@9
    if-lez v20, :cond_3

    #@b
    const/4 v8, 0x1

    #@c
    .line 58
    .local v8, "hasExtension":Z
    :goto_0
    if-eqz p2, :cond_4

    #@e
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    #@11
    move-result v20

    #@12
    if-lez v20, :cond_4

    #@14
    const/4 v9, 0x1

    #@15
    .line 59
    .local v9, "hasUAttributes":Z
    :goto_1
    if-eqz p3, :cond_5

    #@17
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    #@1a
    move-result v20

    #@1b
    if-lez v20, :cond_5

    #@1d
    const/4 v10, 0x1

    #@1e
    .line 61
    .local v10, "hasUKeywords":Z
    :goto_2
    if-nez v8, :cond_0

    #@20
    if-eqz v9, :cond_6

    #@22
    .line 68
    :cond_0
    new-instance v20, Ljava/util/TreeMap;

    #@24
    invoke-direct/range {v20 .. v20}, Ljava/util/TreeMap;-><init>()V

    #@27
    move-object/from16 v0, v20

    #@29
    move-object/from16 v1, p0

    #@2b
    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@2d
    .line 69
    if-eqz v8, :cond_7

    #@2f
    .line 70
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@32
    move-result-object v20

    #@33
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v7

    #@37
    .local v7, "ext$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v20

    #@3b
    if-eqz v20, :cond_7

    #@3d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v6

    #@41
    check-cast v6, Ljava/util/Map$Entry;

    #@43
    .line 71
    .local v6, "ext":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@46
    move-result-object v20

    #@47
    check-cast v20, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@49
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    #@4c
    move-result v20

    #@4d
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@50
    move-result v11

    #@51
    .line 72
    .local v11, "key":C
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@54
    move-result-object v19

    #@55
    check-cast v19, Ljava/lang/String;

    #@57
    .line 74
    .local v19, "value":Ljava/lang/String;
    invoke-static {v11}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    #@5a
    move-result v20

    #@5b
    if-eqz v20, :cond_2

    #@5d
    .line 76
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/locale/InternalLocaleBuilder;->removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v19

    #@61
    .line 77
    if-eqz v19, :cond_1

    #@63
    .line 82
    :cond_2
    new-instance v5, Landroid/icu/impl/locale/Extension;

    #@65
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v20

    #@69
    move-object/from16 v0, v20

    #@6b
    invoke-direct {v5, v11, v0}, Landroid/icu/impl/locale/Extension;-><init>(CLjava/lang/String;)V

    #@6e
    .line 83
    .local v5, "e":Landroid/icu/impl/locale/Extension;
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@72
    move-object/from16 v20, v0

    #@74
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@77
    move-result-object v21

    #@78
    move-object/from16 v0, v20

    #@7a
    move-object/from16 v1, v21

    #@7c
    invoke-interface {v0, v1, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    goto :goto_3

    #@80
    .line 57
    .end local v5    # "e":Landroid/icu/impl/locale/Extension;
    .end local v6    # "ext":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    .end local v7    # "ext$iterator":Ljava/util/Iterator;
    .end local v8    # "hasExtension":Z
    .end local v9    # "hasUAttributes":Z
    .end local v10    # "hasUKeywords":Z
    .end local v11    # "key":C
    .end local v19    # "value":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    #@81
    .restart local v8    # "hasExtension":Z
    goto :goto_0

    #@82
    .line 58
    :cond_4
    const/4 v9, 0x0

    #@83
    .restart local v9    # "hasUAttributes":Z
    goto :goto_1

    #@84
    .line 59
    :cond_5
    const/4 v10, 0x0

    #@85
    .restart local v10    # "hasUKeywords":Z
    goto :goto_2

    #@86
    .line 61
    :cond_6
    if-nez v10, :cond_0

    #@88
    .line 62
    sget-object v20, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    #@8a
    move-object/from16 v0, v20

    #@8c
    move-object/from16 v1, p0

    #@8e
    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@90
    .line 63
    const-string/jumbo v20, ""

    #@93
    move-object/from16 v0, v20

    #@95
    move-object/from16 v1, p0

    #@97
    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@99
    .line 64
    return-void

    #@9a
    .line 87
    :cond_7
    if-nez v9, :cond_8

    #@9c
    if-eqz v10, :cond_b

    #@9e
    .line 88
    :cond_8
    const/16 v16, 0x0

    #@a0
    .line 89
    .local v16, "uaset":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const/16 v17, 0x0

    #@a2
    .line 91
    .local v17, "ukmap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_9

    #@a4
    .line 92
    new-instance v16, Ljava/util/TreeSet;

    #@a6
    .end local v16    # "uaset":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/TreeSet;-><init>()V

    #@a9
    .line 93
    .local v16, "uaset":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ac
    move-result-object v4

    #@ad
    .local v4, "cis$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@b0
    move-result v20

    #@b1
    if-eqz v20, :cond_9

    #@b3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b6
    move-result-object v3

    #@b7
    check-cast v3, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@b9
    .line 94
    .local v3, "cis":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    invoke-virtual {v3}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    #@bc
    move-result-object v20

    #@bd
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@c0
    move-result-object v20

    #@c1
    move-object/from16 v0, v16

    #@c3
    move-object/from16 v1, v20

    #@c5
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@c8
    goto :goto_4

    #@c9
    .line 98
    .end local v3    # "cis":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v4    # "cis$iterator":Ljava/util/Iterator;
    .end local v16    # "uaset":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_9
    if-eqz v10, :cond_a

    #@cb
    .line 99
    new-instance v17, Ljava/util/TreeMap;

    #@cd
    .end local v17    # "ukmap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    #@d0
    .line 100
    .local v17, "ukmap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@d3
    move-result-object v20

    #@d4
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d7
    move-result-object v14

    #@d8
    .local v14, "kwd$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@db
    move-result v20

    #@dc
    if-eqz v20, :cond_a

    #@de
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e1
    move-result-object v13

    #@e2
    check-cast v13, Ljava/util/Map$Entry;

    #@e4
    .line 101
    .local v13, "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e7
    move-result-object v20

    #@e8
    check-cast v20, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@ea
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    #@ed
    move-result-object v20

    #@ee
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@f1
    move-result-object v12

    #@f2
    .line 102
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@f5
    move-result-object v20

    #@f6
    check-cast v20, Ljava/lang/String;

    #@f8
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@fb
    move-result-object v15

    #@fc
    .line 103
    .local v15, "type":Ljava/lang/String;
    move-object/from16 v0, v17

    #@fe
    invoke-virtual {v0, v12, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@101
    goto :goto_5

    #@102
    .line 107
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    .end local v14    # "kwd$iterator":Ljava/util/Iterator;
    .end local v15    # "type":Ljava/lang/String;
    .end local v17    # "ukmap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    new-instance v18, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@104
    move-object/from16 v0, v18

    #@106
    move-object/from16 v1, v16

    #@108
    move-object/from16 v2, v17

    #@10a
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    #@10d
    .line 108
    .local v18, "ule":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@111
    move-object/from16 v20, v0

    #@113
    const/16 v21, 0x75

    #@115
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@118
    move-result-object v21

    #@119
    move-object/from16 v0, v20

    #@11b
    move-object/from16 v1, v21

    #@11d
    move-object/from16 v2, v18

    #@11f
    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@122
    .line 111
    .end local v18    # "ule":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    :cond_b
    move-object/from16 v0, p0

    #@124
    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@126
    move-object/from16 v20, v0

    #@128
    invoke-interface/range {v20 .. v20}, Ljava/util/SortedMap;->size()I

    #@12b
    move-result v20

    #@12c
    if-nez v20, :cond_c

    #@12e
    .line 113
    sget-object v20, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    #@130
    move-object/from16 v0, v20

    #@132
    move-object/from16 v1, p0

    #@134
    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@136
    .line 114
    const-string/jumbo v20, ""

    #@139
    move-object/from16 v0, v20

    #@13b
    move-object/from16 v1, p0

    #@13d
    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@13f
    .line 56
    :goto_6
    return-void

    #@140
    .line 116
    :cond_c
    move-object/from16 v0, p0

    #@142
    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@144
    move-object/from16 v20, v0

    #@146
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/LocaleExtensions;->toID(Ljava/util/SortedMap;)Ljava/lang/String;

    #@149
    move-result-object v20

    #@14a
    move-object/from16 v0, v20

    #@14c
    move-object/from16 v1, p0

    #@14e
    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@150
    goto :goto_6
.end method

.method public static isValidKey(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 168
    invoke-static {p0}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public static isValidUnicodeLocaleKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ukey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 172
    invoke-static {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static toID(Ljava/util/SortedMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Character;Lcom/ibm/icu/impl/locale/Extension;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 177
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@6
    .line 178
    .local v4, "privuse":Landroid/icu/impl/locale/Extension;
    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v6

    #@a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .end local v4    # "privuse":Landroid/icu/impl/locale/Extension;
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_2

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/util/Map$Entry;

    #@1a
    .line 179
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lcom/ibm/icu/impl/locale/Extension;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v6

    #@1e
    check-cast v6, Ljava/lang/Character;

    #@20
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    #@23
    move-result v5

    #@24
    .line 180
    .local v5, "singleton":C
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Landroid/icu/impl/locale/Extension;

    #@2a
    .line 181
    .local v3, "extension":Landroid/icu/impl/locale/Extension;
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_0

    #@30
    .line 182
    move-object v4, v3

    #@31
    .local v4, "privuse":Landroid/icu/impl/locale/Extension;
    goto :goto_0

    #@32
    .line 184
    .end local v4    # "privuse":Landroid/icu/impl/locale/Extension;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@35
    move-result v6

    #@36
    if-lez v6, :cond_1

    #@38
    .line 185
    const-string/jumbo v6, "-"

    #@3b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 187
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    goto :goto_0

    #@42
    .line 190
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lcom/ibm/icu/impl/locale/Extension;>;"
    .end local v3    # "extension":Landroid/icu/impl/locale/Extension;
    .end local v5    # "singleton":C
    :cond_2
    if-eqz v4, :cond_4

    #@44
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@47
    move-result v6

    #@48
    if-lez v6, :cond_3

    #@4a
    .line 192
    const-string/jumbo v6, "-"

    #@4d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 194
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    .line 196
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 213
    if-ne p0, p1, :cond_0

    #@2
    .line 214
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 216
    :cond_0
    instance-of v0, p1, Landroid/icu/impl/locale/LocaleExtensions;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 217
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 219
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@c
    check-cast p1, Landroid/icu/impl/locale/LocaleExtensions;

    #@e
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;
    .locals 2
    .param p1, "key"    # Ljava/lang/Character;

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@2
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/icu/impl/locale/Extension;

    #@14
    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/Character;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 129
    iget-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@3
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    #@6
    move-result v2

    #@7
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/icu/impl/locale/Extension;

    #@15
    .line 130
    .local v0, "ext":Landroid/icu/impl/locale/Extension;
    if-nez v0, :cond_0

    #@17
    .line 131
    return-object v3

    #@18
    .line 133
    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@2
    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 3
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
    .line 137
    iget-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@2
    const/16 v2, 0x75

    #@4
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/icu/impl/locale/Extension;

    #@e
    .line 138
    .local v0, "ext":Landroid/icu/impl/locale/Extension;
    if-nez v0, :cond_0

    #@10
    .line 139
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 141
    :cond_0
    sget-boolean v1, Landroid/icu/impl/locale/LocaleExtensions;->-assertionsDisabled:Z

    #@17
    if-nez v1, :cond_1

    #@19
    instance-of v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@1b
    if-nez v1, :cond_1

    #@1d
    new-instance v1, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@22
    throw v1

    #@23
    .line 142
    :cond_1
    check-cast v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@25
    .end local v0    # "ext":Landroid/icu/impl/locale/Extension;
    invoke-virtual {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 3
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
    .line 146
    iget-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@2
    const/16 v2, 0x75

    #@4
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/icu/impl/locale/Extension;

    #@e
    .line 147
    .local v0, "ext":Landroid/icu/impl/locale/Extension;
    if-nez v0, :cond_0

    #@10
    .line 148
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 150
    :cond_0
    sget-boolean v1, Landroid/icu/impl/locale/LocaleExtensions;->-assertionsDisabled:Z

    #@17
    if-nez v1, :cond_1

    #@19
    instance-of v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@1b
    if-nez v1, :cond_1

    #@1d
    new-instance v1, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@22
    throw v1

    #@23
    .line 151
    :cond_1
    check-cast v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@25
    .end local v0    # "ext":Landroid/icu/impl/locale/Extension;
    invoke-virtual {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "unicodeLocaleKey"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 155
    iget-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@3
    const/16 v2, 0x75

    #@5
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/icu/impl/locale/Extension;

    #@f
    .line 156
    .local v0, "ext":Landroid/icu/impl/locale/Extension;
    if-nez v0, :cond_0

    #@11
    .line 157
    return-object v3

    #@12
    .line 159
    :cond_0
    sget-boolean v1, Landroid/icu/impl/locale/LocaleExtensions;->-assertionsDisabled:Z

    #@14
    if-nez v1, :cond_1

    #@16
    instance-of v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@18
    if-nez v1, :cond_1

    #@1a
    new-instance v1, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v1

    #@20
    .line 160
    :cond_1
    check-cast v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@22
    .end local v0    # "ext":Landroid/icu/impl/locale/Extension;
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    #@2
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    #@2
    return-object v0
.end method
