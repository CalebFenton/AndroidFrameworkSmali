.class public Landroid/security/keystore/AndroidKeyStorePublicKey;
.super Landroid/security/keystore/AndroidKeyStoreKey;
.source "AndroidKeyStorePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final mEncoded:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "x509EncodedForm"    # [B

    #@0
    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 33
    invoke-static {p3}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    #@9
    .line 31
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
    .line 56
    if-ne p0, p1, :cond_0

    #@4
    .line 57
    return v4

    #@5
    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreKey;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    .line 60
    return v3

    #@c
    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v2

    #@14
    if-eq v1, v2, :cond_2

    #@16
    .line 63
    return v3

    #@17
    :cond_2
    move-object v0, p1

    #@18
    .line 65
    check-cast v0, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@1a
    .line 66
    .local v0, "other":Landroid/security/keystore/AndroidKeyStorePublicKey;
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    #@1c
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    #@1e
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_3

    #@24
    .line 67
    return v3

    #@25
    .line 69
    :cond_3
    return v4
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "X.509"

    #@3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 48
    const/16 v0, 0x1f

    #@2
    .line 49
    .local v0, "prime":I
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreKey;->hashCode()I

    #@5
    move-result v1

    #@6
    .line 50
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@8
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStorePublicKey;->mEncoded:[B

    #@a
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    #@d
    move-result v3

    #@e
    add-int v1, v2, v3

    #@10
    .line 51
    return v1
.end method
