.class public final Lcom/android/org/conscrypt/metrics/OptionalMethod;
.super Ljava/lang/Object;
.source "OptionalMethod.java"


# instance fields
.field private final blacklist cachedMethod:Ljava/lang/reflect/Method;


# direct methods
.method public varargs constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 5
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 45
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "methodParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1, p2, p3}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->initializeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/metrics/OptionalMethod;->cachedMethod:Ljava/lang/reflect/Method;

    .line 47
    return-void
.end method

.method private static blacklist checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 97
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 100
    return-object p0

    .line 98
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static varargs blacklist initializeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 52
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "methodParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_d

    aget-object v3, p2, v2

    .line 53
    .local v3, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_a

    .line 54
    return-object v0

    .line 52
    .end local v3    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 57
    :cond_d
    if-eqz p0, :cond_1a

    .line 58
    invoke-static {p1}, Lcom/android/org/conscrypt/metrics/OptionalMethod;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1b

    return-object v0

    .line 62
    :cond_1a
    goto :goto_1c

    .line 60
    :catch_1b
    move-exception v1

    .line 63
    :goto_1c
    return-object v0
.end method


# virtual methods
.method public varargs blacklist invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/android/org/conscrypt/metrics/OptionalMethod;->cachedMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    if-nez p1, :cond_8

    goto :goto_14

    .line 87
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/org/conscrypt/metrics/OptionalMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_e} :catch_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 90
    :catch_f
    move-exception v0

    goto :goto_13

    .line 88
    :catch_11
    move-exception v0

    .line 92
    nop

    .line 93
    :goto_13
    return-object v1

    .line 84
    :cond_14
    :goto_14
    return-object v1
.end method

.method public varargs blacklist invokeStatic([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "args"    # [Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/org/conscrypt/metrics/OptionalMethod;->cachedMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 69
    return-object v1

    .line 72
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/org/conscrypt/metrics/OptionalMethod;->cachedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_c} :catch_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 75
    :catch_d
    move-exception v0

    goto :goto_11

    .line 73
    :catch_f
    move-exception v0

    .line 77
    nop

    .line 78
    :goto_11
    return-object v1
.end method
