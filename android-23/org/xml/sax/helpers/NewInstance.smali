.class Lorg/xml/sax/helpers/NewInstance;
.super Ljava/lang/Object;
.source "NewInstance.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getClassLoader()Ljava/lang/ClassLoader;
    .locals 7

    #@0
    .prologue
    .line 60
    const/4 v3, 0x0

    #@1
    .line 63
    .local v3, "m":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v4, Ljava/lang/Thread;

    #@3
    const-string/jumbo v5, "getContextClassLoader"

    #@6
    const/4 v6, 0x0

    #@7
    new-array v6, v6, [Ljava/lang/Class;

    #@9
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v3

    #@d
    .line 70
    .local v3, "m":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v4

    #@11
    const/4 v5, 0x0

    #@12
    new-array v5, v5, [Ljava/lang/Object;

    #@14
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a
    return-object v4

    #@1b
    .line 64
    .local v3, "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    #@1c
    .line 66
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-class v4, Lorg/xml/sax/helpers/NewInstance;

    #@1e
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@21
    move-result-object v4

    #@22
    return-object v4

    #@23
    .line 74
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .local v3, "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    #@24
    .line 76
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/UnknownError;

    #@26
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-direct {v4, v5}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    #@2d
    throw v4

    #@2e
    .line 71
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    #@2f
    .line 73
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/UnknownError;

    #@31
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-direct {v4, v5}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    #@38
    throw v4
.end method

.method static newInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    if-nez p0, :cond_0

    #@2
    .line 47
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 51
    .local v0, "driverClass":Ljava/lang/Class;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 49
    .end local v0    # "driverClass":Ljava/lang/Class;
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    .restart local v0    # "driverClass":Ljava/lang/Class;
    goto :goto_0
.end method
