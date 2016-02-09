.class public Landroid/icu/impl/ICUResourceTableAccess;
.super Ljava/lang/Object;
.source "ICUResourceTableAccess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getTableString(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "bundle"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "subtableName"    # Ljava/lang/String;
    .param p3, "item"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    const/4 v3, 0x0

    #@1
    .line 37
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@4
    move-result-object v5

    #@5
    .line 38
    .local v5, "table":Landroid/icu/impl/ICUResourceBundle;
    if-nez v5, :cond_0

    #@7
    .line 39
    return-object p3

    #@8
    .line 41
    :cond_0
    move-object v4, v5

    #@9
    .line 42
    .local v4, "stable":Landroid/icu/impl/ICUResourceBundle;
    if-eqz p2, :cond_1

    #@b
    .line 43
    invoke-virtual {v5, p2}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@e
    move-result-object v4

    #@f
    .line 45
    :cond_1
    if-eqz v4, :cond_3

    #@11
    .line 46
    invoke-virtual {v4, p3}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v3

    #@15
    .line 47
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_3

    #@17
    .line 92
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "stable":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "table":Landroid/icu/impl/ICUResourceBundle;
    .end local p0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_2
    :goto_1
    if-eqz v3, :cond_a

    #@19
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1c
    move-result v6

    #@1d
    if-lez v6, :cond_a

    #@1f
    :goto_2
    return-object v3

    #@20
    .line 53
    .restart local v4    # "stable":Landroid/icu/impl/ICUResourceBundle;
    .restart local v5    # "table":Landroid/icu/impl/ICUResourceBundle;
    .restart local p0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_3
    if-nez p2, :cond_5

    #@22
    .line 55
    const/4 v0, 0x0

    #@23
    .line 56
    .local v0, "currentName":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v6, "Countries"

    #@26
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_6

    #@2c
    .line 57
    invoke-static {p3}, Landroid/icu/impl/LocaleIDs;->getCurrentCountryID(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 61
    .end local v0    # "currentName":Ljava/lang/String;
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    #@32
    .line 62
    invoke-virtual {v5, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 63
    .restart local v3    # "result":Ljava/lang/String;
    if-nez v3, :cond_2

    #@38
    .line 70
    .end local v3    # "result":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "Fallback"

    #@3b
    invoke-virtual {v5, v6}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 71
    .local v2, "fallbackLocale":Ljava/lang/String;
    if-nez v2, :cond_7

    #@41
    .line 72
    return-object p3

    #@42
    .line 58
    .end local v2    # "fallbackLocale":Ljava/lang/String;
    .restart local v0    # "currentName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "Languages"

    #@45
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v6

    #@49
    if-eqz v6, :cond_4

    #@4b
    .line 59
    invoke-static {p3}, Landroid/icu/impl/LocaleIDs;->getCurrentLanguageID(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    .local v0, "currentName":Ljava/lang/String;
    goto :goto_3

    #@50
    .line 75
    .end local v0    # "currentName":Ljava/lang/String;
    .restart local v2    # "fallbackLocale":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@53
    move-result v6

    #@54
    if-nez v6, :cond_8

    #@56
    .line 76
    const-string/jumbo v2, "root"

    #@59
    .line 79
    :cond_8
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v6

    #@65
    if-eqz v6, :cond_9

    #@67
    .line 80
    return-object p3

    #@68
    .line 84
    :cond_9
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    .line 83
    invoke-static {v6, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@6f
    move-result-object p0

    #@70
    .end local p0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    check-cast p0, Landroid/icu/impl/ICUResourceBundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@72
    .restart local p0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_0

    #@73
    .end local v2    # "fallbackLocale":Ljava/lang/String;
    .end local v4    # "stable":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "table":Landroid/icu/impl/ICUResourceBundle;
    .end local p0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    :cond_a
    move-object v3, p3

    #@74
    .line 92
    goto :goto_2

    #@75
    .line 86
    :catch_0
    move-exception v1

    #@76
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "itemName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 23
    invoke-static {p0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@a
    .line 25
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const/4 v1, 0x0

    #@b
    invoke-static {v0, p2, v1, p3}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method
