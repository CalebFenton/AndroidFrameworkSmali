.class Landroid/crypto/hpke/DuckTypedHpkeSpi;
.super Ljava/lang/Object;
.source "DuckTypedHpkeSpi.java"

# interfaces
.implements Landroid/crypto/hpke/HpkeSpi;


# instance fields
.field private final blacklist delegate:Ljava/lang/Object;

.field private final blacklist methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 12
    .param p1, "delegate"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/crypto/hpke/DuckTypedHpkeSpi;->methods:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Landroid/crypto/hpke/DuckTypedHpkeSpi;->delegate:Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Landroid/crypto/hpke/HpkeSpi;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_84

    aget-object v4, v1, v3

    .line 48
    .local v4, "targetMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 49
    goto :goto_54

    .line 51
    :cond_23
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "engineInitSenderWithSeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 54
    goto :goto_54

    .line 57
    :cond_30
    nop

    .line 58
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 60
    .local v5, "sourceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 61
    .local v6, "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 62
    .local v7, "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 66
    iget-object v8, p0, Landroid/crypto/hpke/DuckTypedHpkeSpi;->methods:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .end local v4    # "targetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "sourceMethod":Ljava/lang/reflect/Method;
    .end local v6    # "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 63
    .restart local v4    # "targetMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "sourceMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_57
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

    .line 68
    .end local v4    # "targetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "sourceMethod":Ljava/lang/reflect/Method;
    .end local v6    # "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_84
    return-void
.end method

.method private varargs blacklist invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/crypto/hpke/DuckTypedHpkeSpi;->methods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 80
    .local v0, "method":Ljava/lang/reflect/Method;
    const-string v1, "DuckTypedHpkSpi internal error"

    if-eqz v0, :cond_2b

    .line 84
    :try_start_c
    iget-object v2, p0, Landroid/crypto/hpke/DuckTypedHpkeSpi;->delegate:Ljava/lang/Object;

    invoke-virtual {v0, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_12} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_12} :catch_13

    return-object v1

    .line 87
    :catch_13
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_23

    .line 89
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 91
    :cond_23
    throw v1

    .line 85
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_24
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 81
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private varargs blacklist invokeNoChecked(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 123
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 124
    :catch_5
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private varargs blacklist invokeWithPossibleGeneralSecurity(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 111
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 112
    :catch_5
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 114
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/security/GeneralSecurityException;

    if-eqz v2, :cond_12

    .line 115
    move-object v2, v1

    check-cast v2, Ljava/security/GeneralSecurityException;

    throw v2

    .line 117
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private varargs blacklist invokeWithPossibleInvalidKey(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 98
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3} :catch_5

    .line 105
    nop

    .line 106
    return-void

    .line 99
    :catch_5
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 101
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/security/InvalidKeyException;

    if-eqz v2, :cond_12

    .line 102
    move-object v2, v1

    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2

    .line 104
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist newInstance(Ljava/lang/Object;)Landroid/crypto/hpke/DuckTypedHpkeSpi;
    .registers 3
    .param p0, "delegate"    # Ljava/lang/Object;

    .line 72
    :try_start_0
    new-instance v0, Landroid/crypto/hpke/DuckTypedHpkeSpi;

    invoke-direct {v0, p0}, Landroid/crypto/hpke/DuckTypedHpkeSpi;-><init>(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 73
    :catch_6
    move-exception v0

    .line 74
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist test-api engineExport(I[B)[B
    .registers 5
    .param p1, "length"    # I
    .param p2, "exporterContext"    # [B

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "engineExport"

    invoke-direct {p0, v1, v0}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->invokeNoChecked(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V
    .registers 9
    .param p1, "encapsulated"    # [B
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "info"    # [B
    .param p4, "senderKey"    # Ljava/security/PublicKey;
    .param p5, "psk"    # [B
    .param p6, "psk_id"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 153
    const-string v0, "engineInitRecipient"

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->invokeWithPossibleInvalidKey(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public whitelist test-api engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V
    .registers 8
    .param p1, "recipientKey"    # Ljava/security/PublicKey;
    .param p2, "info"    # [B
    .param p3, "senderKey"    # Ljava/security/PrivateKey;
    .param p4, "psk"    # [B
    .param p5, "pskId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 138
    const-string v0, "engineInitSender"

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->invokeWithPossibleInvalidKey(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public whitelist test-api engineInitSenderWithSeed(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V
    .registers 9
    .param p1, "recipientKey"    # Ljava/security/PublicKey;
    .param p2, "info"    # [B
    .param p3, "senderKey"    # Ljava/security/PrivateKey;
    .param p4, "psk"    # [B
    .param p5, "psk_id"    # [B
    .param p6, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 145
    const-string v0, "engineInitSenderForTesting"

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->invokeWithPossibleInvalidKey(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public whitelist test-api engineOpen([B[B)[B
    .registers 5
    .param p1, "ciphertext"    # [B
    .param p2, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 169
    const-string v0, "engineOpen"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->invokeWithPossibleGeneralSecurity(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api engineSeal([B[B)[B
    .registers 5
    .param p1, "plaintext"    # [B
    .param p2, "aad"    # [B

    .line 159
    const-string v0, "engineSeal"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->invokeNoChecked(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getDelegate()Ljava/lang/Object;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/crypto/hpke/DuckTypedHpkeSpi;->delegate:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getEncapsulated()[B
    .registers 3

    .line 174
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getEncapsulated"

    invoke-direct {p0, v1, v0}, Landroid/crypto/hpke/DuckTypedHpkeSpi;->invokeNoChecked(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
