.class public abstract Landroid/icu/text/LocaleDisplayNames;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/LocaleDisplayNames$DialectHandling;,
        Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;,
        Landroid/icu/text/LocaleDisplayNames$UiListItem;
    }
.end annotation


# static fields
.field private static final greylist-max-o FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

.field private static final greylist-max-o FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 388
    const-string v0, "getInstance"

    const-string v1, "android.icu.text.LocaleDisplayNames.impl"

    const-string v2, "android.icu.impl.LocaleDisplayNamesImpl"

    invoke-static {v1, v2}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "implClassName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 391
    .local v2, "factoryDialectHandling":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 394
    .local v3, "factoryDisplayContext":Ljava/lang/reflect/Method;
    :try_start_c
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_10} :catch_36

    .line 396
    .local v4, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    :try_start_13
    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/icu/util/ULocale;

    aput-object v9, v8, v6

    const-class v9, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    aput-object v9, v8, v5

    invoke-virtual {v4, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_21} :catch_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_21} :catch_36

    move-object v2, v8

    .line 399
    goto :goto_24

    .line 398
    :catch_23
    move-exception v8

    .line 401
    :goto_24
    :try_start_24
    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/icu/util/ULocale;

    aput-object v8, v7, v6

    const-class v6, [Landroid/icu/text/DisplayContext;

    aput-object v6, v7, v5

    invoke-virtual {v4, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_32} :catch_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_32} :catch_36

    .line 404
    .end local v3    # "factoryDisplayContext":Ljava/lang/reflect/Method;
    .local v0, "factoryDisplayContext":Ljava/lang/reflect/Method;
    move-object v3, v0

    goto :goto_35

    .line 403
    .end local v0    # "factoryDisplayContext":Ljava/lang/reflect/Method;
    .restart local v3    # "factoryDisplayContext":Ljava/lang/reflect/Method;
    :catch_34
    move-exception v0

    .line 408
    .end local v4    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_35
    goto :goto_37

    .line 406
    :catch_36
    move-exception v0

    .line 410
    :goto_37
    sput-object v2, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    .line 411
    sput-object v3, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    .line 412
    .end local v1    # "implClassName":Ljava/lang/String;
    .end local v2    # "factoryDialectHandling":Ljava/lang/reflect/Method;
    .end local v3    # "factoryDisplayContext":Ljava/lang/reflect/Method;
    return-void
.end method

.method protected constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    return-void
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 56
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {p0, v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .registers 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "result":Landroid/icu/text/LocaleDisplayNames;
    sget-object v1, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 80
    :try_start_6
    sget-object v1, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/LocaleDisplayNames;
    :try_end_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_12} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_12} :catch_14

    move-object v0, v1

    .line 86
    :goto_13
    goto :goto_18

    .line 84
    :catch_14
    move-exception v1

    goto :goto_18

    .line 82
    :catch_16
    move-exception v1

    goto :goto_13

    .line 88
    :cond_18
    :goto_18
    if-nez v0, :cond_20

    .line 89
    new-instance v1, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;

    invoke-direct {v1, p0, p1, v2}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;Landroid/icu/text/LocaleDisplayNames-IA;)V

    move-object v0, v1

    .line 91
    :cond_20
    return-object v0
.end method

.method public static varargs whitelist test-api getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .registers 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "contexts"    # [Landroid/icu/text/DisplayContext;

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "result":Landroid/icu/text/LocaleDisplayNames;
    sget-object v1, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 106
    :try_start_6
    sget-object v1, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/LocaleDisplayNames;
    :try_end_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_12} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_12} :catch_14

    move-object v0, v1

    .line 112
    :goto_13
    goto :goto_18

    .line 110
    :catch_14
    move-exception v1

    goto :goto_18

    .line 108
    :catch_16
    move-exception v1

    goto :goto_13

    .line 114
    :cond_18
    :goto_18
    if-nez v0, :cond_20

    .line 115
    new-instance v1, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;

    invoke-direct {v1, p0, p1, v2}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;Landroid/icu/text/LocaleDisplayNames-IA;)V

    move-object v0, v1

    .line 117
    :cond_20
    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 66
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api getInstance(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "contexts"    # [Landroid/icu/text/DisplayContext;

    .line 129
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
.end method

.method public abstract whitelist test-api getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
.end method

.method public abstract whitelist test-api getLocale()Landroid/icu/util/ULocale;
.end method

.method public whitelist test-api getUiList(Ljava/util/Set;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 5
    .param p2, "inSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;Z",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    .line 265
    .local p1, "localeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    .local p3, "collator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-static {p3, p2}, Landroid/icu/text/LocaleDisplayNames$UiListItem;->getComparator(Ljava/util/Comparator;Z)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/LocaleDisplayNames;->getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api scriptDisplayName(I)Ljava/lang/String;
.end method

.method public abstract whitelist test-api scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public greylist-max-o scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "script"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method
