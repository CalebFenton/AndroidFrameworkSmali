.class public Landroid/filterfw/core/FrameFormat;
.super Ljava/lang/Object;
.source "FrameFormat.java"


# static fields
.field public static final greylist-max-o BYTES_PER_SAMPLE_UNSPECIFIED:I = 0x1

.field protected static final greylist-max-o SIZE_UNKNOWN:I = -0x1

.field public static final greylist-max-o SIZE_UNSPECIFIED:I = 0x0

.field public static final greylist-max-o TARGET_GPU:I = 0x3

.field public static final greylist-max-o TARGET_NATIVE:I = 0x2

.field public static final greylist-max-o TARGET_RS:I = 0x5

.field public static final greylist-max-o TARGET_SIMPLE:I = 0x1

.field public static final greylist-max-o TARGET_UNSPECIFIED:I = 0x0

.field public static final greylist-max-o TARGET_VERTEXBUFFER:I = 0x4

.field public static final greylist-max-o TYPE_BIT:I = 0x1

.field public static final greylist-max-o TYPE_BYTE:I = 0x2

.field public static final greylist-max-o TYPE_DOUBLE:I = 0x6

.field public static final greylist-max-o TYPE_FLOAT:I = 0x5

.field public static final greylist-max-o TYPE_INT16:I = 0x3

.field public static final greylist-max-o TYPE_INT32:I = 0x4

.field public static final greylist-max-o TYPE_OBJECT:I = 0x8

.field public static final greylist-max-o TYPE_POINTER:I = 0x7

.field public static final greylist-max-o TYPE_UNSPECIFIED:I


# instance fields
.field protected greylist-max-o mBaseType:I

.field protected greylist-max-o mBytesPerSample:I

.field protected greylist-max-o mDimensions:[I

.field protected greylist-max-o mMetaData:Landroid/filterfw/core/KeyValueMap;

.field protected greylist-max-o mObjectClass:Ljava/lang/Class;

.field protected greylist-max-o mSize:I

.field protected greylist-max-o mTarget:I


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    .line 56
    const/4 v1, 0x1

    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    .line 58
    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    .line 64
    return-void
.end method

.method public constructor greylist-max-o <init>(II)V
    .registers 5
    .param p1, "baseType"    # I
    .param p2, "target"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    .line 56
    const/4 v1, 0x1

    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    .line 58
    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    .line 67
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    .line 68
    iput p2, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    .line 69
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;->initDefaults()V

    .line 70
    return-void
.end method

.method public static greylist-max-o baseTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "baseType"    # I

    .line 347
    const-string/jumbo v0, "int"

    packed-switch p0, :pswitch_data_24

    .line 357
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 356
    :pswitch_a
    const-string/jumbo v0, "object"

    return-object v0

    .line 355
    :pswitch_e
    const-string/jumbo v0, "pointer"

    return-object v0

    .line 354
    :pswitch_12
    const-string v0, "double"

    return-object v0

    .line 353
    :pswitch_15
    const-string v0, "float"

    return-object v0

    .line 352
    :pswitch_18
    return-object v0

    .line 351
    :pswitch_19
    return-object v0

    .line 350
    :pswitch_1a
    const-string v0, "byte"

    return-object v0

    .line 349
    :pswitch_1d
    const-string v0, "bit"

    return-object v0

    .line 348
    :pswitch_20
    const-string/jumbo v0, "unspecified"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_a
    .end packed-switch
.end method

.method public static greylist-max-o bytesPerSampleOf(I)I
    .registers 2
    .param p0, "baseType"    # I

    .line 314
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_e

    .line 327
    return v0

    .line 325
    :pswitch_5
    const/16 v0, 0x8

    return v0

    .line 323
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 319
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 317
    :pswitch_c
    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o dimensionsToString([I)Ljava/lang/String;
    .registers 6
    .param p0, "dimensions"    # [I

    .line 332
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_3a

    .line 334
    array-length v1, p0

    .line 335
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_3a

    .line 336
    aget v3, p0, v2

    if-nez v3, :cond_15

    .line 337
    const-string v3, "[]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 339
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p0, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 343
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o initDefaults()V
    .registers 2

    .line 422
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->bytesPerSampleOf(I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    .line 423
    return-void
.end method

.method public static greylist-max-o metaDataToString(Landroid/filterfw/core/KeyValueMap;)Ljava/lang/String;
    .registers 6
    .param p0, "metaData"    # Landroid/filterfw/core/KeyValueMap;

    .line 374
    if-nez p0, :cond_5

    .line 375
    const-string v0, ""

    return-object v0

    .line 377
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    invoke-virtual {p0}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 380
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_18

    .line 382
    :cond_4f
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o readTargetString(Ljava/lang/String;)I
    .registers 4
    .param p0, "targetString"    # Ljava/lang/String;

    .line 388
    const-string v0, "CPU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "NATIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_58

    .line 390
    :cond_11
    const-string v0, "GPU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 391
    const/4 v0, 0x3

    return v0

    .line 392
    :cond_1b
    const-string v0, "SIMPLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 393
    const/4 v0, 0x1

    return v0

    .line 394
    :cond_25
    const-string v0, "VERTEXBUFFER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 395
    const/4 v0, 0x4

    return v0

    .line 396
    :cond_2f
    const-string v0, "UNSPECIFIED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 397
    const/4 v0, 0x0

    return v0

    .line 399
    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown target type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_58
    :goto_58
    const/4 v0, 0x2

    return v0
.end method

.method public static greylist-max-o targetToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "target"    # I

    .line 362
    packed-switch p0, :pswitch_data_20

    .line 369
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 368
    :pswitch_7
    const-string/jumbo v0, "renderscript"

    return-object v0

    .line 367
    :pswitch_b
    const-string/jumbo v0, "vbo"

    return-object v0

    .line 366
    :pswitch_f
    const-string/jumbo v0, "gpu"

    return-object v0

    .line 365
    :pswitch_13
    const-string/jumbo v0, "native"

    return-object v0

    .line 364
    :pswitch_17
    const-string/jumbo v0, "simple"

    return-object v0

    .line 363
    :pswitch_1b
    const-string/jumbo v0, "unspecified"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method public static greylist-max-o unspecified()Landroid/filterfw/core/FrameFormat;
    .registers 2

    .line 73
    new-instance v0, Landroid/filterfw/core/FrameFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method greylist-max-o calcSize([I)I
    .registers 6
    .param p1, "dimensions"    # [I

    .line 427
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    array-length v1, p1

    if-lez v1, :cond_14

    .line 428
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v1

    .line 429
    .local v1, "size":I
    array-length v2, p1

    :goto_b
    if-ge v0, v2, :cond_13

    aget v3, p1, v0

    .line 430
    .local v3, "dim":I
    mul-int/2addr v1, v3

    .line 429
    .end local v3    # "dim":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 432
    :cond_13
    return v1

    .line 434
    .end local v1    # "size":I
    :cond_14
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 176
    return v0

    .line 179
    :cond_4
    instance-of v1, p1, Landroid/filterfw/core/FrameFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 180
    return v2

    .line 183
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/filterfw/core/FrameFormat;

    .line 184
    .local v1, "format":Landroid/filterfw/core/FrameFormat;
    iget v3, v1, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    iget v4, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    if-ne v3, v4, :cond_34

    iget v3, v1, Landroid/filterfw/core/FrameFormat;->mTarget:I

    iget v4, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    if-ne v3, v4, :cond_34

    iget v3, v1, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    iget v4, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    if-ne v3, v4, :cond_34

    iget-object v3, v1, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    .line 187
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 188
    invoke-virtual {v3, v4}, Landroid/filterfw/core/KeyValueMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    .line 184
    :goto_35
    return v0
.end method

.method public greylist-max-o getBaseType()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    return v0
.end method

.method public greylist-max-o getBytesPerSample()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    return v0
.end method

.method public greylist-max-o getDepth()I
    .registers 3

    .line 149
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    return v0
.end method

.method public greylist-max-o getDimension(I)I
    .registers 3
    .param p1, "i"    # I

    .line 102
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    aget v0, v0, p1

    return v0
.end method

.method public greylist-max-o getDimensionCount()I
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    array-length v0, v0

    :goto_9
    return v0
.end method

.method public greylist-max-o getDimensions()[I
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    return-object v0
.end method

.method public greylist getHeight()I
    .registers 3

    .line 145
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    return v0
.end method

.method public greylist-max-o getLength()I
    .registers 3

    .line 135
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    return v0
.end method

.method public greylist-max-o getMetaValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getNumberOfDimensions()I
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    array-length v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o getObjectClass()Ljava/lang/Class;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public greylist-max-o getSize()I
    .registers 3

    .line 153
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->calcSize([I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    .line 154
    :cond_d
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    return v0
.end method

.method public greylist getTarget()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    return v0
.end method

.method public greylist-max-o getValuesPerSample()I
    .registers 3

    .line 89
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    iget v1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    invoke-static {v1}, Landroid/filterfw/core/FrameFormat;->bytesPerSampleOf(I)I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public greylist getWidth()I
    .registers 2

    .line 140
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getLength()I

    move-result v0

    return v0
.end method

.method public greylist-max-o hasMetaKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o hasMetaKey(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedClass"    # Ljava/lang/Class;

    .line 114
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 115
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 121
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrameFormat meta-key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 118
    invoke-virtual {v2, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but expected to be of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_5b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 193
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    xor-int/lit16 v0, v0, 0x1073

    iget v1, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o isBinaryDataType()Z
    .registers 4

    .line 81
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    const/4 v2, 0x6

    if-gt v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public greylist-max-o isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z
    .registers 8
    .param p1, "specification"    # Landroid/filterfw/core/FrameFormat;

    .line 198
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 199
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v2

    if-eq v0, v2, :cond_12

    .line 200
    return v1

    .line 204
    :cond_12
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    if-eqz v0, :cond_23

    .line 205
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    if-eq v0, v2, :cond_23

    .line 206
    return v1

    .line 210
    :cond_23
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_35

    .line 211
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v3

    if-eq v0, v3, :cond_35

    .line 212
    return v1

    .line 216
    :cond_35
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v0

    if-lez v0, :cond_46

    .line 217
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v3

    if-eq v0, v3, :cond_46

    .line 218
    return v1

    .line 222
    :cond_46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_47
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v3

    if-ge v0, v3, :cond_5d

    .line 223
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v3

    .line 224
    .local v3, "specDim":I
    if-eqz v3, :cond_5a

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v4

    if-eq v4, v3, :cond_5a

    .line 225
    return v1

    .line 222
    .end local v3    # "specDim":I
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 230
    .end local v0    # "i":I
    :cond_5d
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 231
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 232
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 233
    :cond_77
    return v1

    .line 238
    :cond_78
    iget-object v0, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v0, :cond_b3

    .line 239
    iget-object v0, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 240
    .local v3, "specKey":Ljava/lang/String;
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_b2

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 241
    invoke-virtual {v4, v3}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 242
    invoke-virtual {v4, v3}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v5, v3}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    goto :goto_b2

    .line 245
    .end local v3    # "specKey":Ljava/lang/String;
    :cond_b1
    goto :goto_86

    .line 243
    .restart local v3    # "specKey":Ljava/lang/String;
    :cond_b2
    :goto_b2
    return v1

    .line 249
    .end local v3    # "specKey":Ljava/lang/String;
    :cond_b3
    return v2
.end method

.method greylist-max-o isReplaceableBy(Landroid/filterfw/core/FrameFormat;)Z
    .registers 4
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 438
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    iget v1, p1, Landroid/filterfw/core/FrameFormat;->mTarget:I

    if-ne v0, v1, :cond_1c

    .line 439
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-ne v0, v1, :cond_1c

    iget-object v0, p1, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    .line 440
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 438
    :goto_1d
    return v0
.end method

.method public greylist-max-o mayBeCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z
    .registers 8
    .param p1, "specification"    # Landroid/filterfw/core/FrameFormat;

    .line 254
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 255
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v0

    if-eqz v0, :cond_18

    .line 256
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v2

    if-eq v0, v2, :cond_18

    .line 257
    return v1

    .line 261
    :cond_18
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 262
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 263
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    if-eq v0, v2, :cond_2f

    .line 264
    return v1

    .line 268
    :cond_2f
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_47

    .line 269
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    if-eq v0, v2, :cond_47

    .line 270
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v3

    if-eq v0, v3, :cond_47

    .line 271
    return v1

    .line 275
    :cond_47
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v0

    if-lez v0, :cond_5e

    .line 276
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v0

    if-lez v0, :cond_5e

    .line 277
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v3

    if-eq v0, v3, :cond_5e

    .line 278
    return v1

    .line 282
    :cond_5e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5f
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v3

    if-ge v0, v3, :cond_7b

    .line 283
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v3

    .line 284
    .local v3, "specDim":I
    if-eqz v3, :cond_78

    .line 285
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v4

    if-eqz v4, :cond_78

    .line 286
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    move-result v4

    if-eq v4, v3, :cond_78

    .line 287
    return v1

    .line 282
    .end local v3    # "specDim":I
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 292
    .end local v0    # "i":I
    :cond_7b
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 293
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_96

    .line 294
    return v1

    .line 299
    :cond_96
    iget-object v0, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v0, :cond_d0

    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-eqz v0, :cond_d0

    .line 300
    iget-object v0, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    .local v3, "specKey":Ljava/lang/String;
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v4, v3}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 302
    invoke-virtual {v4, v3}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v5, v3}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cf

    .line 303
    return v1

    .line 305
    .end local v3    # "specKey":Ljava/lang/String;
    :cond_cf
    goto :goto_a8

    .line 309
    :cond_d0
    return v2
.end method

.method public greylist mutableCopy()Landroid/filterfw/core/MutableFrameFormat;
    .registers 3

    .line 163
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    invoke-direct {v0}, Landroid/filterfw/core/MutableFrameFormat;-><init>()V

    .line 164
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBaseType(I)V

    .line 165
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    .line 166
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 167
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensions()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions([I)V

    .line 168
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 169
    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_36

    :cond_2e
    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1}, Landroid/filterfw/core/KeyValueMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/KeyValueMap;

    :goto_36
    iput-object v1, v0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 170
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 406
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getValuesPerSample()I

    move-result v0

    .line 407
    .local v0, "valuesPerSample":I
    const/4 v1, 0x1

    const-string v2, ""

    if-ne v0, v1, :cond_b

    move-object v1, v2

    goto :goto_f

    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "sampleCountString":Ljava/lang/String;
    :goto_f
    iget v3, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    if-nez v3, :cond_15

    move-object v3, v2

    goto :goto_2e

    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    invoke-static {v4}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "targetString":Ljava/lang/String;
    :goto_2e
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    if-nez v4, :cond_33

    .line 410
    goto :goto_52

    .line 411
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " class("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_52
    nop

    .line 413
    .local v2, "classString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    .line 414
    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->baseTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    .line 416
    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->dimensionsToString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 418
    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->metaDataToString(Landroid/filterfw/core/KeyValueMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 413
    return-object v4
.end method
