.class Landroid/icu/util/ULocale$AliasReplacer;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AliasReplacer"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist aliasDataIsLoaded:Z

.field private static blacklist languageAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist scriptAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist subdivisionAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist territoryAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist variantAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist extensions:Ljava/lang/String;

.field private blacklist language:Ljava/lang/String;

.field private blacklist region:Ljava/lang/String;

.field private blacklist script:Ljava/lang/String;

.field private blacklist variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1193
    const-class v0, Landroid/icu/util/ULocale;

    .line 1293
    const/4 v0, 0x0

    sput-boolean v0, Landroid/icu/util/ULocale$AliasReplacer;->aliasDataIsLoaded:Z

    .line 1294
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/util/ULocale$AliasReplacer;->languageAliasMap:Ljava/util/Map;

    .line 1295
    sput-object v0, Landroid/icu/util/ULocale$AliasReplacer;->scriptAliasMap:Ljava/util/Map;

    .line 1296
    sput-object v0, Landroid/icu/util/ULocale$AliasReplacer;->territoryAliasMap:Ljava/util/Map;

    .line 1297
    sput-object v0, Landroid/icu/util/ULocale$AliasReplacer;->variantAliasMap:Ljava/util/Map;

    .line 1298
    sput-object v0, Landroid/icu/util/ULocale$AliasReplacer;->subdivisionAliasMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variants"    # Ljava/lang/String;
    .param p5, "extensions"    # Ljava/lang/String;

    .line 1202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    nop

    .line 1205
    nop

    .line 1206
    nop

    .line 1207
    nop

    .line 1208
    nop

    .line 1209
    iput-object p1, p0, Landroid/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    .line 1210
    iput-object p2, p0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    .line 1211
    iput-object p3, p0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    .line 1212
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    .line 1214
    const-string v1, "_"

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    .line 1216
    :cond_25
    iput-object p5, p0, Landroid/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    .line 1217
    return-void
.end method

.method private static blacklist deleteOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 1437
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1438
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_10
    move-object v0, p2

    goto :goto_1e

    .line 1439
    :cond_12
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    .line 1437
    :cond_1d
    :goto_1d
    move-object v0, p0

    :goto_1e
    return-object v0
.end method

.method private static blacklist generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .line 1408
    nop

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1410
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    const/16 v1, 0x5f

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1413
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    :cond_19
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 1416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1417
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized blacklist loadAliasData()V
    .registers 16

    const-class v1, Landroid/icu/util/ULocale$AliasReplacer;

    monitor-enter v1

    .line 1309
    :try_start_3
    sget-boolean v0, Landroid/icu/util/ULocale$AliasReplacer;->aliasDataIsLoaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2c1

    if-eqz v0, :cond_9

    .line 1310
    monitor-exit v1

    return-void

    .line 1312
    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/ULocale$AliasReplacer;->languageAliasMap:Ljava/util/Map;

    .line 1313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/ULocale$AliasReplacer;->scriptAliasMap:Ljava/util/Map;

    .line 1314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/ULocale$AliasReplacer;->territoryAliasMap:Ljava/util/Map;

    .line 1315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/ULocale$AliasReplacer;->variantAliasMap:Ljava/util/Map;

    .line 1316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/ULocale$AliasReplacer;->subdivisionAliasMap:Ljava/util/Map;

    .line 1318
    const-string v0, "android/icu/impl/data/icudata"

    const-string v2, "metadata"

    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 1321
    .local v0, "metadata":Landroid/icu/util/UResourceBundle;
    const-string v2, "alias"

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 1322
    .local v2, "metadataAlias":Landroid/icu/util/UResourceBundle;
    const-string v3, "language"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 1323
    .local v3, "languageAlias":Landroid/icu/util/UResourceBundle;
    const-string v4, "script"

    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 1324
    .local v4, "scriptAlias":Landroid/icu/util/UResourceBundle;
    const-string v5, "territory"

    invoke-virtual {v2, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    .line 1325
    .local v5, "territoryAlias":Landroid/icu/util/UResourceBundle;
    const-string v6, "variant"

    invoke-virtual {v2, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 1326
    .local v6, "variantAlias":Landroid/icu/util/UResourceBundle;
    const-string v7, "subdivision"

    invoke-virtual {v2, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    .line 1328
    .local v7, "subdivisionAlias":Landroid/icu/util/UResourceBundle;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5b
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v9

    if-ge v8, v9, :cond_bc

    .line 1329
    invoke-virtual {v3, v8}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    .line 1330
    .local v9, "res":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 1331
    .local v10, "aliasFrom":Ljava/lang/String;
    const-string v11, "replacement"

    invoke-virtual {v9, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v11

    .line 1332
    .local v11, "aliasTo":Ljava/lang/String;
    new-instance v12, Ljava/util/Locale;

    invoke-direct {v12, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1335
    .local v12, "testLocale":Ljava/util/Locale;
    invoke-virtual {v12}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9d

    const-string v13, "und"

    .line 1336
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_94

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9d

    .line 1341
    :cond_94
    sget-object v13, Landroid/icu/util/ULocale$AliasReplacer;->languageAliasMap:Ljava/util/Map;

    invoke-interface {v13, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    nop

    .end local v9    # "res":Landroid/icu/util/UResourceBundle;
    .end local v10    # "aliasFrom":Ljava/lang/String;
    .end local v11    # "aliasTo":Ljava/lang/String;
    .end local v12    # "testLocale":Ljava/util/Locale;
    add-int/lit8 v8, v8, 0x1

    goto :goto_5b

    .line 1337
    .restart local v9    # "res":Landroid/icu/util/UResourceBundle;
    .restart local v10    # "aliasFrom":Ljava/lang/String;
    .restart local v11    # "aliasTo":Ljava/lang/String;
    .restart local v12    # "testLocale":Ljava/util/Locale;
    :cond_9d
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "key ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] in alias:language contains unsupported fields combination."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1343
    .end local v8    # "i":I
    .end local v9    # "res":Landroid/icu/util/UResourceBundle;
    .end local v10    # "aliasFrom":Ljava/lang/String;
    .end local v11    # "aliasTo":Ljava/lang/String;
    .end local v12    # "testLocale":Ljava/util/Locale;
    :cond_bc
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_bd
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v9

    const/4 v10, 0x4

    if-ge v8, v9, :cond_104

    .line 1344
    invoke-virtual {v4, v8}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    .line 1345
    .restart local v9    # "res":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 1346
    .local v11, "aliasFrom":Ljava/lang/String;
    const-string v12, "replacement"

    invoke-virtual {v9, v12}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v12

    .line 1347
    .local v12, "aliasTo":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v13, v10, :cond_e5

    .line 1351
    sget-object v10, Landroid/icu/util/ULocale$AliasReplacer;->scriptAliasMap:Ljava/util/Map;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    nop

    .end local v9    # "res":Landroid/icu/util/UResourceBundle;
    .end local v11    # "aliasFrom":Ljava/lang/String;
    .end local v12    # "aliasTo":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_bd

    .line 1348
    .restart local v9    # "res":Landroid/icu/util/UResourceBundle;
    .restart local v11    # "aliasFrom":Ljava/lang/String;
    .restart local v12    # "aliasTo":Ljava/lang/String;
    :cond_e5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incorrect key ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] in alias:script."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1353
    .end local v8    # "i":I
    .end local v9    # "res":Landroid/icu/util/UResourceBundle;
    .end local v11    # "aliasFrom":Ljava/lang/String;
    .end local v12    # "aliasTo":Ljava/lang/String;
    :cond_104
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_105
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v9

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-ge v8, v9, :cond_162

    .line 1354
    invoke-virtual {v5, v8}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    .line 1355
    .restart local v9    # "res":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 1356
    .local v13, "aliasFrom":Ljava/lang/String;
    const-string v14, "replacement"

    invoke-virtual {v9, v14}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v14

    .line 1357
    .local v14, "aliasTo":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v15, v12, :cond_143

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v12, v11, :cond_143

    .line 1361
    sget-object v11, Landroid/icu/util/ULocale$AliasReplacer;->territoryAliasMap:Ljava/util/Map;

    new-instance v12, Ljava/util/ArrayList;

    const-string v15, " "

    .line 1362
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1361
    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    nop

    .end local v9    # "res":Landroid/icu/util/UResourceBundle;
    .end local v13    # "aliasFrom":Ljava/lang/String;
    .end local v14    # "aliasTo":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_105

    .line 1358
    .restart local v9    # "res":Landroid/icu/util/UResourceBundle;
    .restart local v13    # "aliasFrom":Ljava/lang/String;
    .restart local v14    # "aliasTo":Ljava/lang/String;
    :cond_143
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incorrect key ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] in alias:territory."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1364
    .end local v8    # "i":I
    .end local v9    # "res":Landroid/icu/util/UResourceBundle;
    .end local v13    # "aliasFrom":Ljava/lang/String;
    .end local v14    # "aliasTo":Ljava/lang/String;
    :cond_162
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_163
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v9

    const/16 v13, 0x8

    const/4 v14, 0x0

    if-ge v8, v9, :cond_217

    .line 1365
    invoke-virtual {v6, v8}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    .line 1366
    .restart local v9    # "res":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 1367
    .local v15, "aliasFrom":Ljava/lang/String;
    const-string v12, "replacement"

    invoke-virtual {v9, v12}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v12

    .line 1368
    .restart local v12    # "aliasTo":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v10, :cond_1f8

    .line 1369
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v13, :cond_1f8

    .line 1370
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v13, 0x30

    if-ne v11, v10, :cond_1a0

    .line 1371
    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v13, :cond_1f8

    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0x39

    if-gt v11, v13, :cond_1f8

    .line 1375
    :cond_1a0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v10, :cond_1cf

    .line 1376
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v13, 0x8

    if-gt v11, v13, :cond_1cf

    .line 1377
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v10, :cond_1c4

    .line 1378
    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0x30

    if-lt v11, v13, :cond_1cf

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0x39

    if-gt v11, v13, :cond_1cf

    .line 1383
    :cond_1c4
    sget-object v11, Landroid/icu/util/ULocale$AliasReplacer;->variantAliasMap:Ljava/util/Map;

    invoke-interface {v11, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    nop

    .end local v9    # "res":Landroid/icu/util/UResourceBundle;
    .end local v12    # "aliasTo":Ljava/lang/String;
    .end local v15    # "aliasFrom":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    goto :goto_163

    .line 1379
    .restart local v9    # "res":Landroid/icu/util/UResourceBundle;
    .restart local v12    # "aliasTo":Ljava/lang/String;
    .restart local v15    # "aliasFrom":Ljava/lang/String;
    :cond_1cf
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Incorrect variant ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "] for the key ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "] in alias:variant."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1372
    :cond_1f8
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Incorrect key ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "] in alias:variant."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1385
    .end local v8    # "i":I
    .end local v9    # "res":Landroid/icu/util/UResourceBundle;
    .end local v12    # "aliasTo":Ljava/lang/String;
    .end local v15    # "aliasFrom":Ljava/lang/String;
    :cond_217
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_218
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v9

    if-ge v8, v9, :cond_2bc

    .line 1386
    invoke-virtual {v7, v8}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    .line 1387
    .restart local v9    # "res":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 1388
    .restart local v10    # "aliasFrom":Ljava/lang/String;
    const-string v11, "replacement"

    invoke-virtual {v9, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v14

    .line 1389
    .local v11, "aliasTo":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-lt v12, v13, :cond_29d

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v15, 0x8

    if-gt v12, v15, :cond_29d

    .line 1393
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v15, 0x2

    if-ne v12, v15, :cond_266

    .line 1395
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "zzzz"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    const/16 v13, 0x8

    const/4 v15, 0x2

    goto :goto_275

    .line 1396
    :cond_266
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v15, 0x2

    if-lt v12, v15, :cond_27e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x8

    if-gt v12, v13, :cond_27e

    .line 1400
    :goto_275
    sget-object v12, Landroid/icu/util/ULocale$AliasReplacer;->subdivisionAliasMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    nop

    .end local v9    # "res":Landroid/icu/util/UResourceBundle;
    .end local v10    # "aliasFrom":Ljava/lang/String;
    .end local v11    # "aliasTo":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_218

    .line 1397
    .restart local v9    # "res":Landroid/icu/util/UResourceBundle;
    .restart local v10    # "aliasFrom":Ljava/lang/String;
    .restart local v11    # "aliasTo":Ljava/lang/String;
    :cond_27e
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incorrect value ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] in alias:territory."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1390
    :cond_29d
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incorrect key ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] in alias:territory."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1403
    .end local v8    # "i":I
    .end local v9    # "res":Landroid/icu/util/UResourceBundle;
    .end local v10    # "aliasFrom":Ljava/lang/String;
    .end local v11    # "aliasTo":Ljava/lang/String;
    :cond_2bc
    const/4 v8, 0x1

    sput-boolean v8, Landroid/icu/util/ULocale$AliasReplacer;->aliasDataIsLoaded:Z
    :try_end_2bf
    .catchall {:try_start_9 .. :try_end_2bf} :catchall_2c1

    .line 1404
    monitor-exit v1

    return-void

    .line 1308
    .end local v0    # "metadata":Landroid/icu/util/UResourceBundle;
    .end local v2    # "metadataAlias":Landroid/icu/util/UResourceBundle;
    .end local v3    # "languageAlias":Landroid/icu/util/UResourceBundle;
    .end local v4    # "scriptAlias":Landroid/icu/util/UResourceBundle;
    .end local v5    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    .end local v6    # "variantAlias":Landroid/icu/util/UResourceBundle;
    .end local v7    # "subdivisionAlias":Landroid/icu/util/UResourceBundle;
    :catchall_2c1
    move-exception v0

    :try_start_2c2
    monitor-exit v1
    :try_end_2c3
    .catchall {:try_start_2c2 .. :try_end_2c3} :catchall_2c1

    throw v0
.end method

.method private blacklist replaceLanguage(ZZZ)Z
    .registers 28
    .param p1, "checkLanguage"    # Z
    .param p2, "checkRegion"    # Z
    .param p3, "checkVariants"    # Z

    .line 1444
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    iget-object v2, v0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, v0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    :cond_11
    if-eqz p3, :cond_18

    iget-object v2, v0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    if-nez v2, :cond_18

    .line 1447
    :cond_17
    return v1

    .line 1449
    :cond_18
    const/4 v2, 0x1

    if-eqz p3, :cond_22

    iget-object v3, v0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_23

    :cond_22
    move v3, v2

    .line 1452
    .local v3, "variantSize":I
    :goto_23
    const-string v4, "und"

    if-eqz p1, :cond_2a

    iget-object v5, v0, Landroid/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v5, v4

    .line 1453
    .local v5, "searchLanguage":Ljava/lang/String;
    :goto_2b
    if-eqz p2, :cond_30

    iget-object v7, v0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    goto :goto_31

    :cond_30
    const/4 v7, 0x0

    .line 1454
    .local v7, "searchRegion":Ljava/lang/String;
    :goto_31
    const/4 v8, 0x0

    .line 1455
    .local v8, "searchVariant":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "variantIndex":I
    :goto_33
    if-ge v9, v3, :cond_16d

    .line 1456
    if-eqz p3, :cond_40

    .line 1457
    iget-object v10, v0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    check-cast v8, Ljava/lang/String;

    .line 1459
    :cond_40
    const/4 v10, 0x4

    if-eqz v8, :cond_4a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_4a

    .line 1461
    const/4 v8, 0x0

    .line 1463
    :cond_4a
    invoke-static {v5, v7, v8}, Landroid/icu/util/ULocale$AliasReplacer;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1465
    .local v11, "typeKey":Ljava/lang/String;
    sget-object v12, Landroid/icu/util/ULocale$AliasReplacer;->languageAliasMap:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1466
    .local v12, "replacement":Ljava/lang/String;
    if-nez v12, :cond_5c

    .line 1468
    move/from16 v22, v3

    goto/16 :goto_131

    .line 1470
    :cond_5c
    const/4 v13, 0x0

    .line 1471
    .local v13, "replacedScript":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1472
    .local v14, "replacedRegion":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1473
    .local v15, "replacedVariant":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1474
    .local v16, "replacedExtensions":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1476
    .local v17, "replacedLanguage":Ljava/lang/String;
    const/16 v6, 0x5f

    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_79

    .line 1477
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 1478
    iget-object v6, v0, Landroid/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    goto :goto_75

    :cond_74
    move-object v6, v12

    :goto_75
    move/from16 v22, v3

    .end local v17    # "replacedLanguage":Ljava/lang/String;
    .local v6, "replacedLanguage":Ljava/lang/String;
    goto/16 :goto_ff

    .line 1480
    .end local v6    # "replacedLanguage":Ljava/lang/String;
    .restart local v17    # "replacedLanguage":Ljava/lang/String;
    :cond_79
    const-string v6, "_"

    invoke-virtual {v12, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1481
    .local v6, "replacementFields":[Ljava/lang/String;
    move/from16 v18, v1

    aget-object v1, v6, v18

    .line 1482
    .end local v17    # "replacedLanguage":Ljava/lang/String;
    .local v1, "replacedLanguage":Ljava/lang/String;
    const/16 v17, 0x1

    .line 1484
    .local v17, "index":I
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8d

    .line 1485
    iget-object v1, v0, Landroid/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    .line 1487
    :cond_8d
    aget-object v19, v6, v18

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v10, v17

    move/from16 v20, v19

    .line 1488
    .end local v17    # "index":I
    .local v10, "index":I
    .local v20, "consumed":I
    :goto_99
    array-length v2, v6

    if-le v2, v10, :cond_f9

    .line 1489
    aget-object v2, v6, v10

    .line 1490
    .local v2, "field":Ljava/lang/String;
    move-object/from16 v21, v1

    .end local v1    # "replacedLanguage":Ljava/lang/String;
    .local v21, "replacedLanguage":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1491
    .local v1, "len":I
    move/from16 v22, v3

    const/4 v3, 0x1

    .end local v3    # "variantSize":I
    .local v22, "variantSize":I
    if-ne v3, v1, :cond_b2

    .line 1492
    move/from16 v3, v20

    .end local v20    # "consumed":I
    .local v3, "consumed":I
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1493
    move-object/from16 v6, v21

    goto :goto_ff

    .line 1494
    .end local v3    # "consumed":I
    .restart local v20    # "consumed":I
    :cond_b2
    move/from16 v3, v20

    const/4 v3, 0x2

    if-lt v1, v3, :cond_bf

    const/4 v3, 0x3

    if-gt v1, v3, :cond_bf

    .line 1495
    nop

    .line 1496
    move-object v14, v2

    move/from16 v23, v1

    goto :goto_eb

    .line 1497
    :cond_bf
    const/4 v3, 0x5

    if-lt v1, v3, :cond_cb

    const/16 v3, 0x8

    if-gt v1, v3, :cond_cb

    .line 1498
    nop

    .line 1499
    move-object v15, v2

    move/from16 v23, v1

    goto :goto_eb

    .line 1500
    :cond_cb
    const/4 v3, 0x4

    if-ne v1, v3, :cond_e9

    .line 1501
    move/from16 v23, v1

    move/from16 v3, v18

    .end local v1    # "len":I
    .local v23, "len":I
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-lt v1, v3, :cond_e6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x39

    if-gt v1, v3, :cond_e6

    .line 1502
    nop

    .line 1503
    move-object v15, v2

    goto :goto_eb

    .line 1505
    :cond_e6
    nop

    .line 1506
    move-object v13, v2

    goto :goto_eb

    .line 1500
    .end local v23    # "len":I
    .restart local v1    # "len":I
    :cond_e9
    move/from16 v23, v1

    .line 1509
    .end local v1    # "len":I
    .restart local v23    # "len":I
    :goto_eb
    add-int/lit8 v10, v10, 0x1

    .line 1510
    add-int/lit8 v1, v23, 0x1

    add-int v20, v20, v1

    .line 1511
    .end local v2    # "field":Ljava/lang/String;
    .end local v23    # "len":I
    move-object/from16 v1, v21

    move/from16 v3, v22

    const/4 v2, 0x1

    const/16 v18, 0x0

    goto :goto_99

    .line 1488
    .end local v21    # "replacedLanguage":Ljava/lang/String;
    .end local v22    # "variantSize":I
    .local v1, "replacedLanguage":Ljava/lang/String;
    .local v3, "variantSize":I
    :cond_f9
    move-object/from16 v21, v1

    move/from16 v22, v3

    .end local v1    # "replacedLanguage":Ljava/lang/String;
    .end local v3    # "variantSize":I
    .restart local v21    # "replacedLanguage":Ljava/lang/String;
    .restart local v22    # "variantSize":I
    move-object/from16 v6, v21

    .line 1514
    .end local v10    # "index":I
    .end local v20    # "consumed":I
    .end local v21    # "replacedLanguage":Ljava/lang/String;
    .local v6, "replacedLanguage":Ljava/lang/String;
    :goto_ff
    iget-object v1, v0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v13}, Landroid/icu/util/ULocale$AliasReplacer;->deleteOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1515
    .end local v13    # "replacedScript":Ljava/lang/String;
    .local v1, "replacedScript":Ljava/lang/String;
    iget-object v2, v0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    invoke-static {v2, v7, v14}, Landroid/icu/util/ULocale$AliasReplacer;->deleteOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1516
    .end local v14    # "replacedRegion":Ljava/lang/String;
    .local v2, "replacedRegion":Ljava/lang/String;
    invoke-static {v8, v8, v15}, Landroid/icu/util/ULocale$AliasReplacer;->deleteOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1518
    .end local v15    # "replacedVariant":Ljava/lang/String;
    .local v3, "replacedVariant":Ljava/lang/String;
    iget-object v10, v0, Landroid/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_139

    iget-object v10, v0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    .line 1519
    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_139

    iget-object v10, v0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    .line 1520
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_139

    .line 1521
    invoke-static {v8, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_139

    if-nez v16, :cond_139

    .line 1525
    nop

    .line 1455
    .end local v1    # "replacedScript":Ljava/lang/String;
    .end local v2    # "replacedRegion":Ljava/lang/String;
    .end local v3    # "replacedVariant":Ljava/lang/String;
    .end local v6    # "replacedLanguage":Ljava/lang/String;
    .end local v11    # "typeKey":Ljava/lang/String;
    .end local v12    # "replacement":Ljava/lang/String;
    .end local v16    # "replacedExtensions":Ljava/lang/String;
    :goto_131
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v22

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto/16 :goto_33

    .line 1527
    .restart local v1    # "replacedScript":Ljava/lang/String;
    .restart local v2    # "replacedRegion":Ljava/lang/String;
    .restart local v3    # "replacedVariant":Ljava/lang/String;
    .restart local v6    # "replacedLanguage":Ljava/lang/String;
    .restart local v11    # "typeKey":Ljava/lang/String;
    .restart local v12    # "replacement":Ljava/lang/String;
    .restart local v16    # "replacedExtensions":Ljava/lang/String;
    :cond_139
    iput-object v6, v0, Landroid/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    .line 1528
    iput-object v1, v0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    .line 1529
    iput-object v2, v0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    .line 1530
    if-eqz v8, :cond_165

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_165

    .line 1531
    if-eqz v3, :cond_155

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_155

    .line 1532
    iget-object v4, v0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v4, v9, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_165

    .line 1534
    :cond_155
    iget-object v4, v0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1535
    iget-object v4, v0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_165

    .line 1536
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    .line 1540
    :cond_165
    :goto_165
    if-eqz v16, :cond_16a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 1553
    :cond_16a
    const/16 v19, 0x1

    return v19

    .line 1556
    .end local v1    # "replacedScript":Ljava/lang/String;
    .end local v2    # "replacedRegion":Ljava/lang/String;
    .end local v6    # "replacedLanguage":Ljava/lang/String;
    .end local v9    # "variantIndex":I
    .end local v11    # "typeKey":Ljava/lang/String;
    .end local v12    # "replacement":Ljava/lang/String;
    .end local v16    # "replacedExtensions":Ljava/lang/String;
    .end local v22    # "variantSize":I
    .local v3, "variantSize":I
    :cond_16d
    const/16 v18, 0x0

    return v18
.end method

.method private blacklist replaceRegion()Z
    .registers 8

    .line 1560
    iget-object v0, p0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4d

    .line 1561
    :cond_e
    sget-object v0, Landroid/icu/util/ULocale$AliasReplacer;->territoryAliasMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1562
    .local v0, "replacement":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1b

    .line 1564
    return v1

    .line 1567
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_43

    .line 1568
    new-instance v2, Landroid/icu/util/ULocale;

    iget-object v4, p0, Landroid/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    invoke-static {v2}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 1571
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 1572
    .local v2, "regionOfLanguageAndScript":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1573
    move-object v1, v2

    goto :goto_42

    :cond_3c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1574
    .end local v2    # "regionOfLanguageAndScript":Ljava/lang/String;
    .local v1, "replacedRegion":Ljava/lang/String;
    :goto_42
    goto :goto_49

    .line 1575
    .end local v1    # "replacedRegion":Ljava/lang/String;
    :cond_43
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1577
    .restart local v1    # "replacedRegion":Ljava/lang/String;
    :goto_49
    nop

    .line 1578
    iput-object v1, p0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    .line 1580
    return v3

    .line 1560
    .end local v0    # "replacement":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "replacedRegion":Ljava/lang/String;
    :cond_4d
    :goto_4d
    return v1
.end method

.method private blacklist replaceScript()Z
    .registers 4

    .line 1584
    iget-object v0, p0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_20

    .line 1585
    :cond_e
    sget-object v0, Landroid/icu/util/ULocale$AliasReplacer;->scriptAliasMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1586
    .local v0, "replacement":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 1588
    return v1

    .line 1590
    :cond_1b
    nop

    .line 1591
    iput-object v0, p0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    .line 1593
    const/4 v1, 0x1

    return v1

    .line 1584
    .end local v0    # "replacement":Ljava/lang/String;
    :cond_20
    :goto_20
    return v1
.end method

.method private blacklist replaceSubdivision(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "subdivision"    # Ljava/lang/String;

    .line 1625
    sget-object v0, Landroid/icu/util/ULocale$AliasReplacer;->subdivisionAliasMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private blacklist replaceTransformedExtensions(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "extensions"    # Ljava/lang/String;

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1630
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1631
    .local v1, "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    .local v3, "tfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1633
    .local v4, "processedLength":I
    const/4 v5, 0x0

    .line 1634
    .local v5, "tlangLength":I
    const-string v6, ""

    .line 1635
    .local v6, "tkey":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_62

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1636
    .local v8, "subtag":Ljava/lang/String;
    invoke-static {v8}, Landroid/icu/impl/locale/LanguageTag;->isTKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 1637
    if-nez v5, :cond_38

    .line 1640
    add-int/lit8 v5, v4, -0x1

    .line 1642
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_48

    .line 1644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1645
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1648
    :cond_48
    move-object v6, v8

    .line 1649
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 1651
    :cond_4d
    if-eqz v5, :cond_5a

    .line 1652
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v8}, Landroid/icu/util/ULocale;->toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    :cond_5a
    :goto_5a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v4, v9

    .line 1656
    .end local v8    # "subtag":Ljava/lang/String;
    goto :goto_21

    .line 1657
    :cond_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_72

    .line 1659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1660
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1662
    :cond_72
    if-lez v5, :cond_79

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_83

    .line 1663
    :cond_79
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_81

    move-object v7, p1

    goto :goto_83

    :cond_81
    const-string v7, ""

    :goto_83
    nop

    .line 1664
    .local v7, "tlang":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_9e

    .line 1665
    nop

    .line 1666
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v8

    .line 1665
    invoke-static {v8}, Landroid/icu/util/ULocale;->createCanonical(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v8

    .line 1666
    invoke-virtual {v8}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 1667
    .local v8, "canonicalized":Ljava/lang/String;
    invoke-static {v8}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    .end local v8    # "canonicalized":Ljava/lang/String;
    :cond_9e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_b7

    .line 1671
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_ad

    .line 1672
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    :cond_ad
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1676
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->joinStrings(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    :cond_b7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist replaceVariant()Z
    .registers 6

    .line 1597
    iget-object v0, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1598
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4f

    .line 1599
    iget-object v2, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1600
    .local v2, "variant":Ljava/lang/String;
    sget-object v3, Landroid/icu/util/ULocale$AliasReplacer;->variantAliasMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1601
    .local v3, "replacement":Ljava/lang/String;
    if-nez v3, :cond_22

    .line 1603
    goto :goto_4c

    .line 1605
    :cond_22
    nop

    .line 1606
    nop

    .line 1607
    nop

    .line 1609
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 1610
    iget-object v1, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1612
    const-string v1, "heploc"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1613
    iget-object v1, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    const-string v4, "hepburn"

    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1614
    iget-object v1, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1615
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    .line 1618
    :cond_4a
    const/4 v1, 0x1

    return v1

    .line 1598
    .end local v2    # "variant":Ljava/lang/String;
    .end local v3    # "replacement":Ljava/lang/String;
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1621
    .end local v0    # "i":I
    :cond_4f
    return v1
.end method


# virtual methods
.method public blacklist replace()Ljava/lang/String;
    .registers 11

    .line 1226
    const/4 v0, 0x0

    .line 1227
    .local v0, "changed":Z
    invoke-static {}, Landroid/icu/util/ULocale$AliasReplacer;->loadAliasData()V

    .line 1228
    const/4 v1, 0x0

    .line 1230
    .local v1, "count":I
    :goto_5
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    const/16 v3, 0xa

    const-string v4, ""

    const-string v5, "_"

    if-le v1, v3, :cond_43

    .line 1234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Have problem to resolve locale alias of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Landroid/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    iget-object v7, p0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    .line 1237
    iget-object v9, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    if-nez v9, :cond_27

    goto :goto_2d

    :cond_27
    iget-object v4, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-static {v5, v4}, Landroid/icu/impl/Utility;->joinStrings(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 1236
    :goto_2d
    invoke-static {v6, v7, v8, v4}, Landroid/icu/util/ULocale;->-$$Nest$smlscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1242
    :cond_43
    const/4 v1, 0x1

    invoke-direct {p0, v1, v1, v1}, Landroid/icu/util/ULocale$AliasReplacer;->replaceLanguage(ZZZ)Z

    move-result v3

    if-nez v3, :cond_123

    .line 1243
    const/4 v3, 0x0

    invoke-direct {p0, v1, v1, v3}, Landroid/icu/util/ULocale$AliasReplacer;->replaceLanguage(ZZZ)Z

    move-result v6

    if-nez v6, :cond_123

    .line 1244
    invoke-direct {p0, v1, v3, v1}, Landroid/icu/util/ULocale$AliasReplacer;->replaceLanguage(ZZZ)Z

    move-result v6

    if-nez v6, :cond_123

    .line 1245
    invoke-direct {p0, v1, v3, v3}, Landroid/icu/util/ULocale$AliasReplacer;->replaceLanguage(ZZZ)Z

    move-result v6

    if-nez v6, :cond_123

    .line 1246
    invoke-direct {p0, v3, v3, v1}, Landroid/icu/util/ULocale$AliasReplacer;->replaceLanguage(ZZZ)Z

    move-result v1

    if-nez v1, :cond_123

    .line 1247
    invoke-direct {p0}, Landroid/icu/util/ULocale$AliasReplacer;->replaceRegion()Z

    move-result v1

    if-nez v1, :cond_123

    .line 1248
    invoke-direct {p0}, Landroid/icu/util/ULocale$AliasReplacer;->replaceScript()Z

    move-result v1

    if-nez v1, :cond_123

    .line 1249
    invoke-direct {p0}, Landroid/icu/util/ULocale$AliasReplacer;->replaceVariant()Z

    move-result v1

    if-eqz v1, :cond_77

    goto/16 :goto_123

    .line 1258
    :cond_77
    iget-object v1, p0, Landroid/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_7f

    if-nez v0, :cond_7f

    .line 1259
    return-object v3

    .line 1261
    :cond_7f
    iget-object v1, p0, Landroid/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    iget-object v6, p0, Landroid/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    iget-object v7, p0, Landroid/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    .line 1262
    iget-object v8, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    if-nez v8, :cond_8a

    goto :goto_90

    :cond_8a
    iget-object v4, p0, Landroid/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-static {v5, v4}, Landroid/icu/impl/Utility;->joinStrings(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 1261
    :goto_90
    invoke-static {v1, v6, v7, v4}, Landroid/icu/util/ULocale;->-$$Nest$smlscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1263
    .local v1, "result":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    if-eqz v4, :cond_11f

    .line 1264
    const/4 v4, 0x0

    .line 1265
    .local v4, "keywordChanged":Z
    new-instance v5, Landroid/icu/util/ULocale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 1266
    .local v5, "temp":Landroid/icu/util/ULocale;
    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v6

    .line 1267
    .local v6, "keywords":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b5
    if-eqz v6, :cond_f7

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f7

    .line 1268
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1269
    .local v7, "key":Ljava/lang/String;
    const-string v8, "rg"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "t"

    if-nez v8, :cond_db

    const-string v8, "sd"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_db

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f6

    .line 1270
    :cond_db
    invoke-virtual {v5, v7}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1271
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 1272
    invoke-direct {p0, v8}, Landroid/icu/util/ULocale$AliasReplacer;->replaceTransformedExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_ee

    .line 1273
    :cond_ea
    invoke-direct {p0, v8}, Landroid/icu/util/ULocale$AliasReplacer;->replaceSubdivision(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_ee
    nop

    .line 1274
    .local v9, "replacement":Ljava/lang/String;
    if-eqz v9, :cond_f6

    .line 1275
    invoke-virtual {v5, v7, v9}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v5

    .line 1276
    const/4 v4, 0x1

    .line 1279
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "replacement":Ljava/lang/String;
    :cond_f6
    goto :goto_b5

    .line 1280
    :cond_f7
    if-eqz v4, :cond_10c

    .line 1281
    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    .line 1282
    const/4 v0, 0x1

    .line 1284
    :cond_10c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1286
    .end local v4    # "keywordChanged":Z
    .end local v5    # "temp":Landroid/icu/util/ULocale;
    .end local v6    # "keywords":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_11f
    if-eqz v0, :cond_122

    .line 1287
    return-object v1

    .line 1290
    :cond_122
    return-object v3

    .line 1252
    .end local v1    # "result":Ljava/lang/String;
    :cond_123
    :goto_123
    const/4 v0, 0x1

    .line 1253
    move v1, v2

    goto/16 :goto_5
.end method
