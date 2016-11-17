.class public Lsun/util/locale/LocaleExtensions;
.super Ljava/lang/Object;
.source "LocaleExtensions.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

.field public static final NUMBER_THAI:Lsun/util/locale/LocaleExtensions;


# instance fields
.field private final extensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lsun/util/locale/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x75

    #@2
    const-class v0, Lsun/util/locale/LocaleExtensions;

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
    sput-boolean v0, Lsun/util/locale/LocaleExtensions;->-assertionsDisabled:Z

    #@d
    .line 53
    new-instance v0, Lsun/util/locale/LocaleExtensions;

    #@f
    const-string/jumbo v1, "u-ca-japanese"

    #@12
    .line 54
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@15
    move-result-object v2

    #@16
    .line 55
    sget-object v3, Lsun/util/locale/UnicodeLocaleExtension;->CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

    #@18
    .line 53
    invoke-direct {v0, v1, v2, v3}, Lsun/util/locale/LocaleExtensions;-><init>(Ljava/lang/String;Ljava/lang/Character;Lsun/util/locale/Extension;)V

    #@1b
    .line 52
    sput-object v0, Lsun/util/locale/LocaleExtensions;->CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

    #@1d
    .line 58
    new-instance v0, Lsun/util/locale/LocaleExtensions;

    #@1f
    const-string/jumbo v1, "u-nu-thai"

    #@22
    .line 59
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@25
    move-result-object v2

    #@26
    .line 60
    sget-object v3, Lsun/util/locale/UnicodeLocaleExtension;->NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

    #@28
    .line 58
    invoke-direct {v0, v1, v2, v3}, Lsun/util/locale/LocaleExtensions;-><init>(Ljava/lang/String;Ljava/lang/Character;Lsun/util/locale/Extension;)V

    #@2b
    .line 57
    sput-object v0, Lsun/util/locale/LocaleExtensions;->NUMBER_THAI:Lsun/util/locale/LocaleExtensions;

    #@2d
    .line 47
    return-void

    #@2e
    :cond_0
    const/4 v0, 0x1

    #@2f
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Character;Lsun/util/locale/Extension;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Character;
    .param p3, "value"    # Lsun/util/locale/Extension;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    #@5
    .line 64
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@b
    .line 62
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    .local p1, "extensions":Ljava/util/Map;, "Ljava/util/Map<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    .local p2, "uattributes":Ljava/util/Set;, "Ljava/util/Set<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;>;"
    .local p3, "ukeywords":Ljava/util/Map;, "Ljava/util/Map<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    invoke-static/range {p1 .. p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    #@6
    move-result v19

    #@7
    if-eqz v19, :cond_3

    #@9
    const/4 v6, 0x0

    #@a
    .line 74
    .local v6, "hasExtension":Z
    :goto_0
    invoke-static/range {p2 .. p2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Set;)Z

    #@d
    move-result v19

    #@e
    if-eqz v19, :cond_4

    #@10
    const/4 v7, 0x0

    #@11
    .line 75
    .local v7, "hasUAttributes":Z
    :goto_1
    invoke-static/range {p3 .. p3}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    #@14
    move-result v19

    #@15
    if-eqz v19, :cond_5

    #@17
    const/4 v8, 0x0

    #@18
    .line 77
    .local v8, "hasUKeywords":Z
    :goto_2
    if-nez v6, :cond_0

    #@1a
    if-eqz v7, :cond_6

    #@1c
    .line 84
    :cond_0
    new-instance v13, Ljava/util/TreeMap;

    #@1e
    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    #@21
    .line 85
    .local v13, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Character;Lsun/util/locale/Extension;>;"
    if-eqz v6, :cond_7

    #@23
    .line 86
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@26
    move-result-object v19

    #@27
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v5

    #@2b
    .local v5, "ext$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v19

    #@2f
    if-eqz v19, :cond_7

    #@31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Ljava/util/Map$Entry;

    #@37
    .line 87
    .local v4, "ext":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3a
    move-result-object v19

    #@3b
    check-cast v19, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    #@3d
    invoke-virtual/range {v19 .. v19}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    #@40
    move-result v19

    #@41
    invoke-static/range {v19 .. v19}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@44
    move-result v9

    #@45
    .line 88
    .local v9, "key":C
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@48
    move-result-object v18

    #@49
    check-cast v18, Ljava/lang/String;

    #@4b
    .line 90
    .local v18, "value":Ljava/lang/String;
    invoke-static {v9}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    #@4e
    move-result v19

    #@4f
    if-eqz v19, :cond_2

    #@51
    .line 92
    invoke-static/range {v18 .. v18}, Lsun/util/locale/InternalLocaleBuilder;->removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v18

    #@55
    .line 93
    if-eqz v18, :cond_1

    #@57
    .line 98
    :cond_2
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@5a
    move-result-object v19

    #@5b
    new-instance v20, Lsun/util/locale/Extension;

    #@5d
    invoke-static/range {v18 .. v18}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v21

    #@61
    move-object/from16 v0, v20

    #@63
    move-object/from16 v1, v21

    #@65
    invoke-direct {v0, v9, v1}, Lsun/util/locale/Extension;-><init>(CLjava/lang/String;)V

    #@68
    move-object/from16 v0, v19

    #@6a
    move-object/from16 v1, v20

    #@6c
    invoke-interface {v13, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    goto :goto_3

    #@70
    .line 73
    .end local v4    # "ext":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    .end local v5    # "ext$iterator":Ljava/util/Iterator;
    .end local v6    # "hasExtension":Z
    .end local v7    # "hasUAttributes":Z
    .end local v8    # "hasUKeywords":Z
    .end local v9    # "key":C
    .end local v13    # "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Character;Lsun/util/locale/Extension;>;"
    .end local v18    # "value":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    #@71
    .restart local v6    # "hasExtension":Z
    goto :goto_0

    #@72
    .line 74
    :cond_4
    const/4 v7, 0x1

    #@73
    .restart local v7    # "hasUAttributes":Z
    goto :goto_1

    #@74
    .line 75
    :cond_5
    const/4 v8, 0x1

    #@75
    .restart local v8    # "hasUKeywords":Z
    goto :goto_2

    #@76
    .line 77
    :cond_6
    if-nez v8, :cond_0

    #@78
    .line 78
    const-string/jumbo v19, ""

    #@7b
    move-object/from16 v0, v19

    #@7d
    move-object/from16 v1, p0

    #@7f
    iput-object v0, v1, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    #@81
    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@84
    move-result-object v19

    #@85
    move-object/from16 v0, v19

    #@87
    move-object/from16 v1, p0

    #@89
    iput-object v0, v1, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@8b
    .line 80
    return-void

    #@8c
    .line 102
    .restart local v13    # "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Character;Lsun/util/locale/Extension;>;"
    :cond_7
    if-nez v7, :cond_8

    #@8e
    if-eqz v8, :cond_b

    #@90
    .line 103
    :cond_8
    const/4 v15, 0x0

    #@91
    .line 104
    .local v15, "uaset":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    const/16 v16, 0x0

    #@93
    .line 106
    .local v16, "ukmap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_9

    #@95
    .line 107
    new-instance v15, Ljava/util/TreeSet;

    #@97
    .end local v15    # "uaset":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    #@9a
    .line 108
    .local v15, "uaset":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9d
    move-result-object v3

    #@9e
    .local v3, "cis$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@a1
    move-result v19

    #@a2
    if-eqz v19, :cond_9

    #@a4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a7
    move-result-object v2

    #@a8
    check-cast v2, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@aa
    .line 109
    .local v2, "cis":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    invoke-virtual {v2}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    #@ad
    move-result-object v19

    #@ae
    invoke-static/range {v19 .. v19}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@b1
    move-result-object v19

    #@b2
    move-object/from16 v0, v19

    #@b4
    invoke-interface {v15, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    #@b7
    goto :goto_4

    #@b8
    .line 113
    .end local v2    # "cis":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    .end local v3    # "cis$iterator":Ljava/util/Iterator;
    .end local v15    # "uaset":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    :cond_9
    if-eqz v8, :cond_a

    #@ba
    .line 114
    new-instance v16, Ljava/util/TreeMap;

    #@bc
    .end local v16    # "ukmap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/TreeMap;-><init>()V

    #@bf
    .line 115
    .local v16, "ukmap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@c2
    move-result-object v19

    #@c3
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c6
    move-result-object v12

    #@c7
    .local v12, "kwd$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@ca
    move-result v19

    #@cb
    if-eqz v19, :cond_a

    #@cd
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d0
    move-result-object v11

    #@d1
    check-cast v11, Ljava/util/Map$Entry;

    #@d3
    .line 116
    .local v11, "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d6
    move-result-object v19

    #@d7
    check-cast v19, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    #@d9
    invoke-virtual/range {v19 .. v19}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    #@dc
    move-result-object v19

    #@dd
    invoke-static/range {v19 .. v19}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@e0
    move-result-object v10

    #@e1
    .line 117
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@e4
    move-result-object v19

    #@e5
    check-cast v19, Ljava/lang/String;

    #@e7
    invoke-static/range {v19 .. v19}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@ea
    move-result-object v14

    #@eb
    .line 118
    .local v14, "type":Ljava/lang/String;
    move-object/from16 v0, v16

    #@ed
    invoke-interface {v0, v10, v14}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f0
    goto :goto_5

    #@f1
    .line 122
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    .end local v12    # "kwd$iterator":Ljava/util/Iterator;
    .end local v14    # "type":Ljava/lang/String;
    .end local v16    # "ukmap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    new-instance v17, Lsun/util/locale/UnicodeLocaleExtension;

    #@f3
    move-object/from16 v0, v17

    #@f5
    move-object/from16 v1, v16

    #@f7
    invoke-direct {v0, v15, v1}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    #@fa
    .line 123
    .local v17, "ule":Lsun/util/locale/UnicodeLocaleExtension;
    const/16 v19, 0x75

    #@fc
    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@ff
    move-result-object v19

    #@100
    move-object/from16 v0, v19

    #@102
    move-object/from16 v1, v17

    #@104
    invoke-interface {v13, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@107
    .line 126
    .end local v17    # "ule":Lsun/util/locale/UnicodeLocaleExtension;
    :cond_b
    invoke-interface {v13}, Ljava/util/SortedMap;->isEmpty()Z

    #@10a
    move-result v19

    #@10b
    if-eqz v19, :cond_c

    #@10d
    .line 128
    const-string/jumbo v19, ""

    #@110
    move-object/from16 v0, v19

    #@112
    move-object/from16 v1, p0

    #@114
    iput-object v0, v1, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    #@116
    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@119
    move-result-object v19

    #@11a
    move-object/from16 v0, v19

    #@11c
    move-object/from16 v1, p0

    #@11e
    iput-object v0, v1, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@120
    .line 72
    :goto_6
    return-void

    #@121
    .line 131
    :cond_c
    invoke-static {v13}, Lsun/util/locale/LocaleExtensions;->toID(Ljava/util/SortedMap;)Ljava/lang/String;

    #@124
    move-result-object v19

    #@125
    move-object/from16 v0, v19

    #@127
    move-object/from16 v1, p0

    #@129
    iput-object v0, v1, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    #@12b
    .line 132
    move-object/from16 v0, p0

    #@12d
    iput-object v13, v0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@12f
    goto :goto_6
.end method

.method public static isValidKey(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 187
    invoke-static {p0}, Lsun/util/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

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
    .line 191
    invoke-static {p0}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

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
            "Lsun/util/locale/Extension;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 195
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Character;Lsun/util/locale/Extension;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 196
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@6
    .line 197
    .local v4, "privuse":Lsun/util/locale/Extension;
    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v6

    #@a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .end local v4    # "privuse":Lsun/util/locale/Extension;
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
    .line 198
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lsun/util/locale/Extension;>;"
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
    .line 199
    .local v5, "singleton":C
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Lsun/util/locale/Extension;

    #@2a
    .line 200
    .local v3, "extension":Lsun/util/locale/Extension;
    invoke-static {v5}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_0

    #@30
    .line 201
    move-object v4, v3

    #@31
    .local v4, "privuse":Lsun/util/locale/Extension;
    goto :goto_0

    #@32
    .line 203
    .end local v4    # "privuse":Lsun/util/locale/Extension;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@35
    move-result v6

    #@36
    if-lez v6, :cond_1

    #@38
    .line 204
    const-string/jumbo v6, "-"

    #@3b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 206
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    goto :goto_0

    #@42
    .line 209
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lsun/util/locale/Extension;>;"
    .end local v3    # "extension":Lsun/util/locale/Extension;
    .end local v5    # "singleton":C
    :cond_2
    if-eqz v4, :cond_4

    #@44
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@47
    move-result v6

    #@48
    if-lez v6, :cond_3

    #@4a
    .line 211
    const-string/jumbo v6, "-"

    #@4d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 213
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    .line 215
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
    .line 234
    if-ne p0, p1, :cond_0

    #@2
    .line 235
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 237
    :cond_0
    instance-of v0, p1, Lsun/util/locale/LocaleExtensions;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 238
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 240
    :cond_1
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    #@c
    check-cast p1, Lsun/util/locale/LocaleExtensions;

    #@e
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;
    .locals 2
    .param p1, "key"    # Ljava/lang/Character;

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lsun/util/locale/Extension;

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
    .line 148
    iget-object v1, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@3
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    #@6
    move-result v2

    #@7
    invoke-static {v2}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lsun/util/locale/Extension;

    #@15
    .line 149
    .local v0, "ext":Lsun/util/locale/Extension;
    if-nez v0, :cond_0

    #@17
    .line 150
    return-object v3

    #@18
    .line 152
    :cond_0
    invoke-virtual {v0}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

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
    .line 137
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 138
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 140
    :cond_0
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@f
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
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
    .line 156
    iget-object v1, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@2
    const/16 v2, 0x75

    #@4
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lsun/util/locale/Extension;

    #@e
    .line 157
    .local v0, "ext":Lsun/util/locale/Extension;
    if-nez v0, :cond_0

    #@10
    .line 158
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 160
    :cond_0
    sget-boolean v1, Lsun/util/locale/LocaleExtensions;->-assertionsDisabled:Z

    #@17
    if-nez v1, :cond_1

    #@19
    instance-of v1, v0, Lsun/util/locale/UnicodeLocaleExtension;

    #@1b
    if-nez v1, :cond_1

    #@1d
    new-instance v1, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@22
    throw v1

    #@23
    .line 161
    :cond_1
    check-cast v0, Lsun/util/locale/UnicodeLocaleExtension;

    #@25
    .end local v0    # "ext":Lsun/util/locale/Extension;
    invoke-virtual {v0}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

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
    .line 165
    iget-object v1, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@2
    const/16 v2, 0x75

    #@4
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lsun/util/locale/Extension;

    #@e
    .line 166
    .local v0, "ext":Lsun/util/locale/Extension;
    if-nez v0, :cond_0

    #@10
    .line 167
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 169
    :cond_0
    sget-boolean v1, Lsun/util/locale/LocaleExtensions;->-assertionsDisabled:Z

    #@17
    if-nez v1, :cond_1

    #@19
    instance-of v1, v0, Lsun/util/locale/UnicodeLocaleExtension;

    #@1b
    if-nez v1, :cond_1

    #@1d
    new-instance v1, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@22
    throw v1

    #@23
    .line 170
    :cond_1
    check-cast v0, Lsun/util/locale/UnicodeLocaleExtension;

    #@25
    .end local v0    # "ext":Lsun/util/locale/Extension;
    invoke-virtual {v0}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

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
    .line 174
    iget-object v1, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@3
    const/16 v2, 0x75

    #@5
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lsun/util/locale/Extension;

    #@f
    .line 175
    .local v0, "ext":Lsun/util/locale/Extension;
    if-nez v0, :cond_0

    #@11
    .line 176
    return-object v3

    #@12
    .line 178
    :cond_0
    sget-boolean v1, Lsun/util/locale/LocaleExtensions;->-assertionsDisabled:Z

    #@14
    if-nez v1, :cond_1

    #@16
    instance-of v1, v0, Lsun/util/locale/UnicodeLocaleExtension;

    #@18
    if-nez v1, :cond_1

    #@1a
    new-instance v1, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v1

    #@20
    .line 179
    :cond_1
    check-cast v0, Lsun/util/locale/UnicodeLocaleExtension;

    #@22
    .end local v0    # "ext":Lsun/util/locale/Extension;
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

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
    .line 183
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    #@2
    return-object v0
.end method
