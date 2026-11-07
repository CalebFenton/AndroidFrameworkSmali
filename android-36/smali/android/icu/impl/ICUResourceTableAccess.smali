.class public Landroid/icu/impl/ICUResourceTableAccess;
.super Ljava/lang/Object;
.source "ICUResourceTableAccess.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTableString(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "bundle"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "subtableName"    # Ljava/lang/String;
    .param p3, "item"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    .line 41
    .local v0, "result":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 42
    .local v1, "table":Landroid/icu/impl/ICUResourceBundle;
    if-nez v1, :cond_8

    .line 43
    return-object p4

    .line 45
    :cond_8
    move-object v2, v1

    .line 46
    .local v2, "stable":Landroid/icu/impl/ICUResourceBundle;
    if-eqz p2, :cond_10

    .line 47
    invoke-virtual {v1, p2}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    move-object v2, v3

    .line 49
    :cond_10
    if-eqz v2, :cond_1a

    .line 50
    invoke-virtual {v2, p3}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 51
    if-eqz v0, :cond_1a

    .line 52
    goto :goto_42

    .line 57
    :cond_1a
    if-nez p2, :cond_43

    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, "currentName":Ljava/lang/String;
    const-string v4, "Countries"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 61
    invoke-static {p3}, Landroid/icu/impl/LocaleIDs;->getCurrentCountryID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_38

    .line 62
    :cond_2b
    const-string v4, "Languages"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 63
    invoke-static {p3}, Landroid/icu/impl/LocaleIDs;->getCurrentLanguageID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 65
    :cond_38
    :goto_38
    if-eqz v3, :cond_43

    .line 66
    invoke-virtual {v1, v3}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 67
    if-eqz v0, :cond_43

    .line 68
    nop

    .line 93
    .end local v1    # "table":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "stable":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "currentName":Ljava/lang/String;
    :goto_42
    goto :goto_72

    .line 74
    .restart local v1    # "table":Landroid/icu/impl/ICUResourceBundle;
    .restart local v2    # "stable":Landroid/icu/impl/ICUResourceBundle;
    :cond_43
    const-string v3, "Fallback"

    invoke-virtual {v1, v3}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "fallbackLocale":Ljava/lang/String;
    if-nez v3, :cond_4c

    .line 76
    return-object p4

    .line 79
    :cond_4c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_55

    .line 80
    const-string v4, "root"

    move-object v3, v4

    .line 83
    :cond_55
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 84
    return-object p4

    .line 87
    :cond_64
    nop

    .line 88
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v4, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6f} :catch_71

    move-object p0, v4

    .line 89
    .end local v1    # "table":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "stable":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "fallbackLocale":Ljava/lang/String;
    goto :goto_1

    .line 90
    :catch_71
    move-exception v1

    .line 96
    :goto_72
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7c

    move-object v1, v0

    goto :goto_7d

    :cond_7c
    move-object v1, p4

    :goto_7d
    return-object v1
.end method

.method public static blacklist getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "itemName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .line 27
    nop

    .line 28
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 29
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p3, p4}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
