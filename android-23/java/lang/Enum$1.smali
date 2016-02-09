.class final Ljava/lang/Enum$1;
.super Llibcore/util/BasicLruCache;
.source "Enum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Ljava/lang/Enum;",
        ">;[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "$anonymous0"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "enumType"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 36
    check-cast p1, Ljava/lang/Class;

    #@2
    .end local p1    # "enumType":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Enum$1;->create(Ljava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected create(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    const/4 v5, 0x0

    #@1
    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 38
    return-object v5

    #@8
    .line 41
    :cond_0
    :try_start_0
    const-string/jumbo v4, "values"

    #@b
    sget-object v5, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@d
    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@10
    move-result-object v3

    #@11
    .line 42
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@15
    .line 43
    const/4 v4, 0x0

    #@16
    check-cast v4, [Ljava/lang/Object;

    #@18
    const/4 v5, 0x0

    #@19
    new-array v5, v5, [Ljava/lang/Object;

    #@1b
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    return-object v4

    #@22
    .line 48
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    #@23
    .line 49
    .local v2, "impossible":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/AssertionError;

    #@25
    const-string/jumbo v5, "impossible"

    #@28
    invoke-direct {v4, v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
    throw v4

    #@2c
    .line 46
    .end local v2    # "impossible":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@2d
    .line 47
    .local v0, "impossible":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    #@2f
    const-string/jumbo v5, "impossible"

    #@32
    invoke-direct {v4, v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v4

    #@36
    .line 44
    .end local v0    # "impossible":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    #@37
    .line 45
    .local v1, "impossible":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/AssertionError;

    #@39
    const-string/jumbo v5, "impossible"

    #@3c
    invoke-direct {v4, v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    throw v4
.end method
