.class public final Landroid/icu/impl/coll/CollationLoader;
.super Ljava/lang/Object;
.source "CollationLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationLoader$ASCII;
    }
.end annotation


# static fields
.field private static volatile rootRules:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    #@3
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static final findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .param p0, "table"    # Landroid/icu/util/UResourceBundle;
    .param p1, "entryName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    #@2
    .end local p0    # "table":Landroid/icu/util/UResourceBundle;
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getRootRules()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-static {}, Landroid/icu/impl/coll/CollationLoader;->loadRootRules()V

    #@3
    .line 55
    sget-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    #@5
    return-object v0
.end method

.method private static loadRootRules()V
    .locals 4

    #@0
    .prologue
    .line 40
    sget-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 41
    return-void

    #@5
    .line 43
    :cond_0
    const-class v2, Landroid/icu/impl/coll/CollationLoader;

    #@7
    monitor-enter v2

    #@8
    .line 44
    :try_start_0
    sget-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 46
    const-string/jumbo v1, "android/icu/impl/data/icudt56b/coll"

    #@f
    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@11
    .line 45
    invoke-static {v1, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@14
    move-result-object v0

    #@15
    .line 47
    .local v0, "rootBundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v1, "UCARules"

    #@18
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    sput-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit v2

    #@1f
    .line 39
    return-void

    #@20
    .line 43
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method static loadRules(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "collationType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    const-string/jumbo v3, "android/icu/impl/data/icudt56b/coll"

    #@3
    .line 82
    invoke-static {v3, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    .line 84
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 85
    .end local v0    # "bundle":Landroid/icu/util/UResourceBundle;
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "collations/"

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-static {p1}, Landroid/icu/impl/coll/CollationLoader$ASCII;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 84
    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@24
    move-result-object v1

    #@25
    .line 86
    .local v1, "data":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v3, "Sequence"

    #@28
    invoke-virtual {v1, v3}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 87
    .local v2, "rules":Ljava/lang/String;
    return-object v2
.end method

.method public static loadTailoring(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/impl/coll/CollationTailoring;
    .locals 25
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/impl/coll/CollationTailoring;"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p1, "outValidLocale":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/util/ULocale;>;"
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    #@3
    move-result-object v17

    #@4
    .line 101
    .local v17, "root":Landroid/icu/impl/coll/CollationTailoring;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@7
    move-result-object v16

    #@8
    .line 102
    .local v16, "localeName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@b
    move-result v22

    #@c
    if-eqz v22, :cond_0

    #@e
    const-string/jumbo v22, "root"

    #@11
    move-object/from16 v0, v16

    #@13
    move-object/from16 v1, v22

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v22

    #@19
    if-eqz v22, :cond_1

    #@1b
    .line 103
    :cond_0
    sget-object v22, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@1d
    move-object/from16 v0, v22

    #@1f
    move-object/from16 v1, p1

    #@21
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@23
    .line 104
    return-object v17

    #@24
    .line 107
    :cond_1
    const/4 v7, 0x0

    #@25
    .line 110
    .local v7, "bundle":Landroid/icu/util/UResourceBundle;
    :try_start_0
    const-string/jumbo v22, "android/icu/impl/data/icudt56b/coll"

    #@28
    .line 111
    sget-object v23, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@2a
    .line 109
    move-object/from16 v0, v22

    #@2c
    move-object/from16 v1, p0

    #@2e
    move-object/from16 v2, v23

    #@30
    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result-object v7

    #@34
    .line 117
    .local v7, "bundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@37
    move-result-object v20

    #@38
    .line 120
    .local v20, "validLocale":Landroid/icu/util/ULocale;
    invoke-virtual/range {v20 .. v20}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@3b
    move-result-object v21

    #@3c
    .line 121
    .local v21, "validLocaleName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@3f
    move-result v22

    #@40
    if-eqz v22, :cond_2

    #@42
    const-string/jumbo v22, "root"

    #@45
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v22

    #@49
    if-eqz v22, :cond_3

    #@4b
    .line 122
    :cond_2
    sget-object v20, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@4d
    .line 124
    :cond_3
    move-object/from16 v0, v20

    #@4f
    move-object/from16 v1, p1

    #@51
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@53
    .line 129
    :try_start_1
    const-string/jumbo v22, "collations"

    #@56
    move-object/from16 v0, v22

    #@58
    invoke-virtual {v7, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@5b
    move-result-object v8

    #@5c
    .line 130
    .local v8, "collations":Landroid/icu/util/UResourceBundle;
    if-nez v8, :cond_4

    #@5e
    .line 131
    return-object v17

    #@5f
    .line 112
    .end local v8    # "collations":Landroid/icu/util/UResourceBundle;
    .end local v20    # "validLocale":Landroid/icu/util/ULocale;
    .end local v21    # "validLocaleName":Ljava/lang/String;
    .local v7, "bundle":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v13

    #@60
    .line 113
    .local v13, "e":Ljava/util/MissingResourceException;
    sget-object v22, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@62
    move-object/from16 v0, v22

    #@64
    move-object/from16 v1, p1

    #@66
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@68
    .line 114
    return-object v17

    #@69
    .line 133
    .end local v13    # "e":Ljava/util/MissingResourceException;
    .local v7, "bundle":Landroid/icu/util/UResourceBundle;
    .restart local v20    # "validLocale":Landroid/icu/util/ULocale;
    .restart local v21    # "validLocaleName":Ljava/lang/String;
    :catch_1
    move-exception v14

    #@6a
    .line 134
    .local v14, "ignored":Ljava/util/MissingResourceException;
    return-object v17

    #@6b
    .line 138
    .end local v14    # "ignored":Ljava/util/MissingResourceException;
    .restart local v8    # "collations":Landroid/icu/util/UResourceBundle;
    :cond_4
    const-string/jumbo v22, "collation"

    #@6e
    move-object/from16 v0, p0

    #@70
    move-object/from16 v1, v22

    #@72
    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v19

    #@76
    .line 139
    .local v19, "type":Ljava/lang/String;
    const-string/jumbo v11, "standard"

    #@79
    .local v11, "defaultType":Ljava/lang/String;
    move-object/from16 v22, v8

    #@7b
    .line 141
    check-cast v22, Landroid/icu/impl/ICUResourceBundle;

    #@7d
    const-string/jumbo v23, "default"

    #@80
    invoke-virtual/range {v22 .. v23}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v10

    #@84
    .line 142
    .local v10, "defT":Ljava/lang/String;
    if-eqz v10, :cond_5

    #@86
    .line 143
    move-object v11, v10

    #@87
    .line 146
    :cond_5
    if-eqz v19, :cond_6

    #@89
    const-string/jumbo v22, "default"

    #@8c
    move-object/from16 v0, v19

    #@8e
    move-object/from16 v1, v22

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v22

    #@94
    if-eqz v22, :cond_a

    #@96
    .line 147
    :cond_6
    move-object/from16 v19, v11

    #@98
    .line 158
    :goto_0
    move-object/from16 v0, v19

    #@9a
    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@9d
    move-result-object v9

    #@9e
    .line 159
    .local v9, "data":Landroid/icu/util/UResourceBundle;
    if-nez v9, :cond_7

    #@a0
    .line 160
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@a3
    move-result v22

    #@a4
    const/16 v23, 0x6

    #@a6
    move/from16 v0, v22

    #@a8
    move/from16 v1, v23

    #@aa
    if-le v0, v1, :cond_7

    #@ac
    const-string/jumbo v22, "search"

    #@af
    move-object/from16 v0, v19

    #@b1
    move-object/from16 v1, v22

    #@b3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b6
    move-result v22

    #@b7
    .line 159
    if-eqz v22, :cond_7

    #@b9
    .line 163
    const-string/jumbo v19, "search"

    #@bc
    .line 164
    move-object/from16 v0, v19

    #@be
    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@c1
    move-result-object v9

    #@c2
    .line 167
    :cond_7
    if-nez v9, :cond_8

    #@c4
    move-object/from16 v0, v19

    #@c6
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v22

    #@ca
    if-eqz v22, :cond_b

    #@cc
    .line 174
    :cond_8
    :goto_1
    if-nez v9, :cond_9

    #@ce
    const-string/jumbo v22, "standard"

    #@d1
    move-object/from16 v0, v19

    #@d3
    move-object/from16 v1, v22

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v22

    #@d9
    if-eqz v22, :cond_c

    #@db
    .line 181
    :cond_9
    :goto_2
    if-nez v9, :cond_d

    #@dd
    .line 182
    return-object v17

    #@de
    .line 149
    .end local v9    # "data":Landroid/icu/util/UResourceBundle;
    :cond_a
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/coll/CollationLoader$ASCII;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@e1
    move-result-object v19

    #@e2
    goto :goto_0

    #@e3
    .line 170
    .restart local v9    # "data":Landroid/icu/util/UResourceBundle;
    :cond_b
    move-object/from16 v19, v11

    #@e5
    .line 171
    move-object/from16 v0, v19

    #@e7
    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@ea
    move-result-object v9

    #@eb
    goto :goto_1

    #@ec
    .line 177
    :cond_c
    const-string/jumbo v19, "standard"

    #@ef
    .line 178
    move-object/from16 v0, v19

    #@f1
    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@f4
    move-result-object v9

    #@f5
    goto :goto_2

    #@f6
    .line 186
    :cond_d
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@f9
    move-result-object v4

    #@fa
    .line 189
    .local v4, "actualLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@fd
    move-result-object v5

    #@fe
    .line 190
    .local v5, "actualLocaleName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@101
    move-result v22

    #@102
    if-eqz v22, :cond_e

    #@104
    const-string/jumbo v22, "root"

    #@107
    move-object/from16 v0, v22

    #@109
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10c
    move-result v22

    #@10d
    if-eqz v22, :cond_f

    #@10f
    .line 191
    :cond_e
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@111
    .line 192
    const-string/jumbo v22, "standard"

    #@114
    move-object/from16 v0, v19

    #@116
    move-object/from16 v1, v22

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11b
    move-result v22

    #@11c
    if-eqz v22, :cond_f

    #@11e
    .line 193
    return-object v17

    #@11f
    .line 197
    :cond_f
    new-instance v18, Landroid/icu/impl/coll/CollationTailoring;

    #@121
    move-object/from16 v0, v17

    #@123
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@125
    move-object/from16 v22, v0

    #@127
    move-object/from16 v0, v18

    #@129
    move-object/from16 v1, v22

    #@12b
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    #@12e
    .line 198
    .local v18, "t":Landroid/icu/impl/coll/CollationTailoring;
    move-object/from16 v0, v18

    #@130
    iput-object v4, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@132
    .line 201
    const-string/jumbo v22, "%%CollationBin"

    #@135
    move-object/from16 v0, v22

    #@137
    invoke-virtual {v9, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@13a
    move-result-object v6

    #@13b
    .line 202
    .local v6, "binary":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getBinary()Ljava/nio/ByteBuffer;

    #@13e
    move-result-object v15

    #@13f
    .line 204
    .local v15, "inBytes":Ljava/nio/ByteBuffer;
    :try_start_2
    move-object/from16 v0, v17

    #@141
    move-object/from16 v1, v18

    #@143
    invoke-static {v0, v15, v1}, Landroid/icu/impl/coll/CollationDataReader;->read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@146
    .line 212
    :try_start_3
    const-string/jumbo v22, "Sequence"

    #@149
    move-object/from16 v0, v22

    #@14b
    invoke-virtual {v9, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@14e
    move-result-object v22

    #@14f
    move-object/from16 v0, v18

    #@151
    move-object/from16 v1, v22

    #@153
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationTailoring;->setRulesResource(Landroid/icu/util/UResourceBundle;)V
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_3

    #@156
    .line 219
    :goto_3
    move-object/from16 v0, v19

    #@158
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15b
    move-result v22

    #@15c
    if-nez v22, :cond_10

    #@15e
    .line 220
    const-string/jumbo v22, "collation"

    #@161
    move-object/from16 v0, v20

    #@163
    move-object/from16 v1, v22

    #@165
    move-object/from16 v2, v19

    #@167
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    #@16a
    move-result-object v22

    #@16b
    move-object/from16 v0, v22

    #@16d
    move-object/from16 v1, p1

    #@16f
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@171
    .line 228
    :cond_10
    move-object/from16 v0, v20

    #@173
    invoke-virtual {v4, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@176
    move-result v22

    #@177
    if-nez v22, :cond_11

    #@179
    .line 231
    const-string/jumbo v22, "android/icu/impl/data/icudt56b/coll"

    #@17c
    .line 230
    move-object/from16 v0, v22

    #@17e
    invoke-static {v0, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@181
    move-result-object v3

    #@182
    .line 232
    .local v3, "actualBundle":Landroid/icu/util/UResourceBundle;
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@184
    .end local v3    # "actualBundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v22, "collations/default"

    #@187
    move-object/from16 v0, v22

    #@189
    invoke-virtual {v3, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@18c
    move-result-object v10

    #@18d
    .line 233
    if-eqz v10, :cond_11

    #@18f
    .line 234
    move-object v11, v10

    #@190
    .line 238
    :cond_11
    move-object/from16 v0, v19

    #@192
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@195
    move-result v22

    #@196
    if-nez v22, :cond_12

    #@198
    .line 239
    move-object/from16 v0, v18

    #@19a
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@19c
    move-object/from16 v22, v0

    #@19e
    const-string/jumbo v23, "collation"

    #@1a1
    move-object/from16 v0, v22

    #@1a3
    move-object/from16 v1, v23

    #@1a5
    move-object/from16 v2, v19

    #@1a7
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    #@1aa
    move-result-object v22

    #@1ab
    move-object/from16 v0, v22

    #@1ad
    move-object/from16 v1, v18

    #@1af
    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@1b1
    .line 246
    :cond_12
    return-object v18

    #@1b2
    .line 205
    :catch_2
    move-exception v12

    #@1b3
    .line 206
    .local v12, "e":Ljava/io/IOException;
    new-instance v22, Landroid/icu/util/ICUUncheckedIOException;

    #@1b5
    new-instance v23, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v24, "Failed to load collation tailoring data for locale:"

    #@1bd
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v23

    #@1c1
    move-object/from16 v0, v23

    #@1c3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v23

    #@1c7
    .line 207
    const-string/jumbo v24, " type:"

    #@1ca
    .line 206
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v23

    #@1ce
    move-object/from16 v0, v23

    #@1d0
    move-object/from16 v1, v19

    #@1d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v23

    #@1d6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d9
    move-result-object v23

    #@1da
    move-object/from16 v0, v22

    #@1dc
    move-object/from16 v1, v23

    #@1de
    invoke-direct {v0, v1, v12}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1e1
    throw v22

    #@1e2
    .line 213
    .end local v12    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v14

    #@1e3
    .restart local v14    # "ignored":Ljava/util/MissingResourceException;
    goto/16 :goto_3
.end method
