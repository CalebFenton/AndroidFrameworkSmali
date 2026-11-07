.class final Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;
.super Ljava/lang/Object;
.source "DuckTypedPSKKeyManager.java"

# interfaces
.implements Lcom/android/org/conscrypt/PSKKeyManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mDelegate:Ljava/lang/Object;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "delegate"    # Ljava/lang/Object;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;
    .registers 10
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/android/org/conscrypt/PSKKeyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_62

    aget-object v4, v1, v3

    .line 55
    .local v4, "targetMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 56
    goto :goto_32

    .line 59
    :cond_17
    nop

    .line 60
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 62
    .local v5, "sourceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 63
    .local v6, "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 64
    .local v7, "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 54
    .end local v4    # "targetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "sourceMethod":Ljava/lang/reflect/Method;
    .end local v6    # "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 65
    .restart local v4    # "targetMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "sourceMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") incompatible with target return value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v4    # "targetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "sourceMethod":Ljava/lang/reflect/Method;
    .end local v6    # "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_62
    new-instance v1, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public blacklist chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;
    .registers 8
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "socket"    # Ljava/net/Socket;

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "chooseClientKeyIdentity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/net/Socket;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 98
    return-object v0

    .line 101
    :catch_26
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to invoke chooseClientKeyIdentity"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 8
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "chooseClientKeyIdentity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljavax/net/ssl/SSLEngine;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 109
    return-object v0

    .line 112
    :catch_26
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to invoke chooseClientKeyIdentity"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;
    .registers 7
    .param p1, "socket"    # Ljava/net/Socket;

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "chooseServerKeyIdentityHint"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/net/Socket;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 76
    return-object v0

    .line 79
    :catch_21
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to invoke chooseServerKeyIdentityHint"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 7
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "chooseServerKeyIdentityHint"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljavax/net/ssl/SSLEngine;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 87
    return-object v0

    .line 90
    :catch_21
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to invoke chooseServerKeyIdentityHint"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;
    .registers 9
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getKey"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Ljava/net/Socket;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 120
    return-object v0

    .line 123
    :catch_2b
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to invoke getKey"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;
    .registers 9
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getKey"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Ljavax/net/ssl/SSLEngine;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 131
    return-object v0

    .line 134
    :catch_2b
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to invoke getKey"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
