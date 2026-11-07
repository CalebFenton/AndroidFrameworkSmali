.class public final Llibcore/icu/DateIntervalFormat;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# static fields
.field private static final blacklist FORMAT_12HOUR:I = 0x40

.field private static final blacklist FORMAT_24HOUR:I = 0x80

.field private static final blacklist FORMAT_SHOW_TIME:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static greylist formatDateRange(JJILjava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "startMs"    # J
    .param p2, "endMs"    # J
    .param p4, "flags"    # I
    .param p5, "olsonId"    # Ljava/lang/String;

    .line 58
    invoke-static {}, Llibcore/icu/DateIntervalFormat;->getFrameworksDateIntervaFormatMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 61
    :try_start_7
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v3, v4, p5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_1d} :catch_1e

    return-object v0

    .line 62
    :catch_1e
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    return-object v2

    .line 68
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_20
    invoke-static {}, Llibcore/icu/DateIntervalFormat;->getDateUtilsMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_66

    .line 72
    and-int/lit16 v0, p4, 0xc1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_41

    .line 75
    :try_start_2b
    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    if-eqz v0, :cond_3b

    sget-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_35} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_35} :catch_3e

    if-eqz v0, :cond_38

    goto :goto_3b

    .line 78
    :cond_38
    or-int/lit8 p4, p4, 0x40

    goto :goto_41

    .line 76
    :cond_3b
    :goto_3b
    or-int/lit16 p4, p4, 0x80

    goto :goto_41

    .line 85
    :catch_3e
    move-exception v0

    move-object v8, p5

    goto :goto_65

    .line 82
    :cond_41
    :goto_41
    :try_start_41
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    move-object v4, v0

    .line 83
    .local v4, "formatter":Ljava/util/Formatter;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_41 .. :try_end_53} :catch_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_41 .. :try_end_53} :catch_63

    const/4 v3, 0x0

    move-object v8, p5

    .end local p5    # "olsonId":Ljava/lang/String;
    .local v8, "olsonId":Ljava/lang/String;
    :try_start_55
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v1, v2, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p5
    :try_end_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_55 .. :try_end_60} :catch_61
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_55 .. :try_end_60} :catch_61

    return-object p5

    .line 85
    .end local v4    # "formatter":Ljava/util/Formatter;
    :catch_61
    move-exception v0

    goto :goto_65

    .end local v8    # "olsonId":Ljava/lang/String;
    .restart local p5    # "olsonId":Ljava/lang/String;
    :catch_63
    move-exception v0

    move-object v8, p5

    .line 86
    .end local p5    # "olsonId":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v8    # "olsonId":Ljava/lang/String;
    :goto_65
    return-object v2

    .line 93
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v8    # "olsonId":Ljava/lang/String;
    .restart local p5    # "olsonId":Ljava/lang/String;
    :cond_66
    return-object v2
.end method

.method private static blacklist getDateUtilsMethod()Ljava/lang/reflect/Method;
    .registers 5

    .line 110
    :try_start_0
    const-string v0, "android.text.format.DateUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "formatDateRange"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const-string v3, "android.content.Context"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/util/Formatter;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_31} :catch_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_31} :catch_32

    .line 113
    .local v1, "m":Ljava/lang/reflect/Method;
    return-object v1

    .line 114
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_32
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getFrameworksDateIntervaFormatMethod()Ljava/lang/reflect/Method;
    .registers 6

    .line 98
    :try_start_0
    const-string v0, "android.text.format.DateIntervalFormat"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "formatDateRange"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 101
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_26} :catch_27

    .line 102
    return-object v1

    .line 103
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_27
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const/4 v1, 0x0

    return-object v1
.end method
