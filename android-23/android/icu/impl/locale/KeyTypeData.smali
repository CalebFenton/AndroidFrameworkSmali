.class public Landroid/icu/impl/locale/KeyTypeData;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$SpecialType;,
        Landroid/icu/impl/locale/KeyTypeData$KeyData;,
        Landroid/icu/impl/locale/KeyTypeData$Type;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final KEYMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/KeyTypeData$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DATA:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Landroid/icu/impl/locale/KeyTypeData;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    sput-boolean v0, Landroid/icu/impl/locale/KeyTypeData;->-assertionsDisabled:Z

    #@c
    .line 415
    new-array v0, v1, [[Ljava/lang/Object;

    #@e
    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEY_DATA:[[Ljava/lang/Object;

    #@10
    .line 537
    new-instance v0, Ljava/util/HashMap;

    #@12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@15
    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    #@17
    .line 539
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData;->initFromResourceBundle()V

    #@1a
    .line 24
    return-void

    #@1b
    :cond_0
    const/4 v0, 0x1

    #@1c
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static initFromResourceBundle()V
    .locals 48

    #@0
    .prologue
    .line 176
    const-string/jumbo v44, "android/icu/impl/data/icudt55b"

    #@3
    .line 177
    const-string/jumbo v45, "keyTypeData"

    #@6
    .line 178
    sget-object v46, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@8
    .line 175
    invoke-static/range {v44 .. v46}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@b
    move-result-object v25

    #@c
    .line 179
    .local v25, "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v44, "keyMap"

    #@f
    move-object/from16 v0, v25

    #@11
    move-object/from16 v1, v44

    #@13
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@16
    move-result-object v24

    #@17
    .line 180
    .local v24, "keyMapRes":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v44, "typeMap"

    #@1a
    move-object/from16 v0, v25

    #@1c
    move-object/from16 v1, v44

    #@1e
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@21
    move-result-object v41

    #@22
    .line 183
    .local v41, "typeMapRes":Landroid/icu/util/UResourceBundle;
    const/16 v35, 0x0

    #@24
    .line 184
    .local v35, "typeAliasRes":Landroid/icu/util/UResourceBundle;
    const/4 v10, 0x0

    #@25
    .line 187
    .local v10, "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    :try_start_0
    const-string/jumbo v44, "typeAlias"

    #@28
    move-object/from16 v0, v25

    #@2a
    move-object/from16 v1, v44

    #@2c
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_4

    #@2f
    move-result-object v35

    #@30
    .line 193
    .end local v35    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    :goto_0
    :try_start_1
    const-string/jumbo v44, "bcpTypeAlias"

    #@33
    move-object/from16 v0, v25

    #@35
    move-object/from16 v1, v44

    #@37
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_3

    #@3a
    move-result-object v10

    #@3b
    .line 199
    .end local v10    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    :goto_1
    invoke-virtual/range {v24 .. v24}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@3e
    move-result-object v23

    #@3f
    .line 200
    .local v23, "keyMapItr":Landroid/icu/util/UResourceBundleIterator;
    :cond_0
    :goto_2
    invoke-virtual/range {v23 .. v23}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@42
    move-result v44

    #@43
    if-eqz v44, :cond_12

    #@45
    .line 201
    invoke-virtual/range {v23 .. v23}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@48
    move-result-object v22

    #@49
    .line 202
    .local v22, "keyMapEntry":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v22 .. v22}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@4c
    move-result-object v26

    #@4d
    .line 203
    .local v26, "legacyKeyId":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    .line 205
    .local v7, "bcpKeyId":Ljava/lang/String;
    const/16 v17, 0x0

    #@53
    .line 206
    .local v17, "hasSameKey":Z
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@56
    move-result v44

    #@57
    if-nez v44, :cond_1

    #@59
    .line 208
    move-object/from16 v7, v26

    #@5b
    .line 209
    const/16 v17, 0x1

    #@5d
    .line 212
    :cond_1
    const-string/jumbo v44, "timezone"

    #@60
    move-object/from16 v0, v26

    #@62
    move-object/from16 v1, v44

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v20

    #@68
    .line 215
    .local v20, "isTZ":Z
    const/16 v34, 0x0

    #@6a
    .line 216
    .local v34, "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v35, :cond_4

    #@6c
    .line 217
    const/16 v36, 0x0

    #@6e
    .line 219
    .local v36, "typeAliasResByKey":Landroid/icu/util/UResourceBundle;
    :try_start_2
    move-object/from16 v0, v35

    #@70
    move-object/from16 v1, v26

    #@72
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    #@75
    move-result-object v36

    #@76
    .line 223
    .end local v36    # "typeAliasResByKey":Landroid/icu/util/UResourceBundle;
    :goto_3
    if-eqz v36, :cond_4

    #@78
    .line 224
    new-instance v34, Ljava/util/HashMap;

    #@7a
    .end local v34    # "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    #@7d
    .line 225
    .local v34, "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual/range {v36 .. v36}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@80
    move-result-object v37

    #@81
    .line 226
    .local v37, "typeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    :goto_4
    invoke-virtual/range {v37 .. v37}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@84
    move-result v44

    #@85
    if-eqz v44, :cond_4

    #@87
    .line 227
    invoke-virtual/range {v37 .. v37}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@8a
    move-result-object v33

    #@8b
    .line 228
    .local v33, "typeAliasDataEntry":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@8e
    move-result-object v16

    #@8f
    .line 229
    .local v16, "from":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@92
    move-result-object v32

    #@93
    .line 230
    .local v32, "to":Ljava/lang/String;
    if-eqz v20, :cond_2

    #@95
    .line 231
    const/16 v44, 0x3a

    #@97
    const/16 v45, 0x2f

    #@99
    move-object/from16 v0, v16

    #@9b
    move/from16 v1, v44

    #@9d
    move/from16 v2, v45

    #@9f
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@a2
    move-result-object v16

    #@a3
    .line 233
    :cond_2
    move-object/from16 v0, v34

    #@a5
    move-object/from16 v1, v32

    #@a7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    move-result-object v6

    #@ab
    check-cast v6, Ljava/util/Set;

    #@ad
    .line 234
    .local v6, "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v6, :cond_3

    #@af
    .line 235
    new-instance v6, Ljava/util/HashSet;

    #@b1
    .end local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@b4
    .line 236
    .restart local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v34

    #@b6
    move-object/from16 v1, v32

    #@b8
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    .line 238
    :cond_3
    move-object/from16 v0, v16

    #@bd
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c0
    goto :goto_4

    #@c1
    .line 220
    .end local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "from":Ljava/lang/String;
    .end local v32    # "to":Ljava/lang/String;
    .end local v33    # "typeAliasDataEntry":Landroid/icu/util/UResourceBundle;
    .end local v37    # "typeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .local v34, "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v36    # "typeAliasResByKey":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v15

    #@c2
    .local v15, "e":Ljava/util/MissingResourceException;
    goto :goto_3

    #@c3
    .line 244
    .end local v15    # "e":Ljava/util/MissingResourceException;
    .end local v34    # "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v36    # "typeAliasResByKey":Landroid/icu/util/UResourceBundle;
    :cond_4
    const/4 v9, 0x0

    #@c4
    .line 245
    .local v9, "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v10, :cond_6

    #@c6
    .line 246
    const/4 v11, 0x0

    #@c7
    .line 248
    .local v11, "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    :try_start_3
    invoke-virtual {v10, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    #@ca
    move-result-object v11

    #@cb
    .line 252
    .end local v11    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    :goto_5
    if-eqz v11, :cond_6

    #@cd
    .line 253
    new-instance v9, Ljava/util/HashMap;

    #@cf
    .end local v9    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    #@d2
    .line 254
    .local v9, "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v11}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@d5
    move-result-object v12

    #@d6
    .line 255
    .local v12, "bcpTypeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    :goto_6
    invoke-virtual {v12}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@d9
    move-result v44

    #@da
    if-eqz v44, :cond_6

    #@dc
    .line 256
    invoke-virtual {v12}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@df
    move-result-object v8

    #@e0
    .line 257
    .local v8, "bcpTypeAliasDataEntry":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@e3
    move-result-object v16

    #@e4
    .line 258
    .restart local v16    # "from":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@e7
    move-result-object v32

    #@e8
    .line 259
    .restart local v32    # "to":Ljava/lang/String;
    move-object/from16 v0, v32

    #@ea
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ed
    move-result-object v6

    #@ee
    check-cast v6, Ljava/util/Set;

    #@f0
    .line 260
    .restart local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v6, :cond_5

    #@f2
    .line 261
    new-instance v6, Ljava/util/HashSet;

    #@f4
    .end local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@f7
    .line 262
    .restart local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v32

    #@f9
    invoke-interface {v9, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fc
    .line 264
    :cond_5
    move-object/from16 v0, v16

    #@fe
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@101
    goto :goto_6

    #@102
    .line 249
    .end local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "bcpTypeAliasDataEntry":Landroid/icu/util/UResourceBundle;
    .end local v12    # "bcpTypeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v16    # "from":Ljava/lang/String;
    .end local v32    # "to":Ljava/lang/String;
    .local v9, "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v11    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    :catch_1
    move-exception v15

    #@103
    .restart local v15    # "e":Ljava/util/MissingResourceException;
    goto :goto_5

    #@104
    .line 269
    .end local v9    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v11    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .end local v15    # "e":Ljava/util/MissingResourceException;
    :cond_6
    new-instance v39, Ljava/util/HashMap;

    #@106
    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    #@109
    .line 270
    .local v39, "typeDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/locale/KeyTypeData$Type;>;"
    const/16 v28, 0x0

    #@10b
    .line 273
    .local v28, "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;>;"
    const/16 v42, 0x0

    #@10d
    .line 275
    .local v42, "typeMapResByKey":Landroid/icu/util/UResourceBundle;
    :try_start_4
    move-object/from16 v0, v41

    #@10f
    move-object/from16 v1, v26

    #@111
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_2

    #@114
    move-result-object v42

    #@115
    .line 280
    .end local v42    # "typeMapResByKey":Landroid/icu/util/UResourceBundle;
    :cond_7
    if-eqz v42, :cond_10

    #@117
    .line 281
    invoke-virtual/range {v42 .. v42}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@11a
    move-result-object v43

    #@11b
    .line 282
    .end local v28    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .local v43, "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    :cond_8
    invoke-virtual/range {v43 .. v43}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@11e
    move-result v44

    #@11f
    if-eqz v44, :cond_10

    #@121
    .line 283
    invoke-virtual/range {v43 .. v43}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@124
    move-result-object v40

    #@125
    .line 284
    .local v40, "typeMapEntry":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v40 .. v40}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@128
    move-result-object v27

    #@129
    .line 287
    .local v27, "legacyTypeId":Ljava/lang/String;
    const/16 v19, 0x0

    #@12b
    .line 288
    .local v19, "isSpecialType":Z
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@12e
    move-result-object v45

    #@12f
    const/16 v44, 0x0

    #@131
    move-object/from16 v0, v45

    #@133
    array-length v0, v0

    #@134
    move/from16 v46, v0

    #@136
    :goto_7
    move/from16 v0, v44

    #@138
    move/from16 v1, v46

    #@13a
    if-ge v0, v1, :cond_a

    #@13c
    aget-object v30, v45, v44

    #@13e
    .line 289
    .local v30, "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    invoke-virtual/range {v30 .. v30}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->toString()Ljava/lang/String;

    #@141
    move-result-object v47

    #@142
    move-object/from16 v0, v27

    #@144
    move-object/from16 v1, v47

    #@146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@149
    move-result v47

    #@14a
    if-eqz v47, :cond_e

    #@14c
    .line 290
    const/16 v19, 0x1

    #@14e
    .line 291
    if-nez v28, :cond_9

    #@150
    .line 292
    new-instance v28, Ljava/util/HashSet;

    #@152
    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    #@155
    .line 294
    :cond_9
    move-object/from16 v0, v28

    #@157
    move-object/from16 v1, v30

    #@159
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15c
    .line 298
    .end local v30    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    :cond_a
    if-nez v19, :cond_8

    #@15e
    .line 302
    if-eqz v20, :cond_b

    #@160
    .line 305
    const/16 v44, 0x3a

    #@162
    const/16 v45, 0x2f

    #@164
    move-object/from16 v0, v27

    #@166
    move/from16 v1, v44

    #@168
    move/from16 v2, v45

    #@16a
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@16d
    move-result-object v27

    #@16e
    .line 308
    :cond_b
    invoke-virtual/range {v40 .. v40}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@171
    move-result-object v14

    #@172
    .line 310
    .local v14, "bcpTypeId":Ljava/lang/String;
    const/16 v18, 0x0

    #@174
    .line 311
    .local v18, "hasSameType":Z
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@177
    move-result v44

    #@178
    if-nez v44, :cond_c

    #@17a
    .line 313
    move-object/from16 v14, v27

    #@17c
    .line 314
    const/16 v18, 0x1

    #@17e
    .line 321
    :cond_c
    new-instance v31, Landroid/icu/impl/locale/KeyTypeData$Type;

    #@180
    move-object/from16 v0, v31

    #@182
    move-object/from16 v1, v27

    #@184
    invoke-direct {v0, v1, v14}, Landroid/icu/impl/locale/KeyTypeData$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@187
    .line 322
    .local v31, "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    invoke-static/range {v27 .. v27}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@18a
    move-result-object v44

    #@18b
    move-object/from16 v0, v39

    #@18d
    move-object/from16 v1, v44

    #@18f
    move-object/from16 v2, v31

    #@191
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@194
    .line 323
    if-nez v18, :cond_d

    #@196
    .line 324
    invoke-static {v14}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@199
    move-result-object v44

    #@19a
    move-object/from16 v0, v39

    #@19c
    move-object/from16 v1, v44

    #@19e
    move-object/from16 v2, v31

    #@1a0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a3
    .line 328
    :cond_d
    if-eqz v34, :cond_f

    #@1a5
    .line 329
    move-object/from16 v0, v34

    #@1a7
    move-object/from16 v1, v27

    #@1a9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1ac
    move-result-object v38

    #@1ad
    check-cast v38, Ljava/util/Set;

    #@1af
    .line 330
    .local v38, "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v38, :cond_f

    #@1b1
    .line 331
    invoke-interface/range {v38 .. v38}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b4
    move-result-object v5

    #@1b5
    .local v5, "alias$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1b8
    move-result v44

    #@1b9
    if-eqz v44, :cond_f

    #@1bb
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1be
    move-result-object v4

    #@1bf
    check-cast v4, Ljava/lang/String;

    #@1c1
    .line 332
    .local v4, "alias":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@1c4
    move-result-object v44

    #@1c5
    move-object/from16 v0, v39

    #@1c7
    move-object/from16 v1, v44

    #@1c9
    move-object/from16 v2, v31

    #@1cb
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ce
    goto :goto_8

    #@1cf
    .line 276
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v14    # "bcpTypeId":Ljava/lang/String;
    .end local v18    # "hasSameType":Z
    .end local v19    # "isSpecialType":Z
    .end local v27    # "legacyTypeId":Ljava/lang/String;
    .end local v31    # "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    .end local v38    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v40    # "typeMapEntry":Landroid/icu/util/UResourceBundle;
    .end local v43    # "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    .restart local v28    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .restart local v42    # "typeMapResByKey":Landroid/icu/util/UResourceBundle;
    :catch_2
    move-exception v15

    #@1d0
    .line 278
    .restart local v15    # "e":Ljava/util/MissingResourceException;
    sget-boolean v44, Landroid/icu/impl/locale/KeyTypeData;->-assertionsDisabled:Z

    #@1d2
    if-nez v44, :cond_7

    #@1d4
    new-instance v44, Ljava/lang/AssertionError;

    #@1d6
    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    #@1d9
    throw v44

    #@1da
    .line 288
    .end local v15    # "e":Ljava/util/MissingResourceException;
    .end local v28    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .end local v42    # "typeMapResByKey":Landroid/icu/util/UResourceBundle;
    .restart local v19    # "isSpecialType":Z
    .restart local v27    # "legacyTypeId":Ljava/lang/String;
    .restart local v30    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .restart local v40    # "typeMapEntry":Landroid/icu/util/UResourceBundle;
    .restart local v43    # "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    :cond_e
    add-int/lit8 v44, v44, 0x1

    #@1dc
    goto/16 :goto_7

    #@1de
    .line 336
    .end local v30    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .restart local v14    # "bcpTypeId":Ljava/lang/String;
    .restart local v18    # "hasSameType":Z
    .restart local v31    # "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    :cond_f
    if-eqz v9, :cond_8

    #@1e0
    .line 337
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e3
    move-result-object v13

    #@1e4
    check-cast v13, Ljava/util/Set;

    #@1e6
    .line 338
    .local v13, "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_8

    #@1e8
    .line 339
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1eb
    move-result-object v5

    #@1ec
    .restart local v5    # "alias$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1ef
    move-result v44

    #@1f0
    if-eqz v44, :cond_8

    #@1f2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f5
    move-result-object v4

    #@1f6
    check-cast v4, Ljava/lang/String;

    #@1f8
    .line 340
    .restart local v4    # "alias":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@1fb
    move-result-object v44

    #@1fc
    move-object/from16 v0, v39

    #@1fe
    move-object/from16 v1, v44

    #@200
    move-object/from16 v2, v31

    #@202
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@205
    goto :goto_9

    #@206
    .line 347
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v13    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "bcpTypeId":Ljava/lang/String;
    .end local v18    # "hasSameType":Z
    .end local v19    # "isSpecialType":Z
    .end local v27    # "legacyTypeId":Ljava/lang/String;
    .end local v31    # "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    .end local v40    # "typeMapEntry":Landroid/icu/util/UResourceBundle;
    .end local v43    # "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    :cond_10
    const/16 v29, 0x0

    #@208
    .line 348
    .local v29, "specialTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;>;"
    if-eqz v28, :cond_11

    #@20a
    .line 349
    invoke-static/range {v28 .. v28}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    #@20d
    move-result-object v29

    #@20e
    .line 352
    .end local v29    # "specialTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;>;"
    :cond_11
    new-instance v21, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    #@210
    move-object/from16 v0, v21

    #@212
    move-object/from16 v1, v26

    #@214
    move-object/from16 v2, v39

    #@216
    move-object/from16 v3, v29

    #@218
    invoke-direct {v0, v1, v7, v2, v3}, Landroid/icu/impl/locale/KeyTypeData$KeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V

    #@21b
    .line 354
    .local v21, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    sget-object v44, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    #@21d
    invoke-static/range {v26 .. v26}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@220
    move-result-object v45

    #@221
    move-object/from16 v0, v44

    #@223
    move-object/from16 v1, v45

    #@225
    move-object/from16 v2, v21

    #@227
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22a
    .line 355
    if-nez v17, :cond_0

    #@22c
    .line 356
    sget-object v44, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    #@22e
    invoke-static {v7}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@231
    move-result-object v45

    #@232
    move-object/from16 v0, v44

    #@234
    move-object/from16 v1, v45

    #@236
    move-object/from16 v2, v21

    #@238
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23b
    goto/16 :goto_2

    #@23d
    .line 174
    .end local v7    # "bcpKeyId":Ljava/lang/String;
    .end local v17    # "hasSameKey":Z
    .end local v20    # "isTZ":Z
    .end local v21    # "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    .end local v22    # "keyMapEntry":Landroid/icu/util/UResourceBundle;
    .end local v26    # "legacyKeyId":Ljava/lang/String;
    .end local v39    # "typeDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/locale/KeyTypeData$Type;>;"
    :cond_12
    return-void

    #@23e
    .line 194
    .end local v23    # "keyMapItr":Landroid/icu/util/UResourceBundleIterator;
    .restart local v10    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    :catch_3
    move-exception v15

    #@23f
    .restart local v15    # "e":Ljava/util/MissingResourceException;
    goto/16 :goto_1

    #@241
    .line 188
    .end local v15    # "e":Ljava/util/MissingResourceException;
    .restart local v35    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    :catch_4
    move-exception v15

    #@242
    .restart local v15    # "e":Ljava/util/MissingResourceException;
    goto/16 :goto_0
.end method

.method private static initFromTables()V
    .locals 42

    #@0
    .prologue
    .line 419
    sget-object v36, Landroid/icu/impl/locale/KeyTypeData;->KEY_DATA:[[Ljava/lang/Object;

    #@2
    const/16 v33, 0x0

    #@4
    move-object/from16 v0, v36

    #@6
    array-length v0, v0

    #@7
    move/from16 v37, v0

    #@9
    move/from16 v35, v33

    #@b
    .local v7, "bcpKeyId":Ljava/lang/String;
    .local v8, "bcpTypeAliasData":[[Ljava/lang/String;
    .local v14, "hasSameKey":Z
    .local v17, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    .local v18, "keyDataEntry":[Ljava/lang/Object;
    .local v19, "legacyKeyId":Ljava/lang/String;
    .local v26, "typeAliasData":[[Ljava/lang/String;
    .local v30, "typeData":[[Ljava/lang/String;
    .local v32, "typeDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/locale/KeyTypeData$Type;>;"
    :goto_0
    move/from16 v0, v35

    #@d
    move/from16 v1, v37

    #@f
    if-ge v0, v1, :cond_12

    #@11
    aget-object v18, v36, v35

    #@13
    .line 420
    .end local v7    # "bcpKeyId":Ljava/lang/String;
    .end local v8    # "bcpTypeAliasData":[[Ljava/lang/String;
    .end local v14    # "hasSameKey":Z
    .end local v17    # "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    .end local v19    # "legacyKeyId":Ljava/lang/String;
    .end local v26    # "typeAliasData":[[Ljava/lang/String;
    .end local v30    # "typeData":[[Ljava/lang/String;
    .end local v32    # "typeDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/locale/KeyTypeData$Type;>;"
    const/16 v33, 0x0

    #@15
    aget-object v19, v18, v33

    #@17
    check-cast v19, Ljava/lang/String;

    #@19
    .line 421
    .restart local v19    # "legacyKeyId":Ljava/lang/String;
    const/16 v33, 0x1

    #@1b
    aget-object v7, v18, v33

    #@1d
    check-cast v7, Ljava/lang/String;

    #@1f
    .line 422
    .restart local v7    # "bcpKeyId":Ljava/lang/String;
    const/16 v33, 0x2

    #@21
    aget-object v30, v18, v33

    #@23
    check-cast v30, [[Ljava/lang/String;

    #@25
    .line 423
    .restart local v30    # "typeData":[[Ljava/lang/String;
    const/16 v33, 0x3

    #@27
    aget-object v26, v18, v33

    #@29
    check-cast v26, [[Ljava/lang/String;

    #@2b
    .line 424
    .restart local v26    # "typeAliasData":[[Ljava/lang/String;
    const/16 v33, 0x4

    #@2d
    aget-object v8, v18, v33

    #@2f
    check-cast v8, [[Ljava/lang/String;

    #@31
    .line 426
    .restart local v8    # "bcpTypeAliasData":[[Ljava/lang/String;
    const/4 v14, 0x0

    #@32
    .line 427
    .restart local v14    # "hasSameKey":Z
    if-nez v7, :cond_0

    #@34
    .line 428
    move-object/from16 v7, v19

    #@36
    .line 429
    const/4 v14, 0x1

    #@37
    .line 433
    :cond_0
    const/16 v28, 0x0

    #@39
    .line 434
    .local v28, "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v26, :cond_2

    #@3b
    .line 435
    new-instance v28, Ljava/util/HashMap;

    #@3d
    .end local v28    # "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    #@40
    .line 436
    .local v28, "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/16 v33, 0x0

    #@42
    move-object/from16 v0, v26

    #@44
    array-length v0, v0

    #@45
    move/from16 v34, v0

    #@47
    :goto_1
    move/from16 v0, v33

    #@49
    move/from16 v1, v34

    #@4b
    if-ge v0, v1, :cond_2

    #@4d
    aget-object v27, v26, v33

    #@4f
    .line 437
    .local v27, "typeAliasDataEntry":[Ljava/lang/String;
    const/16 v38, 0x0

    #@51
    aget-object v13, v27, v38

    #@53
    .line 438
    .local v13, "from":Ljava/lang/String;
    const/16 v38, 0x1

    #@55
    aget-object v25, v27, v38

    #@57
    .line 439
    .local v25, "to":Ljava/lang/String;
    move-object/from16 v0, v28

    #@59
    move-object/from16 v1, v25

    #@5b
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    move-result-object v6

    #@5f
    check-cast v6, Ljava/util/Set;

    #@61
    .line 440
    .local v6, "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v6, :cond_1

    #@63
    .line 441
    new-instance v6, Ljava/util/HashSet;

    #@65
    .end local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@68
    .line 442
    .restart local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v28

    #@6a
    move-object/from16 v1, v25

    #@6c
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 444
    :cond_1
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@72
    .line 436
    add-int/lit8 v33, v33, 0x1

    #@74
    goto :goto_1

    #@75
    .line 449
    .end local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "from":Ljava/lang/String;
    .end local v25    # "to":Ljava/lang/String;
    .end local v27    # "typeAliasDataEntry":[Ljava/lang/String;
    .end local v28    # "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_2
    const/4 v10, 0x0

    #@76
    .line 450
    .local v10, "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v8, :cond_4

    #@78
    .line 451
    new-instance v10, Ljava/util/HashMap;

    #@7a
    .end local v10    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    #@7d
    .line 452
    .local v10, "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/16 v33, 0x0

    #@7f
    array-length v0, v8

    #@80
    move/from16 v34, v0

    #@82
    :goto_2
    move/from16 v0, v33

    #@84
    move/from16 v1, v34

    #@86
    if-ge v0, v1, :cond_4

    #@88
    aget-object v9, v8, v33

    #@8a
    .line 453
    .local v9, "bcpTypeAliasDataEntry":[Ljava/lang/String;
    const/16 v38, 0x0

    #@8c
    aget-object v13, v9, v38

    #@8e
    .line 454
    .restart local v13    # "from":Ljava/lang/String;
    const/16 v38, 0x1

    #@90
    aget-object v25, v9, v38

    #@92
    .line 455
    .restart local v25    # "to":Ljava/lang/String;
    move-object/from16 v0, v25

    #@94
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    move-result-object v6

    #@98
    check-cast v6, Ljava/util/Set;

    #@9a
    .line 456
    .restart local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v6, :cond_3

    #@9c
    .line 457
    new-instance v6, Ljava/util/HashSet;

    #@9e
    .end local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@a1
    .line 458
    .restart local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v25

    #@a3
    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a6
    .line 460
    :cond_3
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a9
    .line 452
    add-int/lit8 v33, v33, 0x1

    #@ab
    goto :goto_2

    #@ac
    .line 465
    .end local v6    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "bcpTypeAliasDataEntry":[Ljava/lang/String;
    .end local v10    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v13    # "from":Ljava/lang/String;
    .end local v25    # "to":Ljava/lang/String;
    :cond_4
    sget-boolean v33, Landroid/icu/impl/locale/KeyTypeData;->-assertionsDisabled:Z

    #@ae
    if-nez v33, :cond_6

    #@b0
    if-eqz v30, :cond_5

    #@b2
    const/16 v33, 0x1

    #@b4
    :goto_3
    if-nez v33, :cond_6

    #@b6
    new-instance v33, Ljava/lang/AssertionError;

    #@b8
    invoke-direct/range {v33 .. v33}, Ljava/lang/AssertionError;-><init>()V

    #@bb
    throw v33

    #@bc
    :cond_5
    const/16 v33, 0x0

    #@be
    goto :goto_3

    #@bf
    .line 466
    :cond_6
    new-instance v32, Ljava/util/HashMap;

    #@c1
    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    #@c4
    .line 467
    .restart local v32    # "typeDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/locale/KeyTypeData$Type;>;"
    const/16 v21, 0x0

    #@c6
    .line 469
    .local v21, "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;>;"
    const/16 v33, 0x0

    #@c8
    move-object/from16 v0, v30

    #@ca
    array-length v0, v0

    #@cb
    move/from16 v38, v0

    #@cd
    move/from16 v34, v33

    #@cf
    .end local v21    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;>;"
    :goto_4
    move/from16 v0, v34

    #@d1
    move/from16 v1, v38

    #@d3
    if-ge v0, v1, :cond_f

    #@d5
    aget-object v31, v30, v34

    #@d7
    .line 470
    .local v31, "typeDataEntry":[Ljava/lang/String;
    const/16 v33, 0x0

    #@d9
    aget-object v20, v31, v33

    #@db
    .line 471
    .local v20, "legacyTypeId":Ljava/lang/String;
    const/16 v33, 0x1

    #@dd
    aget-object v12, v31, v33

    #@df
    .line 474
    .local v12, "bcpTypeId":Ljava/lang/String;
    const/16 v16, 0x0

    #@e1
    .line 475
    .local v16, "isSpecialType":Z
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@e4
    move-result-object v39

    #@e5
    const/16 v33, 0x0

    #@e7
    move-object/from16 v0, v39

    #@e9
    array-length v0, v0

    #@ea
    move/from16 v40, v0

    #@ec
    :goto_5
    move/from16 v0, v33

    #@ee
    move/from16 v1, v40

    #@f0
    if-ge v0, v1, :cond_8

    #@f2
    aget-object v23, v39, v33

    #@f4
    .line 476
    .local v23, "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    invoke-virtual/range {v23 .. v23}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->toString()Ljava/lang/String;

    #@f7
    move-result-object v41

    #@f8
    move-object/from16 v0, v20

    #@fa
    move-object/from16 v1, v41

    #@fc
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ff
    move-result v41

    #@100
    if-eqz v41, :cond_a

    #@102
    .line 477
    const/16 v16, 0x1

    #@104
    .line 478
    if-nez v21, :cond_7

    #@106
    .line 479
    new-instance v21, Ljava/util/HashSet;

    #@108
    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    #@10b
    .line 481
    :cond_7
    move-object/from16 v0, v21

    #@10d
    move-object/from16 v1, v23

    #@10f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@112
    .line 485
    .end local v23    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    :cond_8
    if-eqz v16, :cond_b

    #@114
    .line 469
    :cond_9
    add-int/lit8 v33, v34, 0x1

    #@116
    move/from16 v34, v33

    #@118
    goto :goto_4

    #@119
    .line 475
    .restart local v23    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    :cond_a
    add-int/lit8 v33, v33, 0x1

    #@11b
    goto :goto_5

    #@11c
    .line 489
    .end local v23    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    :cond_b
    const/4 v15, 0x0

    #@11d
    .line 490
    .local v15, "hasSameType":Z
    if-nez v12, :cond_c

    #@11f
    .line 491
    move-object/from16 v12, v20

    #@121
    .line 492
    const/4 v15, 0x1

    #@122
    .line 499
    :cond_c
    new-instance v24, Landroid/icu/impl/locale/KeyTypeData$Type;

    #@124
    move-object/from16 v0, v24

    #@126
    move-object/from16 v1, v20

    #@128
    invoke-direct {v0, v1, v12}, Landroid/icu/impl/locale/KeyTypeData$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@12b
    .line 500
    .local v24, "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@12e
    move-result-object v33

    #@12f
    move-object/from16 v0, v32

    #@131
    move-object/from16 v1, v33

    #@133
    move-object/from16 v2, v24

    #@135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@138
    .line 501
    if-nez v15, :cond_d

    #@13a
    .line 502
    invoke-static {v12}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@13d
    move-result-object v33

    #@13e
    move-object/from16 v0, v32

    #@140
    move-object/from16 v1, v33

    #@142
    move-object/from16 v2, v24

    #@144
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@147
    .line 506
    :cond_d
    move-object/from16 v0, v28

    #@149
    move-object/from16 v1, v20

    #@14b
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14e
    move-result-object v29

    #@14f
    check-cast v29, Ljava/util/Set;

    #@151
    .line 507
    .local v29, "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v29, :cond_e

    #@153
    .line 508
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@156
    move-result-object v5

    #@157
    .local v5, "alias$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@15a
    move-result v33

    #@15b
    if-eqz v33, :cond_e

    #@15d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@160
    move-result-object v4

    #@161
    check-cast v4, Ljava/lang/String;

    #@163
    .line 509
    .local v4, "alias":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@166
    move-result-object v33

    #@167
    move-object/from16 v0, v32

    #@169
    move-object/from16 v1, v33

    #@16b
    move-object/from16 v2, v24

    #@16d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@170
    goto :goto_6

    #@171
    .line 512
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@174
    move-result-object v11

    #@175
    check-cast v11, Ljava/util/Set;

    #@177
    .line 513
    .local v11, "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_9

    #@179
    .line 514
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17c
    move-result-object v5

    #@17d
    .restart local v5    # "alias$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@180
    move-result v33

    #@181
    if-eqz v33, :cond_9

    #@183
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@186
    move-result-object v4

    #@187
    check-cast v4, Ljava/lang/String;

    #@189
    .line 515
    .restart local v4    # "alias":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@18c
    move-result-object v33

    #@18d
    move-object/from16 v0, v32

    #@18f
    move-object/from16 v1, v33

    #@191
    move-object/from16 v2, v24

    #@193
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@196
    goto :goto_7

    #@197
    .line 520
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v11    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "bcpTypeId":Ljava/lang/String;
    .end local v15    # "hasSameType":Z
    .end local v16    # "isSpecialType":Z
    .end local v20    # "legacyTypeId":Ljava/lang/String;
    .end local v24    # "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    .end local v29    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v31    # "typeDataEntry":[Ljava/lang/String;
    :cond_f
    const/16 v22, 0x0

    #@199
    .line 521
    .local v22, "specialTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;>;"
    if-eqz v21, :cond_10

    #@19b
    .line 522
    invoke-static/range {v21 .. v21}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    #@19e
    move-result-object v22

    #@19f
    .line 525
    .end local v22    # "specialTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;>;"
    :cond_10
    new-instance v17, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    #@1a1
    move-object/from16 v0, v17

    #@1a3
    move-object/from16 v1, v19

    #@1a5
    move-object/from16 v2, v32

    #@1a7
    move-object/from16 v3, v22

    #@1a9
    invoke-direct {v0, v1, v7, v2, v3}, Landroid/icu/impl/locale/KeyTypeData$KeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V

    #@1ac
    .line 527
    .restart local v17    # "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    sget-object v33, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    #@1ae
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@1b1
    move-result-object v34

    #@1b2
    move-object/from16 v0, v33

    #@1b4
    move-object/from16 v1, v34

    #@1b6
    move-object/from16 v2, v17

    #@1b8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1bb
    .line 528
    if-nez v14, :cond_11

    #@1bd
    .line 529
    sget-object v33, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    #@1bf
    invoke-static {v7}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@1c2
    move-result-object v34

    #@1c3
    move-object/from16 v0, v33

    #@1c5
    move-object/from16 v1, v34

    #@1c7
    move-object/from16 v2, v17

    #@1c9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1cc
    .line 419
    :cond_11
    add-int/lit8 v33, v35, 0x1

    #@1ce
    move/from16 v35, v33

    #@1d0
    goto/16 :goto_0

    #@1d2
    .line 418
    :cond_12
    return-void
.end method

.method public static toBcpKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 83
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    .line 84
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    #@7
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    #@d
    .line 85
    .local v0, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    if-eqz v0, :cond_0

    #@f
    .line 86
    iget-object v1, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->bcpId:Ljava/lang/String;

    #@11
    return-object v1

    #@12
    .line 88
    :cond_0
    return-object v2
.end method

.method public static toBcpType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "isKnownKey":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    .local p3, "isSpecialType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 103
    if-eqz p2, :cond_0

    #@4
    .line 104
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v4

    #@8
    iput-object v4, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@a
    .line 106
    :cond_0
    if-eqz p3, :cond_1

    #@c
    .line 107
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f
    move-result-object v4

    #@10
    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@12
    .line 110
    :cond_1
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    .line 111
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    .line 113
    sget-object v4, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    #@1c
    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    #@22
    .line 114
    .local v0, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    if-eqz v0, :cond_6

    #@24
    .line 115
    if-eqz p2, :cond_2

    #@26
    .line 116
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@28
    iput-object v4, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@2a
    .line 118
    :cond_2
    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    #@2c
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/icu/impl/locale/KeyTypeData$Type;

    #@32
    .line 119
    .local v3, "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    if-eqz v3, :cond_3

    #@34
    .line 120
    iget-object v4, v3, Landroid/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    #@36
    return-object v4

    #@37
    .line 122
    :cond_3
    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    #@39
    if-eqz v4, :cond_6

    #@3b
    .line 123
    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    #@3d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v2

    #@41
    .local v2, "st$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_6

    #@47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@4d
    .line 124
    .local v1, "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    iget-object v4, v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    #@4f
    invoke-virtual {v4, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isValid(Ljava/lang/String;)Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_4

    #@55
    .line 125
    if-eqz p3, :cond_5

    #@57
    .line 126
    const/4 v4, 0x1

    #@58
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5b
    move-result-object v4

    #@5c
    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@5e
    .line 128
    :cond_5
    iget-object v4, v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    #@60
    invoke-virtual {v4, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    return-object v4

    #@65
    .line 133
    .end local v1    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .end local v2    # "st$iterator":Ljava/util/Iterator;
    .end local v3    # "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    :cond_6
    return-object v5
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 92
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    .line 93
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    #@7
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    #@d
    .line 94
    .local v0, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    if-eqz v0, :cond_0

    #@f
    .line 95
    iget-object v1, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->legacyId:Ljava/lang/String;

    #@11
    return-object v1

    #@12
    .line 97
    :cond_0
    return-object v2
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "isKnownKey":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    .local p3, "isSpecialType":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 140
    if-eqz p2, :cond_0

    #@4
    .line 141
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v4

    #@8
    iput-object v4, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@a
    .line 143
    :cond_0
    if-eqz p3, :cond_1

    #@c
    .line 144
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f
    move-result-object v4

    #@10
    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@12
    .line 147
    :cond_1
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object p0

    #@16
    .line 148
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    .line 150
    sget-object v4, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    #@1c
    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    #@22
    .line 151
    .local v0, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    if-eqz v0, :cond_6

    #@24
    .line 152
    if-eqz p2, :cond_2

    #@26
    .line 153
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@28
    iput-object v4, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@2a
    .line 155
    :cond_2
    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    #@2c
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/icu/impl/locale/KeyTypeData$Type;

    #@32
    .line 156
    .local v3, "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    if-eqz v3, :cond_3

    #@34
    .line 157
    iget-object v4, v3, Landroid/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    #@36
    return-object v4

    #@37
    .line 159
    :cond_3
    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    #@39
    if-eqz v4, :cond_6

    #@3b
    .line 160
    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    #@3d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v2

    #@41
    .local v2, "st$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_6

    #@47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    #@4d
    .line 161
    .local v1, "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    iget-object v4, v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    #@4f
    invoke-virtual {v4, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isValid(Ljava/lang/String;)Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_4

    #@55
    .line 162
    if-eqz p3, :cond_5

    #@57
    .line 163
    const/4 v4, 0x1

    #@58
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5b
    move-result-object v4

    #@5c
    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@5e
    .line 165
    :cond_5
    iget-object v4, v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    #@60
    invoke-virtual {v4, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    return-object v4

    #@65
    .line 170
    .end local v1    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .end local v2    # "st$iterator":Ljava/util/Iterator;
    .end local v3    # "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    :cond_6
    return-object v5
.end method
