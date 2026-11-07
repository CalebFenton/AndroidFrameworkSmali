.class abstract Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;
.super Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;
.source "IkeMac.java"

# interfaces
.implements Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;


# instance fields
.field private final blacklist mIsJceSupported:Z

.field private final blacklist mMac:Ljavax/crypto/Mac;


# direct methods
.method protected constructor blacklist <init>(IILjava/lang/String;Z)V
    .registers 9
    .param p1, "algorithmId"    # I
    .param p2, "keyLength"    # I
    .param p3, "algorithmName"    # Ljava/lang/String;
    .param p4, "isJceSupported"    # Z

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCrypto;-><init>(IILjava/lang/String;)V

    .line 40
    iput-boolean p4, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->mIsJceSupported:Z

    .line 43
    :try_start_5
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->mIsJceSupported:Z

    if-eqz v0, :cond_14

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->mMac:Ljavax/crypto/Mac;

    goto :goto_17

    .line 48
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->mMac:Ljavax/crypto/Mac;
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_17} :catch_19

    .line 52
    :goto_17
    nop

    .line 53
    return-void

    .line 50
    :catch_19
    move-exception v0

    .line 51
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to construct "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist signBytes([B[B)[B
    .registers 6
    .param p1, "keyBytes"    # [B
    .param p2, "dataToSign"    # [B

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->mIsJceSupported:Z

    if-eqz v0, :cond_22

    .line 69
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 70
    .local v0, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 71
    .local v1, "inputBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->mMac:Ljavax/crypto/Mac;

    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 72
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->mMac:Ljavax/crypto/Mac;

    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 74
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->mMac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    return-object v2

    .line 76
    .end local v0    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "inputBuffer":Ljava/nio/ByteBuffer;
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;->getAlgorithmId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;
    .end local p1    # "keyBytes":[B
    .end local p2    # "dataToSign":[B
    throw v0
    :try_end_3f
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3f} :catch_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3f} :catch_3f

    .line 78
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/crypto/IkeMac;
    .restart local p1    # "keyBytes":[B
    .restart local p2    # "dataToSign":[B
    :catch_3f
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to generate MAC: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
