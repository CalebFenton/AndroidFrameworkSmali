.class public Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;
.super Ljava/lang/Object;
.source "DuckTypedPSKKeyManager.java"

# interfaces
.implements Lcom/android/org/conscrypt/PSKKeyManager;


# instance fields
.field private final mDelegate:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@5
    .line 38
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;
    .locals 10
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 51
    .local v0, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/android/org/conscrypt/PSKKeyManager;

    #@6
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@9
    move-result-object v6

    #@a
    const/4 v5, 0x0

    #@b
    array-length v7, v6

    #@c
    :goto_0
    if-ge v5, v7, :cond_2

    #@e
    aget-object v3, v6, v5

    #@10
    .line 52
    .local v3, "targetMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isSynthetic()Z

    #@13
    move-result v8

    #@14
    if-eqz v8, :cond_1

    #@16
    .line 51
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@18
    goto :goto_0

    #@19
    .line 57
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@24
    move-result-object v1

    #@25
    .line 59
    .local v1, "sourceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@28
    move-result-object v2

    #@29
    .line 60
    .local v2, "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@2c
    move-result-object v4

    #@2d
    .line 61
    .local v4, "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@30
    move-result v8

    #@31
    if-nez v8, :cond_0

    #@33
    .line 62
    new-instance v5, Ljava/lang/NoSuchMethodException;

    #@35
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    const-string/jumbo v7, " return value ("

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 63
    const-string/jumbo v7, ") incompatible with target return value ("

    #@4c
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    .line 63
    const-string/jumbo v7, ")"

    #@57
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    #@62
    throw v5

    #@63
    .line 67
    .end local v1    # "sourceMethod":Ljava/lang/reflect/Method;
    .end local v2    # "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "targetMethod":Ljava/lang/reflect/Method;
    .end local v4    # "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v5, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;

    #@65
    invoke-direct {v5, p0}, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;-><init>(Ljava/lang/Object;)V

    #@68
    return-object v5
.end method


# virtual methods
.method public chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;
    .locals 6
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 96
    const-string/jumbo v2, "chooseClientKeyIdentity"

    #@9
    .line 95
    const/4 v3, 0x2

    #@a
    new-array v3, v3, [Ljava/lang/Class;

    #@c
    .line 96
    const-class v4, Ljava/lang/String;

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v4, v3, v5

    #@11
    const-class v4, Ljava/net/Socket;

    #@13
    const/4 v5, 0x1

    #@14
    aput-object v4, v3, v5

    #@16
    .line 95
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@19
    move-result-object v1

    #@1a
    .line 97
    iget-object v2, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@1c
    .line 95
    const/4 v3, 0x2

    #@1d
    new-array v3, v3, [Ljava/lang/Object;

    #@1f
    .line 97
    const/4 v4, 0x0

    #@20
    aput-object p1, v3, v4

    #@22
    const/4 v4, 0x1

    #@23
    aput-object p2, v3, v4

    #@25
    .line 95
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    return-object v1

    #@2c
    .line 98
    :catch_0
    move-exception v0

    #@2d
    .line 99
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@2f
    const-string/jumbo v2, "Failed to invoke chooseClientKeyIdentity"

    #@32
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v1
.end method

.method public chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 6
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;

    #@0
    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 107
    const-string/jumbo v2, "chooseClientKeyIdentity"

    #@9
    .line 106
    const/4 v3, 0x2

    #@a
    new-array v3, v3, [Ljava/lang/Class;

    #@c
    .line 107
    const-class v4, Ljava/lang/String;

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v4, v3, v5

    #@11
    const-class v4, Ljavax/net/ssl/SSLEngine;

    #@13
    const/4 v5, 0x1

    #@14
    aput-object v4, v3, v5

    #@16
    .line 106
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@19
    move-result-object v1

    #@1a
    .line 108
    iget-object v2, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@1c
    .line 106
    const/4 v3, 0x2

    #@1d
    new-array v3, v3, [Ljava/lang/Object;

    #@1f
    .line 108
    const/4 v4, 0x0

    #@20
    aput-object p1, v3, v4

    #@22
    const/4 v4, 0x1

    #@23
    aput-object p2, v3, v4

    #@25
    .line 106
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    return-object v1

    #@2c
    .line 109
    :catch_0
    move-exception v0

    #@2d
    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@2f
    const-string/jumbo v2, "Failed to invoke chooseClientKeyIdentity"

    #@32
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v1
.end method

.method public chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;
    .locals 6
    .param p1, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 74
    const-string/jumbo v2, "chooseServerKeyIdentityHint"

    #@9
    .line 73
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Class;

    #@c
    .line 74
    const-class v4, Ljava/net/Socket;

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v4, v3, v5

    #@11
    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@14
    move-result-object v1

    #@15
    .line 75
    iget-object v2, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@17
    .line 73
    const/4 v3, 0x1

    #@18
    new-array v3, v3, [Ljava/lang/Object;

    #@1a
    .line 75
    const/4 v4, 0x0

    #@1b
    aput-object p1, v3, v4

    #@1d
    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    return-object v1

    #@24
    .line 76
    :catch_0
    move-exception v0

    #@25
    .line 77
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@27
    const-string/jumbo v2, "Failed to invoke chooseServerKeyIdentityHint"

    #@2a
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v1
.end method

.method public chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 6
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    #@0
    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 85
    const-string/jumbo v2, "chooseServerKeyIdentityHint"

    #@9
    .line 84
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Class;

    #@c
    .line 85
    const-class v4, Ljavax/net/ssl/SSLEngine;

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v4, v3, v5

    #@11
    .line 84
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@14
    move-result-object v1

    #@15
    .line 86
    iget-object v2, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@17
    .line 84
    const/4 v3, 0x1

    #@18
    new-array v3, v3, [Ljava/lang/Object;

    #@1a
    .line 86
    const/4 v4, 0x0

    #@1b
    aput-object p1, v3, v4

    #@1d
    .line 84
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    return-object v1

    #@24
    .line 87
    :catch_0
    move-exception v0

    #@25
    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@27
    const-string/jumbo v2, "Failed to invoke chooseServerKeyIdentityHint"

    #@2a
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v1
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 118
    const-string/jumbo v2, "getKey"

    #@9
    .line 117
    const/4 v3, 0x3

    #@a
    new-array v3, v3, [Ljava/lang/Class;

    #@c
    .line 118
    const-class v4, Ljava/lang/String;

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v4, v3, v5

    #@11
    const-class v4, Ljava/lang/String;

    #@13
    const/4 v5, 0x1

    #@14
    aput-object v4, v3, v5

    #@16
    const-class v4, Ljava/net/Socket;

    #@18
    const/4 v5, 0x2

    #@19
    aput-object v4, v3, v5

    #@1b
    .line 117
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1e
    move-result-object v1

    #@1f
    .line 119
    iget-object v2, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@21
    .line 117
    const/4 v3, 0x3

    #@22
    new-array v3, v3, [Ljava/lang/Object;

    #@24
    .line 119
    const/4 v4, 0x0

    #@25
    aput-object p1, v3, v4

    #@27
    const/4 v4, 0x1

    #@28
    aput-object p2, v3, v4

    #@2a
    const/4 v4, 0x2

    #@2b
    aput-object p3, v3, v4

    #@2d
    .line 117
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    return-object v1

    #@34
    .line 120
    :catch_0
    move-exception v0

    #@35
    .line 121
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@37
    const-string/jumbo v2, "Failed to invoke getKey"

    #@3a
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3d
    throw v1
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    #@0
    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 129
    const-string/jumbo v2, "getKey"

    #@9
    .line 128
    const/4 v3, 0x3

    #@a
    new-array v3, v3, [Ljava/lang/Class;

    #@c
    .line 129
    const-class v4, Ljava/lang/String;

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v4, v3, v5

    #@11
    const-class v4, Ljava/lang/String;

    #@13
    const/4 v5, 0x1

    #@14
    aput-object v4, v3, v5

    #@16
    const-class v4, Ljavax/net/ssl/SSLEngine;

    #@18
    const/4 v5, 0x2

    #@19
    aput-object v4, v3, v5

    #@1b
    .line 128
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1e
    move-result-object v1

    #@1f
    .line 130
    iget-object v2, p0, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->mDelegate:Ljava/lang/Object;

    #@21
    .line 128
    const/4 v3, 0x3

    #@22
    new-array v3, v3, [Ljava/lang/Object;

    #@24
    .line 130
    const/4 v4, 0x0

    #@25
    aput-object p1, v3, v4

    #@27
    const/4 v4, 0x1

    #@28
    aput-object p2, v3, v4

    #@2a
    const/4 v4, 0x2

    #@2b
    aput-object p3, v3, v4

    #@2d
    .line 128
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    return-object v1

    #@34
    .line 131
    :catch_0
    move-exception v0

    #@35
    .line 132
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@37
    const-string/jumbo v2, "Failed to invoke getKey"

    #@3a
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3d
    throw v1
.end method
