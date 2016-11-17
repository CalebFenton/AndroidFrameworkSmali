.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static sFullyInitialized:Z

.field private static final sLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@7
    .line 31
    const/4 v0, 0x0

    #@8
    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    #@a
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 233
    if-nez p0, :cond_0

    #@2
    .line 234
    return-void

    #@3
    .line 236
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 237
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 238
    return-void

    #@e
    .line 241
    :cond_1
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@10
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v2

    #@18
    .local v2, "li$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_3

    #@1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@24
    .line 242
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 244
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    #@35
    move-result v3

    #@36
    or-int/lit8 v3, v3, 0x1

    #@38
    invoke-static {v1, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    #@3b
    goto :goto_0

    #@3c
    .line 232
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3
    return-void
.end method

.method public static fillCache(Landroid/content/Context;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 250
    sget-boolean v13, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    #@2
    if-eqz v13, :cond_0

    #@4
    .line 251
    return-void

    #@5
    .line 254
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    #@8
    move-result-object v12

    #@9
    .line 256
    .local v12, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    #@c
    move-result-object v14

    #@d
    const/4 v13, 0x0

    #@e
    array-length v15, v14

    #@f
    :goto_0
    if-ge v13, v15, :cond_4

    #@11
    aget-object v8, v14, v13

    #@13
    .line 257
    .local v8, "localeId":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    #@16
    move-result v16

    #@17
    if-eqz v16, :cond_1

    #@19
    .line 258
    new-instance v13, Ljava/util/IllformedLocaleException;

    #@1b
    const-string/jumbo v14, "Bad locale entry in locale_config.xml"

    #@1e
    invoke-direct {v13, v14}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    #@21
    throw v13

    #@22
    .line 260
    :cond_1
    new-instance v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@24
    const/16 v16, 0x0

    #@26
    move-object/from16 v0, v16

    #@28
    invoke-direct {v6, v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    #@2b
    .line 261
    .local v6, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    #@2e
    move-result-object v16

    #@2f
    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@32
    move-result-object v16

    #@33
    move-object/from16 v0, v16

    #@35
    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@38
    move-result v16

    #@39
    if-eqz v16, :cond_2

    #@3b
    .line 262
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    #@3e
    move-result v16

    #@3f
    or-int/lit8 v16, v16, 0x1

    #@41
    move/from16 v0, v16

    #@43
    invoke-static {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    #@46
    .line 264
    :cond_2
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@48
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    #@4b
    move-result-object v17

    #@4c
    move-object/from16 v0, v16

    #@4e
    move-object/from16 v1, v17

    #@50
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 265
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    #@56
    move-result-object v10

    #@57
    .line 266
    .local v10, "parent":Ljava/util/Locale;
    if-eqz v10, :cond_3

    #@59
    .line 267
    invoke-virtual {v10}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@5c
    move-result-object v11

    #@5d
    .line 268
    .local v11, "parentId":Ljava/lang/String;
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@5f
    move-object/from16 v0, v16

    #@61
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@64
    move-result v16

    #@65
    if-nez v16, :cond_3

    #@67
    .line 269
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@69
    new-instance v17, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@6b
    const/16 v18, 0x0

    #@6d
    move-object/from16 v0, v17

    #@6f
    move-object/from16 v1, v18

    #@71
    invoke-direct {v0, v10, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    #@74
    move-object/from16 v0, v16

    #@76
    move-object/from16 v1, v17

    #@78
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    .line 256
    .end local v11    # "parentId":Ljava/lang/String;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    #@7d
    goto :goto_0

    #@7e
    .line 274
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v8    # "localeId":Ljava/lang/String;
    .end local v10    # "parent":Ljava/util/Locale;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@81
    move-result-object v13

    #@82
    .line 275
    const-string/jumbo v14, "development_settings_enabled"

    #@85
    const/4 v15, 0x0

    #@86
    .line 274
    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@89
    move-result v13

    #@8a
    if-eqz v13, :cond_5

    #@8c
    const/4 v4, 0x1

    #@8d
    .line 276
    .local v4, "isInDeveloperMode":Z
    :goto_1
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getPseudoLocales()[Ljava/lang/String;

    #@90
    move-result-object v14

    #@91
    const/4 v13, 0x0

    #@92
    array-length v15, v14

    #@93
    :goto_2
    if-ge v13, v15, :cond_7

    #@95
    aget-object v8, v14, v13

    #@97
    .line 277
    .restart local v8    # "localeId":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@9a
    move-result-object v16

    #@9b
    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@9e
    move-result-object v6

    #@9f
    .line 278
    .restart local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v4, :cond_6

    #@a1
    .line 279
    const/16 v16, 0x1

    #@a3
    move/from16 v0, v16

    #@a5
    invoke-virtual {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    #@a8
    .line 280
    const/16 v16, 0x1

    #@aa
    move/from16 v0, v16

    #@ac
    invoke-static {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set0(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    #@af
    .line 281
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    #@b2
    move-result v16

    #@b3
    or-int/lit8 v16, v16, 0x1

    #@b5
    move/from16 v0, v16

    #@b7
    invoke-static {v6, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    #@ba
    .line 276
    :goto_3
    add-int/lit8 v13, v13, 0x1

    #@bc
    goto :goto_2

    #@bd
    .line 274
    .end local v4    # "isInDeveloperMode":Z
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v8    # "localeId":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    #@be
    .restart local v4    # "isInDeveloperMode":Z
    goto :goto_1

    #@bf
    .line 283
    .restart local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v8    # "localeId":Ljava/lang/String;
    :cond_6
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@c1
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    #@c4
    move-result-object v17

    #@c5
    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c8
    goto :goto_3

    #@c9
    .line 288
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v8    # "localeId":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/util/HashSet;

    #@cb
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    #@ce
    .line 289
    .local v9, "localizedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    #@d1
    move-result-object v14

    #@d2
    const/4 v13, 0x0

    #@d3
    array-length v15, v14

    #@d4
    :goto_4
    if-ge v13, v15, :cond_b

    #@d6
    aget-object v8, v14, v13

    #@d8
    .line 290
    .restart local v8    # "localeId":Ljava/lang/String;
    new-instance v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@da
    const/16 v16, 0x0

    #@dc
    move-object/from16 v0, v16

    #@de
    invoke-direct {v6, v8, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    #@e1
    .line 291
    .restart local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    #@e4
    move-result-object v16

    #@e5
    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@e8
    move-result-object v3

    #@e9
    .line 293
    .local v3, "country":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@ec
    move-result v16

    #@ed
    if-nez v16, :cond_9

    #@ef
    .line 294
    const/4 v2, 0x0

    #@f0
    .line 295
    .local v2, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@f2
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    #@f5
    move-result-object v17

    #@f6
    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@f9
    move-result v16

    #@fa
    if-eqz v16, :cond_a

    #@fc
    .line 296
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@fe
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    #@101
    move-result-object v17

    #@102
    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@105
    move-result-object v2

    #@106
    .end local v2    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@108
    .line 303
    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    #@10a
    .line 304
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    #@10d
    move-result v16

    #@10e
    or-int/lit8 v16, v16, 0x2

    #@110
    move/from16 v0, v16

    #@112
    invoke-static {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    #@115
    .line 307
    :cond_9
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    #@118
    move-result-object v16

    #@119
    move-object/from16 v0, v16

    #@11b
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@11e
    .line 289
    add-int/lit8 v13, v13, 0x1

    #@120
    goto :goto_4

    #@121
    .line 298
    .restart local v2    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    #@123
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    #@129
    move-result-object v17

    #@12a
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v16

    #@12e
    const-string/jumbo v17, "-"

    #@131
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v16

    #@135
    move-object/from16 v0, v16

    #@137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v16

    #@13b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v5

    #@13f
    .line 299
    .local v5, "langScriptCtry":Ljava/lang/String;
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@141
    move-object/from16 v0, v16

    #@143
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@146
    move-result v16

    #@147
    if-eqz v16, :cond_8

    #@149
    .line 300
    sget-object v16, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@14b
    move-object/from16 v0, v16

    #@14d
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@150
    move-result-object v2

    #@151
    .end local v2    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@153
    .local v2, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_5

    #@154
    .line 311
    .end local v2    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v3    # "country":Ljava/lang/String;
    .end local v5    # "langScriptCtry":Ljava/lang/String;
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v8    # "localeId":Ljava/lang/String;
    :cond_b
    const-string/jumbo v13, "sr-Latn"

    #@157
    invoke-virtual {v9, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@15a
    .line 313
    sget-object v13, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@15c
    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@15f
    move-result-object v13

    #@160
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@163
    move-result-object v7

    #@164
    .local v7, "li$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@167
    move-result v13

    #@168
    if-eqz v13, :cond_c

    #@16a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16d
    move-result-object v6

    #@16e
    check-cast v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@170
    .line 314
    .restart local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    #@173
    move-result-object v13

    #@174
    invoke-virtual {v9, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@177
    move-result v13

    #@178
    invoke-virtual {v6, v13}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    #@17b
    goto :goto_6

    #@17c
    .line 317
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@17f
    move-result-object v13

    #@180
    invoke-static {v13}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    #@183
    .line 319
    const/4 v13, 0x1

    #@184
    sput-boolean v13, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    #@186
    .line 249
    return-void
.end method

.method private static getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I
    .locals 3
    .param p1, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 323
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    return v1

    #@d
    .line 324
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get0(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    return v2

    #@14
    .line 325
    :cond_1
    if-eqz p2, :cond_2

    #@16
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 326
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_4

    #@22
    return v2

    #@23
    .line 325
    :cond_3
    return v1

    #@24
    .line 327
    :cond_4
    return v1
.end method

.method public static getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 339
    .local p1, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    #@3
    .line 340
    if-nez p2, :cond_1

    #@5
    const/4 v3, 0x0

    #@6
    .line 342
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    #@8
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@b
    .line 343
    .local v4, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    sget-object v5, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@d
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@10
    move-result-object v5

    #@11
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_4

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@21
    .line 344
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {p1, v1, p3}, Lcom/android/internal/app/LocaleStore;->getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I

    #@24
    move-result v0

    #@25
    .line 345
    .local v0, "level":I
    const/4 v5, 0x2

    #@26
    if-ne v0, v5, :cond_0

    #@28
    .line 346
    if-eqz p2, :cond_2

    #@2a
    .line 347
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_0

    #@38
    .line 348
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_1

    #@3c
    .line 340
    .end local v0    # "level":I
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v2    # "li$iterator":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    .local v3, "parentId":Ljava/lang/String;
    goto :goto_0

    #@41
    .line 351
    .end local v3    # "parentId":Ljava/lang/String;
    .restart local v0    # "level":I
    .restart local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v2    # "li$iterator":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_2
    const/4 v5, 0x1

    #@42
    invoke-static {v1, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-wrap0(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_3

    #@48
    .line 352
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_1

    #@4c
    .line 354
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    #@4f
    move-result-object v5

    #@50
    invoke-static {v5}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@57
    goto :goto_1

    #@58
    .line 359
    .end local v0    # "level":I
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_4
    return-object v4
.end method

.method public static getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 365
    .local v0, "id":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@6
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 366
    new-instance v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@e
    const/4 v2, 0x0

    #@f
    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    #@12
    .line 367
    .local v1, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@14
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 371
    :goto_0
    return-object v1

    #@18
    .line 369
    .end local v1    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@20
    .restart local v1    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_0
.end method

.method private static getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 181
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 183
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@8
    move-result-object v2

    #@9
    .line 185
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    #@b
    .line 186
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 187
    .local v0, "iso":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 188
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1e
    .line 191
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_1

    #@2e
    .line 193
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@31
    .line 197
    .end local v0    # "iso":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static updateSimCountries(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 215
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    .line 217
    .local v2, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    #@1a
    .line 222
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 223
    invoke-static {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-get1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    #@2b
    move-result v3

    #@2c
    or-int/lit8 v3, v3, 0x1

    #@2e
    invoke-static {v0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-set1(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)I

    #@31
    goto :goto_0

    #@32
    .line 214
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    return-void
.end method
