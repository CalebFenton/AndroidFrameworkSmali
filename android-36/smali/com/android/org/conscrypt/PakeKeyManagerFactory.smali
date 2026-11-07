.class public Lcom/android/org/conscrypt/PakeKeyManagerFactory;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "PakeKeyManagerFactory.java"


# static fields
.field private static final blacklist MAX_HANDSHAKE_LIMIT:I = 0x18


# instance fields
.field blacklist clientParams:Landroid/net/ssl/PakeClientKeyManagerParameters;

.field blacklist serverParams:Landroid/net/ssl/PakeServerKeyManagerParameters;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method

.method private static blacklist getHandshakeLimit(Landroid/net/ssl/PakeOption;Ljava/lang/String;)I
    .registers 6
    .param p0, "option"    # Landroid/net/ssl/PakeOption;
    .param p1, "limitName"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p0, p1}, Landroid/net/ssl/PakeOption;->getMessageComponent(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    .local v0, "limit":[B
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 106
    return v1

    .line 108
    :cond_8
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    .line 110
    .local v2, "handshakeLimit":I
    if-lt v2, v1, :cond_13

    const/16 v3, 0x18

    if-le v2, v3, :cond_12

    goto :goto_13

    .line 113
    :cond_12
    return v2

    .line 111
    :cond_13
    :goto_13
    return v1
.end method

.method private blacklist initClient()[Ljavax/net/ssl/KeyManager;
    .registers 12

    .line 117
    iget-object v0, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->clientParams:Landroid/net/ssl/PakeClientKeyManagerParameters;

    invoke-virtual {v0}, Landroid/net/ssl/PakeClientKeyManagerParameters;->getOptions()Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Landroid/net/ssl/PakeOption;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ssl/PakeOption;

    .line 119
    .local v2, "option":Landroid/net/ssl/PakeOption;
    invoke-virtual {v2}, Landroid/net/ssl/PakeOption;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SPAKE2PLUS_PRERELEASE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 120
    goto :goto_a

    .line 122
    :cond_24
    iget-object v1, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->clientParams:Landroid/net/ssl/PakeClientKeyManagerParameters;

    invoke-virtual {v1}, Landroid/net/ssl/PakeClientKeyManagerParameters;->getClientId()[B

    move-result-object v7

    .line 123
    .local v7, "idProver":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->clientParams:Landroid/net/ssl/PakeClientKeyManagerParameters;

    invoke-virtual {v1}, Landroid/net/ssl/PakeClientKeyManagerParameters;->getServerId()[B

    move-result-object v8

    .line 124
    .local v8, "idVerifier":[B
    const-string v1, "context"

    invoke-virtual {v2, v1}, Landroid/net/ssl/PakeOption;->getMessageComponent(Ljava/lang/String;)[B

    move-result-object v5

    .line 125
    .local v5, "context":[B
    const-string v1, "password"

    invoke-virtual {v2, v1}, Landroid/net/ssl/PakeOption;->getMessageComponent(Ljava/lang/String;)[B

    move-result-object v6

    .line 126
    .local v6, "password":[B
    const-string v1, "client-handshake-limit"

    invoke-static {v2, v1}, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->getHandshakeLimit(Landroid/net/ssl/PakeOption;Ljava/lang/String;)I

    move-result v10

    .line 127
    .local v10, "clientHandshakeLimit":I
    if-eqz v6, :cond_50

    .line 128
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    new-instance v4, Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/org/conscrypt/Spake2PlusKeyManager;-><init>([B[B[B[BZI)V

    aput-object v4, v1, v3

    return-object v1

    .line 133
    .end local v2    # "option":Landroid/net/ssl/PakeOption;
    .end local v5    # "context":[B
    .end local v6    # "password":[B
    .end local v7    # "idProver":[B
    .end local v8    # "idVerifier":[B
    .end local v10    # "clientHandshakeLimit":I
    :cond_50
    new-array v1, v3, [Ljavax/net/ssl/KeyManager;

    return-object v1
.end method

.method private blacklist initServer()[Ljavax/net/ssl/KeyManager;
    .registers 16

    .line 137
    iget-object v0, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->serverParams:Landroid/net/ssl/PakeServerKeyManagerParameters;

    invoke-virtual {v0}, Landroid/net/ssl/PakeServerKeyManagerParameters;->getLinks()Ljava/util/Set;

    move-result-object v0

    .line 138
    .local v0, "links":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/ssl/PakeServerKeyManagerParameters$Link;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;

    .line 139
    .local v2, "link":Landroid/net/ssl/PakeServerKeyManagerParameters$Link;
    iget-object v4, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->serverParams:Landroid/net/ssl/PakeServerKeyManagerParameters;

    invoke-virtual {v4, v2}, Landroid/net/ssl/PakeServerKeyManagerParameters;->getOptions(Landroid/net/ssl/PakeServerKeyManagerParameters$Link;)Ljava/util/List;

    move-result-object v4

    .line 140
    .local v4, "options":Ljava/util/List;, "Ljava/util/List<Landroid/net/ssl/PakeOption;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ssl/PakeOption;

    .line 141
    .local v6, "option":Landroid/net/ssl/PakeOption;
    invoke-virtual {v6}, Landroid/net/ssl/PakeOption;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SPAKE2PLUS_PRERELEASE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 142
    goto :goto_21

    .line 144
    :cond_3a
    invoke-virtual {v2}, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->getClientId()[B

    move-result-object v11

    .line 145
    .local v11, "idProver":[B
    invoke-virtual {v2}, Landroid/net/ssl/PakeServerKeyManagerParameters$Link;->getServerId()[B

    move-result-object v12

    .line 146
    .local v12, "idVerifier":[B
    const-string v5, "context"

    invoke-virtual {v6, v5}, Landroid/net/ssl/PakeOption;->getMessageComponent(Ljava/lang/String;)[B

    move-result-object v9

    .line 147
    .local v9, "context":[B
    const-string v5, "password"

    invoke-virtual {v6, v5}, Landroid/net/ssl/PakeOption;->getMessageComponent(Ljava/lang/String;)[B

    move-result-object v10

    .line 148
    .local v10, "password":[B
    const-string v5, "server-handshake-limit"

    invoke-static {v6, v5}, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->getHandshakeLimit(Landroid/net/ssl/PakeOption;Ljava/lang/String;)I

    move-result v14

    .line 149
    .local v14, "serverHandshakeLimit":I
    if-eqz v10, :cond_62

    .line 150
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    new-instance v8, Lcom/android/org/conscrypt/Spake2PlusKeyManager;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/android/org/conscrypt/Spake2PlusKeyManager;-><init>([B[B[B[BZI)V

    aput-object v8, v1, v3

    return-object v1

    .line 162
    .end local v2    # "link":Landroid/net/ssl/PakeServerKeyManagerParameters$Link;
    .end local v4    # "options":Ljava/util/List;, "Ljava/util/List<Landroid/net/ssl/PakeOption;>;"
    .end local v6    # "option":Landroid/net/ssl/PakeOption;
    .end local v9    # "context":[B
    .end local v10    # "password":[B
    .end local v11    # "idProver":[B
    .end local v12    # "idVerifier":[B
    .end local v14    # "serverHandshakeLimit":I
    :cond_62
    goto :goto_a

    .line 163
    :cond_63
    new-array v1, v3, [Ljavax/net/ssl/KeyManager;

    return-object v1
.end method


# virtual methods
.method public whitelist test-api engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->clientParams:Landroid/net/ssl/PakeClientKeyManagerParameters;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->serverParams:Landroid/net/ssl/PakeServerKeyManagerParameters;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 94
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PakeKeyManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->clientParams:Landroid/net/ssl/PakeClientKeyManagerParameters;

    if-eqz v0, :cond_1a

    .line 97
    invoke-direct {p0}, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->initClient()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1a
    invoke-direct {p0}, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->initServer()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineInit(Ljava/security/KeyStore;[C)V
    .registers 5
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "KeyStore not supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 4
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->clientParams:Landroid/net/ssl/PakeClientKeyManagerParameters;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->serverParams:Landroid/net/ssl/PakeServerKeyManagerParameters;

    if-nez v0, :cond_2e

    .line 76
    if-eqz p1, :cond_26

    .line 79
    instance-of v0, p1, Landroid/net/ssl/PakeClientKeyManagerParameters;

    if-eqz v0, :cond_14

    .line 80
    move-object v0, p1

    check-cast v0, Landroid/net/ssl/PakeClientKeyManagerParameters;

    iput-object v0, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->clientParams:Landroid/net/ssl/PakeClientKeyManagerParameters;

    goto :goto_1d

    .line 81
    :cond_14
    instance-of v0, p1, Landroid/net/ssl/PakeServerKeyManagerParameters;

    if-eqz v0, :cond_1e

    .line 82
    move-object v0, p1

    check-cast v0, Landroid/net/ssl/PakeServerKeyManagerParameters;

    iput-object v0, p0, Lcom/android/org/conscrypt/PakeKeyManagerFactory;->serverParams:Landroid/net/ssl/PakeServerKeyManagerParameters;

    .line 86
    :goto_1d
    return-void

    .line 84
    :cond_1e
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_26
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PakeKeyManagerFactory is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
