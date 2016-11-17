.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public final mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field public final mDisplayId:I

.field private final mHash:I

.field public final mLibDirs:[Ljava/lang/String;

.field public final mOverlayDirs:[Ljava/lang/String;

.field public final mOverrideConfiguration:Landroid/content/res/Configuration;

.field public final mResDir:Ljava/lang/String;

.field public final mSplitResDirs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@5
    .line 58
    iput-object p2, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@7
    .line 59
    iput-object p3, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@9
    .line 60
    iput-object p4, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@b
    .line 61
    iput p5, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@d
    .line 62
    if-eqz p6, :cond_0

    #@f
    .end local p6    # "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    iput-object p6, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@11
    .line 63
    if-eqz p7, :cond_1

    #@13
    .end local p7    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    :goto_1
    iput-object p7, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    #@15
    .line 66
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@17
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@1a
    move-result v1

    #@1b
    add-int/lit16 v0, v1, 0x20f

    #@1d
    .line 67
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    #@1f
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@21
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@24
    move-result v2

    #@25
    add-int v0, v1, v2

    #@27
    .line 68
    mul-int/lit8 v1, v0, 0x1f

    #@29
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@2b
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@2e
    move-result v2

    #@2f
    add-int v0, v1, v2

    #@31
    .line 69
    mul-int/lit8 v1, v0, 0x1f

    #@33
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@35
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@38
    move-result v2

    #@39
    add-int v0, v1, v2

    #@3b
    .line 70
    mul-int/lit8 v1, v0, 0x1f

    #@3d
    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@3f
    add-int v0, v1, v2

    #@41
    .line 71
    mul-int/lit8 v1, v0, 0x1f

    #@43
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@45
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@48
    move-result v2

    #@49
    add-int v0, v1, v2

    #@4b
    .line 72
    mul-int/lit8 v1, v0, 0x1f

    #@4d
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    #@4f
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@52
    move-result v2

    #@53
    add-int v0, v1, v2

    #@55
    .line 73
    iput v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    #@57
    .line 56
    return-void

    #@58
    .line 62
    .end local v0    # "hash":I
    .restart local p6    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p7    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    :cond_0
    sget-object p6, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@5a
    goto :goto_0

    #@5b
    .line 63
    .end local p6    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_1
    sget-object p7, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    #@5d
    goto :goto_1
.end method

.method private static anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "list"    # [Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 90
    if-eqz p0, :cond_1

    #@3
    .line 91
    array-length v3, p0

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_1

    #@7
    aget-object v0, p0, v1

    #@9
    .line 92
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 93
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 97
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 107
    instance-of v1, p1, Landroid/content/res/ResourcesKey;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 108
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 111
    check-cast v0, Landroid/content/res/ResourcesKey;

    #@9
    .line 112
    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget v1, p0, Landroid/content/res/ResourcesKey;->mHash:I

    #@b
    iget v2, v0, Landroid/content/res/ResourcesKey;->mHash:I

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 114
    return v3

    #@10
    .line 117
    :cond_1
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@12
    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@14
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_2

    #@1a
    .line 118
    return v3

    #@1b
    .line 120
    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@1d
    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@1f
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_3

    #@25
    .line 121
    return v3

    #@26
    .line 123
    :cond_3
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@28
    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@2a
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_4

    #@30
    .line 124
    return v3

    #@31
    .line 126
    :cond_4
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@33
    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@35
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_5

    #@3b
    .line 127
    return v3

    #@3c
    .line 129
    :cond_5
    iget v1, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@3e
    iget v2, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@40
    if-eq v1, v2, :cond_6

    #@42
    .line 130
    return v3

    #@43
    .line 132
    :cond_6
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@45
    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@47
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-nez v1, :cond_7

    #@4d
    .line 133
    return v3

    #@4e
    .line 135
    :cond_7
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    #@50
    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    #@52
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@55
    move-result v1

    #@56
    if-nez v1, :cond_8

    #@58
    .line 136
    return v3

    #@59
    .line 138
    :cond_8
    const/4 v1, 0x1

    #@5a
    return v1
.end method

.method public hasOverrideConfiguration()Z
    .locals 2

    #@0
    .prologue
    .line 77
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
    .line 102
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    #@2
    return v0
.end method

.method public isPathReferenced(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 81
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 82
    return v0

    #@e
    .line 84
    :cond_0
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@10
    invoke-static {v1, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@18
    invoke-static {v1, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_1

    #@1e
    .line 85
    iget-object v0, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@20
    invoke-static {v0, p1}, Landroid/content/res/ResourcesKey;->anyStartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    #@23
    move-result v0

    #@24
    .line 84
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "ResourcesKey{"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 144
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " mHash="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Landroid/content/res/ResourcesKey;->mHash:I

    #@15
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 145
    const-string/jumbo v1, " mResDir="

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 146
    const-string/jumbo v1, " mSplitDirs=["

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 147
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 148
    const-string/jumbo v1, ","

    #@35
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    #@37
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 150
    :cond_0
    const-string/jumbo v1, "]"

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 151
    const-string/jumbo v1, " mOverlayDirs=["

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 152
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@4c
    if-eqz v1, :cond_1

    #@4e
    .line 153
    const-string/jumbo v1, ","

    #@51
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    #@53
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 155
    :cond_1
    const-string/jumbo v1, "]"

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 156
    const-string/jumbo v1, " mLibDirs=["

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 157
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@68
    if-eqz v1, :cond_2

    #@6a
    .line 158
    const-string/jumbo v1, ","

    #@6d
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    #@6f
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 160
    :cond_2
    const-string/jumbo v1, "]"

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    .line 161
    const-string/jumbo v1, " mDisplayId="

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    iget v2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    .line 162
    const-string/jumbo v1, " mOverrideConfig="

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    .line 163
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@91
    .line 162
    invoke-static {v2}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    .line 164
    const-string/jumbo v1, " mCompatInfo="

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    iget-object v2, p0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    #@a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    .line 165
    const-string/jumbo v1, "}"

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v1

    #@ae
    return-object v1
.end method
