.class public Landroid/security/keystore/AndroidKeyStoreKey;
.super Ljava/lang/Object;
.source "AndroidKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mAlias:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@5
    .line 33
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mUid:I

    #@7
    .line 34
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

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
    .line 74
    if-ne p0, p1, :cond_0

    #@4
    .line 75
    return v4

    #@5
    .line 77
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 78
    return v3

    #@8
    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 81
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 83
    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    #@16
    .line 84
    .local v0, "other":Landroid/security/keystore/AndroidKeyStoreKey;
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 85
    iget-object v1, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 86
    return v3

    #@1f
    .line 88
    :cond_3
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@21
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_4

    #@29
    .line 89
    return v3

    #@2a
    .line 91
    :cond_4
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@2c
    if-nez v1, :cond_5

    #@2e
    .line 92
    iget-object v1, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@30
    if-eqz v1, :cond_6

    #@32
    .line 93
    return v3

    #@33
    .line 95
    :cond_5
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@35
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    if-nez v1, :cond_6

    #@3d
    .line 96
    return v3

    #@3e
    .line 98
    :cond_6
    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mUid:I

    #@40
    iget v2, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mUid:I

    #@42
    if-eq v1, v2, :cond_7

    #@44
    .line 99
    return v3

    #@45
    .line 101
    :cond_7
    return v4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getAlias()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getUid()I
    .locals 1

    #@0
    .prologue
    .line 42
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mUid:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 64
    const/16 v0, 0x1f

    #@3
    .line 66
    .local v0, "prime":I
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@5
    if-nez v2, :cond_0

    #@7
    move v2, v3

    #@8
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    #@a
    .line 67
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@c
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@e
    if-nez v4, :cond_1

    #@10
    :goto_1
    add-int v1, v2, v3

    #@12
    .line 68
    mul-int/lit8 v2, v1, 0x1f

    #@14
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mUid:I

    #@16
    add-int v1, v2, v3

    #@18
    .line 69
    return v1

    #@19
    .line 66
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@1e
    move-result v2

    #@1f
    goto :goto_0

    #@20
    .line 67
    .restart local v1    # "result":I
    :cond_1
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@22
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@25
    move-result v3

    #@26
    goto :goto_1
.end method
