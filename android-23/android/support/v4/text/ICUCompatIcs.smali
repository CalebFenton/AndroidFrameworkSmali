.class Landroid/support/v4/text/ICUCompatIcs;
.super Ljava/lang/Object;
.source "ICUCompatIcs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompatIcs"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 34
    :try_start_0
    const-string/jumbo v2, "libcore.icu.ICU"

    #@4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 35
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    #@a
    .line 36
    const-string/jumbo v2, "getScript"

    #@d
    .line 37
    const/4 v3, 0x1

    #@e
    new-array v3, v3, [Ljava/lang/Class;

    #@10
    const-class v4, Ljava/lang/String;

    #@12
    const/4 v5, 0x0

    #@13
    aput-object v4, v3, v5

    #@15
    .line 36
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@18
    move-result-object v2

    #@19
    sput-object v2, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    #@1b
    .line 38
    const-string/jumbo v2, "addLikelySubtags"

    #@1e
    .line 39
    const/4 v3, 0x1

    #@1f
    new-array v3, v3, [Ljava/lang/Class;

    #@21
    const-class v4, Ljava/lang/String;

    #@23
    const/4 v5, 0x0

    #@24
    aput-object v4, v3, v5

    #@26
    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@29
    move-result-object v2

    #@2a
    sput-object v2, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 25
    :cond_0
    :goto_0
    return-void

    #@2d
    .line 41
    :catch_0
    move-exception v1

    #@2e
    .line 42
    .local v1, "e":Ljava/lang/Exception;
    sput-object v6, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    #@30
    .line 43
    sput-object v6, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    #@32
    .line 46
    const-string/jumbo v2, "ICUCompatIcs"

    #@35
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 79
    .local v3, "localeStr":Ljava/lang/String;
    :try_start_0
    sget-object v4, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 80
    const/4 v4, 0x1

    #@9
    new-array v0, v4, [Ljava/lang/Object;

    #@b
    const/4 v4, 0x0

    #@c
    aput-object v3, v0, v4

    #@e
    .line 81
    .local v0, "args":[Ljava/lang/Object;
    sget-object v4, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    #@10
    const/4 v5, 0x0

    #@11
    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    return-object v4

    #@18
    .line 87
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@19
    .line 89
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "ICUCompatIcs"

    #@1c
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 92
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    :goto_0
    return-object v3

    #@20
    .line 83
    :catch_1
    move-exception v1

    #@21
    .line 85
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ICUCompatIcs"

    #@24
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "localeStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 61
    :try_start_0
    sget-object v3, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 62
    const/4 v3, 0x1

    #@6
    new-array v0, v3, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p0, v0, v3

    #@b
    .line 63
    .local v0, "args":[Ljava/lang/Object;
    sget-object v3, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    #@d
    const/4 v4, 0x0

    #@e
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    return-object v3

    #@15
    .line 69
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@16
    .line 71
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "ICUCompatIcs"

    #@19
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 73
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    :goto_0
    return-object v5

    #@1d
    .line 65
    :catch_1
    move-exception v1

    #@1e
    .line 67
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "ICUCompatIcs"

    #@21
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 51
    invoke-static {p0}, Landroid/support/v4/text/ICUCompatIcs;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 52
    .local v0, "localeWithSubtags":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 53
    invoke-static {v0}, Landroid/support/v4/text/ICUCompatIcs;->getScript(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 56
    :cond_0
    return-object v1
.end method
