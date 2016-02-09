.class public final Landroid/hardware/camera2/params/ReprocessFormatsMap;
.super Ljava/lang/Object;
.source "ReprocessFormatsMap.java"


# instance fields
.field private final mEntry:[I

.field private final mInputCount:I


# direct methods
.method public constructor <init>([I)V
    .locals 13
    .param p1, "entry"    # [I

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 74
    const-string/jumbo v7, "entry must not be null"

    #@8
    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 76
    const/4 v5, 0x0

    #@c
    .line 77
    .local v5, "numInputs":I
    array-length v3, p1

    #@d
    .line 78
    .local v3, "left":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    array-length v7, p1

    #@f
    if-ge v0, v7, :cond_4

    #@11
    .line 79
    aget v7, p1, v0

    #@13
    invoke-static {v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    #@16
    move-result v1

    #@17
    .line 81
    .local v1, "inputFormat":I
    add-int/lit8 v3, v3, -0x1

    #@19
    .line 82
    add-int/lit8 v0, v0, 0x1

    #@1b
    .line 84
    if-ge v3, v12, :cond_0

    #@1d
    .line 85
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@1f
    .line 86
    const-string/jumbo v8, "Input %x had no output format length listed"

    #@22
    new-array v9, v12, [Ljava/lang/Object;

    #@24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v10

    #@28
    aput-object v10, v9, v11

    #@2a
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    .line 85
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v7

    #@32
    .line 89
    :cond_0
    aget v4, p1, v0

    #@34
    .line 90
    .local v4, "length":I
    add-int/lit8 v3, v3, -0x1

    #@36
    .line 91
    add-int/lit8 v0, v0, 0x1

    #@38
    .line 93
    const/4 v2, 0x0

    #@39
    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_1

    #@3b
    .line 94
    add-int v7, v0, v2

    #@3d
    aget v6, p1, v7

    #@3f
    .line 95
    .local v6, "outputFormat":I
    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    #@42
    .line 93
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_1

    #@45
    .line 98
    .end local v6    # "outputFormat":I
    :cond_1
    if-lez v4, :cond_3

    #@47
    .line 99
    if-ge v3, v4, :cond_2

    #@49
    .line 100
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@4b
    .line 102
    const-string/jumbo v8, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    #@4e
    .line 101
    const/4 v9, 0x3

    #@4f
    new-array v9, v9, [Ljava/lang/Object;

    #@51
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v10

    #@55
    aput-object v10, v9, v11

    #@57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v10

    #@5b
    aput-object v10, v9, v12

    #@5d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v10

    #@61
    const/4 v11, 0x2

    #@62
    aput-object v10, v9, v11

    #@64
    .line 101
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@67
    move-result-object v8

    #@68
    .line 100
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v7

    #@6c
    .line 106
    :cond_2
    add-int/2addr v0, v4

    #@6d
    .line 107
    sub-int/2addr v3, v4

    #@6e
    .line 110
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@70
    goto :goto_0

    #@71
    .line 113
    .end local v1    # "inputFormat":I
    .end local v2    # "j":I
    .end local v4    # "length":I
    :cond_4
    iput-object p1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@73
    .line 114
    iput v5, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    #@75
    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 236
    if-nez p1, :cond_0

    #@3
    .line 237
    return v2

    #@4
    .line 239
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 240
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 242
    :cond_1
    instance-of v1, p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@a
    if-eqz v1, :cond_2

    #@c
    move-object v0, p1

    #@d
    .line 243
    check-cast v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@f
    .line 245
    .local v0, "other":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    iget-object v1, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@11
    iget-object v2, v0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@13
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 247
    .end local v0    # "other":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    :cond_2
    return v2
.end method

.method public getInputs()[I
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 130
    iget v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mInputCount:I

    #@4
    new-array v2, v6, [I

    #@6
    .line 132
    .local v2, "inputs":[I
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@8
    array-length v4, v6

    #@9
    .line 133
    .local v4, "left":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    const/4 v3, 0x0

    #@b
    .local v3, "j":I
    :goto_0
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@d
    array-length v6, v6

    #@e
    if-ge v1, v6, :cond_3

    #@10
    .line 134
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@12
    aget v0, v6, v1

    #@14
    .line 136
    .local v0, "format":I
    add-int/lit8 v4, v4, -0x1

    #@16
    .line 137
    add-int/lit8 v1, v1, 0x1

    #@18
    .line 139
    if-ge v4, v11, :cond_0

    #@1a
    .line 140
    new-instance v6, Ljava/lang/AssertionError;

    #@1c
    .line 141
    const-string/jumbo v7, "Input %x had no output format length listed"

    #@1f
    new-array v8, v11, [Ljava/lang/Object;

    #@21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v9

    #@25
    aput-object v9, v8, v10

    #@27
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v7

    #@2b
    .line 140
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2e
    throw v6

    #@2f
    .line 144
    :cond_0
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@31
    aget v5, v6, v1

    #@33
    .line 145
    .local v5, "length":I
    add-int/lit8 v4, v4, -0x1

    #@35
    .line 146
    add-int/lit8 v1, v1, 0x1

    #@37
    .line 148
    if-lez v5, :cond_2

    #@39
    .line 149
    if-ge v4, v5, :cond_1

    #@3b
    .line 150
    new-instance v6, Ljava/lang/AssertionError;

    #@3d
    .line 152
    const-string/jumbo v7, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    #@40
    .line 151
    const/4 v8, 0x3

    #@41
    new-array v8, v8, [Ljava/lang/Object;

    #@43
    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v9

    #@47
    aput-object v9, v8, v10

    #@49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v9

    #@4d
    aput-object v9, v8, v11

    #@4f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v9

    #@53
    const/4 v10, 0x2

    #@54
    aput-object v9, v8, v10

    #@56
    .line 151
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    .line 150
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@5d
    throw v6

    #@5e
    .line 156
    :cond_1
    add-int/2addr v1, v5

    #@5f
    .line 157
    sub-int/2addr v4, v5

    #@60
    .line 160
    :cond_2
    aput v0, v2, v3

    #@62
    .line 133
    add-int/lit8 v3, v3, 0x1

    #@64
    goto :goto_0

    #@65
    .line 163
    .end local v0    # "format":I
    .end local v5    # "length":I
    :cond_3
    invoke-static {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    #@68
    move-result-object v6

    #@69
    return-object v6
.end method

.method public getOutputs(I)[I
    .locals 12
    .param p1, "format"    # I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 180
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@4
    array-length v3, v6

    #@5
    .line 181
    .local v3, "left":I
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@8
    array-length v6, v6

    #@9
    if-ge v0, v6, :cond_4

    #@b
    .line 182
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@d
    aget v1, v6, v0

    #@f
    .line 184
    .local v1, "inputFormat":I
    add-int/lit8 v3, v3, -0x1

    #@11
    .line 185
    add-int/lit8 v0, v0, 0x1

    #@13
    .line 187
    if-ge v3, v11, :cond_0

    #@15
    .line 188
    new-instance v6, Ljava/lang/AssertionError;

    #@17
    .line 189
    const-string/jumbo v7, "Input %x had no output format length listed"

    #@1a
    new-array v8, v11, [Ljava/lang/Object;

    #@1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v9

    #@20
    aput-object v9, v8, v10

    #@22
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    .line 188
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@29
    throw v6

    #@2a
    .line 192
    :cond_0
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@2c
    aget v4, v6, v0

    #@2e
    .line 193
    .local v4, "length":I
    add-int/lit8 v3, v3, -0x1

    #@30
    .line 194
    add-int/lit8 v0, v0, 0x1

    #@32
    .line 196
    if-lez v4, :cond_1

    #@34
    .line 197
    if-ge v3, v4, :cond_1

    #@36
    .line 198
    new-instance v6, Ljava/lang/AssertionError;

    #@38
    .line 200
    const-string/jumbo v7, "Input %x had too few output formats listed (actual: %d, expected: %d)"

    #@3b
    .line 199
    const/4 v8, 0x3

    #@3c
    new-array v8, v8, [Ljava/lang/Object;

    #@3e
    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v9

    #@42
    aput-object v9, v8, v10

    #@44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v9

    #@48
    aput-object v9, v8, v11

    #@4a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v9

    #@4e
    const/4 v10, 0x2

    #@4f
    aput-object v9, v8, v10

    #@51
    .line 199
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    .line 198
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@58
    throw v6

    #@59
    .line 205
    :cond_1
    if-ne v1, p1, :cond_3

    #@5b
    .line 206
    new-array v5, v4, [I

    #@5d
    .line 209
    .local v5, "outputs":[I
    const/4 v2, 0x0

    #@5e
    .local v2, "k":I
    :goto_1
    if-ge v2, v4, :cond_2

    #@60
    .line 210
    iget-object v6, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@62
    add-int v7, v0, v2

    #@64
    aget v6, v6, v7

    #@66
    aput v6, v5, v2

    #@68
    .line 209
    add-int/lit8 v2, v2, 0x1

    #@6a
    goto :goto_1

    #@6b
    .line 213
    :cond_2
    invoke-static {v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic([I)[I

    #@6e
    move-result-object v6

    #@6f
    return-object v6

    #@70
    .line 216
    .end local v2    # "k":I
    .end local v5    # "outputs":[I
    :cond_3
    add-int/2addr v0, v4

    #@71
    .line 217
    sub-int/2addr v3, v4

    #@72
    goto :goto_0

    #@73
    .line 221
    .end local v1    # "inputFormat":I
    .end local v4    # "length":I
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@75
    .line 222
    const-string/jumbo v7, "Input format %x was not one in #getInputs"

    #@78
    new-array v8, v11, [Ljava/lang/Object;

    #@7a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v9

    #@7e
    aput-object v9, v8, v10

    #@80
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    .line 221
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@87
    throw v6
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/hardware/camera2/params/ReprocessFormatsMap;->mEntry:[I

    #@2
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
