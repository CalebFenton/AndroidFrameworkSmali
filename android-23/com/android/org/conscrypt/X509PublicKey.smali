.class public Lcom/android/org/conscrypt/X509PublicKey;
.super Ljava/lang/Object;
.source "X509PublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = -0x777d6c0a72acebaaL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "encoded"    # [B

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    #@5
    .line 35
    iput-object p2, p0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    #@7
    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 70
    if-ne p0, p1, :cond_0

    #@4
    .line 71
    return v4

    #@5
    .line 72
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 73
    return v3

    #@8
    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/X509PublicKey;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 75
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 76
    check-cast v0, Lcom/android/org/conscrypt/X509PublicKey;

    #@16
    .line 77
    .local v0, "other":Lcom/android/org/conscrypt/X509PublicKey;
    iget-object v1, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 78
    iget-object v1, v0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 79
    return v3

    #@1f
    .line 80
    :cond_3
    iget-object v1, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    #@21
    iget-object v2, v0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_4

    #@29
    .line 81
    return v3

    #@2a
    .line 82
    :cond_4
    iget-object v1, p0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    #@2c
    iget-object v2, v0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    #@2e
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_5

    #@34
    .line 83
    return v3

    #@35
    .line 84
    :cond_5
    return v4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    #@2
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 61
    const/16 v0, 0x1f

    #@2
    .line 63
    .local v0, "prime":I
    iget-object v2, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    #@4
    if-nez v2, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    #@9
    .line 64
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@b
    iget-object v3, p0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    #@d
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    #@10
    move-result v3

    #@11
    add-int v1, v2, v3

    #@13
    .line 65
    return v1

    #@14
    .line 63
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    #@16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@19
    move-result v2

    #@1a
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "X509PublicKey [algorithm="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/org/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", encoded="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/org/conscrypt/X509PublicKey;->encoded:[B

    #@1b
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 56
    const-string/jumbo v1, "]"

    #@26
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method
