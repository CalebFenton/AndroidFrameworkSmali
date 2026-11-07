.class Landroid/icu/impl/ICUResourceBundle$5;
.super Landroid/icu/impl/ICUResourceBundle$Loader;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$baseName:Ljava/lang/String;

.field final synthetic blacklist val$defaultID:Ljava/lang/String;

.field final synthetic blacklist val$fullName:Ljava/lang/String;

.field final synthetic blacklist val$localeID:Ljava/lang/String;

.field final synthetic blacklist val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

.field final synthetic blacklist val$origLocaleID:Ljava/lang/String;

.field final synthetic blacklist val$root:Ljava/lang/ClassLoader;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1410
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$5;->val$fullName:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$5;->val$baseName:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/impl/ICUResourceBundle$5;->val$localeID:Ljava/lang/String;

    iput-object p4, p0, Landroid/icu/impl/ICUResourceBundle$5;->val$root:Ljava/lang/ClassLoader;

    iput-object p5, p0, Landroid/icu/impl/ICUResourceBundle$5;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    iput-object p6, p0, Landroid/icu/impl/ICUResourceBundle$5;->val$defaultID:Ljava/lang/String;

    iput-object p7, p0, Landroid/icu/impl/ICUResourceBundle$5;->val$origLocaleID:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundle$Loader;-><init>(Landroid/icu/impl/ICUResourceBundle-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist load()Landroid/icu/impl/ICUResourceBundle;
    .registers 21

    .line 1413
    move-object/from16 v0, p0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1421
    :cond_22
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$baseName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    const-string v1, "root"

    goto :goto_32

    :cond_30
    const-string v1, ""

    :goto_32
    move-object v4, v1

    .line 1422
    .local v4, "rootLocale":Ljava/lang/String;
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$localeID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    move-object v1, v4

    goto :goto_3f

    :cond_3d
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$localeID:Ljava/lang/String;

    .line 1423
    .local v1, "localeName":Ljava/lang/String;
    :goto_3f
    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$baseName:Ljava/lang/String;

    iget-object v5, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$root:Ljava/lang/ClassLoader;

    invoke-static {v3, v1, v5}, Landroid/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v9

    .line 1425
    .local v9, "b":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_87

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The bundle created is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and openType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and bundle.getNoFallback="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v9, :cond_7b

    invoke-static {v9}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$mgetNoFallback(Landroid/icu/impl/ICUResourceBundle;)Z

    move-result v7

    if-eqz v7, :cond_7b

    const/4 v7, 0x1

    goto :goto_7c

    :cond_7b
    move v7, v5

    :goto_7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1426
    :cond_87
    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    sget-object v6, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-eq v3, v6, :cond_15e

    if-eqz v9, :cond_97

    invoke-static {v9}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$mgetNoFallback(Landroid/icu/impl/ICUResourceBundle;)Z

    move-result v3

    if-eqz v3, :cond_97

    goto/16 :goto_15e

    .line 1442
    :cond_97
    if-nez v9, :cond_fe

    .line 1443
    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    .line 1444
    .local v2, "localOpenType":Landroid/icu/impl/ICUResourceBundle$OpenType;
    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    sget-object v5, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-ne v3, v5, :cond_ad

    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$defaultID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 1445
    sget-object v2, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    move-object v15, v2

    goto :goto_ae

    .line 1447
    :cond_ad
    move-object v15, v2

    .end local v2    # "localOpenType":Landroid/icu/impl/ICUResourceBundle$OpenType;
    .local v15, "localOpenType":Landroid/icu/impl/ICUResourceBundle$OpenType;
    :goto_ae
    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$origLocaleID:Ljava/lang/String;

    if-eqz v2, :cond_b6

    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$origLocaleID:Ljava/lang/String;

    move-object v12, v2

    goto :goto_b7

    :cond_b6
    move-object v12, v1

    .line 1448
    .local v12, "origLocaleName":Ljava/lang/String;
    :goto_b7
    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v1, v12, v2}, Landroid/icu/impl/ICUResourceBundle;->getParentLocaleID(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/ICUResourceBundle$OpenType;)Ljava/lang/String;

    move-result-object v11

    .line 1449
    .local v11, "fallbackLocaleID":Ljava/lang/String;
    if-eqz v11, :cond_cd

    .line 1450
    iget-object v10, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$baseName:Ljava/lang/String;

    iget-object v13, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$defaultID:Ljava/lang/String;

    iget-object v14, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$root:Ljava/lang/ClassLoader;

    invoke-static/range {v10 .. v15}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$sminstantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    move-object v5, v11

    move-object v3, v12

    move-object v9, v2

    .end local v9    # "b":Landroid/icu/impl/ICUResourceBundle;
    .end local v11    # "fallbackLocaleID":Ljava/lang/String;
    .end local v12    # "origLocaleName":Ljava/lang/String;
    .local v2, "b":Landroid/icu/impl/ICUResourceBundle;
    .local v3, "origLocaleName":Ljava/lang/String;
    .local v5, "fallbackLocaleID":Ljava/lang/String;
    goto :goto_fd

    .line 1452
    .end local v2    # "b":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "origLocaleName":Ljava/lang/String;
    .end local v5    # "fallbackLocaleID":Ljava/lang/String;
    .restart local v9    # "b":Landroid/icu/impl/ICUResourceBundle;
    .restart local v11    # "fallbackLocaleID":Ljava/lang/String;
    .restart local v12    # "origLocaleName":Ljava/lang/String;
    :cond_cd
    move-object v5, v11

    move-object v3, v12

    .end local v11    # "fallbackLocaleID":Ljava/lang/String;
    .end local v12    # "origLocaleName":Ljava/lang/String;
    .restart local v3    # "origLocaleName":Ljava/lang/String;
    .restart local v5    # "fallbackLocaleID":Ljava/lang/String;
    sget-object v2, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-ne v15, v2, :cond_ea

    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$defaultID:Ljava/lang/String;

    .line 1453
    invoke-static {v2, v1}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$smlocaleIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ea

    .line 1455
    iget-object v10, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$baseName:Ljava/lang/String;

    iget-object v11, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$defaultID:Ljava/lang/String;

    iget-object v13, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$defaultID:Ljava/lang/String;

    iget-object v14, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$root:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$sminstantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    move-object v9, v2

    .end local v9    # "b":Landroid/icu/impl/ICUResourceBundle;
    .restart local v2    # "b":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_fd

    .line 1456
    .end local v2    # "b":Landroid/icu/impl/ICUResourceBundle;
    .restart local v9    # "b":Landroid/icu/impl/ICUResourceBundle;
    :cond_ea
    sget-object v2, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ONLY:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-eq v15, v2, :cond_fd

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_fd

    .line 1458
    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$baseName:Ljava/lang/String;

    iget-object v6, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$root:Ljava/lang/ClassLoader;

    invoke-static {v2, v4, v6}, Landroid/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    move-object v9, v2

    .line 1461
    .end local v3    # "origLocaleName":Ljava/lang/String;
    .end local v5    # "fallbackLocaleID":Ljava/lang/String;
    .end local v15    # "localOpenType":Landroid/icu/impl/ICUResourceBundle$OpenType;
    :cond_fd
    :goto_fd
    goto :goto_15d

    .line 1462
    :cond_fe
    const/4 v10, 0x0

    .line 1463
    .local v10, "parent":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v9}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v1

    .line 1464
    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 1467
    .local v11, "i":I
    move-object v3, v9

    check-cast v3, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    const-string v6, "%%Parent"

    invoke-virtual {v3, v6}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1468
    .local v13, "parentLocaleName":Ljava/lang/String;
    if-eqz v13, :cond_126

    .line 1469
    iget-object v12, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$baseName:Ljava/lang/String;

    iget-object v15, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$defaultID:Ljava/lang/String;

    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$root:Ljava/lang/ClassLoader;

    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const/4 v14, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-static/range {v12 .. v17}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$sminstantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v10

    goto :goto_154

    .line 1470
    :cond_126
    if-eq v11, v2, :cond_141

    .line 1471
    iget-object v14, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$baseName:Ljava/lang/String;

    invoke-virtual {v1, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$defaultID:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$root:Ljava/lang/ClassLoader;

    iget-object v5, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    invoke-static/range {v14 .. v19}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$sminstantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v10

    goto :goto_154

    .line 1472
    :cond_141
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_154

    .line 1473
    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$baseName:Ljava/lang/String;

    iget-object v6, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$defaultID:Ljava/lang/String;

    iget-object v7, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$root:Ljava/lang/ClassLoader;

    iget-object v8, v0, Landroid/icu/impl/ICUResourceBundle$5;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$sminstantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v10

    .line 1476
    :cond_154
    :goto_154
    invoke-virtual {v9, v10}, Landroid/icu/impl/ICUResourceBundle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15d

    .line 1477
    invoke-virtual {v9, v10}, Landroid/icu/impl/ICUResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 1480
    .end local v10    # "parent":Landroid/icu/util/UResourceBundle;
    .end local v11    # "i":I
    .end local v13    # "parentLocaleName":Ljava/lang/String;
    :cond_15d
    :goto_15d
    return-object v9

    .line 1438
    :cond_15e
    :goto_15e
    return-object v9
.end method
