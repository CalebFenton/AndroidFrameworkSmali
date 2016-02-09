.class public abstract Landroid/icu/text/LocaleDisplayNames;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/LocaleDisplayNames$DialectHandling;,
        Landroid/icu/text/LocaleDisplayNames$UiListItem;,
        Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;
    }
.end annotation


# static fields
.field private static final FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

.field private static final FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    .line 415
    const-string/jumbo v6, "android.icu.text.LocaleDisplayNames.impl"

    #@3
    const-string/jumbo v7, "android.icu.impl.LocaleDisplayNamesImpl"

    #@6
    invoke-static {v6, v7}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v5

    #@a
    .line 417
    .local v5, "implClassName":Ljava/lang/String;
    const/4 v2, 0x0

    #@b
    .line 418
    .local v2, "factoryDialectHandling":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    #@c
    .line 421
    .local v3, "factoryDisplayContext":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v4

    #@10
    .line 423
    .local v4, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v6, "getInstance"

    #@13
    const/4 v7, 0x2

    #@14
    new-array v7, v7, [Ljava/lang/Class;

    #@16
    .line 424
    const-class v8, Landroid/icu/util/ULocale;

    #@18
    const/4 v9, 0x0

    #@19
    aput-object v8, v7, v9

    #@1b
    const-class v8, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@1d
    const/4 v9, 0x1

    #@1e
    aput-object v8, v7, v9

    #@20
    .line 423
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@23
    move-result-object v2

    #@24
    .line 428
    .end local v2    # "factoryDialectHandling":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    const-string/jumbo v6, "getInstance"

    #@27
    const/4 v7, 0x2

    #@28
    new-array v7, v7, [Ljava/lang/Class;

    #@2a
    .line 429
    const-class v8, Landroid/icu/util/ULocale;

    #@2c
    const/4 v9, 0x0

    #@2d
    aput-object v8, v7, v9

    #@2f
    const-class v8, [Landroid/icu/text/DisplayContext;

    #@31
    const/4 v9, 0x1

    #@32
    aput-object v8, v7, v9

    #@34
    .line 428
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@37
    move-result-object v3

    #@38
    .line 437
    .end local v3    # "factoryDisplayContext":Ljava/lang/reflect/Method;
    .end local v4    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    sput-object v2, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    #@3a
    .line 438
    sput-object v3, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    #@3c
    .line 29
    return-void

    #@3d
    .line 433
    .restart local v3    # "factoryDisplayContext":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@3e
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    #@3f
    .line 430
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    #@40
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    #@41
    .line 425
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "factoryDialectHandling":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v1

    #@42
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 58
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@2
    invoke-static {p0, v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .locals 8
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 82
    const/4 v3, 0x0

    #@2
    .line 83
    .local v3, "result":Landroid/icu/text/LocaleDisplayNames;
    sget-object v4, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 85
    :try_start_0
    sget-object v4, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    #@8
    const/4 v5, 0x2

    #@9
    new-array v5, v5, [Ljava/lang/Object;

    #@b
    .line 86
    const/4 v6, 0x0

    #@c
    aput-object p0, v5, v6

    #@e
    const/4 v6, 0x1

    #@f
    aput-object p1, v5, v6

    #@11
    .line 85
    const/4 v6, 0x0

    #@12
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    move-object v0, v4

    #@17
    check-cast v0, Landroid/icu/text/LocaleDisplayNames;

    #@19
    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    #@1a
    .line 93
    .end local v3    # "result":Landroid/icu/text/LocaleDisplayNames;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    #@1c
    .line 94
    new-instance v3, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;

    #@1e
    invoke-direct {v3, p0, p1, v7}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;)V

    #@21
    .line 96
    :cond_1
    return-object v3

    #@22
    .line 87
    .restart local v3    # "result":Landroid/icu/text/LocaleDisplayNames;
    :catch_0
    move-exception v2

    #@23
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    #@24
    .line 89
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    #@25
    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method

.method public static varargs getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 8
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "contexts"    # [Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 109
    const/4 v3, 0x0

    #@2
    .line 110
    .local v3, "result":Landroid/icu/text/LocaleDisplayNames;
    sget-object v4, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 112
    :try_start_0
    sget-object v4, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    #@8
    const/4 v5, 0x2

    #@9
    new-array v5, v5, [Ljava/lang/Object;

    #@b
    .line 113
    const/4 v6, 0x0

    #@c
    aput-object p0, v5, v6

    #@e
    const/4 v6, 0x1

    #@f
    aput-object p1, v5, v6

    #@11
    .line 112
    const/4 v6, 0x0

    #@12
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    move-object v0, v4

    #@17
    check-cast v0, Landroid/icu/text/LocaleDisplayNames;

    #@19
    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    #@1a
    .line 120
    .end local v3    # "result":Landroid/icu/text/LocaleDisplayNames;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    #@1c
    .line 121
    new-instance v3, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;

    #@1e
    invoke-direct {v3, p0, p1, v7}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;)V

    #@21
    .line 123
    :cond_1
    return-object v3

    #@22
    .line 114
    .restart local v3    # "result":Landroid/icu/text/LocaleDisplayNames;
    :catch_0
    move-exception v2

    #@23
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    #@24
    .line 116
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    #@25
    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 70
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static varargs getInstance(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "contexts"    # [Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 137
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public abstract getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
.end method

.method public abstract getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
.end method

.method public abstract getLocale()Landroid/icu/util/ULocale;
.end method

.method public getUiList(Ljava/util/Set;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .param p2, "inSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;Z",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 275
    .local p1, "localeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    .local p3, "collator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-static {p3, p2}, Landroid/icu/text/LocaleDisplayNames$UiListItem;->getComparator(Ljava/util/Comparator;Z)Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/LocaleDisplayNames;->getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public abstract getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
.end method

.method public abstract localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract scriptDisplayName(I)Ljava/lang/String;
.end method

.method public abstract scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 216
    invoke-virtual {p0, p1}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method
