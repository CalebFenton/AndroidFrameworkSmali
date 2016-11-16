.class Lcom/android/okhttp/internal/OptionalMethod;
.super Ljava/lang/Object;
.source "OptionalMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final methodName:Ljava/lang/String;

.field private final methodParams:[Ljava/lang/Class;

.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "methodParams"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    .local p0, "this":Lcom/android/okhttp/internal/OptionalMethod;, "Lcom/android/okhttp/internal/OptionalMethod<TT;>;"
    .local p1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Lcom/android/okhttp/internal/OptionalMethod;->returnType:Ljava/lang/Class;

    #@5
    .line 47
    iput-object p2, p0, Lcom/android/okhttp/internal/OptionalMethod;->methodName:Ljava/lang/String;

    #@7
    .line 48
    iput-object p3, p0, Lcom/android/okhttp/internal/OptionalMethod;->methodParams:[Ljava/lang/Class;

    #@9
    .line 45
    return-void
.end method

.method private getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .line 149
    .local p0, "this":Lcom/android/okhttp/internal/OptionalMethod;, "Lcom/android/okhttp/internal/OptionalMethod<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    .line 150
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/android/okhttp/internal/OptionalMethod;->methodName:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 151
    iget-object v1, p0, Lcom/android/okhttp/internal/OptionalMethod;->methodName:Ljava/lang/String;

    #@7
    iget-object v2, p0, Lcom/android/okhttp/internal/OptionalMethod;->methodParams:[Ljava/lang/Class;

    #@9
    invoke-static {p1, v1, v2}, Lcom/android/okhttp/internal/OptionalMethod;->getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@c
    move-result-object v0

    #@d
    .line 152
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    #@f
    .line 153
    iget-object v1, p0, Lcom/android/okhttp/internal/OptionalMethod;->returnType:Ljava/lang/Class;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 154
    iget-object v1, p0, Lcom/android/okhttp/internal/OptionalMethod;->returnType:Ljava/lang/Class;

    #@15
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 160
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v0

    #@20
    .line 157
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v0, 0x0

    #@21
    .local v0, "method":Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method private static getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    #@1
    .line 166
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@4
    move-result-object v1

    #@5
    .line 167
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v2

    #@9
    and-int/lit8 v2, v2, 0x1

    #@b
    if-nez v2, :cond_0

    #@d
    .line 168
    const/4 v1, 0x0

    #@e
    .line 173
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v1

    #@f
    .line 170
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    .local p0, "this":Lcom/android/okhttp/internal/OptionalMethod;, "Lcom/android/okhttp/internal/OptionalMethod<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v3

    #@4
    invoke-direct {p0, v3}, Lcom/android/okhttp/internal/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@7
    move-result-object v2

    #@8
    .line 108
    .local v2, "m":Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    #@a
    .line 109
    new-instance v3, Ljava/lang/AssertionError;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Method "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    iget-object v5, p0, Lcom/android/okhttp/internal/OptionalMethod;->methodName:Ljava/lang/String;

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, " not supported for object "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@30
    throw v3

    #@31
    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v3

    #@35
    return-object v3

    #@36
    .line 113
    :catch_0
    move-exception v0

    #@37
    .line 115
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Unexpectedly could not call: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@50
    .line 116
    .local v1, "error":Ljava/lang/AssertionError;
    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@53
    .line 117
    throw v1
.end method

.method public varargs invokeOptional(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/okhttp/internal/OptionalMethod;, "Lcom/android/okhttp/internal/OptionalMethod<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    #@1
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v2

    #@5
    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@8
    move-result-object v1

    #@9
    .line 68
    .local v1, "m":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    #@b
    .line 69
    return-object v3

    #@c
    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 73
    :catch_0
    move-exception v0

    #@12
    .line 74
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return-object v3
.end method

.method public varargs invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    .local p0, "this":Lcom/android/okhttp/internal/OptionalMethod;, "Lcom/android/okhttp/internal/OptionalMethod<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/internal/OptionalMethod;->invokeOptional(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v3

    #@4
    return-object v3

    #@5
    .line 88
    :catch_0
    move-exception v0

    #@6
    .line 89
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@9
    move-result-object v2

    #@a
    .line 90
    .local v2, "targetException":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 91
    check-cast v2, Ljava/lang/RuntimeException;

    #@10
    .end local v2    # "targetException":Ljava/lang/Throwable;
    throw v2

    #@11
    .line 93
    .restart local v2    # "targetException":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    #@13
    const-string/jumbo v3, "Unexpected exception"

    #@16
    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@19
    .line 94
    .local v1, "error":Ljava/lang/AssertionError;
    invoke-virtual {v1, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1c
    .line 95
    throw v1
.end method

.method public varargs invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 130
    .local p0, "this":Lcom/android/okhttp/internal/OptionalMethod;, "Lcom/android/okhttp/internal/OptionalMethod<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/internal/OptionalMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v3

    #@4
    return-object v3

    #@5
    .line 131
    :catch_0
    move-exception v0

    #@6
    .line 132
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@9
    move-result-object v2

    #@a
    .line 133
    .local v2, "targetException":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 134
    check-cast v2, Ljava/lang/RuntimeException;

    #@10
    .end local v2    # "targetException":Ljava/lang/Throwable;
    throw v2

    #@11
    .line 136
    .restart local v2    # "targetException":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    #@13
    const-string/jumbo v3, "Unexpected exception"

    #@16
    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@19
    .line 137
    .local v1, "error":Ljava/lang/AssertionError;
    invoke-virtual {v1, v2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1c
    .line 138
    throw v1
.end method

.method public isSupported(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    .local p0, "this":Lcom/android/okhttp/internal/OptionalMethod;, "Lcom/android/okhttp/internal/OptionalMethod<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/OptionalMethod;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method
