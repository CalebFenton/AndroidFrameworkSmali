.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field mData:[I

.field mIndices:[I

.field mLength:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mRecycled:Z

.field private final mResources:Landroid/content/res/Resources;

.field mTheme:Landroid/content/res/Resources$Theme;

.field mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    new-instance v0, Landroid/util/TypedValue;

    #@5
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@a
    .line 1160
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@c
    .line 1161
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@e
    iget-object v0, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    #@10
    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@12
    .line 1162
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@14
    iget-object v0, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    #@16
    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    #@18
    .line 1163
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    #@1a
    .line 1164
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    #@1c
    .line 1165
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    #@1e
    .line 1159
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1131
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@3
    .line 1132
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    #@5
    aget v1, v0, v2

    #@7
    .line 1133
    .local v1, "type":I
    if-nez v1, :cond_0

    #@9
    .line 1134
    return v3

    #@a
    .line 1136
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    #@c
    .line 1137
    add-int/lit8 v2, p1, 0x1

    #@e
    aget v2, v0, v2

    #@10
    iput v2, p2, Landroid/util/TypedValue;->data:I

    #@12
    .line 1138
    add-int/lit8 v2, p1, 0x2

    #@14
    aget v2, v0, v2

    #@16
    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    #@18
    .line 1139
    add-int/lit8 v2, p1, 0x3

    #@1a
    aget v2, v0, v2

    #@1c
    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    #@1e
    .line 1140
    add-int/lit8 v2, p1, 0x4

    #@20
    aget v2, v0, v2

    #@22
    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    #@24
    .line 1141
    add-int/lit8 v2, p1, 0x5

    #@26
    aget v2, v0, v2

    #@28
    iput v2, p2, Landroid/util/TypedValue;->density:I

    #@2a
    .line 1142
    const/4 v2, 0x3

    #@2b
    if-ne v1, v2, :cond_1

    #@2d
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    #@30
    move-result-object v2

    #@31
    :goto_0
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@33
    .line 1143
    const/4 v2, 0x1

    #@34
    return v2

    #@35
    .line 1142
    :cond_1
    const/4 v2, 0x0

    #@36
    goto :goto_0
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1147
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@3
    .line 1148
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x2

    #@5
    aget v0, v1, v2

    #@7
    .line 1149
    .local v0, "cookie":I
    if-gez v0, :cond_1

    #@9
    .line 1150
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1151
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@f
    .line 1152
    add-int/lit8 v3, p1, 0x1

    #@11
    aget v3, v1, v3

    #@13
    .line 1151
    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 1154
    :cond_0
    return-object v3

    #@19
    .line 1156
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    #@1b
    add-int/lit8 v3, p1, 0x1

    #@1d
    aget v3, v1, v3

    #@1f
    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    return-object v2
.end method

.method static obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "len"    # I

    #@0
    .prologue
    .line 44
    iget-object v2, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v2}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/res/TypedArray;

    #@8
    .line 45
    .local v0, "attrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    #@a
    .line 46
    iput p1, v0, Landroid/content/res/TypedArray;->mLength:I

    #@c
    .line 47
    const/4 v2, 0x0

    #@d
    iput-boolean v2, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@f
    .line 49
    mul-int/lit8 v1, p1, 0x6

    #@11
    .line 50
    .local v1, "fullLen":I
    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    #@13
    array-length v2, v2

    #@14
    if-lt v2, v1, :cond_0

    #@16
    .line 51
    return-object v0

    #@17
    .line 54
    :cond_0
    new-array v2, v1, [I

    #@19
    iput-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    #@1b
    .line 55
    add-int/lit8 v2, p1, 0x1

    #@1d
    new-array v2, v2, [I

    #@1f
    iput-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    #@21
    .line 56
    return-object v0

    #@22
    .line 59
    .end local v1    # "fullLen":I
    :cond_1
    new-instance v2, Landroid/content/res/TypedArray;

    #@24
    .line 60
    mul-int/lit8 v3, p1, 0x6

    #@26
    new-array v3, v3, [I

    #@28
    .line 61
    add-int/lit8 v4, p1, 0x1

    #@2a
    new-array v4, v4, [I

    #@2c
    .line 59
    invoke-direct {v2, p0, v3, v4, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    #@2f
    return-object v2
.end method


# virtual methods
.method public extractThemeAttrs()[I
    .locals 1

    #@0
    .prologue
    .line 1053
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public extractThemeAttrs([I)[I
    .locals 9
    .param p1, "scrap"    # [I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1061
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v6, :cond_0

    #@5
    .line 1062
    new-instance v6, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v7, "Cannot make calls to a recycled instance!"

    #@a
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v6

    #@e
    .line 1065
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 1067
    .local v2, "attrs":[I
    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 1068
    .local v3, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    #@14
    move-result v0

    #@15
    .line 1069
    .local v0, "N":I
    const/4 v4, 0x0

    #@16
    .end local v2    # "attrs":[I
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_5

    #@18
    .line 1070
    mul-int/lit8 v5, v4, 0x6

    #@1a
    .line 1071
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x0

    #@1c
    aget v6, v3, v6

    #@1e
    const/4 v7, 0x2

    #@1f
    if-eq v6, v7, :cond_2

    #@21
    .line 1069
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1077
    :cond_2
    add-int/lit8 v6, v5, 0x0

    #@26
    aput v8, v3, v6

    #@28
    .line 1079
    add-int/lit8 v6, v5, 0x1

    #@2a
    aget v1, v3, v6

    #@2c
    .line 1080
    .local v1, "attr":I
    if-eqz v1, :cond_1

    #@2e
    .line 1086
    if-nez v2, :cond_3

    #@30
    .line 1087
    if-eqz p1, :cond_4

    #@32
    array-length v6, p1

    #@33
    if-ne v6, v0, :cond_4

    #@35
    .line 1088
    move-object v2, p1

    #@36
    .line 1089
    .local v2, "attrs":[I
    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([II)V

    #@39
    .line 1095
    .end local v2    # "attrs":[I
    :cond_3
    :goto_2
    aput v1, v2, v4

    #@3b
    goto :goto_1

    #@3c
    .line 1091
    :cond_4
    new-array v2, v0, [I

    #@3e
    .restart local v2    # "attrs":[I
    goto :goto_2

    #@3f
    .line 1098
    .end local v1    # "attr":I
    .end local v2    # "attrs":[I
    .end local v5    # "index":I
    :cond_5
    return-object v2
.end method

.method public getBoolean(IZ)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 299
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 300
    new-instance v3, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 303
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 304
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 305
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@14
    aget v1, v0, v4

    #@16
    .line 306
    .local v1, "type":I
    if-nez v1, :cond_1

    #@18
    .line 307
    return p2

    #@19
    .line 308
    :cond_1
    const/16 v4, 0x10

    #@1b
    if-lt v1, v4, :cond_3

    #@1d
    .line 309
    const/16 v4, 0x1f

    #@1f
    if-gt v1, v4, :cond_3

    #@21
    .line 310
    add-int/lit8 v4, p1, 0x1

    #@23
    aget v4, v0, v4

    #@25
    if-eqz v4, :cond_2

    #@27
    const/4 v3, 0x1

    #@28
    :cond_2
    return v3

    #@29
    .line 313
    :cond_3
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2b
    .line 314
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_4

    #@31
    .line 315
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    #@34
    .line 316
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@37
    move-result-object v3

    #@38
    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    #@3b
    move-result v3

    #@3c
    return v3

    #@3d
    .line 320
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    #@3f
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "getBoolean of bad type: 0x"

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v3
.end method

.method public getChangingConfigurations()I
    .locals 8

    #@0
    .prologue
    .line 1111
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    .line 1112
    new-instance v6, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v7, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v6

    #@d
    .line 1115
    :cond_0
    const/4 v1, 0x0

    #@e
    .line 1117
    .local v1, "changingConfig":I
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    #@10
    .line 1118
    .local v2, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    #@13
    move-result v0

    #@14
    .line 1119
    .local v0, "N":I
    const/4 v3, 0x0

    #@15
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    #@17
    .line 1120
    mul-int/lit8 v4, v3, 0x6

    #@19
    .line 1121
    .local v4, "index":I
    add-int/lit8 v6, v4, 0x0

    #@1b
    aget v5, v2, v6

    #@1d
    .line 1122
    .local v5, "type":I
    if-nez v5, :cond_1

    #@1f
    .line 1119
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1125
    :cond_1
    add-int/lit8 v6, v4, 0x4

    #@24
    aget v6, v2, v6

    #@26
    or-int/2addr v1, v6

    #@27
    goto :goto_1

    #@28
    .line 1127
    .end local v4    # "index":I
    .end local v5    # "type":I
    :cond_2
    return v1
.end method

.method public getColor(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 424
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 425
    new-instance v4, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 428
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 429
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 430
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@13
    aget v2, v1, v4

    #@15
    .line 431
    .local v2, "type":I
    if-nez v2, :cond_1

    #@17
    .line 432
    return p2

    #@18
    .line 433
    :cond_1
    const/16 v4, 0x10

    #@1a
    if-lt v2, v4, :cond_2

    #@1c
    .line 434
    const/16 v4, 0x1f

    #@1e
    if-gt v2, v4, :cond_2

    #@20
    .line 435
    add-int/lit8 v4, p1, 0x1

    #@22
    aget v4, v1, v4

    #@24
    return v4

    #@25
    .line 436
    :cond_2
    const/4 v4, 0x3

    #@26
    if-ne v2, v4, :cond_4

    #@28
    .line 437
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2a
    .line 438
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    .line 439
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@32
    .line 440
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    #@34
    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@36
    .line 439
    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@39
    move-result-object v0

    #@3a
    .line 441
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@3d
    move-result v4

    #@3e
    return v4

    #@3f
    .line 443
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    :cond_3
    return p2

    #@40
    .line 444
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_4
    const/4 v4, 0x2

    #@41
    if-ne v2, v4, :cond_5

    #@43
    .line 445
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@45
    .line 446
    .restart local v3    # "value":Landroid/util/TypedValue;
    mul-int/lit8 v4, p1, 0x6

    #@47
    invoke-direct {p0, v4, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@4a
    .line 447
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@4c
    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v6, "Failed to resolve attribute at index "

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    const-string/jumbo v6, ": "

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    .line 447
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v4

    #@6f
    .line 451
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_5
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@71
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v6, "Can\'t convert to color: type=0x"

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    .line 452
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    .line 451
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v5

    #@89
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v4
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 475
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 476
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 479
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@f
    .line 480
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    #@11
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 481
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@19
    const/4 v2, 0x2

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 482
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1e
    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Failed to resolve attribute at index "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, ": "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 482
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@40
    throw v1

    #@41
    .line 485
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@43
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    #@45
    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@47
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@4a
    move-result-object v1

    #@4b
    return-object v1

    #@4c
    .line 487
    :cond_2
    const/4 v1, 0x0

    #@4d
    return-object v1
.end method

.method public getDimension(IF)F
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    #@0
    .prologue
    .line 552
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 553
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 556
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 557
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 558
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v1, v0, v3

    #@15
    .line 559
    .local v1, "type":I
    if-nez v1, :cond_1

    #@17
    .line 560
    return p2

    #@18
    .line 561
    :cond_1
    const/4 v3, 0x5

    #@19
    if-ne v1, v3, :cond_2

    #@1b
    .line 563
    add-int/lit8 v3, p1, 0x1

    #@1d
    aget v3, v0, v3

    #@1f
    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@21
    .line 562
    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    #@24
    move-result v3

    #@25
    return v3

    #@26
    .line 564
    :cond_2
    const/4 v3, 0x2

    #@27
    if-ne v1, v3, :cond_3

    #@29
    .line 565
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2b
    .line 566
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    #@2d
    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@30
    .line 567
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@32
    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "Failed to resolve attribute at index "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    const-string/jumbo v5, ": "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 567
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@54
    throw v3

    #@55
    .line 571
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@57
    new-instance v4, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v5, "Can\'t convert to dimension: type=0x"

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 572
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    .line 571
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@72
    throw v3
.end method

.method public getDimensionPixelOffset(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 599
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 600
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 603
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 604
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 605
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v1, v0, v3

    #@15
    .line 606
    .local v1, "type":I
    if-nez v1, :cond_1

    #@17
    .line 607
    return p2

    #@18
    .line 608
    :cond_1
    const/4 v3, 0x5

    #@19
    if-ne v1, v3, :cond_2

    #@1b
    .line 610
    add-int/lit8 v3, p1, 0x1

    #@1d
    aget v3, v0, v3

    #@1f
    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@21
    .line 609
    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    #@24
    move-result v3

    #@25
    return v3

    #@26
    .line 611
    :cond_2
    const/4 v3, 0x2

    #@27
    if-ne v1, v3, :cond_3

    #@29
    .line 612
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2b
    .line 613
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    #@2d
    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@30
    .line 614
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@32
    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "Failed to resolve attribute at index "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    const-string/jumbo v5, ": "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 614
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@54
    throw v3

    #@55
    .line 618
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@57
    new-instance v4, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v5, "Can\'t convert to dimension: type=0x"

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 619
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    .line 618
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@72
    throw v3
.end method

.method public getDimensionPixelSize(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 647
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 648
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 651
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 652
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 653
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v1, v0, v3

    #@15
    .line 654
    .local v1, "type":I
    if-nez v1, :cond_1

    #@17
    .line 655
    return p2

    #@18
    .line 656
    :cond_1
    const/4 v3, 0x5

    #@19
    if-ne v1, v3, :cond_2

    #@1b
    .line 658
    add-int/lit8 v3, p1, 0x1

    #@1d
    aget v3, v0, v3

    #@1f
    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@21
    .line 657
    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@24
    move-result v3

    #@25
    return v3

    #@26
    .line 659
    :cond_2
    const/4 v3, 0x2

    #@27
    if-ne v1, v3, :cond_3

    #@29
    .line 660
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2b
    .line 661
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    #@2d
    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@30
    .line 662
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@32
    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "Failed to resolve attribute at index "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    const-string/jumbo v5, ": "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 662
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@54
    throw v3

    #@55
    .line 666
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@57
    new-instance v4, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v5, "Can\'t convert to dimension: type=0x"

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 667
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    .line 666
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@72
    throw v3
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 860
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 861
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 864
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@f
    .line 865
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    #@11
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 866
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@19
    const/4 v2, 0x2

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 867
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1e
    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Failed to resolve attribute at index "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, ": "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 867
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@40
    throw v1

    #@41
    .line 870
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@43
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    #@45
    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@47
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@4a
    move-result-object v1

    #@4b
    return-object v1

    #@4c
    .line 872
    :cond_2
    const/4 v1, 0x0

    #@4d
    return-object v1
.end method

.method public getFloat(IF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    #@0
    .prologue
    .line 375
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 376
    new-instance v4, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 379
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 380
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 381
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@13
    aget v2, v0, v4

    #@15
    .line 382
    .local v2, "type":I
    if-nez v2, :cond_1

    #@17
    .line 383
    return p2

    #@18
    .line 384
    :cond_1
    const/4 v4, 0x4

    #@19
    if-ne v2, v4, :cond_2

    #@1b
    .line 385
    add-int/lit8 v4, p1, 0x1

    #@1d
    aget v4, v0, v4

    #@1f
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@22
    move-result v4

    #@23
    return v4

    #@24
    .line 386
    :cond_2
    const/16 v4, 0x10

    #@26
    if-lt v2, v4, :cond_3

    #@28
    .line 387
    const/16 v4, 0x1f

    #@2a
    if-gt v2, v4, :cond_3

    #@2c
    .line 388
    add-int/lit8 v4, p1, 0x1

    #@2e
    aget v4, v0, v4

    #@30
    int-to-float v4, v4

    #@31
    return v4

    #@32
    .line 391
    :cond_3
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@34
    .line 392
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_4

    #@3a
    .line 393
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@3d
    move-result-object v1

    #@3e
    .line 394
    .local v1, "str":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    #@40
    .line 395
    invoke-static {v3}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    #@43
    .line 396
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@4a
    move-result v4

    #@4b
    return v4

    #@4c
    .line 401
    .end local v1    # "str":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    #@4e
    new-instance v5, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v6, "getFloat of bad type: 0x"

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@69
    throw v4
.end method

.method public getFraction(IIIF)F
    .locals 6
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    #@0
    .prologue
    .line 765
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 766
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 769
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 770
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 771
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v1, v0, v3

    #@15
    .line 772
    .local v1, "type":I
    if-nez v1, :cond_1

    #@17
    .line 773
    return p4

    #@18
    .line 774
    :cond_1
    const/4 v3, 0x6

    #@19
    if-ne v1, v3, :cond_2

    #@1b
    .line 776
    add-int/lit8 v3, p1, 0x1

    #@1d
    aget v3, v0, v3

    #@1f
    int-to-float v4, p2

    #@20
    int-to-float v5, p3

    #@21
    .line 775
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    #@24
    move-result v3

    #@25
    return v3

    #@26
    .line 777
    :cond_2
    const/4 v3, 0x2

    #@27
    if-ne v1, v3, :cond_3

    #@29
    .line 778
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2b
    .line 779
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    #@2d
    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@30
    .line 780
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@32
    .line 781
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "Failed to resolve attribute at index "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    const-string/jumbo v5, ": "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 780
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@54
    throw v3

    #@55
    .line 784
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@57
    new-instance v4, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v5, "Can\'t convert to fraction: type=0x"

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 785
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    .line 784
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@72
    throw v3
.end method

.method public getIndex(I)I
    .locals 2
    .param p1, "at"    # I

    #@0
    .prologue
    .line 114
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 118
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    #@f
    add-int/lit8 v1, p1, 0x1

    #@11
    aget v0, v0, v1

    #@13
    return v0
.end method

.method public getIndexCount()I
    .locals 2

    #@0
    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 100
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    #@f
    const/4 v1, 0x0

    #@10
    aget v0, v0, v1

    #@12
    return v0
.end method

.method public getInt(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 338
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 339
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 342
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 343
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 344
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v1, v0, v3

    #@15
    .line 345
    .local v1, "type":I
    if-nez v1, :cond_1

    #@17
    .line 346
    return p2

    #@18
    .line 347
    :cond_1
    const/16 v3, 0x10

    #@1a
    if-lt v1, v3, :cond_2

    #@1c
    .line 348
    const/16 v3, 0x1f

    #@1e
    if-gt v1, v3, :cond_2

    #@20
    .line 349
    add-int/lit8 v3, p1, 0x1

    #@22
    aget v3, v0, v3

    #@24
    return v3

    #@25
    .line 352
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@27
    .line 353
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_3

    #@2d
    .line 354
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    #@30
    .line 355
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@33
    move-result-object v3

    #@34
    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    #@37
    move-result v3

    #@38
    return v3

    #@39
    .line 359
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    #@3b
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "getInt of bad type: 0x"

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@56
    throw v3
.end method

.method public getInteger(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 506
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 507
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 510
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 511
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 512
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v1, v0, v3

    #@15
    .line 513
    .local v1, "type":I
    if-nez v1, :cond_1

    #@17
    .line 514
    return p2

    #@18
    .line 515
    :cond_1
    const/16 v3, 0x10

    #@1a
    if-lt v1, v3, :cond_2

    #@1c
    .line 516
    const/16 v3, 0x1f

    #@1e
    if-gt v1, v3, :cond_2

    #@20
    .line 517
    add-int/lit8 v3, p1, 0x1

    #@22
    aget v3, v0, v3

    #@24
    return v3

    #@25
    .line 518
    :cond_2
    const/4 v3, 0x2

    #@26
    if-ne v1, v3, :cond_3

    #@28
    .line 519
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2a
    .line 520
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    #@2c
    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2f
    .line 521
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@31
    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v5, "Failed to resolve attribute at index "

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    const-string/jumbo v5, ": "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .line 521
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@53
    throw v3

    #@54
    .line 525
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@56
    new-instance v4, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v5, "Can\'t convert to integer: type=0x"

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    .line 526
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    .line 525
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@71
    throw v3
.end method

.method public getLayoutDimension(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 728
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 729
    new-instance v2, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 732
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 733
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 734
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    #@13
    aget v1, v0, v2

    #@15
    .line 735
    .local v1, "type":I
    const/16 v2, 0x10

    #@17
    if-lt v1, v2, :cond_1

    #@19
    .line 736
    const/16 v2, 0x1f

    #@1b
    if-gt v1, v2, :cond_1

    #@1d
    .line 737
    add-int/lit8 v2, p1, 0x1

    #@1f
    aget v2, v0, v2

    #@21
    return v2

    #@22
    .line 738
    :cond_1
    const/4 v2, 0x5

    #@23
    if-ne v1, v2, :cond_2

    #@25
    .line 740
    add-int/lit8 v2, p1, 0x1

    #@27
    aget v2, v0, v2

    #@29
    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@2b
    .line 739
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@2e
    move-result v2

    #@2f
    return v2

    #@30
    .line 743
    :cond_2
    return p2
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 689
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 690
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 693
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 694
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 695
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v1, v0, v3

    #@15
    .line 696
    .local v1, "type":I
    const/16 v3, 0x10

    #@17
    if-lt v1, v3, :cond_1

    #@19
    .line 697
    const/16 v3, 0x1f

    #@1b
    if-gt v1, v3, :cond_1

    #@1d
    .line 698
    add-int/lit8 v3, p1, 0x1

    #@1f
    aget v3, v0, v3

    #@21
    return v3

    #@22
    .line 699
    :cond_1
    const/4 v3, 0x5

    #@23
    if-ne v1, v3, :cond_2

    #@25
    .line 701
    add-int/lit8 v3, p1, 0x1

    #@27
    aget v3, v0, v3

    #@29
    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@2b
    .line 700
    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@2e
    move-result v3

    #@2f
    return v3

    #@30
    .line 702
    :cond_2
    const/4 v3, 0x2

    #@31
    if-ne v1, v3, :cond_3

    #@33
    .line 703
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@35
    .line 704
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    #@37
    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@3a
    .line 705
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@3c
    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Failed to resolve attribute at index "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    const-string/jumbo v5, ": "

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    .line 705
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v3

    #@5f
    .line 709
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    #@61
    new-instance v4, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    .line 710
    const-string/jumbo v5, ": You must supply a "

    #@71
    .line 709
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    .line 710
    const-string/jumbo v5, " attribute."

    #@7c
    .line 709
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@87
    throw v3
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I
    .param p2, "allowedChangingConfigs"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 255
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 256
    new-instance v4, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 259
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 260
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 261
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    #@14
    aget v2, v1, v5

    #@16
    .line 262
    .local v2, "type":I
    add-int/lit8 v5, p1, 0x4

    #@18
    aget v5, v1, v5

    #@1a
    not-int v6, p2

    #@1b
    and-int/2addr v5, v6

    #@1c
    if-eqz v5, :cond_1

    #@1e
    .line 263
    return-object v4

    #@1f
    .line 265
    :cond_1
    if-nez v2, :cond_2

    #@21
    .line 266
    return-object v4

    #@22
    .line 267
    :cond_2
    const/4 v5, 0x3

    #@23
    if-ne v2, v5, :cond_3

    #@25
    .line 268
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    #@28
    move-result-object v4

    #@29
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    return-object v4

    #@2e
    .line 271
    :cond_3
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@30
    .line 272
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_5

    #@36
    .line 273
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@39
    move-result-object v0

    #@3a
    .line 274
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    #@3c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    :cond_4
    return-object v4

    #@41
    .line 278
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    #@43
    new-instance v5, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v6, "getNonConfigurationString of bad type: 0x"

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    .line 278
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v4
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    .line 224
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 225
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 228
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 229
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 230
    .local v1, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v2, v1, v3

    #@15
    .line 231
    .local v2, "type":I
    const/4 v3, 0x3

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 232
    add-int/lit8 v3, p1, 0x2

    #@1a
    aget v0, v1, v3

    #@1c
    .line 233
    .local v0, "cookie":I
    if-gez v0, :cond_1

    #@1e
    .line 234
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@20
    .line 235
    add-int/lit8 v4, p1, 0x1

    #@22
    aget v4, v1, v4

    #@24
    .line 234
    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    #@27
    move-result-object v3

    #@28
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 238
    .end local v0    # "cookie":I
    :cond_1
    const/4 v3, 0x0

    #@2e
    return-object v3
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1012
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1013
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1016
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@f
    if-eqz v0, :cond_1

    #@11
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@13
    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    :goto_0
    return-object v0

    #@18
    :cond_1
    const-string/jumbo v0, "<internal>"

    #@1b
    goto :goto_0
.end method

.method public getResourceId(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 805
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 806
    new-instance v2, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 809
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 810
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 811
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    #@13
    aget v2, v0, v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 812
    add-int/lit8 v2, p1, 0x3

    #@19
    aget v1, v0, v2

    #@1b
    .line 813
    .local v1, "resid":I
    if-eqz v1, :cond_1

    #@1d
    .line 814
    return v1

    #@1e
    .line 817
    .end local v1    # "resid":I
    :cond_1
    return p2
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    #@0
    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 131
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@f
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 185
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 186
    new-instance v4, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 189
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 190
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 191
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    #@14
    aget v2, v1, v5

    #@16
    .line 192
    .local v2, "type":I
    if-nez v2, :cond_1

    #@18
    .line 193
    return-object v4

    #@19
    .line 194
    :cond_1
    const/4 v5, 0x3

    #@1a
    if-ne v2, v5, :cond_2

    #@1c
    .line 195
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    #@1f
    move-result-object v4

    #@20
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    return-object v4

    #@25
    .line 198
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@27
    .line 199
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_4

    #@2d
    .line 200
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@30
    move-result-object v0

    #@31
    .line 201
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    #@33
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    :cond_3
    return-object v4

    #@38
    .line 205
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    #@3a
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v6, "getString of bad type: 0x"

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@55
    throw v4
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    .line 148
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 149
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 152
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 153
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 154
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v1, v0, v3

    #@15
    .line 155
    .local v1, "type":I
    if-nez v1, :cond_1

    #@17
    .line 156
    const/4 v3, 0x0

    #@18
    return-object v3

    #@19
    .line 157
    :cond_1
    const/4 v3, 0x3

    #@1a
    if-ne v1, v3, :cond_2

    #@1c
    .line 158
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    #@1f
    move-result-object v3

    #@20
    return-object v3

    #@21
    .line 161
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@23
    .line 162
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_3

    #@29
    .line 163
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@2c
    move-result-object v3

    #@2d
    return-object v3

    #@2e
    .line 167
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    #@30
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v5, "getText of bad type: 0x"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v3
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 891
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 892
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 895
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@f
    .line 896
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    #@11
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 897
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@19
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    #@1b
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 899
    :cond_1
    const/4 v1, 0x0

    #@21
    return-object v1
.end method

.method public getThemeAttributeId(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 833
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 834
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 837
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 838
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 839
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    #@13
    aget v1, v0, v1

    #@15
    const/4 v2, 0x2

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 840
    add-int/lit8 v1, p1, 0x1

    #@1a
    aget v1, v0, v1

    #@1c
    return v1

    #@1d
    .line 842
    :cond_1
    return p2
.end method

.method public getType(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 929
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 930
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 933
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 934
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    add-int/lit8 v1, p1, 0x0

    #@13
    aget v0, v0, v1

    #@15
    return v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    #@0
    .prologue
    .line 913
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 914
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 917
    :cond_0
    mul-int/lit8 v0, p1, 0x6

    #@f
    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public hasValue(I)Z
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 949
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 950
    new-instance v2, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 953
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 954
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 955
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@14
    aget v1, v0, v3

    #@16
    .line 956
    .local v1, "type":I
    if-eqz v1, :cond_1

    #@18
    const/4 v2, 0x1

    #@19
    :cond_1
    return v2
.end method

.method public hasValueOrEmpty(I)Z
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 970
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 971
    new-instance v2, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 974
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@11
    .line 975
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@13
    .line 976
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@15
    aget v1, v0, v4

    #@17
    .line 977
    .local v1, "type":I
    if-nez v1, :cond_1

    #@19
    .line 978
    add-int/lit8 v4, p1, 0x1

    #@1b
    aget v4, v0, v4

    #@1d
    if-ne v4, v2, :cond_2

    #@1f
    .line 977
    :cond_1
    :goto_0
    return v2

    #@20
    :cond_2
    move v2, v3

    #@21
    .line 978
    goto :goto_0
.end method

.method public length()I
    .locals 2

    #@0
    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 87
    :cond_0
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    #@f
    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 994
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 995
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 998
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@f
    .line 999
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    #@11
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1000
    return-object v0

    #@18
    .line 1002
    :cond_1
    const/4 v1, 0x0

    #@19
    return-object v1
.end method

.method public recycle()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1026
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1027
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " recycled twice!"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 1030
    :cond_0
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@26
    .line 1033
    iput-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@28
    .line 1034
    iput-object v1, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@2a
    .line 1036
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@2c
    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    #@2e
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@31
    .line 1025
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1170
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
