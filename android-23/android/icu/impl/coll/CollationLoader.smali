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
    .line 35
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    #@3
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
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
    .line 89
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
    .line 52
    invoke-static {}, Landroid/icu/impl/coll/CollationLoader;->loadRootRules()V

    #@3
    .line 53
    sget-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    #@5
    return-object v0
.end method

.method private static loadRootRules()V
    .locals 4

    #@0
    .prologue
    .line 38
    sget-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 39
    return-void

    #@5
    .line 41
    :cond_0
    const-class v2, Landroid/icu/impl/coll/CollationLoader;

    #@7
    monitor-enter v2

    #@8
    .line 42
    :try_start_0
    sget-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 44
    const-string/jumbo v1, "android/icu/impl/data/icudt55b/coll"

    #@f
    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@11
    .line 43
    invoke-static {v1, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@14
    move-result-object v0

    #@15
    .line 45
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
    .line 37
    return-void

    #@20
    .line 41
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
    .line 81
    const-string/jumbo v3, "android/icu/impl/data/icudt55b/coll"

    #@3
    .line 80
    invoke-static {v3, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    .line 82
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 83
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
    .line 82
    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@24
    move-result-object v1

    #@25
    .line 84
    .local v1, "data":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v3, "Sequence"

    #@28
    invoke-virtual {v1, v3}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 85
    .local v2, "rules":Ljava/lang/String;
    return-object v2
.end method

.method public static loadTailoring(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/impl/coll/CollationTailoring;
    .locals 26
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
    .line 98
    .local p1, "outValidLocale":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Lcom/ibm/icu/util/ULocale;>;"
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    #@3
    move-result-object v17

    #@4
    .line 99
    .local v17, "root":Landroid/icu/impl/coll/CollationTailoring;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@7
    move-result-object v16

    #@8
    .line 100
    .local v16, "localeName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@b
    move-result v23

    #@c
    if-eqz v23, :cond_0

    #@e
    const-string/jumbo v23, "root"

    #@11
    move-object/from16 v0, v16

    #@13
    move-object/from16 v1, v23

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v23

    #@19
    if-eqz v23, :cond_1

    #@1b
    .line 101
    :cond_0
    sget-object v23, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@1d
    move-object/from16 v0, v23

    #@1f
    move-object/from16 v1, p1

    #@21
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@23
    .line 102
    return-object v17

    #@24
    .line 105
    :cond_1
    const/4 v7, 0x0

    #@25
    .line 108
    .local v7, "bundle":Landroid/icu/util/UResourceBundle;
    :try_start_0
    const-string/jumbo v23, "android/icu/impl/data/icudt55b/coll"

    #@28
    .line 109
    sget-object v24, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    #@2a
    .line 107
    move-object/from16 v0, v23

    #@2c
    move-object/from16 v1, p0

    #@2e
    move-object/from16 v2, v24

    #@30
    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result-object v7

    #@34
    .line 115
    .local v7, "bundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@37
    move-result-object v21

    #@38
    .line 118
    .local v21, "validLocale":Landroid/icu/util/ULocale;
    invoke-virtual/range {v21 .. v21}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@3b
    move-result-object v22

    #@3c
    .line 119
    .local v22, "validLocaleName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@3f
    move-result v23

    #@40
    if-eqz v23, :cond_2

    #@42
    const-string/jumbo v23, "root"

    #@45
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v23

    #@49
    if-eqz v23, :cond_3

    #@4b
    .line 120
    :cond_2
    sget-object v21, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@4d
    .line 122
    :cond_3
    move-object/from16 v0, v21

    #@4f
    move-object/from16 v1, p1

    #@51
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@53
    .line 127
    :try_start_1
    const-string/jumbo v23, "collations"

    #@56
    move-object/from16 v0, v23

    #@58
    invoke-virtual {v7, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@5b
    move-result-object v8

    #@5c
    .line 128
    .local v8, "collations":Landroid/icu/util/UResourceBundle;
    if-nez v8, :cond_4

    #@5e
    .line 129
    return-object v17

    #@5f
    .line 110
    .end local v8    # "collations":Landroid/icu/util/UResourceBundle;
    .end local v21    # "validLocale":Landroid/icu/util/ULocale;
    .end local v22    # "validLocaleName":Ljava/lang/String;
    .local v7, "bundle":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v13

    #@60
    .line 111
    .local v13, "e":Ljava/util/MissingResourceException;
    sget-object v23, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@62
    move-object/from16 v0, v23

    #@64
    move-object/from16 v1, p1

    #@66
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@68
    .line 112
    return-object v17

    #@69
    .line 131
    .end local v13    # "e":Ljava/util/MissingResourceException;
    .local v7, "bundle":Landroid/icu/util/UResourceBundle;
    .restart local v21    # "validLocale":Landroid/icu/util/ULocale;
    .restart local v22    # "validLocaleName":Ljava/lang/String;
    :catch_1
    move-exception v14

    #@6a
    .line 132
    .local v14, "ignored":Ljava/util/MissingResourceException;
    return-object v17

    #@6b
    .line 136
    .end local v14    # "ignored":Ljava/util/MissingResourceException;
    .restart local v8    # "collations":Landroid/icu/util/UResourceBundle;
    :cond_4
    const-string/jumbo v23, "collation"

    #@6e
    move-object/from16 v0, p0

    #@70
    move-object/from16 v1, v23

    #@72
    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v20

    #@76
    .line 137
    .local v20, "type":Ljava/lang/String;
    const-string/jumbo v11, "standard"

    #@79
    .local v11, "defaultType":Ljava/lang/String;
    move-object/from16 v23, v8

    #@7b
    .line 139
    check-cast v23, Landroid/icu/impl/ICUResourceBundle;

    #@7d
    const-string/jumbo v24, "default"

    #@80
    invoke-virtual/range {v23 .. v24}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v10

    #@84
    .line 140
    .local v10, "defT":Ljava/lang/String;
    if-eqz v10, :cond_5

    #@86
    .line 141
    move-object v11, v10

    #@87
    .line 144
    :cond_5
    if-eqz v20, :cond_6

    #@89
    const-string/jumbo v23, "default"

    #@8c
    move-object/from16 v0, v20

    #@8e
    move-object/from16 v1, v23

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v23

    #@94
    if-eqz v23, :cond_a

    #@96
    .line 145
    :cond_6
    move-object/from16 v20, v11

    #@98
    .line 156
    :goto_0
    move-object/from16 v0, v20

    #@9a
    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@9d
    move-result-object v9

    #@9e
    .line 157
    .local v9, "data":Landroid/icu/util/UResourceBundle;
    if-nez v9, :cond_7

    #@a0
    .line 158
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@a3
    move-result v23

    #@a4
    const/16 v24, 0x6

    #@a6
    move/from16 v0, v23

    #@a8
    move/from16 v1, v24

    #@aa
    if-le v0, v1, :cond_7

    #@ac
    const-string/jumbo v23, "search"

    #@af
    move-object/from16 v0, v20

    #@b1
    move-object/from16 v1, v23

    #@b3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b6
    move-result v23

    #@b7
    .line 157
    if-eqz v23, :cond_7

    #@b9
    .line 161
    const-string/jumbo v20, "search"

    #@bc
    .line 162
    move-object/from16 v0, v20

    #@be
    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@c1
    move-result-object v9

    #@c2
    .line 165
    :cond_7
    if-nez v9, :cond_8

    #@c4
    move-object/from16 v0, v20

    #@c6
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c9
    move-result v23

    #@ca
    if-eqz v23, :cond_b

    #@cc
    .line 172
    :cond_8
    :goto_1
    if-nez v9, :cond_9

    #@ce
    const-string/jumbo v23, "standard"

    #@d1
    move-object/from16 v0, v20

    #@d3
    move-object/from16 v1, v23

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v23

    #@d9
    if-eqz v23, :cond_c

    #@db
    .line 179
    :cond_9
    :goto_2
    if-nez v9, :cond_d

    #@dd
    .line 180
    return-object v17

    #@de
    .line 147
    .end local v9    # "data":Landroid/icu/util/UResourceBundle;
    :cond_a
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationLoader$ASCII;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@e1
    move-result-object v20

    #@e2
    goto :goto_0

    #@e3
    .line 168
    .restart local v9    # "data":Landroid/icu/util/UResourceBundle;
    :cond_b
    move-object/from16 v20, v11

    #@e5
    .line 169
    move-object/from16 v0, v20

    #@e7
    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@ea
    move-result-object v9

    #@eb
    goto :goto_1

    #@ec
    .line 175
    :cond_c
    const-string/jumbo v20, "standard"

    #@ef
    .line 176
    move-object/from16 v0, v20

    #@f1
    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@f4
    move-result-object v9

    #@f5
    goto :goto_2

    #@f6
    .line 184
    :cond_d
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@f9
    move-result-object v4

    #@fa
    .line 187
    .local v4, "actualLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@fd
    move-result-object v5

    #@fe
    .line 188
    .local v5, "actualLocaleName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@101
    move-result v23

    #@102
    if-eqz v23, :cond_e

    #@104
    const-string/jumbo v23, "root"

    #@107
    move-object/from16 v0, v23

    #@109
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10c
    move-result v23

    #@10d
    if-eqz v23, :cond_f

    #@10f
    .line 189
    :cond_e
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@111
    .line 190
    const-string/jumbo v23, "standard"

    #@114
    move-object/from16 v0, v20

    #@116
    move-object/from16 v1, v23

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11b
    move-result v23

    #@11c
    if-eqz v23, :cond_f

    #@11e
    .line 191
    return-object v17

    #@11f
    .line 195
    :cond_f
    new-instance v19, Landroid/icu/impl/coll/CollationTailoring;

    #@121
    move-object/from16 v0, v17

    #@123
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@125
    move-object/from16 v23, v0

    #@127
    move-object/from16 v0, v19

    #@129
    move-object/from16 v1, v23

    #@12b
    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    #@12e
    .line 196
    .local v19, "t":Landroid/icu/impl/coll/CollationTailoring;
    move-object/from16 v0, v19

    #@130
    iput-object v4, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@132
    .line 199
    const-string/jumbo v23, "%%CollationBin"

    #@135
    move-object/from16 v0, v23

    #@137
    invoke-virtual {v9, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@13a
    move-result-object v6

    #@13b
    .line 200
    .local v6, "binary":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getBinary()Ljava/nio/ByteBuffer;

    #@13e
    move-result-object v15

    #@13f
    .line 202
    .local v15, "inBytes":Ljava/nio/ByteBuffer;
    :try_start_2
    move-object/from16 v0, v17

    #@141
    move-object/from16 v1, v19

    #@143
    invoke-static {v0, v15, v1}, Landroid/icu/impl/coll/CollationDataReader;->read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@146
    .line 210
    :try_start_3
    const-string/jumbo v23, "Sequence"

    #@149
    move-object/from16 v0, v23

    #@14b
    invoke-virtual {v9, v0}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@14e
    move-result-object v18

    #@14f
    .line 211
    .local v18, "s":Ljava/lang/String;
    if-eqz v18, :cond_10

    #@151
    .line 212
    move-object/from16 v0, v18

    #@153
    move-object/from16 v1, v19

    #@155
    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_3

    #@157
    .line 220
    .end local v18    # "s":Ljava/lang/String;
    :cond_10
    :goto_3
    move-object/from16 v0, v20

    #@159
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15c
    move-result v23

    #@15d
    if-nez v23, :cond_11

    #@15f
    .line 221
    const-string/jumbo v23, "collation"

    #@162
    move-object/from16 v0, v21

    #@164
    move-object/from16 v1, v23

    #@166
    move-object/from16 v2, v20

    #@168
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    #@16b
    move-result-object v23

    #@16c
    move-object/from16 v0, v23

    #@16e
    move-object/from16 v1, p1

    #@170
    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@172
    .line 229
    :cond_11
    move-object/from16 v0, v21

    #@174
    invoke-virtual {v4, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@177
    move-result v23

    #@178
    if-nez v23, :cond_12

    #@17a
    .line 232
    const-string/jumbo v23, "android/icu/impl/data/icudt55b/coll"

    #@17d
    .line 231
    move-object/from16 v0, v23

    #@17f
    invoke-static {v0, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@182
    move-result-object v3

    #@183
    .line 233
    .local v3, "actualBundle":Landroid/icu/util/UResourceBundle;
    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    #@185
    .end local v3    # "actualBundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v23, "collations/default"

    #@188
    move-object/from16 v0, v23

    #@18a
    invoke-virtual {v3, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@18d
    move-result-object v10

    #@18e
    .line 234
    if-eqz v10, :cond_12

    #@190
    .line 235
    move-object v11, v10

    #@191
    .line 239
    :cond_12
    move-object/from16 v0, v20

    #@193
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@196
    move-result v23

    #@197
    if-nez v23, :cond_13

    #@199
    .line 240
    move-object/from16 v0, v19

    #@19b
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@19d
    move-object/from16 v23, v0

    #@19f
    const-string/jumbo v24, "collation"

    #@1a2
    move-object/from16 v0, v23

    #@1a4
    move-object/from16 v1, v24

    #@1a6
    move-object/from16 v2, v20

    #@1a8
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    #@1ab
    move-result-object v23

    #@1ac
    move-object/from16 v0, v23

    #@1ae
    move-object/from16 v1, v19

    #@1b0
    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@1b2
    .line 247
    :cond_13
    return-object v19

    #@1b3
    .line 203
    :catch_2
    move-exception v12

    #@1b4
    .line 204
    .local v12, "e":Ljava/io/IOException;
    new-instance v23, Landroid/icu/util/ICUUncheckedIOException;

    #@1b6
    new-instance v24, Ljava/lang/StringBuilder;

    #@1b8
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1bb
    const-string/jumbo v25, "Failed to load collation tailoring data for locale:"

    #@1be
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v24

    #@1c2
    move-object/from16 v0, v24

    #@1c4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v24

    #@1c8
    .line 205
    const-string/jumbo v25, " type:"

    #@1cb
    .line 204
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v24

    #@1cf
    move-object/from16 v0, v24

    #@1d1
    move-object/from16 v1, v20

    #@1d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v24

    #@1d7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1da
    move-result-object v24

    #@1db
    move-object/from16 v0, v23

    #@1dd
    move-object/from16 v1, v24

    #@1df
    invoke-direct {v0, v1, v12}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1e2
    throw v23

    #@1e3
    .line 214
    .end local v12    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v14

    #@1e4
    .restart local v14    # "ignored":Ljava/util/MissingResourceException;
    goto/16 :goto_3
.end method
