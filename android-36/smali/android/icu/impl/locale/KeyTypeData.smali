.class public Landroid/icu/impl/locale/KeyTypeData;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/KeyTypeData$KeyData;,
        Landroid/icu/impl/locale/KeyTypeData$Type;,
        Landroid/icu/impl/locale/KeyTypeData$SpecialType;,
        Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;,
        Landroid/icu/impl/locale/KeyTypeData$ValueType;,
        Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;,
        Landroid/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$ScriptCodeTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist BCP47_KEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static blacklist DEPRECATED_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist DEPRECATED_KEY_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist KEYMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/KeyTypeData$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_DATA:[[Ljava/lang/Object;

.field static blacklist VALUE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/KeyTypeData$ValueType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    nop

    .line 414
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEYS:Ljava/util/Set;

    .line 415
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->VALUE_TYPES:Ljava/util/Map;

    .line 416
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEY_TYPES:Ljava/util/Map;

    .line 552
    const/4 v0, 0x0

    new-array v0, v0, [[Ljava/lang/Object;

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEY_DATA:[[Ljava/lang/Object;

    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    .line 676
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData;->initFromResourceBundle()V

    .line 677
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBcp47KeyTypes(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 684
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->BCP47_KEYS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static blacklist getBcp47Keys()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 680
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->BCP47_KEYS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getKeyInfo(Landroid/icu/util/UResourceBundle;)V
    .registers 12
    .param p0, "keyInfoRes"    # Landroid/icu/util/UResourceBundle;

    .line 437
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 438
    .local v0, "_deprecatedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 439
    .local v1, "_valueTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/locale/KeyTypeData$ValueType;>;"
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v2

    .local v2, "keyInfoIt":Landroid/icu/util/UResourceBundleIterator;
    :goto_e
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 440
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 441
    .local v3, "keyInfoEntry":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    move-result-object v5

    .line 443
    .local v5, "keyInfo":Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v6

    .local v6, "keyInfoIt2":Landroid/icu/util/UResourceBundleIterator;
    :goto_24
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 444
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v7

    .line 445
    .local v7, "keyInfoEntry2":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 446
    .local v8, "key2":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v9

    .line 447
    .local v9, "value2":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->ordinal()I

    move-result v10

    packed-switch v10, :pswitch_data_5a

    goto :goto_4a

    .line 452
    :pswitch_3e
    invoke-static {v9}, Landroid/icu/impl/locale/KeyTypeData$ValueType;->valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$ValueType;

    move-result-object v10

    invoke-interface {v1, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 449
    :pswitch_46
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    nop

    .line 455
    .end local v7    # "keyInfoEntry2":Landroid/icu/util/UResourceBundle;
    .end local v8    # "key2":Ljava/lang/String;
    .end local v9    # "value2":Ljava/lang/String;
    :goto_4a
    goto :goto_24

    .line 456
    .end local v3    # "keyInfoEntry":Landroid/icu/util/UResourceBundle;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyInfo":Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;
    .end local v6    # "keyInfoIt2":Landroid/icu/util/UResourceBundleIterator;
    :cond_4b
    goto :goto_e

    .line 457
    .end local v2    # "keyInfoIt":Landroid/icu/util/UResourceBundleIterator;
    :cond_4c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEYS:Ljava/util/Set;

    .line 458
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Landroid/icu/impl/locale/KeyTypeData;->VALUE_TYPES:Ljava/util/Map;

    .line 459
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_46
        :pswitch_3e
    .end packed-switch
.end method

.method private static blacklist getTypeInfo(Landroid/icu/util/UResourceBundle;)V
    .registers 14
    .param p0, "typeInfoRes"    # Landroid/icu/util/UResourceBundle;

    .line 474
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 475
    .local v0, "_deprecatedKeyTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v1

    .local v1, "keyInfoIt":Landroid/icu/util/UResourceBundleIterator;
    :goto_9
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 476
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 477
    .local v2, "keyInfoEntry":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    move-result-object v4

    .line 479
    .local v4, "typeInfo":Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v5

    .local v5, "keyInfoIt2":Landroid/icu/util/UResourceBundleIterator;
    :goto_1f
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 480
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 481
    .local v6, "keyInfoEntry2":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 482
    .local v7, "key2":Ljava/lang/String;
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 483
    .local v8, "_deprecatedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v9

    .local v9, "keyInfoIt3":Landroid/icu/util/UResourceBundleIterator;
    :goto_36
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_50

    .line 484
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v10

    .line 485
    .local v10, "keyInfoEntry3":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 486
    .local v11, "key3":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->ordinal()I

    move-result v12

    packed-switch v12, :pswitch_data_60

    goto :goto_4f

    .line 488
    :pswitch_4c
    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v10    # "keyInfoEntry3":Landroid/icu/util/UResourceBundle;
    .end local v11    # "key3":Ljava/lang/String;
    :goto_4f
    goto :goto_36

    .line 492
    .end local v9    # "keyInfoIt3":Landroid/icu/util/UResourceBundleIterator;
    :cond_50
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .end local v6    # "keyInfoEntry2":Landroid/icu/util/UResourceBundle;
    .end local v7    # "key2":Ljava/lang/String;
    .end local v8    # "_deprecatedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1f

    .line 494
    .end local v2    # "keyInfoEntry":Landroid/icu/util/UResourceBundle;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "typeInfo":Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;
    .end local v5    # "keyInfoIt2":Landroid/icu/util/UResourceBundleIterator;
    :cond_58
    goto :goto_9

    .line 495
    .end local v1    # "keyInfoIt":Landroid/icu/util/UResourceBundleIterator;
    :cond_59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEY_TYPES:Ljava/util/Map;

    .line 496
    return-void

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4c
    .end packed-switch
.end method

.method public static blacklist getValueType(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 700
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->VALUE_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    .line 701
    .local v0, "type":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    if-nez v0, :cond_d

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$ValueType;->single:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    return-object v1
.end method

.method private static blacklist initFromResourceBundle()V
    .registers 32

    .line 227
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "keyTypeData"

    invoke-static {v2, v3, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 233
    .local v1, "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    const-string v0, "keyInfo"

    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/locale/KeyTypeData;->getKeyInfo(Landroid/icu/util/UResourceBundle;)V

    .line 234
    const-string v0, "typeInfo"

    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/locale/KeyTypeData;->getTypeInfo(Landroid/icu/util/UResourceBundle;)V

    .line 236
    const-string v0, "keyMap"

    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 237
    .local v2, "keyMapRes":Landroid/icu/util/UResourceBundle;
    const-string v0, "typeMap"

    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 240
    .local v3, "typeMapRes":Landroid/icu/util/UResourceBundle;
    const/4 v4, 0x0

    .line 241
    .local v4, "typeAliasRes":Landroid/icu/util/UResourceBundle;
    const/4 v5, 0x0

    .line 244
    .local v5, "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    :try_start_2c
    const-string v0, "typeAlias"

    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_32
    .catch Ljava/util/MissingResourceException; {:try_start_2c .. :try_end_32} :catch_34

    move-object v4, v0

    .line 247
    goto :goto_35

    .line 245
    :catch_34
    move-exception v0

    .line 250
    :goto_35
    :try_start_35
    const-string v0, "bcpTypeAlias"

    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_3b
    .catch Ljava/util/MissingResourceException; {:try_start_35 .. :try_end_3b} :catch_3d

    move-object v5, v0

    .line 253
    goto :goto_3e

    .line 251
    :catch_3d
    move-exception v0

    .line 256
    :goto_3e
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v6

    .line 257
    .local v6, "keyMapItr":Landroid/icu/util/UResourceBundleIterator;
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v0

    .line 259
    .local v7, "_Bcp47Keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :goto_48
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_282

    .line 260
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v8

    .line 261
    .local v8, "keyMapEntry":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, "legacyKeyId":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "bcpKeyId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 265
    .local v10, "hasSameKey":Z
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_66

    .line 267
    move-object v0, v9

    .line 268
    const/4 v10, 0x1

    move v11, v10

    move-object v10, v0

    goto :goto_68

    .line 265
    :cond_66
    move v11, v10

    move-object v10, v0

    .line 270
    .end local v0    # "bcpKeyId":Ljava/lang/String;
    .local v10, "bcpKeyId":Ljava/lang/String;
    .local v11, "hasSameKey":Z
    :goto_68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v12, v0

    .line 271
    .local v12, "_bcp47Types":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v7, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "timezone"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 276
    .local v13, "isTZ":Z
    const/4 v14, 0x0

    .line 277
    .local v14, "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_e2

    .line 278
    const/16 v17, 0x0

    .line 280
    .local v17, "typeAliasResByKey":Landroid/icu/util/UResourceBundle;
    :try_start_80
    invoke-virtual {v4, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_84
    .catch Ljava/util/MissingResourceException; {:try_start_80 .. :try_end_84} :catch_87

    move-object/from16 v17, v0

    .line 283
    goto :goto_88

    .line 281
    :catch_87
    move-exception v0

    .line 284
    :goto_88
    if-eqz v17, :cond_dd

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v14, v0

    .line 286
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 287
    .local v0, "typeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    :goto_94
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d6

    .line 288
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v18

    .line 289
    .local v18, "typeAliasDataEntry":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 290
    .local v15, "from":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "typeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .local v20, "typeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "to":Ljava/lang/String;
    if-eqz v13, :cond_b7

    .line 292
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    const/16 v1, 0x2f

    const/16 v2, 0x3a

    .end local v1    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .end local v2    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    .local v21, "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .local v22, "keyMapRes":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v15, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    goto :goto_bb

    .line 291
    .end local v21    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .end local v22    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v1    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    :cond_b7
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .line 294
    .end local v1    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .end local v2    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v21    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v22    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    :goto_bb
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 295
    .local v1, "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_cc

    .line 296
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v1, v2

    .line 297
    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_cc
    invoke-interface {v1, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v0    # "to":Ljava/lang/String;
    .end local v1    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "from":Ljava/lang/String;
    .end local v18    # "typeAliasDataEntry":Landroid/icu/util/UResourceBundle;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto :goto_94

    .line 287
    .end local v20    # "typeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v21    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .end local v22    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    .local v0, "typeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .local v1, "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    :cond_d6
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .end local v0    # "typeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v1    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .end local v2    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v20    # "typeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .restart local v21    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v22    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    goto :goto_e6

    .line 284
    .end local v20    # "typeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v21    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .end local v22    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v1    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    :cond_dd
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .end local v1    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .end local v2    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v21    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v22    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    goto :goto_e6

    .line 277
    .end local v17    # "typeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .end local v21    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .end local v22    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v1    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    :cond_e2
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .line 305
    .end local v1    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .end local v2    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v21    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .restart local v22    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    :goto_e6
    const/4 v1, 0x0

    .line 306
    .local v1, "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_144

    .line 307
    const/4 v2, 0x0

    .line 309
    .local v2, "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    :try_start_ea
    invoke-virtual {v5, v10}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_ee
    .catch Ljava/util/MissingResourceException; {:try_start_ea .. :try_end_ee} :catch_f0

    move-object v2, v0

    .line 312
    goto :goto_f1

    .line 310
    :catch_f0
    move-exception v0

    .line 313
    :goto_f1
    if-eqz v2, :cond_13f

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 315
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 316
    .local v0, "bcpTypeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    :goto_fd
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_138

    .line 317
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v15

    .line 318
    .local v15, "bcpTypeAliasDataEntry":Landroid/icu/util/UResourceBundle;
    move-object/from16 v17, v0

    .end local v0    # "bcpTypeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .local v17, "bcpTypeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "from":Ljava/lang/String;
    move-object/from16 v18, v2

    .end local v2    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .local v18, "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "to":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    .line 321
    .local v20, "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v20, :cond_12a

    .line 322
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v20, v23

    .line 323
    move-object/from16 v23, v4

    move-object/from16 v4, v20

    .end local v20    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v23, "typeAliasRes":Landroid/icu/util/UResourceBundle;
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12e

    .line 321
    .end local v23    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .local v4, "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v20    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12a
    move-object/from16 v23, v4

    .end local v4    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    move-object/from16 v4, v20

    .line 325
    .end local v20    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_12e
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v0    # "from":Ljava/lang/String;
    .end local v2    # "to":Ljava/lang/String;
    .end local v4    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "bcpTypeAliasDataEntry":Landroid/icu/util/UResourceBundle;
    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move-object/from16 v4, v23

    goto :goto_fd

    .line 316
    .end local v17    # "bcpTypeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v18    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .end local v23    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .local v0, "bcpTypeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .local v2, "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .local v4, "typeAliasRes":Landroid/icu/util/UResourceBundle;
    :cond_138
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v23, v4

    .end local v0    # "bcpTypeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v2    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .end local v4    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v17    # "bcpTypeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .restart local v18    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    goto :goto_146

    .line 313
    .end local v17    # "bcpTypeAliasResItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v18    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .end local v23    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    :cond_13f
    move-object/from16 v18, v2

    move-object/from16 v23, v4

    .end local v2    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .end local v4    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    goto :goto_146

    .line 306
    .end local v18    # "bcpTypeAliasResByKey":Landroid/icu/util/UResourceBundle;
    .end local v23    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    :cond_144
    move-object/from16 v23, v4

    .line 330
    .end local v4    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    :goto_146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 331
    .local v2, "typeDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/locale/KeyTypeData$Type;>;"
    const/4 v4, 0x0

    .line 334
    .local v4, "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    const/4 v15, 0x0

    .line 336
    .local v15, "typeMapResByKey":Landroid/icu/util/UResourceBundle;
    :try_start_14e
    invoke-virtual {v3, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_152
    .catch Ljava/util/MissingResourceException; {:try_start_14e .. :try_end_152} :catch_154

    move-object v15, v0

    .line 340
    goto :goto_156

    .line 337
    :catch_154
    move-exception v0

    .line 339
    .local v0, "e":Ljava/util/MissingResourceException;
    nop

    .line 341
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :goto_156
    if-eqz v15, :cond_259

    .line 342
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 343
    .local v0, "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    :goto_15c
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_250

    .line 344
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v17

    .line 345
    .local v17, "typeMapEntry":Landroid/icu/util/UResourceBundle;
    move-object/from16 v18, v0

    .end local v0    # "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    .local v18, "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "legacyTypeId":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v20

    .line 349
    .local v20, "bcpTypeId":Ljava/lang/String;
    move-object/from16 v24, v3

    .end local v3    # "typeMapRes":Landroid/icu/util/UResourceBundle;
    .local v24, "typeMapRes":Landroid/icu/util/UResourceBundle;
    const/4 v3, 0x0

    move-object/from16 v25, v4

    .end local v4    # "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .local v25, "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 350
    .local v4, "first":C
    const/16 v3, 0x39

    if-ge v3, v4, :cond_189

    const/16 v3, 0x61

    if-ge v4, v3, :cond_189

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_189

    const/4 v3, 0x1

    goto :goto_18a

    :cond_189
    const/4 v3, 0x0

    .line 351
    .local v3, "isSpecialType":Z
    :goto_18a
    if-eqz v3, :cond_1af

    .line 352
    if-nez v25, :cond_199

    .line 353
    const-class v26, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-static/range {v26 .. v26}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v25

    move/from16 v26, v3

    move-object/from16 v3, v25

    goto :goto_19d

    .line 352
    :cond_199
    move/from16 v26, v3

    move-object/from16 v3, v25

    .line 355
    .end local v25    # "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .local v3, "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .local v26, "isSpecialType":Z
    :goto_19d
    move/from16 v27, v4

    .end local v4    # "first":C
    .local v27, "first":C
    invoke-static {v0}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 357
    move-object v4, v3

    move-object/from16 v0, v18

    move-object/from16 v3, v24

    goto :goto_15c

    .line 360
    .end local v26    # "isSpecialType":Z
    .end local v27    # "first":C
    .local v3, "isSpecialType":Z
    .restart local v4    # "first":C
    .restart local v25    # "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    :cond_1af
    move/from16 v26, v3

    move/from16 v27, v4

    .end local v3    # "isSpecialType":Z
    .end local v4    # "first":C
    .restart local v26    # "isSpecialType":Z
    .restart local v27    # "first":C
    if-eqz v13, :cond_1be

    .line 363
    const/16 v3, 0x2f

    const/16 v4, 0x3a

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c2

    .line 360
    :cond_1be
    const/16 v3, 0x2f

    const/16 v4, 0x3a

    .line 366
    :goto_1c2
    const/16 v16, 0x0

    .line 367
    .local v16, "hasSameType":Z
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1d1

    .line 369
    move-object/from16 v20, v0

    .line 370
    const/16 v16, 0x1

    move-object/from16 v3, v20

    goto :goto_1d3

    .line 367
    :cond_1d1
    move-object/from16 v3, v20

    .line 372
    .end local v20    # "bcpTypeId":Ljava/lang/String;
    .local v3, "bcpTypeId":Ljava/lang/String;
    :goto_1d3
    invoke-virtual {v12, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v4, Landroid/icu/impl/locale/KeyTypeData$Type;

    invoke-direct {v4, v0, v3}, Landroid/icu/impl/locale/KeyTypeData$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .local v4, "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    move-object/from16 v28, v5

    .end local v5    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    .local v28, "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    if-nez v16, :cond_1ed

    .line 381
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_1ed
    if-eqz v14, :cond_219

    .line 386
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 387
    .local v5, "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_216

    .line 388
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_1fb
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_213

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 389
    .local v30, "alias":Ljava/lang/String;
    move-object/from16 v31, v0

    .end local v0    # "legacyTypeId":Ljava/lang/String;
    .local v31, "legacyTypeId":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .end local v30    # "alias":Ljava/lang/String;
    move-object/from16 v0, v31

    goto :goto_1fb

    .line 388
    .end local v31    # "legacyTypeId":Ljava/lang/String;
    .restart local v0    # "legacyTypeId":Ljava/lang/String;
    :cond_213
    move-object/from16 v31, v0

    .end local v0    # "legacyTypeId":Ljava/lang/String;
    .restart local v31    # "legacyTypeId":Ljava/lang/String;
    goto :goto_21b

    .line 387
    .end local v31    # "legacyTypeId":Ljava/lang/String;
    .restart local v0    # "legacyTypeId":Ljava/lang/String;
    :cond_216
    move-object/from16 v31, v0

    .end local v0    # "legacyTypeId":Ljava/lang/String;
    .restart local v31    # "legacyTypeId":Ljava/lang/String;
    goto :goto_21b

    .line 385
    .end local v5    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v31    # "legacyTypeId":Ljava/lang/String;
    .restart local v0    # "legacyTypeId":Ljava/lang/String;
    :cond_219
    move-object/from16 v31, v0

    .line 393
    .end local v0    # "legacyTypeId":Ljava/lang/String;
    .restart local v31    # "legacyTypeId":Ljava/lang/String;
    :goto_21b
    if-eqz v1, :cond_246

    .line 394
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 395
    .local v0, "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_244

    .line 396
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_229
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_241

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 397
    .local v29, "alias":Ljava/lang/String;
    move-object/from16 v30, v0

    .end local v0    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v30, "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {v29 .. v29}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .end local v29    # "alias":Ljava/lang/String;
    move-object/from16 v0, v30

    goto :goto_229

    .line 396
    .end local v30    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_241
    move-object/from16 v30, v0

    .end local v0    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v30    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_246

    .line 395
    .end local v30    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_244
    move-object/from16 v30, v0

    .line 401
    .end local v0    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "bcpTypeId":Ljava/lang/String;
    .end local v4    # "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    .end local v16    # "hasSameType":Z
    .end local v17    # "typeMapEntry":Landroid/icu/util/UResourceBundle;
    .end local v26    # "isSpecialType":Z
    .end local v27    # "first":C
    .end local v31    # "legacyTypeId":Ljava/lang/String;
    :cond_246
    :goto_246
    move-object/from16 v0, v18

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v5, v28

    goto/16 :goto_15c

    .line 343
    .end local v18    # "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v24    # "typeMapRes":Landroid/icu/util/UResourceBundle;
    .end local v25    # "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .end local v28    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    .local v0, "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    .local v3, "typeMapRes":Landroid/icu/util/UResourceBundle;
    .local v4, "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .local v5, "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    :cond_250
    move-object/from16 v18, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    .end local v0    # "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v3    # "typeMapRes":Landroid/icu/util/UResourceBundle;
    .end local v4    # "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .end local v5    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    .restart local v24    # "typeMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v25    # "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .restart local v28    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    goto :goto_25d

    .line 341
    .end local v18    # "typeMapResByKeyItr":Landroid/icu/util/UResourceBundleIterator;
    .end local v24    # "typeMapRes":Landroid/icu/util/UResourceBundle;
    .end local v25    # "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .end local v28    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "typeMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .restart local v5    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    :cond_259
    move-object/from16 v24, v3

    move-object/from16 v28, v5

    .line 404
    .end local v3    # "typeMapRes":Landroid/icu/util/UResourceBundle;
    .end local v5    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v24    # "typeMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v28    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    :goto_25d
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    invoke-direct {v0, v9, v10, v2, v4}, Landroid/icu/impl/locale/KeyTypeData$KeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V

    .line 406
    .local v0, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    sget-object v3, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v9}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    if-nez v11, :cond_276

    .line 408
    sget-object v3, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v10}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .end local v0    # "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    .end local v1    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "typeDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/locale/KeyTypeData$Type;>;"
    .end local v4    # "specialTypeSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .end local v8    # "keyMapEntry":Landroid/icu/util/UResourceBundle;
    .end local v9    # "legacyKeyId":Ljava/lang/String;
    .end local v10    # "bcpKeyId":Ljava/lang/String;
    .end local v11    # "hasSameKey":Z
    .end local v12    # "_bcp47Types":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v13    # "isTZ":Z
    .end local v14    # "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v15    # "typeMapResByKey":Landroid/icu/util/UResourceBundle;
    :cond_276
    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move-object/from16 v5, v28

    goto/16 :goto_48

    .line 411
    .end local v21    # "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .end local v22    # "keyMapRes":Landroid/icu/util/UResourceBundle;
    .end local v23    # "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .end local v24    # "typeMapRes":Landroid/icu/util/UResourceBundle;
    .end local v28    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    .local v1, "keyTypeDataRes":Landroid/icu/util/UResourceBundle;
    .local v2, "keyMapRes":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "typeMapRes":Landroid/icu/util/UResourceBundle;
    .local v4, "typeAliasRes":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "bcpTypeAliasRes":Landroid/icu/util/UResourceBundle;
    :cond_282
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->BCP47_KEYS:Ljava/util/Map;

    .line 412
    return-void
.end method

.method private static blacklist initFromTables()V
    .registers 30

    .line 556
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEY_DATA:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_1be

    aget-object v4, v0, v3

    .line 557
    .local v4, "keyDataEntry":[Ljava/lang/Object;
    aget-object v5, v4, v2

    check-cast v5, Ljava/lang/String;

    .line 558
    .local v5, "legacyKeyId":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v7, v4, v6

    check-cast v7, Ljava/lang/String;

    .line 559
    .local v7, "bcpKeyId":Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v8, v4, v8

    check-cast v8, [[Ljava/lang/String;

    .line 560
    .local v8, "typeData":[[Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v9, v4, v9

    check-cast v9, [[Ljava/lang/String;

    .line 561
    .local v9, "typeAliasData":[[Ljava/lang/String;
    const/4 v10, 0x4

    aget-object v10, v4, v10

    check-cast v10, [[Ljava/lang/String;

    .line 563
    .local v10, "bcpTypeAliasData":[[Ljava/lang/String;
    const/4 v11, 0x0

    .line 564
    .local v11, "hasSameKey":Z
    if-nez v7, :cond_26

    .line 565
    move-object v7, v5

    .line 566
    const/4 v11, 0x1

    .line 570
    :cond_26
    const/4 v12, 0x0

    .line 571
    .local v12, "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v9, :cond_6b

    .line 572
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object v12, v13

    .line 573
    array-length v13, v9

    move v14, v2

    :goto_31
    if-ge v14, v13, :cond_64

    aget-object v15, v9, v14

    .line 574
    .local v15, "typeAliasDataEntry":[Ljava/lang/String;
    move/from16 v16, v2

    aget-object v2, v15, v16

    .line 575
    .local v2, "from":Ljava/lang/String;
    move/from16 v17, v6

    aget-object v6, v15, v17

    .line 576
    .local v6, "to":Ljava/lang/String;
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Set;

    .line 577
    .local v18, "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v18, :cond_54

    .line 578
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v18, v19

    .line 579
    move-object/from16 v19, v0

    move-object/from16 v0, v18

    .end local v18    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 577
    .end local v0    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_54
    move-object/from16 v19, v0

    move-object/from16 v0, v18

    .line 581
    .end local v18    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_58
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v0    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "from":Ljava/lang/String;
    .end local v6    # "to":Ljava/lang/String;
    .end local v15    # "typeAliasDataEntry":[Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    move/from16 v6, v17

    move-object/from16 v0, v19

    goto :goto_31

    :cond_64
    move-object/from16 v19, v0

    move/from16 v16, v2

    move/from16 v17, v6

    goto :goto_71

    .line 571
    :cond_6b
    move-object/from16 v19, v0

    move/from16 v16, v2

    move/from16 v17, v6

    .line 586
    :goto_71
    const/4 v0, 0x0

    .line 587
    .local v0, "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v10, :cond_ab

    .line 588
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    .line 589
    array-length v2, v10

    move/from16 v6, v16

    :goto_7d
    if-ge v6, v2, :cond_a8

    aget-object v13, v10, v6

    .line 590
    .local v13, "bcpTypeAliasDataEntry":[Ljava/lang/String;
    aget-object v14, v13, v16

    .line 591
    .local v14, "from":Ljava/lang/String;
    aget-object v15, v13, v17

    .line 592
    .local v15, "to":Ljava/lang/String;
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Set;

    .line 593
    .restart local v18    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v18, :cond_9c

    .line 594
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v18, v20

    .line 595
    move/from16 v20, v1

    move-object/from16 v1, v18

    .end local v18    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v1, "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a0

    .line 593
    .end local v1    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9c
    move/from16 v20, v1

    move-object/from16 v1, v18

    .line 597
    .end local v18    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_a0
    invoke-interface {v1, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 589
    .end local v1    # "aliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "bcpTypeAliasDataEntry":[Ljava/lang/String;
    .end local v14    # "from":Ljava/lang/String;
    .end local v15    # "to":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v20

    goto :goto_7d

    :cond_a8
    move/from16 v20, v1

    goto :goto_ad

    .line 587
    :cond_ab
    move/from16 v20, v1

    .line 602
    :goto_ad
    nop

    .line 603
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 604
    .local v1, "typeDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/locale/KeyTypeData$Type;>;"
    const/4 v2, 0x0

    .line 606
    .local v2, "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    array-length v6, v8

    move/from16 v13, v16

    :goto_b7
    if-ge v13, v6, :cond_18c

    aget-object v14, v8, v13

    .line 607
    .local v14, "typeDataEntry":[Ljava/lang/String;
    aget-object v15, v14, v16

    .line 608
    .local v15, "legacyTypeId":Ljava/lang/String;
    aget-object v18, v14, v17

    .line 611
    .local v18, "bcpTypeId":Ljava/lang/String;
    const/16 v21, 0x0

    .line 612
    .local v21, "isSpecialType":Z
    move-object/from16 v22, v2

    .end local v2    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .local v22, "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    move-result-object v2

    move/from16 v23, v3

    array-length v3, v2

    move-object/from16 v24, v2

    move/from16 v2, v16

    :goto_ce
    if-ge v2, v3, :cond_f6

    move/from16 v25, v2

    aget-object v2, v24, v25

    .line 613
    .local v2, "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    move/from16 v26, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 614
    const/16 v21, 0x1

    .line 615
    if-nez v22, :cond_ea

    .line 616
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .end local v22    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .local v3, "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    goto :goto_ec

    .line 615
    .end local v3    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .restart local v22    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    :cond_ea
    move-object/from16 v3, v22

    .line 618
    .end local v22    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .restart local v3    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    :goto_ec
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 619
    move-object v2, v3

    goto :goto_f8

    .line 612
    .end local v2    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    .end local v3    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .restart local v22    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    :cond_f1
    add-int/lit8 v2, v25, 0x1

    move/from16 v3, v26

    goto :goto_ce

    :cond_f6
    move-object/from16 v2, v22

    .line 622
    .end local v22    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .local v2, "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    :goto_f8
    if-eqz v21, :cond_102

    .line 623
    move-object/from16 v28, v0

    move-object/from16 v18, v2

    move-object/from16 v24, v4

    goto/16 :goto_180

    .line 626
    :cond_102
    const/4 v3, 0x0

    .line 627
    .local v3, "hasSameType":Z
    if-nez v18, :cond_10f

    .line 628
    move-object/from16 v18, v15

    .line 629
    const/4 v3, 0x1

    move-object/from16 v29, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v29

    goto :goto_115

    .line 627
    :cond_10f
    move-object/from16 v29, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v29

    .line 636
    .local v2, "bcpTypeId":Ljava/lang/String;
    .local v18, "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    :goto_115
    move/from16 v22, v3

    .end local v3    # "hasSameType":Z
    .local v22, "hasSameType":Z
    new-instance v3, Landroid/icu/impl/locale/KeyTypeData$Type;

    invoke-direct {v3, v15, v2}, Landroid/icu/impl/locale/KeyTypeData$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .local v3, "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    move-object/from16 v24, v4

    .end local v4    # "keyDataEntry":[Ljava/lang/Object;
    .local v24, "keyDataEntry":[Ljava/lang/Object;
    invoke-static {v15}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    if-nez v22, :cond_12e

    .line 639
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_12e
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 644
    .local v4, "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_155

    .line 645
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_13a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_152

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 646
    .local v26, "alias":Ljava/lang/String;
    move-object/from16 v27, v4

    .end local v4    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v27, "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {v26 .. v26}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .end local v26    # "alias":Ljava/lang/String;
    move-object/from16 v4, v27

    goto :goto_13a

    .line 645
    .end local v27    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_152
    move-object/from16 v27, v4

    .end local v4    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v27    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_157

    .line 644
    .end local v27    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_155
    move-object/from16 v27, v4

    .line 649
    .end local v4    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v27    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_157
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 650
    .local v4, "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_17e

    .line 651
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_163
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_17b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 652
    .restart local v26    # "alias":Ljava/lang/String;
    move-object/from16 v28, v0

    .end local v0    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v28, "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static/range {v26 .. v26}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .end local v26    # "alias":Ljava/lang/String;
    move-object/from16 v0, v28

    goto :goto_163

    .line 651
    .end local v28    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v0    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_17b
    move-object/from16 v28, v0

    .end local v0    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v28    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_180

    .line 650
    .end local v28    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v0    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_17e
    move-object/from16 v28, v0

    .line 606
    .end local v0    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "bcpTypeId":Ljava/lang/String;
    .end local v3    # "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    .end local v4    # "bcpTypeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "typeDataEntry":[Ljava/lang/String;
    .end local v15    # "legacyTypeId":Ljava/lang/String;
    .end local v21    # "isSpecialType":Z
    .end local v22    # "hasSameType":Z
    .end local v27    # "typeAliasSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v28    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :goto_180
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v18

    move/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v0, v28

    goto/16 :goto_b7

    .line 657
    .end local v18    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .end local v24    # "keyDataEntry":[Ljava/lang/Object;
    .end local v28    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v0    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v2, "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .local v4, "keyDataEntry":[Ljava/lang/Object;
    :cond_18c
    move-object/from16 v28, v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    move-object/from16 v24, v4

    .end local v0    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .end local v4    # "keyDataEntry":[Ljava/lang/Object;
    .local v22, "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .restart local v24    # "keyDataEntry":[Ljava/lang/Object;
    .restart local v28    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 658
    .local v0, "specialTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    if-eqz v22, :cond_19b

    .line 659
    invoke-static/range {v22 .. v22}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 662
    :cond_19b
    new-instance v2, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    invoke-direct {v2, v5, v7, v1, v0}, Landroid/icu/impl/locale/KeyTypeData$KeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V

    .line 664
    .local v2, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    sget-object v3, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v5}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    if-nez v11, :cond_1b4

    .line 666
    sget-object v3, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v7}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .end local v0    # "specialTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .end local v1    # "typeDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/locale/KeyTypeData$Type;>;"
    .end local v2    # "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    .end local v5    # "legacyKeyId":Ljava/lang/String;
    .end local v7    # "bcpKeyId":Ljava/lang/String;
    .end local v8    # "typeData":[[Ljava/lang/String;
    .end local v9    # "typeAliasData":[[Ljava/lang/String;
    .end local v10    # "bcpTypeAliasData":[[Ljava/lang/String;
    .end local v11    # "hasSameKey":Z
    .end local v12    # "typeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v22    # "specialTypeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/KeyTypeData$SpecialType;>;"
    .end local v24    # "keyDataEntry":[Ljava/lang/Object;
    .end local v28    # "bcpTypeAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_1b4
    add-int/lit8 v3, v23, 0x1

    move/from16 v2, v16

    move-object/from16 v0, v19

    move/from16 v1, v20

    goto/16 :goto_5

    .line 669
    :cond_1be
    return-void
.end method

.method public static blacklist isDeprecated(Ljava/lang/String;)Z
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 688
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEYS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDeprecated(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .line 692
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEY_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 693
    .local v0, "deprecatedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_c

    .line 694
    const/4 v1, 0x0

    return v1

    .line 696
    :cond_c
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static blacklist toBcpKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 136
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 137
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    .line 138
    .local v0, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    if-eqz v0, :cond_11

    .line 139
    iget-object v1, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->bcpId:Ljava/lang/String;

    return-object v1

    .line 141
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist toBcpType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;
    .registers 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 156
    .local p2, "isKnownKey":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .local p3, "isSpecialType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 157
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 156
    if-eqz p2, :cond_9

    .line 157
    iput-object v0, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 159
    :cond_9
    if-eqz p3, :cond_d

    .line 160
    iput-object v0, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 163
    :cond_d
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 164
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    .line 167
    .local v0, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    if-eqz v0, :cond_61

    .line 168
    if-eqz p2, :cond_25

    .line 169
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 171
    :cond_25
    iget-object v1, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/locale/KeyTypeData$Type;

    .line 172
    .local v1, "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    if-eqz v1, :cond_32

    .line 173
    iget-object v2, v1, Landroid/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    return-object v2

    .line 175
    :cond_32
    iget-object v2, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    if-eqz v2, :cond_61

    .line 176
    iget-object v2, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 177
    .local v3, "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    iget-object v4, v3, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v4, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isWellFormed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 178
    if-eqz p3, :cond_59

    .line 179
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 181
    :cond_59
    iget-object v2, v3, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v2, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 183
    .end local v3    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    :cond_60
    goto :goto_3c

    .line 186
    .end local v1    # "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    :cond_61
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 146
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    .line 147
    .local v0, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    if-eqz v0, :cond_11

    .line 148
    iget-object v1, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->legacyId:Ljava/lang/String;

    return-object v1

    .line 150
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist toLegacyType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;
    .registers 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 193
    .local p2, "isKnownKey":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .local p3, "isSpecialType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 194
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 193
    if-eqz p2, :cond_9

    .line 194
    iput-object v0, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 196
    :cond_9
    if-eqz p3, :cond_d

    .line 197
    iput-object v0, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 200
    :cond_d
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    .line 204
    .local v0, "keyData":Landroid/icu/impl/locale/KeyTypeData$KeyData;
    if-eqz v0, :cond_61

    .line 205
    if-eqz p2, :cond_25

    .line 206
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 208
    :cond_25
    iget-object v1, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/locale/KeyTypeData$Type;

    .line 209
    .local v1, "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    if-eqz v1, :cond_32

    .line 210
    iget-object v2, v1, Landroid/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    return-object v2

    .line 212
    :cond_32
    iget-object v2, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    if-eqz v2, :cond_61

    .line 213
    iget-object v2, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 214
    .local v3, "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    iget-object v4, v3, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v4, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isWellFormed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 215
    if-eqz p3, :cond_59

    .line 216
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 218
    :cond_59
    iget-object v2, v3, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v2, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 220
    .end local v3    # "st":Landroid/icu/impl/locale/KeyTypeData$SpecialType;
    :cond_60
    goto :goto_3c

    .line 223
    .end local v1    # "t":Landroid/icu/impl/locale/KeyTypeData$Type;
    :cond_61
    const/4 v1, 0x0

    return-object v1
.end method
