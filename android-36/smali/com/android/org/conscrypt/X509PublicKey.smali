.class final Lcom/android/org/conscrypt/X509PublicKey;
.super Ljava/lang/Object;
.source "X509PublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final whitelist serialVersionUID:J = -0x777d6c0a72acebaaL


# instance fields
.field private final blacklist algorithm:Ljava/lang/String;

.field private final blacklist encoded:[B


# direct methods
.method constructor greylist <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "encoded"    # [B

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 72
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 73
    return v0

    .line 74
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 75
    return v1

    .line 76
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 77
    return v1

    .line 78
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/android/org/conscrypt/X509PublicKey;

    .line 79
    .local v2, "other":Lcom/android/org/conscrypt/X509PublicKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 80
    iget-object v3, v2, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 81
    return v1

    .line 82
    :cond_1f
    iget-object v3, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 83
    return v1

    .line 84
    :cond_2a
    iget-object v3, p0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    iget-object v4, v2, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_35

    .line 85
    return v1

    .line 86
    :cond_35
    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 47
    const-string v0, "X.509"

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 63
    const/16 v0, 0x1f

    .line 64
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 65
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_11

    :cond_b
    iget-object v3, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v2, v3

    .line 66
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 67
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X509PublicKey [algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encoded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
