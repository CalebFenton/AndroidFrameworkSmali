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
.field private static volatile blacklist rootRules:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static final blacklist findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .registers 3
    .param p0, "table"    # Landroid/icu/util/UResourceBundle;
    .param p1, "entryName"    # Ljava/lang/String;

    .line 94
    move-object v0, p0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRootRules()Ljava/lang/String;
    .registers 1

    .line 57
    invoke-static {}, Landroid/icu/impl/coll/CollationLoader;->loadRootRules()V

    .line 58
    sget-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist loadRootRules()V
    .registers 3

    .line 43
    sget-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 44
    return-void

    .line 46
    :cond_5
    const-class v0, Landroid/icu/impl/coll/CollationLoader;

    monitor-enter v0

    .line 47
    :try_start_8
    sget-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 48
    const-string v1, "android/icu/impl/data/icudata/coll"

    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 50
    .local v1, "rootBundle":Landroid/icu/util/UResourceBundle;
    const-string v2, "UCARules"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    .line 52
    .end local v1    # "rootBundle":Landroid/icu/util/UResourceBundle;
    :cond_1c
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method static blacklist loadRules(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "collationType"    # Ljava/lang/String;

    .line 85
    const-string v0, "android/icu/impl/data/icudata/coll"

    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 87
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    move-object v1, v0

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collations/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    invoke-static {p1}, Landroid/icu/impl/coll/CollationLoader$ASCII;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 89
    .local v1, "data":Landroid/icu/util/UResourceBundle;
    const-string v2, "Sequence"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "rules":Ljava/lang/String;
    return-object v2
.end method

.method public static blacklist loadTailoring(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/impl/coll/CollationTailoring;
    .registers 22
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/impl/coll/CollationTailoring;"
        }
    .end annotation

    .line 103
    .local p1, "outValidLocale":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Landroid/icu/util/ULocale;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "android/icu/impl/data/icudata/coll"

    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v4

    .line 104
    .local v4, "root":Landroid/icu/impl/coll/CollationTailoring;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "localeName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_151

    const-string v0, "root"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    move-object/from16 v16, v5

    goto/16 :goto_153

    .line 110
    :cond_20
    const/4 v6, 0x0

    .line 112
    .local v6, "bundle":Landroid/icu/util/UResourceBundle;
    :try_start_21
    sget-object v7, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v3, v1, v7}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v7
    :try_end_27
    .catch Ljava/util/MissingResourceException; {:try_start_21 .. :try_end_27} :catch_149

    .line 118
    .end local v6    # "bundle":Landroid/icu/util/UResourceBundle;
    .local v7, "bundle":Landroid/icu/util/UResourceBundle;
    nop

    .line 120
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v6

    .line 123
    .local v6, "validLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "validLocaleName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3c

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 125
    :cond_3c
    sget-object v6, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 127
    :cond_3e
    iput-object v6, v2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 132
    :try_start_40
    const-string v9, "collations"

    invoke-virtual {v7, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9
    :try_end_46
    .catch Ljava/util/MissingResourceException; {:try_start_40 .. :try_end_46} :catch_145

    .line 133
    .local v9, "collations":Landroid/icu/util/UResourceBundle;
    if-nez v9, :cond_49

    .line 134
    return-object v4

    .line 138
    :cond_49
    nop

    .line 141
    const-string v10, "collation"

    invoke-virtual {v1, v10}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "type":Ljava/lang/String;
    const-string v12, "standard"

    .line 144
    .local v12, "defaultType":Ljava/lang/String;
    move-object v13, v9

    check-cast v13, Landroid/icu/impl/ICUResourceBundle;

    const-string v14, "default"

    invoke-virtual {v13, v14}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, "defT":Ljava/lang/String;
    if-eqz v13, :cond_5e

    .line 146
    move-object v12, v13

    .line 149
    :cond_5e
    if-eqz v11, :cond_6c

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_67

    goto :goto_6c

    .line 152
    :cond_67
    invoke-static {v11}, Landroid/icu/impl/coll/CollationLoader$ASCII;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_6d

    .line 150
    :cond_6c
    :goto_6c
    move-object v11, v12

    .line 161
    :goto_6d
    invoke-static {v9, v11}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v14

    .line 162
    .local v14, "data":Landroid/icu/util/UResourceBundle;
    if-nez v14, :cond_88

    .line 163
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v1, 0x6

    if-le v15, v1, :cond_88

    const-string v1, "search"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 166
    const-string v11, "search"

    .line 167
    invoke-static {v9, v11}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v14

    .line 170
    :cond_88
    if-nez v14, :cond_95

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 173
    move-object v11, v12

    .line 174
    invoke-static {v9, v11}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v14

    .line 177
    :cond_95
    const-string v1, "standard"

    if-nez v14, :cond_a5

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a5

    .line 180
    const-string v11, "standard"

    .line 181
    invoke-static {v9, v11}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v14

    .line 184
    :cond_a5
    if-nez v14, :cond_a8

    .line 185
    return-object v4

    .line 189
    :cond_a8
    invoke-virtual {v14}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v15

    .line 192
    .local v15, "actualLocale":Landroid/icu/util/ULocale;
    move-object/from16 v16, v5

    .end local v5    # "localeName":Ljava/lang/String;
    .local v16, "localeName":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "actualLocaleName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_be

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 194
    :cond_be
    sget-object v15, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 195
    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 196
    return-object v4

    .line 200
    :cond_c7
    new-instance v0, Landroid/icu/impl/coll/CollationTailoring;

    iget-object v1, v4, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    move-object v1, v0

    .line 201
    .local v1, "t":Landroid/icu/impl/coll/CollationTailoring;
    iput-object v15, v1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    .line 204
    const-string v0, "%%CollationBin"

    invoke-virtual {v14, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v17

    .line 205
    .local v17, "binary":Landroid/icu/util/UResourceBundle;
    move-object/from16 v18, v5

    .end local v5    # "actualLocaleName":Ljava/lang/String;
    .local v18, "actualLocaleName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/UResourceBundle;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 207
    .local v5, "inBytes":Ljava/nio/ByteBuffer;
    :try_start_dd
    invoke-static {v4, v5, v1}, Landroid/icu/impl/coll/CollationDataReader;->read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_11f

    .line 211
    nop

    .line 215
    :try_start_e1
    const-string v0, "Sequence"

    invoke-virtual {v14, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationTailoring;->setRulesResource(Landroid/icu/util/UResourceBundle;)V
    :try_end_ea
    .catch Ljava/util/MissingResourceException; {:try_start_e1 .. :try_end_ea} :catch_eb

    .line 217
    goto :goto_ec

    .line 216
    :catch_eb
    move-exception v0

    .line 222
    :goto_ec
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    .line 223
    invoke-virtual {v6, v10, v11}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, v2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 231
    :cond_f8
    invoke-virtual {v15, v6}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 233
    invoke-static {v3, v15}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 235
    .local v0, "actualBundle":Landroid/icu/util/UResourceBundle;
    move-object v3, v0

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    move-object/from16 v19, v0

    .end local v0    # "actualBundle":Landroid/icu/util/UResourceBundle;
    .local v19, "actualBundle":Landroid/icu/util/UResourceBundle;
    const-string v0, "collations/default"

    invoke-virtual {v3, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 236
    if-eqz v13, :cond_110

    .line 237
    move-object v12, v13

    .line 241
    .end local v19    # "actualBundle":Landroid/icu/util/UResourceBundle;
    :cond_110
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 242
    iget-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v10, v11}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    .line 249
    :cond_11e
    return-object v1

    .line 208
    :catch_11f
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v1

    .end local v1    # "t":Landroid/icu/impl/coll/CollationTailoring;
    .local v19, "t":Landroid/icu/impl/coll/CollationTailoring;
    const-string v1, "Failed to load collation tailoring data for locale:"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " type:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "collations":Landroid/icu/util/UResourceBundle;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "defaultType":Ljava/lang/String;
    .end local v13    # "defT":Ljava/lang/String;
    .end local v14    # "data":Landroid/icu/util/UResourceBundle;
    .end local v15    # "actualLocale":Landroid/icu/util/ULocale;
    .end local v16    # "localeName":Ljava/lang/String;
    .end local v17    # "binary":Landroid/icu/util/UResourceBundle;
    .end local v18    # "actualLocaleName":Ljava/lang/String;
    .end local v19    # "t":Landroid/icu/impl/coll/CollationTailoring;
    .local v5, "localeName":Ljava/lang/String;
    :catch_145
    move-exception v0

    move-object/from16 v16, v5

    .line 137
    .end local v5    # "localeName":Ljava/lang/String;
    .local v0, "ignored":Ljava/util/MissingResourceException;
    .restart local v16    # "localeName":Ljava/lang/String;
    return-object v4

    .line 115
    .end local v0    # "ignored":Ljava/util/MissingResourceException;
    .end local v7    # "bundle":Landroid/icu/util/UResourceBundle;
    .end local v8    # "validLocaleName":Ljava/lang/String;
    .end local v16    # "localeName":Ljava/lang/String;
    .restart local v5    # "localeName":Ljava/lang/String;
    .local v6, "bundle":Landroid/icu/util/UResourceBundle;
    :catch_149
    move-exception v0

    move-object/from16 v16, v5

    .line 116
    .end local v5    # "localeName":Ljava/lang/String;
    .local v0, "e":Ljava/util/MissingResourceException;
    .restart local v16    # "localeName":Ljava/lang/String;
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iput-object v1, v2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 117
    return-object v4

    .line 105
    .end local v0    # "e":Ljava/util/MissingResourceException;
    .end local v6    # "bundle":Landroid/icu/util/UResourceBundle;
    .end local v16    # "localeName":Ljava/lang/String;
    .restart local v5    # "localeName":Ljava/lang/String;
    :cond_151
    move-object/from16 v16, v5

    .line 106
    .end local v5    # "localeName":Ljava/lang/String;
    .restart local v16    # "localeName":Ljava/lang/String;
    :goto_153
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iput-object v0, v2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 107
    return-object v4
.end method
