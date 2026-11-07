.class Lorg/xml/sax/helpers/NewInstance;
.super Ljava/lang/Object;
.source "NewInstance.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getClassLoader()Ljava/lang/ClassLoader;
    .registers 5

    .line 60
    const/4 v0, 0x0

    .line 63
    .local v0, "m":Ljava/lang/reflect/Method;
    :try_start_1
    const-class v1, Ljava/lang/Thread;

    const-string v2, "getContextClassLoader"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_c} :catch_30

    .line 67
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .local v1, "m":Ljava/lang/reflect/Method;
    nop

    .line 70
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_19} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_19} :catch_1a

    return-object v0

    .line 74
    :catch_1a
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/UnknownError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_25
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/UnknownError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .local v0, "m":Ljava/lang/reflect/Method;
    :catch_30
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-class v2, Lorg/xml/sax/helpers/NewInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    return-object v2
.end method

.method static blacklist newInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 46
    if-nez p0, :cond_7

    .line 47
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "driverClass":Ljava/lang/Class;
    goto :goto_b

    .line 49
    .end local v0    # "driverClass":Ljava/lang/Class;
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    .restart local v0    # "driverClass":Ljava/lang/Class;
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
