.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public final mDisplayId:I

.field private final mHash:I

.field public final mOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mResDir:Ljava/lang/String;

.field private final mScale:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Configuration;F)V
    .locals 3
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p4, "scale"    # F

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@5
    .line 36
    iput p2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@7
    .line 37
    if-eqz p3, :cond_0

    #@9
    .end local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_0
    iput-object p3, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@b
    .line 39
    iput p4, p0, Landroid/content/res/ResourcesKey;->mScale:F

    #@d
    .line 42
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@f
    if-nez v1, :cond_1

    #@11
    const/4 v1, 0x0

    #@12
    :goto_1
    add-int/lit16 v0, v1, 0x20f

    #@14
    .line 43
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    #@16
    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@18
    add-int v0, v1, v2

    #@1a
    .line 44
    mul-int/lit8 v1, v0, 0x1f

    #@1c
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@1e
    invoke-virtual {v2}, Landroid/content/res/Configuration;->hashCode()I

    #@21
    move-result v2

    #@22
    add-int v0, v1, v2

    #@24
    .line 45
    mul-int/lit8 v1, v0, 0x1f

    #@26
    iget v2, p0, Landroid/content/res/ResourcesKey;->mScale:F

    #@28
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@2b
    move-result v2

    #@2c
    add-int v0, v1, v2

    #@2e
    .line 46
    iput v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    #@30
    .line 34
    return-void

    #@31
    .line 38
    .end local v0    # "hash":I
    .restart local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_0
    sget-object p3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@33
    goto :goto_0

    #@34
    .line 42
    .end local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_1
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@39
    move-result v1

    #@3a
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 60
    instance-of v1, p1, Landroid/content/res/ResourcesKey;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 61
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 63
    check-cast v0, Landroid/content/res/ResourcesKey;

    #@9
    .line 65
    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@b
    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@d
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    .line 66
    return v3

    #@14
    .line 68
    :cond_1
    iget v1, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@16
    iget v2, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@18
    if-eq v1, v2, :cond_2

    #@1a
    .line 69
    return v3

    #@1b
    .line 71
    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@1d
    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@1f
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_3

    #@25
    .line 72
    return v3

    #@26
    .line 74
    :cond_3
    iget v1, p0, Landroid/content/res/ResourcesKey;->mScale:F

    #@28
    iget v2, v0, Landroid/content/res/ResourcesKey;->mScale:F

    #@2a
    cmpl-float v1, v1, v2

    #@2c
    if-eqz v1, :cond_4

    #@2e
    .line 75
    return v3

    #@2f
    .line 77
    :cond_4
    const/4 v1, 0x1

    #@30
    return v1
.end method

.method public hasOverrideConfiguration()Z
    .locals 2

    #@0
    .prologue
    .line 50
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@2
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
