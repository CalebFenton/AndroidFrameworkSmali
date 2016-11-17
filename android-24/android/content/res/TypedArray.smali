.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# instance fields
.field private mAssets:Landroid/content/res/AssetManager;

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
    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    new-instance v0, Landroid/util/TypedValue;

    #@5
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@a
    .line 1221
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@c
    .line 1222
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@e
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@14
    .line 1223
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    #@1c
    .line 1224
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    #@1e
    .line 1225
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    #@20
    .line 1226
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    #@22
    .line 1220
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
    .line 1191
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@3
    .line 1192
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    #@5
    aget v1, v0, v2

    #@7
    .line 1193
    .local v1, "type":I
    if-nez v1, :cond_0

    #@9
    .line 1194
    return v3

    #@a
    .line 1196
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    #@c
    .line 1197
    add-int/lit8 v2, p1, 0x1

    #@e
    aget v2, v0, v2

    #@10
    iput v2, p2, Landroid/util/TypedValue;->data:I

    #@12
    .line 1198
    add-int/lit8 v2, p1, 0x2

    #@14
    aget v2, v0, v2

    #@16
    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    #@18
    .line 1199
    add-int/lit8 v2, p1, 0x3

    #@1a
    aget v2, v0, v2

    #@1c
    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    #@1e
    .line 1201
    add-int/lit8 v2, p1, 0x4

    #@20
    aget v2, v0, v2

    #@22
    .line 1200
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    #@25
    move-result v2

    #@26
    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    #@28
    .line 1202
    add-int/lit8 v2, p1, 0x5

    #@2a
    aget v2, v0, v2

    #@2c
    iput v2, p2, Landroid/util/TypedValue;->density:I

    #@2e
    .line 1203
    const/4 v2, 0x3

    #@2f
    if-ne v1, v2, :cond_1

    #@31
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    #@34
    move-result-object v2

    #@35
    :goto_0
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@37
    .line 1204
    const/4 v2, 0x1

    #@38
    return v2

    #@39
    .line 1203
    :cond_1
    const/4 v2, 0x0

    #@3a
    goto :goto_0
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1208
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@3
    .line 1209
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x2

    #@5
    aget v0, v1, v2

    #@7
    .line 1210
    .local v0, "cookie":I
    if-gez v0, :cond_1

    #@9
    .line 1211
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1212
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@f
    .line 1213
    add-int/lit8 v3, p1, 0x1

    #@11
    aget v3, v1, v3

    #@13
    .line 1212
    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 1215
    :cond_0
    return-object v3

    #@19
    .line 1217
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
    .line 47
    iget-object v2, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v2}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/res/TypedArray;

    #@8
    .line 48
    .local v0, "attrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    #@a
    .line 49
    iput p1, v0, Landroid/content/res/TypedArray;->mLength:I

    #@c
    .line 50
    const/4 v2, 0x0

    #@d
    iput-boolean v2, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@f
    .line 54
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@12
    move-result-object v2

    #@13
    iput-object v2, v0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    #@15
    .line 56
    mul-int/lit8 v1, p1, 0x6

    #@17
    .line 57
    .local v1, "fullLen":I
    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    #@19
    array-length v2, v2

    #@1a
    if-lt v2, v1, :cond_0

    #@1c
    .line 58
    return-object v0

    #@1d
    .line 61
    :cond_0
    new-array v2, v1, [I

    #@1f
    iput-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    #@21
    .line 62
    add-int/lit8 v2, p1, 0x1

    #@23
    new-array v2, v2, [I

    #@25
    iput-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    #@27
    .line 63
    return-object v0

    #@28
    .line 66
    .end local v1    # "fullLen":I
    :cond_1
    new-instance v2, Landroid/content/res/TypedArray;

    #@2a
    .line 67
    mul-int/lit8 v3, p1, 0x6

    #@2c
    new-array v3, v3, [I

    #@2e
    .line 68
    add-int/lit8 v4, p1, 0x1

    #@30
    new-array v4, v4, [I

    #@32
    .line 66
    invoke-direct {v2, p0, v3, v4, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    #@35
    return-object v2
.end method


# virtual methods
.method public extractThemeAttrs()[I
    .locals 1

    #@0
    .prologue
    .line 1112
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
    .line 1120
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v6, :cond_0

    #@5
    .line 1121
    new-instance v6, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v7, "Cannot make calls to a recycled instance!"

    #@a
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v6

    #@e
    .line 1124
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 1126
    .local v2, "attrs":[I
    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 1127
    .local v3, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    #@14
    move-result v0

    #@15
    .line 1128
    .local v0, "N":I
    const/4 v4, 0x0

    #@16
    .end local v2    # "attrs":[I
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_5

    #@18
    .line 1129
    mul-int/lit8 v5, v4, 0x6

    #@1a
    .line 1130
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x0

    #@1c
    aget v6, v3, v6

    #@1e
    const/4 v7, 0x2

    #@1f
    if-eq v6, v7, :cond_2

    #@21
    .line 1128
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1136
    :cond_2
    add-int/lit8 v6, v5, 0x0

    #@26
    aput v8, v3, v6

    #@28
    .line 1138
    add-int/lit8 v6, v5, 0x1

    #@2a
    aget v1, v3, v6

    #@2c
    .line 1139
    .local v1, "attr":I
    if-eqz v1, :cond_1

    #@2e
    .line 1145
    if-nez v2, :cond_3

    #@30
    .line 1146
    if-eqz p1, :cond_4

    #@32
    array-length v6, p1

    #@33
    if-ne v6, v0, :cond_4

    #@35
    .line 1147
    move-object v2, p1

    #@36
    .line 1148
    .local v2, "attrs":[I
    invoke-static {p1, v8}, Ljava/util/Arrays;->fill([II)V

    #@39
    .line 1154
    .end local v2    # "attrs":[I
    :cond_3
    :goto_2
    aput v1, v2, v4

    #@3b
    goto :goto_1

    #@3c
    .line 1150
    :cond_4
    new-array v2, v0, [I

    #@3e
    .restart local v2    # "attrs":[I
    goto :goto_2

    #@3f
    .line 1157
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
    .line 309
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 310
    new-instance v3, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 313
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 314
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 315
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@14
    aget v1, v0, v4

    #@16
    .line 316
    .local v1, "type":I
    if-nez v1, :cond_1

    #@18
    .line 317
    return p2

    #@19
    .line 318
    :cond_1
    const/16 v4, 0x10

    #@1b
    if-lt v1, v4, :cond_3

    #@1d
    .line 319
    const/16 v4, 0x1f

    #@1f
    if-gt v1, v4, :cond_3

    #@21
    .line 320
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
    .line 323
    :cond_3
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2b
    .line 324
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_4

    #@31
    .line 325
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    #@34
    .line 326
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
    .line 330
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
    .line 1170
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    .line 1171
    new-instance v6, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v7, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v6

    #@d
    .line 1174
    :cond_0
    const/4 v1, 0x0

    #@e
    .line 1176
    .local v1, "changingConfig":I
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    #@10
    .line 1177
    .local v2, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    #@13
    move-result v0

    #@14
    .line 1178
    .local v0, "N":I
    const/4 v3, 0x0

    #@15
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    #@17
    .line 1179
    mul-int/lit8 v4, v3, 0x6

    #@19
    .line 1180
    .local v4, "index":I
    add-int/lit8 v6, v4, 0x0

    #@1b
    aget v5, v2, v6

    #@1d
    .line 1181
    .local v5, "type":I
    if-nez v5, :cond_1

    #@1f
    .line 1178
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1185
    :cond_1
    add-int/lit8 v6, v4, 0x4

    #@24
    aget v6, v2, v6

    #@26
    .line 1184
    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    #@29
    move-result v6

    #@2a
    or-int/2addr v1, v6

    #@2b
    goto :goto_1

    #@2c
    .line 1187
    .end local v4    # "index":I
    .end local v5    # "type":I
    :cond_2
    return v1
.end method

.method public getColor(II)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 434
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 435
    new-instance v5, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v6, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v5

    #@d
    .line 438
    :cond_0
    move v0, p1

    #@e
    .line 439
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 441
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 442
    .local v2, "data":[I
    add-int/lit8 v5, p1, 0x0

    #@14
    aget v3, v2, v5

    #@16
    .line 443
    .local v3, "type":I
    if-nez v3, :cond_1

    #@18
    .line 444
    return p2

    #@19
    .line 445
    :cond_1
    const/16 v5, 0x10

    #@1b
    if-lt v3, v5, :cond_2

    #@1d
    .line 446
    const/16 v5, 0x1f

    #@1f
    if-gt v3, v5, :cond_2

    #@21
    .line 447
    add-int/lit8 v5, p1, 0x1

    #@23
    aget v5, v2, v5

    #@25
    return v5

    #@26
    .line 448
    :cond_2
    const/4 v5, 0x3

    #@27
    if-ne v3, v5, :cond_4

    #@29
    .line 449
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2b
    .line 450
    .local v4, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_3

    #@31
    .line 451
    iget-object v5, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@33
    .line 452
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    #@35
    iget-object v7, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@37
    .line 451
    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@3a
    move-result-object v1

    #@3b
    .line 453
    .local v1, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@3e
    move-result v5

    #@3f
    return v5

    #@40
    .line 455
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    :cond_3
    return p2

    #@41
    .line 456
    .end local v4    # "value":Landroid/util/TypedValue;
    :cond_4
    const/4 v5, 0x2

    #@42
    if-ne v3, v5, :cond_5

    #@44
    .line 457
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@46
    .line 458
    .restart local v4    # "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@49
    .line 459
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@4b
    .line 460
    new-instance v6, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v7, "Failed to resolve attribute at index "

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    const-string/jumbo v7, ": "

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    .line 459
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v5

    #@6e
    .line 463
    .end local v4    # "value":Landroid/util/TypedValue;
    :cond_5
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@70
    new-instance v6, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v7, "Can\'t convert value at index "

    #@78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    .line 464
    const-string/jumbo v7, " to color: type=0x"

    #@83
    .line 463
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v6

    #@87
    .line 464
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8a
    move-result-object v7

    #@8b
    .line 463
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@96
    throw v5
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 521
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 522
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 525
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@f
    .line 526
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    #@11
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 527
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@19
    const/4 v2, 0x2

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 528
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1e
    .line 529
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
    .line 528
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@40
    throw v1

    #@41
    .line 531
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
    .line 533
    :cond_2
    const/4 v1, 0x0

    #@4d
    return-object v1
.end method

.method public getComplexColor(I)Landroid/content/res/ComplexColor;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 486
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 487
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 490
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@f
    .line 491
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    #@11
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 492
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@19
    const/4 v2, 0x2

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 493
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1e
    .line 494
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
    .line 493
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@40
    throw v1

    #@41
    .line 496
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@43
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    #@45
    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@47
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    #@4a
    move-result-object v1

    #@4b
    return-object v1

    #@4c
    .line 498
    :cond_2
    const/4 v1, 0x0

    #@4d
    return-object v1
.end method

.method public getDimension(IF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    #@0
    .prologue
    .line 600
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 601
    new-instance v4, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 604
    :cond_0
    move v0, p1

    #@e
    .line 605
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 607
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 608
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@14
    aget v2, v1, v4

    #@16
    .line 609
    .local v2, "type":I
    if-nez v2, :cond_1

    #@18
    .line 610
    return p2

    #@19
    .line 611
    :cond_1
    const/4 v4, 0x5

    #@1a
    if-ne v2, v4, :cond_2

    #@1c
    .line 613
    add-int/lit8 v4, p1, 0x1

    #@1e
    aget v4, v1, v4

    #@20
    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@22
    .line 612
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    #@25
    move-result v4

    #@26
    return v4

    #@27
    .line 614
    :cond_2
    const/4 v4, 0x2

    #@28
    if-ne v2, v4, :cond_3

    #@2a
    .line 615
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2c
    .line 616
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2f
    .line 617
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@31
    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "Failed to resolve attribute at index "

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    const-string/jumbo v6, ": "

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 617
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4

    #@54
    .line 621
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@56
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v6, "Can\'t convert value at index "

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    .line 622
    const-string/jumbo v6, " to dimension: type=0x"

    #@69
    .line 621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 622
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    .line 621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v4
.end method

.method public getDimensionPixelOffset(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 649
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 650
    new-instance v4, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 653
    :cond_0
    move v0, p1

    #@e
    .line 654
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 656
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 657
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@14
    aget v2, v1, v4

    #@16
    .line 658
    .local v2, "type":I
    if-nez v2, :cond_1

    #@18
    .line 659
    return p2

    #@19
    .line 660
    :cond_1
    const/4 v4, 0x5

    #@1a
    if-ne v2, v4, :cond_2

    #@1c
    .line 662
    add-int/lit8 v4, p1, 0x1

    #@1e
    aget v4, v1, v4

    #@20
    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@22
    .line 661
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    #@25
    move-result v4

    #@26
    return v4

    #@27
    .line 663
    :cond_2
    const/4 v4, 0x2

    #@28
    if-ne v2, v4, :cond_3

    #@2a
    .line 664
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2c
    .line 665
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2f
    .line 666
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@31
    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "Failed to resolve attribute at index "

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    const-string/jumbo v6, ": "

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 666
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4

    #@54
    .line 670
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@56
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v6, "Can\'t convert value at index "

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    .line 671
    const-string/jumbo v6, " to dimension: type=0x"

    #@69
    .line 670
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 671
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    .line 670
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v4
.end method

.method public getDimensionPixelSize(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 699
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 700
    new-instance v4, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 703
    :cond_0
    move v0, p1

    #@e
    .line 704
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 706
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 707
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@14
    aget v2, v1, v4

    #@16
    .line 708
    .local v2, "type":I
    if-nez v2, :cond_1

    #@18
    .line 709
    return p2

    #@19
    .line 710
    :cond_1
    const/4 v4, 0x5

    #@1a
    if-ne v2, v4, :cond_2

    #@1c
    .line 712
    add-int/lit8 v4, p1, 0x1

    #@1e
    aget v4, v1, v4

    #@20
    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@22
    .line 711
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@25
    move-result v4

    #@26
    return v4

    #@27
    .line 713
    :cond_2
    const/4 v4, 0x2

    #@28
    if-ne v2, v4, :cond_3

    #@2a
    .line 714
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2c
    .line 715
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2f
    .line 716
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@31
    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "Failed to resolve attribute at index "

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    const-string/jumbo v6, ": "

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 716
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4

    #@54
    .line 720
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@56
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v6, "Can\'t convert value at index "

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    .line 721
    const-string/jumbo v6, " to dimension: type=0x"

    #@69
    .line 720
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 721
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    .line 720
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v4
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 918
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 919
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 922
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@f
    .line 923
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    #@11
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 924
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@19
    const/4 v2, 0x2

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 925
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1e
    .line 926
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
    .line 925
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@40
    throw v1

    #@41
    .line 928
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
    .line 930
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
    .line 385
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 386
    new-instance v4, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 389
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 390
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 391
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@13
    aget v2, v0, v4

    #@15
    .line 392
    .local v2, "type":I
    if-nez v2, :cond_1

    #@17
    .line 393
    return p2

    #@18
    .line 394
    :cond_1
    const/4 v4, 0x4

    #@19
    if-ne v2, v4, :cond_2

    #@1b
    .line 395
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
    .line 396
    :cond_2
    const/16 v4, 0x10

    #@26
    if-lt v2, v4, :cond_3

    #@28
    .line 397
    const/16 v4, 0x1f

    #@2a
    if-gt v2, v4, :cond_3

    #@2c
    .line 398
    add-int/lit8 v4, p1, 0x1

    #@2e
    aget v4, v0, v4

    #@30
    int-to-float v4, v4

    #@31
    return v4

    #@32
    .line 401
    :cond_3
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@34
    .line 402
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_4

    #@3a
    .line 403
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@3d
    move-result-object v1

    #@3e
    .line 404
    .local v1, "str":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    #@40
    .line 405
    invoke-static {v3}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    #@43
    .line 406
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
    .line 411
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
    .locals 7
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    #@0
    .prologue
    .line 821
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 822
    new-instance v4, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 825
    :cond_0
    move v0, p1

    #@e
    .line 826
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 828
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 829
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@14
    aget v2, v1, v4

    #@16
    .line 830
    .local v2, "type":I
    if-nez v2, :cond_1

    #@18
    .line 831
    return p4

    #@19
    .line 832
    :cond_1
    const/4 v4, 0x6

    #@1a
    if-ne v2, v4, :cond_2

    #@1c
    .line 834
    add-int/lit8 v4, p1, 0x1

    #@1e
    aget v4, v1, v4

    #@20
    int-to-float v5, p2

    #@21
    int-to-float v6, p3

    #@22
    .line 833
    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    #@25
    move-result v4

    #@26
    return v4

    #@27
    .line 835
    :cond_2
    const/4 v4, 0x2

    #@28
    if-ne v2, v4, :cond_3

    #@2a
    .line 836
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2c
    .line 837
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2f
    .line 838
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@31
    .line 839
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "Failed to resolve attribute at index "

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    const-string/jumbo v6, ": "

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 838
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4

    #@54
    .line 842
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@56
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v6, "Can\'t convert value at index "

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    .line 843
    const-string/jumbo v6, " to fraction: type=0x"

    #@69
    .line 842
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 843
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    .line 842
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v4
.end method

.method public getIndex(I)I
    .locals 2
    .param p1, "at"    # I

    #@0
    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 125
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
    .line 103
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 107
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
    .line 348
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 349
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 352
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 353
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 354
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v1, v0, v3

    #@15
    .line 355
    .local v1, "type":I
    if-nez v1, :cond_1

    #@17
    .line 356
    return p2

    #@18
    .line 357
    :cond_1
    const/16 v3, 0x10

    #@1a
    if-lt v1, v3, :cond_2

    #@1c
    .line 358
    const/16 v3, 0x1f

    #@1e
    if-gt v1, v3, :cond_2

    #@20
    .line 359
    add-int/lit8 v3, p1, 0x1

    #@22
    aget v3, v0, v3

    #@24
    return v3

    #@25
    .line 362
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@27
    .line 363
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_3

    #@2d
    .line 364
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    #@30
    .line 365
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
    .line 369
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
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 552
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 553
    new-instance v4, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 556
    :cond_0
    move v0, p1

    #@e
    .line 557
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 559
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 560
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@14
    aget v2, v1, v4

    #@16
    .line 561
    .local v2, "type":I
    if-nez v2, :cond_1

    #@18
    .line 562
    return p2

    #@19
    .line 563
    :cond_1
    const/16 v4, 0x10

    #@1b
    if-lt v2, v4, :cond_2

    #@1d
    .line 564
    const/16 v4, 0x1f

    #@1f
    if-gt v2, v4, :cond_2

    #@21
    .line 565
    add-int/lit8 v4, p1, 0x1

    #@23
    aget v4, v1, v4

    #@25
    return v4

    #@26
    .line 566
    :cond_2
    const/4 v4, 0x2

    #@27
    if-ne v2, v4, :cond_3

    #@29
    .line 567
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@2b
    .line 568
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2e
    .line 569
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@30
    .line 570
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "Failed to resolve attribute at index "

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    const-string/jumbo v6, ": "

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    .line 569
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@52
    throw v4

    #@53
    .line 573
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@55
    new-instance v5, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v6, "Can\'t convert value at index "

    #@5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    .line 574
    const-string/jumbo v6, " to integer: type=0x"

    #@68
    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    .line 574
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v4
.end method

.method public getLayoutDimension(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 784
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 785
    new-instance v2, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 788
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 789
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 790
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    #@13
    aget v1, v0, v2

    #@15
    .line 791
    .local v1, "type":I
    const/16 v2, 0x10

    #@17
    if-lt v1, v2, :cond_1

    #@19
    .line 792
    const/16 v2, 0x1f

    #@1b
    if-gt v1, v2, :cond_1

    #@1d
    .line 793
    add-int/lit8 v2, p1, 0x1

    #@1f
    aget v2, v0, v2

    #@21
    return v2

    #@22
    .line 794
    :cond_1
    const/4 v2, 0x5

    #@23
    if-ne v1, v2, :cond_2

    #@25
    .line 796
    add-int/lit8 v2, p1, 0x1

    #@27
    aget v2, v0, v2

    #@29
    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@2b
    .line 795
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@2e
    move-result v2

    #@2f
    return v2

    #@30
    .line 799
    :cond_2
    return p2
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 743
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 744
    new-instance v4, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 747
    :cond_0
    move v0, p1

    #@e
    .line 748
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 750
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 751
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@14
    aget v2, v1, v4

    #@16
    .line 752
    .local v2, "type":I
    const/16 v4, 0x10

    #@18
    if-lt v2, v4, :cond_1

    #@1a
    .line 753
    const/16 v4, 0x1f

    #@1c
    if-gt v2, v4, :cond_1

    #@1e
    .line 754
    add-int/lit8 v4, p1, 0x1

    #@20
    aget v4, v1, v4

    #@22
    return v4

    #@23
    .line 755
    :cond_1
    const/4 v4, 0x5

    #@24
    if-ne v2, v4, :cond_2

    #@26
    .line 757
    add-int/lit8 v4, p1, 0x1

    #@28
    aget v4, v1, v4

    #@2a
    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    #@2c
    .line 756
    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@2f
    move-result v4

    #@30
    return v4

    #@31
    .line 758
    :cond_2
    const/4 v4, 0x2

    #@32
    if-ne v2, v4, :cond_3

    #@34
    .line 759
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@36
    .line 760
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@39
    .line 761
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@3b
    .line 762
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v6, "Failed to resolve attribute at index "

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    const-string/jumbo v6, ": "

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    .line 761
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v4

    #@5e
    .line 765
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@60
    new-instance v5, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 766
    const-string/jumbo v6, ": You must supply a "

    #@70
    .line 765
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    .line 766
    const-string/jumbo v6, " attribute."

    #@7b
    .line 765
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v5

    #@83
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@86
    throw v4
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # I
    .param p2, "allowedChangingConfigs"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 263
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v6, :cond_0

    #@5
    .line 264
    new-instance v5, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v6, "Cannot make calls to a recycled instance!"

    #@a
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5

    #@e
    .line 267
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 268
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 269
    .local v2, "data":[I
    add-int/lit8 v6, p1, 0x0

    #@14
    aget v3, v2, v6

    #@16
    .line 271
    .local v3, "type":I
    add-int/lit8 v6, p1, 0x4

    #@18
    aget v6, v2, v6

    #@1a
    .line 270
    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    #@1d
    move-result v0

    #@1e
    .line 272
    .local v0, "changingConfigs":I
    not-int v6, p2

    #@1f
    and-int/2addr v6, v0

    #@20
    if-eqz v6, :cond_1

    #@22
    .line 273
    return-object v5

    #@23
    .line 275
    :cond_1
    if-nez v3, :cond_2

    #@25
    .line 276
    return-object v5

    #@26
    .line 277
    :cond_2
    const/4 v6, 0x3

    #@27
    if-ne v3, v6, :cond_3

    #@29
    .line 278
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    #@2c
    move-result-object v5

    #@2d
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    return-object v5

    #@32
    .line 281
    :cond_3
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@34
    .line 282
    .local v4, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_5

    #@3a
    .line 283
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@3d
    move-result-object v1

    #@3e
    .line 284
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    #@40
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    :cond_4
    return-object v5

    #@45
    .line 288
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    #@47
    new-instance v6, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v7, "getNonConfigurationString of bad type: 0x"

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    .line 289
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    .line 288
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@62
    throw v5
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    .line 231
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 232
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 235
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 236
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 237
    .local v1, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v2, v1, v3

    #@15
    .line 238
    .local v2, "type":I
    const/4 v3, 0x3

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 239
    add-int/lit8 v3, p1, 0x2

    #@1a
    aget v0, v1, v3

    #@1c
    .line 240
    .local v0, "cookie":I
    if-gez v0, :cond_1

    #@1e
    .line 241
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@20
    .line 242
    add-int/lit8 v4, p1, 0x1

    #@22
    aget v4, v1, v4

    #@24
    .line 241
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
    .line 245
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
    .line 1070
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1071
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1074
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
    .line 863
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 864
    new-instance v2, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 867
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 868
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 869
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    #@13
    aget v2, v0, v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 870
    add-int/lit8 v2, p1, 0x3

    #@19
    aget v1, v0, v2

    #@1b
    .line 871
    .local v1, "resid":I
    if-eqz v1, :cond_1

    #@1d
    .line 872
    return v1

    #@1e
    .line 875
    .end local v1    # "resid":I
    :cond_1
    return p2
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    #@0
    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 138
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
    .line 192
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 193
    new-instance v4, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 196
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 197
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 198
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    #@14
    aget v2, v1, v5

    #@16
    .line 199
    .local v2, "type":I
    if-nez v2, :cond_1

    #@18
    .line 200
    return-object v4

    #@19
    .line 201
    :cond_1
    const/4 v5, 0x3

    #@1a
    if-ne v2, v5, :cond_2

    #@1c
    .line 202
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
    .line 205
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@27
    .line 206
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_4

    #@2d
    .line 207
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@30
    move-result-object v0

    #@31
    .line 208
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
    .line 212
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
    .line 155
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 156
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 159
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 160
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 161
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@13
    aget v1, v0, v3

    #@15
    .line 162
    .local v1, "type":I
    if-nez v1, :cond_1

    #@17
    .line 163
    const/4 v3, 0x0

    #@18
    return-object v3

    #@19
    .line 164
    :cond_1
    const/4 v3, 0x3

    #@1a
    if-ne v1, v3, :cond_2

    #@1c
    .line 165
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    #@1f
    move-result-object v3

    #@20
    return-object v3

    #@21
    .line 168
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@23
    .line 169
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_3

    #@29
    .line 170
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@2c
    move-result-object v3

    #@2d
    return-object v3

    #@2e
    .line 174
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
    .line 949
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 950
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 953
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@f
    .line 954
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    #@11
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 955
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
    .line 957
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
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 896
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@11
    .line 897
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    #@13
    aget v1, v0, v1

    #@15
    const/4 v2, 0x2

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 898
    add-int/lit8 v1, p1, 0x1

    #@1a
    aget v1, v0, v1

    #@1c
    return v1

    #@1d
    .line 900
    :cond_1
    return p2
.end method

.method public getType(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 987
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 988
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 991
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@f
    .line 992
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
    .line 971
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 972
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 975
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
    .line 1007
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 1008
    new-instance v2, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 1011
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@10
    .line 1012
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    .line 1013
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    #@14
    aget v1, v0, v3

    #@16
    .line 1014
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
    .line 1028
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1029
    new-instance v2, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 1032
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    #@11
    .line 1033
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@13
    .line 1034
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    #@15
    aget v1, v0, v4

    #@17
    .line 1035
    .local v1, "type":I
    if-nez v1, :cond_1

    #@19
    .line 1036
    add-int/lit8 v4, p1, 0x1

    #@1b
    aget v4, v0, v4

    #@1d
    if-ne v4, v2, :cond_2

    #@1f
    .line 1035
    :cond_1
    :goto_0
    return v2

    #@20
    :cond_2
    move v2, v3

    #@21
    .line 1036
    goto :goto_0
.end method

.method public length()I
    .locals 2

    #@0
    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 94
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
    .line 1052
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1053
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 1056
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    #@f
    .line 1057
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    #@11
    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1058
    return-object v0

    #@18
    .line 1060
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
    .line 1084
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1085
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
    .line 1088
    :cond_0
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    #@26
    .line 1091
    iput-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@28
    .line 1092
    iput-object v1, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    #@2a
    .line 1093
    iput-object v1, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    #@2c
    .line 1095
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    #@2e
    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    #@30
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@33
    .line 1083
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1231
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
