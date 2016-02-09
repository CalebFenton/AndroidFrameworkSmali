.class public Landroid/security/keystore/AndroidKeyStoreKey;
.super Ljava/lang/Object;
.source "AndroidKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@5
    .line 32
    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@7
    .line 30
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
    .line 67
    if-ne p0, p1, :cond_0

    #@4
    .line 68
    return v4

    #@5
    .line 70
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 71
    return v3

    #@8
    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreKey;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 74
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 76
    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    #@16
    .line 77
    .local v0, "other":Landroid/security/keystore/AndroidKeyStoreKey;
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 78
    iget-object v1, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 79
    return v3

    #@1f
    .line 81
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
    .line 82
    return v3

    #@2a
    .line 84
    :cond_4
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@2c
    if-nez v1, :cond_5

    #@2e
    .line 85
    iget-object v1, v0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@30
    if-eqz v1, :cond_6

    #@32
    .line 86
    return v3

    #@33
    .line 88
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
    .line 89
    return v3

    #@3e
    .line 91
    :cond_6
    return v4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getAlias()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 58
    const/16 v0, 0x1f

    #@3
    .line 60
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
    .line 61
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
    .line 62
    return v1

    #@13
    .line 60
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    #@15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@18
    move-result v2

    #@19
    goto :goto_0

    #@1a
    .line 61
    .restart local v1    # "result":I
    :cond_1
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKey;->mAlias:Ljava/lang/String;

    #@1c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@1f
    move-result v3

    #@20
    goto :goto_1
.end method
