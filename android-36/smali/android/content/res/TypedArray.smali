.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field static final greylist-max-o STYLE_ASSET_COOKIE:I = 0x2

.field static final greylist-max-o STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final greylist-max-o STYLE_DATA:I = 0x1

.field static final greylist-max-o STYLE_DENSITY:I = 0x5

.field static final greylist-max-o STYLE_NUM_ENTRIES:I = 0x7

.field static final greylist-max-o STYLE_RESOURCE_ID:I = 0x3

.field static final blacklist STYLE_SOURCE_RESOURCE_ID:I = 0x6

.field static final greylist-max-o STYLE_TYPE:I


# instance fields
.field private greylist-max-r mAssets:Landroid/content/res/AssetManager;

.field greylist mData:[I

.field greylist-max-o mDataAddress:J

.field greylist mIndices:[I

.field greylist-max-o mIndicesAddress:J

.field greylist mLength:I

.field private greylist-max-r mMetrics:Landroid/util/DisplayMetrics;

.field private greylist-max-r mRecycled:Z

.field private final greylist mResources:Landroid/content/res/Resources;

.field greylist-max-r mTheme:Landroid/content/res/Resources$Theme;

.field greylist mValue:Landroid/util/TypedValue;

.field greylist mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 1419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1420
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 1421
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1422
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1423
    return-void
.end method

.method private greylist getValueAt(ILandroid/util/TypedValue;)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .line 1383
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1384
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1385
    .local v1, "type":I
    if-nez v1, :cond_a

    .line 1386
    const/4 v2, 0x0

    return v2

    .line 1388
    :cond_a
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 1389
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 1390
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 1391
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 1392
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 1394
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 1395
    const/4 v2, 0x3

    if-ne v1, v2, :cond_36

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 1396
    add-int/lit8 v2, p1, 0x6

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->sourceResourceId:I

    .line 1397
    const/4 v2, 0x1

    return v2
.end method

.method private greylist-max-o loadStringValueAt(I)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "index"    # I

    .line 1402
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1403
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    .line 1404
    .local v1, "cookie":I
    const/4 v2, 0x0

    .line 1405
    .local v2, "value":Ljava/lang/CharSequence;
    if-gez v1, :cond_18

    .line 1406
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v3, :cond_22

    .line 1407
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_22

    .line 1410
    :cond_18
    iget-object v3, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v1, v4}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1412
    :cond_22
    :goto_22
    if-eqz v2, :cond_39

    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v3, :cond_39

    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    iget-object v3, v3, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    if-eqz v3, :cond_39

    .line 1413
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    iget-object v3, v3, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    iget-object v4, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    div-int/lit8 v5, p1, 0x7

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Validator;->validateResStrAttr(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/CharSequence;)V

    .line 1415
    :cond_39
    return-object v2
.end method

.method static greylist-max-o obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "len"    # I

    .line 55
    iget-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/TypedArray;

    .line 56
    .local v0, "attrs":Landroid/content/res/TypedArray;
    if-nez v0, :cond_10

    .line 57
    new-instance v1, Landroid/content/res/TypedArray;

    invoke-direct {v1, p0}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;)V

    move-object v0, v1

    .line 60
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 63
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 64
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 65
    invoke-direct {v0, p1}, Landroid/content/res/TypedArray;->resize(I)V

    .line 66
    return-object v0
.end method

.method private greylist-max-o resize(I)V
    .registers 9
    .param p1, "len"    # I

    .line 142
    iput p1, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 143
    mul-int/lit8 v0, p1, 0x7

    .line 144
    .local v0, "dataLen":I
    add-int/lit8 v1, p1, 0x1

    .line 145
    .local v1, "indicesLen":I
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    .line 146
    .local v2, "runtime":Ldalvik/system/VMRuntime;
    iget-wide v3, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    array-length v3, v3

    if-ge v3, v0, :cond_3b

    .line 147
    :cond_17
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 148
    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    .line 149
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 150
    iget-object v3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/res/TypedArray;->mIndicesAddress:J

    .line 152
    :cond_3b
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 1284
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1285
    return-void
.end method

.method public greylist extractThemeAttrs()[I
    .registers 2

    .line 1302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v0

    return-object v0
.end method

.method public greylist extractThemeAttrs([I)[I
    .registers 10
    .param p1, "scrap"    # [I

    .line 1311
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_38

    .line 1315
    const/4 v0, 0x0

    .line 1317
    .local v0, "attrs":[I
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1318
    .local v1, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1319
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_37

    .line 1320
    mul-int/lit8 v4, v3, 0x7

    .line 1321
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x0

    aget v5, v1, v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_18

    .line 1323
    goto :goto_34

    .line 1327
    :cond_18
    add-int/lit8 v5, v4, 0x0

    const/4 v6, 0x0

    aput v6, v1, v5

    .line 1329
    add-int/lit8 v5, v4, 0x1

    aget v5, v1, v5

    .line 1330
    .local v5, "attr":I
    if-nez v5, :cond_24

    .line 1332
    goto :goto_34

    .line 1336
    :cond_24
    if-nez v0, :cond_32

    .line 1337
    if-eqz p1, :cond_30

    array-length v7, p1

    if-ne v7, v2, :cond_30

    .line 1338
    move-object v0, p1

    .line 1339
    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([II)V

    goto :goto_32

    .line 1341
    :cond_30
    new-array v0, v2, [I

    .line 1345
    :cond_32
    :goto_32
    aput v5, v0, v3

    .line 1319
    .end local v4    # "index":I
    .end local v5    # "attr":I
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1348
    .end local v3    # "i":I
    :cond_37
    return-object v0

    .line 1312
    .end local v0    # "attrs":[I
    .end local v1    # "data":[I
    .end local v2    # "N":I
    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBoolean(IZ)Z
    .registers 9
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .line 386
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_52

    .line 390
    mul-int/lit8 p1, p1, 0x7

    .line 391
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 392
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 393
    .local v1, "type":I
    if-nez v1, :cond_f

    .line 394
    return p2

    .line 395
    :cond_f
    const/16 v2, 0x10

    if-lt v1, v2, :cond_21

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_21

    .line 397
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    return v2

    .line 400
    :cond_21
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 401
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 402
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 403
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    return v3

    .line 407
    :cond_35
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 387
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 8

    .line 1361
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_24

    .line 1365
    const/4 v0, 0x0

    .line 1367
    .local v0, "changingConfig":I
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1368
    .local v1, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1369
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_23

    .line 1370
    mul-int/lit8 v4, v3, 0x7

    .line 1371
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x0

    aget v5, v1, v5

    .line 1372
    .local v5, "type":I
    if-nez v5, :cond_17

    .line 1373
    goto :goto_20

    .line 1375
    :cond_17
    add-int/lit8 v6, v4, 0x4

    aget v6, v1, v6

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v6

    or-int/2addr v0, v6

    .line 1369
    .end local v4    # "index":I
    .end local v5    # "type":I
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1378
    .end local v3    # "i":I
    :cond_23
    return v0

    .line 1362
    .end local v0    # "changingConfig":I
    .end local v1    # "data":[I
    .end local v2    # "N":I
    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColor(II)I
    .registers 11
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 511
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_a0

    .line 515
    move v0, p1

    .line 516
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 518
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 519
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 520
    .local v2, "type":I
    if-nez v2, :cond_10

    .line 521
    return p2

    .line 522
    :cond_10
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1d

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1d

    .line 524
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    return v3

    .line 525
    :cond_1d
    const/4 v3, 0x3

    if-ne v2, v3, :cond_38

    .line 526
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 527
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 528
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 530
    .local v4, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    return v5

    .line 532
    .end local v4    # "csl":Landroid/content/res/ColorStateList;
    :cond_37
    return p2

    .line 533
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_38
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_6f

    .line 534
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 535
    .restart local v3    # "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 536
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 541
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_6f
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to color: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 542
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 512
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_a0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 6
    .param p1, "index"    # I

    .line 601
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4f

    .line 605
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 606
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 607
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1e

    .line 612
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 608
    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    :cond_4d
    const/4 v1, 0x0

    return-object v1

    .line 602
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_4f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getComplexColor(I)Landroid/content/res/ComplexColor;
    .registers 6
    .param p1, "index"    # I

    .line 565
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4f

    .line 569
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 570
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 571
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1e

    .line 576
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v1

    return-object v1

    .line 572
    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_4d
    const/4 v1, 0x0

    return-object v1

    .line 566
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_4f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDimension(IF)F
    .registers 11
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .line 682
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_86

    .line 686
    move v0, p1

    .line 687
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 689
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 690
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 691
    .local v2, "type":I
    if-nez v2, :cond_10

    .line 692
    return p2

    .line 693
    :cond_10
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1e

    .line 694
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v3

    return v3

    .line 695
    :cond_1e
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_55

    .line 696
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 697
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 698
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 703
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_55
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to dimension: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 704
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 683
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDimensionPixelOffset(II)I
    .registers 11
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 731
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_86

    .line 735
    move v0, p1

    .line 736
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 738
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 739
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 740
    .local v2, "type":I
    if-nez v2, :cond_10

    .line 741
    return p2

    .line 742
    :cond_10
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1e

    .line 743
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v3

    return v3

    .line 744
    :cond_1e
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_55

    .line 745
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 746
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 747
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 752
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_55
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to dimension: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 753
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 732
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDimensionPixelSize(II)I
    .registers 11
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 781
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_86

    .line 785
    move v0, p1

    .line 786
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 788
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 789
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 790
    .local v2, "type":I
    if-nez v2, :cond_10

    .line 791
    return p2

    .line 792
    :cond_10
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1e

    .line 793
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    return v3

    .line 794
    :cond_1e
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_55

    .line 795
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 796
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 797
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 802
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_55
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to dimension: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 803
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 782
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "index"    # I

    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "index"    # I
    .param p2, "density"    # I

    .line 1010
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_59

    .line 1014
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1015
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1016
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_28

    .line 1022
    if-lez p2, :cond_1d

    .line 1025
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 1027
    :cond_1d
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, p2, v3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1017
    :cond_28
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1029
    :cond_57
    const/4 v1, 0x0

    return-object v1

    .line 1011
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFloat(IF)F
    .registers 9
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .line 462
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_60

    .line 466
    mul-int/lit8 p1, p1, 0x7

    .line 467
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 468
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 469
    .local v1, "type":I
    if-nez v1, :cond_f

    .line 470
    return p2

    .line 471
    :cond_f
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1b

    .line 472
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2

    .line 473
    :cond_1b
    const/16 v2, 0x10

    if-lt v1, v2, :cond_29

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_29

    .line 475
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    return v2

    .line 478
    :cond_29
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 479
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 480
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    .line 481
    .local v3, "str":Ljava/lang/CharSequence;
    if-eqz v3, :cond_43

    .line 482
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 483
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    return v4

    .line 488
    .end local v3    # "str":Ljava/lang/CharSequence;
    :cond_43
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFloat of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 463
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFont(I)Landroid/graphics/Typeface;
    .registers 6
    .param p1, "index"    # I

    .line 1047
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4d

    .line 1051
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1052
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1053
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1c

    .line 1058
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getFont(Landroid/util/TypedValue;I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 1054
    :cond_1c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1060
    :cond_4b
    const/4 v1, 0x0

    return-object v1

    .line 1048
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFraction(IIIF)F
    .registers 13
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .line 902
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_86

    .line 906
    move v0, p1

    .line 907
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 909
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 910
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 911
    .local v2, "type":I
    if-nez v2, :cond_10

    .line 912
    return p4

    .line 913
    :cond_10
    const/4 v3, 0x6

    if-ne v2, v3, :cond_1e

    .line 914
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    return v3

    .line 915
    :cond_1e
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_55

    .line 916
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 917
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 918
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 923
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_55
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to fraction: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 924
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 903
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIndex(I)I
    .registers 4
    .param p1, "at"    # I

    .line 193
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_b

    .line 197
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0

    .line 194
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIndexCount()I
    .registers 3

    .line 174
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_a

    .line 178
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 175
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInt(II)I
    .registers 9
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 425
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4d

    .line 429
    mul-int/lit8 p1, p1, 0x7

    .line 430
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 431
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 432
    .local v1, "type":I
    if-nez v1, :cond_f

    .line 433
    return p2

    .line 434
    :cond_f
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1c

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1c

    .line 436
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    return v2

    .line 439
    :cond_1c
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 440
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 441
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 442
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v3

    return v3

    .line 446
    :cond_30
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 426
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInteger(II)I
    .registers 11
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 633
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_85

    .line 637
    move v0, p1

    .line 638
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 640
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 641
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 642
    .local v2, "type":I
    if-nez v2, :cond_10

    .line 643
    return p2

    .line 644
    :cond_10
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1d

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1d

    .line 646
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    return v3

    .line 647
    :cond_1d
    const/4 v3, 0x2

    const-string v4, ", theme="

    if-ne v2, v3, :cond_54

    .line 648
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 649
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 650
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 655
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_54
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to integer: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 656
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 634
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLayoutDimension(II)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 866
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_28

    .line 870
    mul-int/lit8 p1, p1, 0x7

    .line 871
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 872
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 873
    .local v1, "type":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_19

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_19

    .line 875
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    return v2

    .line 876
    :cond_19
    const/4 v2, 0x5

    if-ne v1, v2, :cond_27

    .line 877
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    return v2

    .line 880
    :cond_27
    return p2

    .line 867
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLayoutDimension(ILjava/lang/String;)I
    .registers 10
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 825
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_8c

    .line 829
    move v0, p1

    .line 830
    .local v0, "attrIndex":I
    mul-int/lit8 p1, p1, 0x7

    .line 832
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 833
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v1, v2

    .line 834
    .local v2, "type":I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1a

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1a

    .line 836
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    return v3

    .line 837
    :cond_1a
    const/4 v3, 0x5

    if-ne v2, v3, :cond_28

    .line 838
    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    return v3

    .line 839
    :cond_28
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5f

    .line 840
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 841
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 842
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", theme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 847
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_5f
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": You must supply a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attribute., theme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 826
    .end local v0    # "attrIndex":I
    .end local v1    # "data":[I
    .end local v2    # "type":I
    :cond_8c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getNonConfigurationString(II)Ljava/lang/String;
    .registers 10
    .param p1, "index"    # I
    .param p2, "allowedChangingConfigs"    # I

    .line 339
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_59

    .line 343
    mul-int/lit8 p1, p1, 0x7

    .line 344
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 345
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 346
    .local v1, "type":I
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    .line 348
    .local v2, "changingConfigs":I
    not-int v3, p2

    and-int/2addr v3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    .line 349
    return-object v4

    .line 351
    :cond_1a
    if-nez v1, :cond_1d

    .line 352
    return-object v4

    .line 353
    :cond_1d
    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    .line 354
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 357
    :cond_29
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 358
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 359
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    .line 360
    .local v5, "cs":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3b

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3b
    return-object v4

    .line 364
    .end local v5    # "cs":Ljava/lang/CharSequence;
    :cond_3c
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNonConfigurationString of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 340
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "changingConfigs":I
    .end local v3    # "v":Landroid/util/TypedValue;
    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNonResourceString(I)Ljava/lang/String;
    .registers 8
    .param p1, "index"    # I

    .line 303
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_3b

    .line 307
    mul-int/lit8 p1, p1, 0x7

    .line 308
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 309
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 310
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_39

    .line 311
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    .line 312
    .local v2, "cookie":I
    if-gez v2, :cond_39

    .line 313
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_38

    iget-object v4, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v4, :cond_38

    iget-object v4, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    iget-object v4, v4, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    if-eqz v4, :cond_38

    .line 315
    iget-object v4, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    iget-object v4, v4, Landroid/content/res/XmlBlock$Parser;->mValidator:Landroid/content/res/Validator;

    iget-object v5, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v4, v5, p1, v3}, Landroid/content/res/Validator;->validateResStrAttr(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/CharSequence;)V

    .line 317
    :cond_38
    return-object v3

    .line 320
    .end local v2    # "cookie":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_39
    const/4 v2, 0x0

    return-object v2

    .line 304
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPositionDescription()Ljava/lang/String;
    .registers 3

    .line 1248
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_12

    .line 1252
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "<internal>"

    :goto_11
    return-object v0

    .line 1249
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResourceId(II)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 944
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_16

    .line 948
    mul-int/lit8 p1, p1, 0x7

    .line 949
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 950
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    if-eqz v1, :cond_15

    .line 951
    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    .line 952
    .local v1, "resid":I
    if-eqz v1, :cond_15

    .line 953
    return v1

    .line 956
    .end local v1    # "resid":I
    :cond_15
    return p2

    .line 945
    .end local v0    # "data":[I
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 3

    .line 206
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_7

    .line 210
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0

    .line 207
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSourceResourceId(II)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .line 1161
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_10

    .line 1165
    mul-int/lit8 p1, p1, 0x7

    .line 1166
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x6

    aget v0, v0, v1

    .line 1167
    .local v0, "resid":I
    if-eqz v0, :cond_f

    .line 1168
    return v0

    .line 1170
    :cond_f
    return p2

    .line 1162
    .end local v0    # "resid":I
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 8
    .param p1, "index"    # I

    .line 264
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_4d

    .line 268
    mul-int/lit8 p1, p1, 0x7

    .line 269
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 270
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 271
    .local v1, "type":I
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 272
    return-object v2

    .line 273
    :cond_10
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1c

    .line 274
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 277
    :cond_1c
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 278
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 279
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    .line 280
    .local v4, "cs":Ljava/lang/CharSequence;
    if-eqz v4, :cond_2e

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2e
    return-object v2

    .line 284
    .end local v4    # "cs":Ljava/lang/CharSequence;
    :cond_2f
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getString of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v3    # "v":Landroid/util/TypedValue;
    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getText(I)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "index"    # I

    .line 227
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_43

    .line 231
    mul-int/lit8 p1, p1, 0x7

    .line 232
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 233
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 234
    .local v1, "type":I
    if-nez v1, :cond_10

    .line 235
    const/4 v2, 0x0

    return-object v2

    .line 236
    :cond_10
    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 237
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 240
    :cond_18
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 241
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 242
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 246
    :cond_25
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getText of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    .end local v0    # "data":[I
    .end local v1    # "type":I
    .end local v2    # "v":Landroid/util/TypedValue;
    :cond_43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTextArray(I)[Ljava/lang/CharSequence;
    .registers 5
    .param p1, "index"    # I

    .line 1079
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_19

    .line 1083
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1084
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1085
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1087
    :cond_17
    const/4 v1, 0x0

    return-object v1

    .line 1080
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getThemeAttributeId(II)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 972
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_15

    .line 976
    mul-int/lit8 p1, p1, 0x7

    .line 977
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 978
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 979
    add-int/lit8 v1, p1, 0x1

    aget v1, v0, v1

    return v1

    .line 981
    :cond_14
    return p2

    .line 973
    .end local v0    # "data":[I
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getType(I)I
    .registers 4
    .param p1, "index"    # I

    .line 1117
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_d

    .line 1121
    mul-int/lit8 p1, p1, 0x7

    .line 1122
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    aget v0, v0, v1

    return v0

    .line 1118
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getValue(ILandroid/util/TypedValue;)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .line 1101
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_b

    .line 1105
    mul-int/lit8 v0, p1, 0x7

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0

    .line 1102
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasValue(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 1185
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_12

    .line 1189
    mul-int/lit8 p1, p1, 0x7

    .line 1190
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1191
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1192
    .local v1, "type":I
    if-eqz v1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2

    .line 1186
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasValueOrEmpty(I)Z
    .registers 6
    .param p1, "index"    # I

    .line 1206
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_18

    .line 1210
    mul-int/lit8 p1, p1, 0x7

    .line 1211
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1212
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    .line 1213
    .local v1, "type":I
    const/4 v2, 0x1

    if-nez v1, :cond_17

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    if-ne v3, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :cond_17
    :goto_17
    return v2

    .line 1207
    .end local v0    # "data":[I
    .end local v1    # "type":I
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist length()I
    .registers 3

    .line 160
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_7

    .line 164
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0

    .line 161
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist peekValue(I)Landroid/util/TypedValue;
    .registers 4
    .param p1, "index"    # I

    .line 1230
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_11

    .line 1234
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1235
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1236
    return-object v0

    .line 1238
    :cond_f
    const/4 v1, 0x0

    return-object v1

    .line 1231
    .end local v0    # "value":Landroid/util/TypedValue;
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist recycle()V
    .registers 4

    .line 1262
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-nez v0, :cond_16

    .line 1266
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 1269
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1270
    iput-object v0, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1271
    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1273
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1274
    return-void

    .line 1263
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1427
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
