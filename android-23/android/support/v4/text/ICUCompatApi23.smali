.class public Landroid/support/v4/text/ICUCompatApi23;
.super Ljava/lang/Object;
.source "ICUCompatApi23.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompatIcs"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 34
    :try_start_0
    const-string/jumbo v2, "libcore.icu.ICU"

    #@3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    .line 35
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "addLikelySubtags"

    #@a
    .line 36
    const/4 v3, 0x1

    #@b
    new-array v3, v3, [Ljava/lang/Class;

    #@d
    const-class v4, Ljava/util/Locale;

    #@f
    const/4 v5, 0x0

    #@10
    aput-object v4, v3, v5

    #@12
    .line 35
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v2

    #@16
    sput-object v2, Landroid/support/v4/text/ICUCompatApi23;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 25
    return-void

    #@19
    .line 37
    :catch_0
    move-exception v1

    #@1a
    .line 38
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1c
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@1f
    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 45
    const/4 v3, 0x1

    #@1
    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    #@3
    const/4 v3, 0x0

    #@4
    aput-object p0, v0, v3

    #@6
    .line 46
    .local v0, "args":[Ljava/lang/Object;
    sget-object v3, Landroid/support/v4/text/ICUCompatApi23;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    #@8
    const/4 v4, 0x0

    #@9
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Ljava/util/Locale;

    #@f
    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v3

    #@13
    return-object v3

    #@14
    .line 49
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@15
    .line 50
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "ICUCompatIcs"

    #@18
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 53
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    return-object v3

    #@20
    .line 47
    :catch_1
    move-exception v2

    #@21
    .line 48
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "ICUCompatIcs"

    #@24
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method
