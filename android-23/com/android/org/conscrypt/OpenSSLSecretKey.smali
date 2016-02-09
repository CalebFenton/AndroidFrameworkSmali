.class public Lcom/android/org/conscrypt/OpenSSLSecretKey;
.super Ljava/lang/Object;
.source "OpenSSLSecretKey.java"

# interfaces
.implements Ljavax/crypto/SecretKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x1969350f33bb57ddL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B

.field private transient key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/android/org/conscrypt/OpenSSLKey;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    #@5
    .line 47
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@7
    .line 49
    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->type:I

    #@11
    .line 50
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    #@14
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "encoded"    # [B

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    #@5
    .line 39
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    #@7
    .line 41
    const/16 v0, 0x357

    #@9
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->type:I

    #@b
    .line 42
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    #@d
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->type:I

    #@f
    invoke-static {v1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    #@12
    move-result-wide v2

    #@13
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@16
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@18
    .line 37
    return-void
.end method

.method public static getInstance(Ljavax/crypto/SecretKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    .line 56
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@5
    move-result-object v2

    #@6
    .line 55
    const/16 v3, 0x357

    #@8
    invoke-static {v3, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    #@b
    move-result-wide v2

    #@c
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    return-object v1

    #@10
    .line 57
    :catch_0
    move-exception v0

    #@11
    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    #@13
    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 127
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    #@5
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->type:I

    #@7
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    #@9
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    #@c
    move-result-wide v2

    #@d
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    #@10
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@12
    .line 124
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSecretKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 132
    new-instance v0, Ljava/io/NotSerializableException;

    #@c
    const-string/jumbo v1, "engine-based keys can not be serialized"

    #@f
    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@16
    .line 130
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 92
    if-ne p1, p0, :cond_0

    #@3
    .line 93
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 96
    :cond_0
    instance-of v2, p1, Ljavax/crypto/SecretKey;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 97
    return v4

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 100
    check-cast v0, Ljavax/crypto/SecretKey;

    #@d
    .line 101
    .local v0, "other":Ljavax/crypto/SecretKey;
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    #@f
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_2

    #@19
    .line 102
    return v4

    #@1a
    .line 105
    :cond_2
    instance-of v2, p1, Lcom/android/org/conscrypt/OpenSSLSecretKey;

    #@1c
    if-eqz v2, :cond_3

    #@1e
    move-object v1, p1

    #@1f
    .line 106
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLSecretKey;

    #@21
    .line 107
    .local v1, "otherOpenSSL":Lcom/android/org/conscrypt/OpenSSLSecretKey;
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@23
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLSecretKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    return v2

    #@2c
    .line 108
    .end local v1    # "otherOpenSSL":Lcom/android/org/conscrypt/OpenSSLSecretKey;
    :cond_3
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2e
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_4

    #@34
    .line 109
    return v4

    #@35
    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSecretKey;->getFormat()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-nez v2, :cond_5

    #@43
    .line 113
    return v4

    #@44
    .line 116
    :cond_5
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    #@46
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@4d
    move-result v2

    #@4e
    return v2
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 79
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    #@c
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 70
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 73
    :cond_0
    const-string/jumbo v0, "RAW"

    #@d
    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSecretKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method
