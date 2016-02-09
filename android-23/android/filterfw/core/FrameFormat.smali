.class public Landroid/filterfw/core/FrameFormat;
.super Ljava/lang/Object;
.source "FrameFormat.java"


# static fields
.field public static final BYTES_PER_SAMPLE_UNSPECIFIED:I = 0x1

.field protected static final SIZE_UNKNOWN:I = -0x1

.field public static final SIZE_UNSPECIFIED:I = 0x0

.field public static final TARGET_GPU:I = 0x3

.field public static final TARGET_NATIVE:I = 0x2

.field public static final TARGET_RS:I = 0x5

.field public static final TARGET_SIMPLE:I = 0x1

.field public static final TARGET_UNSPECIFIED:I = 0x0

.field public static final TARGET_VERTEXBUFFER:I = 0x4

.field public static final TYPE_BIT:I = 0x1

.field public static final TYPE_BYTE:I = 0x2

.field public static final TYPE_DOUBLE:I = 0x6

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_INT16:I = 0x3

.field public static final TYPE_INT32:I = 0x4

.field public static final TYPE_OBJECT:I = 0x8

.field public static final TYPE_POINTER:I = 0x7

.field public static final TYPE_UNSPECIFIED:I


# instance fields
.field protected mBaseType:I

.field protected mBytesPerSample:I

.field protected mDimensions:[I

.field protected mMetaData:Landroid/filterfw/core/KeyValueMap;

.field protected mObjectClass:Ljava/lang/Class;

.field protected mSize:I

.field protected mTarget:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@6
    .line 57
    const/4 v0, 0x1

    #@7
    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    #@9
    .line 58
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    #@c
    .line 59
    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    #@e
    .line 64
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "baseType"    # I
    .param p2, "target"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@6
    .line 57
    const/4 v0, 0x1

    #@7
    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    #@9
    .line 58
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    #@c
    .line 59
    iput v1, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    #@e
    .line 68
    iput p1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@10
    .line 69
    iput p2, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    #@12
    .line 70
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;->initDefaults()V

    #@15
    .line 67
    return-void
.end method

.method public static baseTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "baseType"    # I

    #@0
    .prologue
    .line 344
    packed-switch p0, :pswitch_data_0

    #@3
    .line 354
    const-string/jumbo v0, "unknown"

    #@6
    return-object v0

    #@7
    .line 345
    :pswitch_0
    const-string/jumbo v0, "unspecified"

    #@a
    return-object v0

    #@b
    .line 346
    :pswitch_1
    const-string/jumbo v0, "bit"

    #@e
    return-object v0

    #@f
    .line 347
    :pswitch_2
    const-string/jumbo v0, "byte"

    #@12
    return-object v0

    #@13
    .line 348
    :pswitch_3
    const-string/jumbo v0, "int"

    #@16
    return-object v0

    #@17
    .line 349
    :pswitch_4
    const-string/jumbo v0, "int"

    #@1a
    return-object v0

    #@1b
    .line 350
    :pswitch_5
    const-string/jumbo v0, "float"

    #@1e
    return-object v0

    #@1f
    .line 351
    :pswitch_6
    const-string/jumbo v0, "double"

    #@22
    return-object v0

    #@23
    .line 352
    :pswitch_7
    const-string/jumbo v0, "pointer"

    #@26
    return-object v0

    #@27
    .line 353
    :pswitch_8
    const-string/jumbo v0, "object"

    #@2a
    return-object v0

    #@2b
    .line 344
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static bytesPerSampleOf(I)I
    .locals 1
    .param p0, "baseType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 311
    packed-switch p0, :pswitch_data_0

    #@4
    .line 324
    return v0

    #@5
    .line 314
    :pswitch_0
    return v0

    #@6
    .line 316
    :pswitch_1
    const/4 v0, 0x2

    #@7
    return v0

    #@8
    .line 320
    :pswitch_2
    const/4 v0, 0x4

    #@9
    return v0

    #@a
    .line 322
    :pswitch_3
    const/16 v0, 0x8

    #@c
    return v0

    #@d
    .line 311
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static dimensionsToString([I)Ljava/lang/String;
    .locals 5
    .param p0, "dimensions"    # [I

    #@0
    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 330
    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_1

    #@7
    .line 331
    array-length v2, p0

    #@8
    .line 332
    .local v2, "n":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@b
    .line 333
    aget v3, p0, v1

    #@d
    if-nez v3, :cond_0

    #@f
    .line 334
    const-string/jumbo v3, "[]"

    #@12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 332
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 336
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "["

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    aget v4, p0, v1

    #@26
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    const-string/jumbo v4, "]"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    goto :goto_1

    #@3d
    .line 340
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    return-object v3
.end method

.method private initDefaults()V
    .locals 1

    #@0
    .prologue
    .line 419
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@2
    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->bytesPerSampleOf(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    #@8
    .line 418
    return-void
.end method

.method public static metaDataToString(Landroid/filterfw/core/KeyValueMap;)Ljava/lang/String;
    .locals 5
    .param p0, "metaData"    # Landroid/filterfw/core/KeyValueMap;

    #@0
    .prologue
    .line 371
    if-nez p0, :cond_0

    #@2
    .line 372
    const-string/jumbo v3, ""

    #@5
    return-object v3

    #@6
    .line 374
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@b
    .line 375
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "{ "

    #@e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 376
    invoke-virtual {p0}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/util/Map$Entry;

    #@25
    .line 377
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/lang/String;

    #@30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    const-string/jumbo v4, ": "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    const-string/jumbo v4, " "

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    goto :goto_0

    #@52
    .line 379
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string/jumbo v3, "}"

    #@55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    return-object v3
.end method

.method public static readTargetString(Ljava/lang/String;)I
    .locals 3
    .param p0, "targetString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 385
    const-string/jumbo v0, "CPU"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "NATIVE"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 386
    :cond_0
    const/4 v0, 0x2

    #@13
    return v0

    #@14
    .line 387
    :cond_1
    const-string/jumbo v0, "GPU"

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 388
    const/4 v0, 0x3

    #@1e
    return v0

    #@1f
    .line 389
    :cond_2
    const-string/jumbo v0, "SIMPLE"

    #@22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 390
    const/4 v0, 0x1

    #@29
    return v0

    #@2a
    .line 391
    :cond_3
    const-string/jumbo v0, "VERTEXBUFFER"

    #@2d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_4

    #@33
    .line 392
    const/4 v0, 0x4

    #@34
    return v0

    #@35
    .line 393
    :cond_4
    const-string/jumbo v0, "UNSPECIFIED"

    #@38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_5

    #@3e
    .line 394
    const/4 v0, 0x0

    #@3f
    return v0

    #@40
    .line 396
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    #@42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "Unknown target type \'"

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    const-string/jumbo v2, "\'!"

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0
.end method

.method public static targetToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # I

    #@0
    .prologue
    .line 359
    packed-switch p0, :pswitch_data_0

    #@3
    .line 366
    const-string/jumbo v0, "unknown"

    #@6
    return-object v0

    #@7
    .line 360
    :pswitch_0
    const-string/jumbo v0, "unspecified"

    #@a
    return-object v0

    #@b
    .line 361
    :pswitch_1
    const-string/jumbo v0, "simple"

    #@e
    return-object v0

    #@f
    .line 362
    :pswitch_2
    const-string/jumbo v0, "native"

    #@12
    return-object v0

    #@13
    .line 363
    :pswitch_3
    const-string/jumbo v0, "gpu"

    #@16
    return-object v0

    #@17
    .line 364
    :pswitch_4
    const-string/jumbo v0, "vbo"

    #@1a
    return-object v0

    #@1b
    .line 365
    :pswitch_5
    const-string/jumbo v0, "renderscript"

    #@1e
    return-object v0

    #@1f
    .line 359
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static unspecified()Landroid/filterfw/core/FrameFormat;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 74
    new-instance v0, Landroid/filterfw/core/FrameFormat;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    #@6
    return-object v0
.end method


# virtual methods
.method calcSize([I)I
    .locals 4
    .param p1, "dimensions"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 424
    if-eqz p1, :cond_1

    #@3
    array-length v3, p1

    #@4
    if-lez v3, :cond_1

    #@6
    .line 425
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@9
    move-result v1

    #@a
    .line 426
    .local v1, "size":I
    array-length v3, p1

    #@b
    :goto_0
    if-ge v2, v3, :cond_0

    #@d
    aget v0, p1, v2

    #@f
    .line 427
    .local v0, "dim":I
    mul-int/2addr v1, v0

    #@10
    .line 426
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 429
    .end local v0    # "dim":I
    :cond_0
    return v1

    #@14
    .line 431
    .end local v1    # "size":I
    :cond_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 172
    if-ne p0, p1, :cond_0

    #@3
    .line 173
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 176
    :cond_0
    instance-of v2, p1, Landroid/filterfw/core/FrameFormat;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 177
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 180
    check-cast v0, Landroid/filterfw/core/FrameFormat;

    #@d
    .line 181
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    iget v2, v0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@f
    iget v3, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 182
    iget v2, v0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    #@15
    iget v3, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 183
    iget v2, v0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    #@1b
    iget v3, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 184
    iget-object v2, v0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@21
    iget-object v3, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@23
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@26
    move-result v2

    #@27
    .line 181
    if-eqz v2, :cond_2

    #@29
    .line 185
    iget-object v1, v0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@2b
    iget-object v2, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@2d
    invoke-virtual {v1, v2}, Landroid/filterfw/core/KeyValueMap;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    .line 181
    :cond_2
    return v1
.end method

.method public getBaseType()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@2
    return v0
.end method

.method public getBytesPerSample()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    #@2
    return v0
.end method

.method public getDepth()I
    .locals 2

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@6
    array-length v0, v0

    #@7
    const/4 v1, 0x3

    #@8
    if-lt v0, v1, :cond_0

    #@a
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@c
    const/4 v1, 0x2

    #@d
    aget v0, v0, v1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, -0x1

    #@11
    goto :goto_0
.end method

.method public getDimension(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getDimensionCount()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@8
    array-length v0, v0

    #@9
    goto :goto_0
.end method

.method public getDimensions()[I
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@2
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@6
    array-length v0, v0

    #@7
    const/4 v1, 0x2

    #@8
    if-lt v0, v1, :cond_0

    #@a
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@c
    const/4 v1, 0x1

    #@d
    aget v0, v0, v1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, -0x1

    #@11
    goto :goto_0
.end method

.method public getLength()I
    .locals 2

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@6
    array-length v0, v0

    #@7
    const/4 v1, 0x1

    #@8
    if-lt v0, v1, :cond_0

    #@a
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@c
    const/4 v1, 0x0

    #@d
    aget v0, v0, v1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, -0x1

    #@11
    goto :goto_0
.end method

.method public getMetaValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 127
    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@7
    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getNumberOfDimensions()I
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@6
    array-length v0, v0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public getSize()I
    .locals 2

    #@0
    .prologue
    .line 151
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@7
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->calcSize([I)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    #@d
    .line 152
    :cond_0
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mSize:I

    #@f
    return v0
.end method

.method public getTarget()I
    .locals 1

    #@0
    .prologue
    .line 94
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    #@2
    return v0
.end method

.method public getValuesPerSample()I
    .locals 2

    #@0
    .prologue
    .line 90
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    #@2
    iget v1, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@4
    invoke-static {v1}, Landroid/filterfw/core/FrameFormat;->bytesPerSampleOf(I)I

    #@7
    move-result v1

    #@8
    div-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getLength()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hasMetaKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@6
    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public hasMetaKey(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@6
    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 115
    iget-object v0, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@e
    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_0

    #@1c
    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    #@1e
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "FrameFormat meta-key \'"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "\' is of type "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 118
    iget-object v2, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@37
    invoke-virtual {v2, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3e
    move-result-object v2

    #@3f
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 118
    const-string/jumbo v2, " but expected to be of type "

    #@46
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 119
    const-string/jumbo v2, "!"

    #@51
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    .line 116
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0

    #@5d
    .line 121
    :cond_0
    const/4 v0, 0x1

    #@5e
    return v0

    #@5f
    .line 123
    :cond_1
    const/4 v0, 0x0

    #@60
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 190
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@2
    xor-int/lit16 v0, v0, 0x1073

    #@4
    iget v1, p0, Landroid/filterfw/core/FrameFormat;->mBytesPerSample:I

    #@6
    xor-int/2addr v0, v1

    #@7
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@a
    move-result v1

    #@b
    xor-int/2addr v0, v1

    #@c
    return v0
.end method

.method public isBinaryDataType()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 82
    iget v2, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@4
    if-lt v2, v0, :cond_0

    #@6
    iget v2, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@8
    const/4 v3, 0x6

    #@9
    if-gt v2, v3, :cond_0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    move v0, v1

    #@d
    goto :goto_0
.end method

.method public isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z
    .locals 8
    .param p1, "specification"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 195
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 196
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    #@b
    move-result v4

    #@c
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    #@f
    move-result v5

    #@10
    if-eq v4, v5, :cond_0

    #@12
    .line 197
    return v6

    #@13
    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 202
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1c
    move-result v4

    #@1d
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@20
    move-result v5

    #@21
    if-eq v4, v5, :cond_1

    #@23
    .line 203
    return v6

    #@24
    .line 207
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@27
    move-result v4

    #@28
    if-eq v4, v7, :cond_2

    #@2a
    .line 208
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@2d
    move-result v4

    #@2e
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@31
    move-result v5

    #@32
    if-eq v4, v5, :cond_2

    #@34
    .line 209
    return v6

    #@35
    .line 213
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    #@38
    move-result v4

    #@39
    if-lez v4, :cond_3

    #@3b
    .line 214
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    #@3e
    move-result v4

    #@3f
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    #@42
    move-result v5

    #@43
    if-eq v4, v5, :cond_3

    #@45
    .line 215
    return v6

    #@46
    .line 219
    :cond_3
    const/4 v0, 0x0

    #@47
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    #@4a
    move-result v4

    #@4b
    if-ge v0, v4, :cond_5

    #@4d
    .line 220
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    #@50
    move-result v1

    #@51
    .line 221
    .local v1, "specDim":I
    if-eqz v1, :cond_4

    #@53
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    #@56
    move-result v4

    #@57
    if-eq v4, v1, :cond_4

    #@59
    .line 222
    return v6

    #@5a
    .line 219
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 227
    .end local v1    # "specDim":I
    :cond_5
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@60
    move-result-object v4

    #@61
    if-eqz v4, :cond_6

    #@63
    .line 228
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@66
    move-result-object v4

    #@67
    if-eqz v4, :cond_9

    #@69
    .line 229
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@74
    move-result v4

    #@75
    if-eqz v4, :cond_9

    #@77
    .line 235
    :cond_6
    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@79
    if-eqz v4, :cond_a

    #@7b
    .line 236
    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@7d
    invoke-virtual {v4}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    #@80
    move-result-object v4

    #@81
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v3

    #@85
    .local v3, "specKey$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v4

    #@89
    if-eqz v4, :cond_a

    #@8b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v2

    #@8f
    check-cast v2, Ljava/lang/String;

    #@91
    .line 237
    .local v2, "specKey":Ljava/lang/String;
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@93
    if-eqz v4, :cond_8

    #@95
    .line 238
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@97
    invoke-virtual {v4, v2}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    #@9a
    move-result v4

    #@9b
    if-eqz v4, :cond_8

    #@9d
    .line 239
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@9f
    invoke-virtual {v4, v2}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a2
    move-result-object v4

    #@a3
    iget-object v5, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@a5
    invoke-virtual {v5, v2}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v4

    #@ad
    if-nez v4, :cond_7

    #@af
    .line 240
    :cond_8
    return v6

    #@b0
    .line 230
    .end local v2    # "specKey":Ljava/lang/String;
    .end local v3    # "specKey$iterator":Ljava/util/Iterator;
    :cond_9
    return v6

    #@b1
    .line 246
    :cond_a
    return v7
.end method

.method isReplaceableBy(Landroid/filterfw/core/FrameFormat;)Z
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 435
    iget v0, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    #@2
    iget v1, p1, Landroid/filterfw/core/FrameFormat;->mTarget:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 436
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@d
    move-result v1

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 437
    iget-object v0, p1, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@12
    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@14
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@17
    move-result v0

    #@18
    .line 435
    :goto_0
    return v0

    #@19
    :cond_0
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method public mayBeCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z
    .locals 8
    .param p1, "specification"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 251
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 252
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 253
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    #@11
    move-result v4

    #@12
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    #@15
    move-result v5

    #@16
    if-eq v4, v5, :cond_0

    #@18
    .line 254
    return v6

    #@19
    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 259
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    .line 260
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@28
    move-result v4

    #@29
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@2c
    move-result v5

    #@2d
    if-eq v4, v5, :cond_1

    #@2f
    .line 261
    return v6

    #@30
    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@33
    move-result v4

    #@34
    if-eq v4, v7, :cond_2

    #@36
    .line 266
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@39
    move-result v4

    #@3a
    if-eq v4, v7, :cond_2

    #@3c
    .line 267
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@3f
    move-result v4

    #@40
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@43
    move-result v5

    #@44
    if-eq v4, v5, :cond_2

    #@46
    .line 268
    return v6

    #@47
    .line 272
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    #@4a
    move-result v4

    #@4b
    if-lez v4, :cond_3

    #@4d
    .line 273
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    #@50
    move-result v4

    #@51
    if-lez v4, :cond_3

    #@53
    .line 274
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    #@56
    move-result v4

    #@57
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    #@5a
    move-result v5

    #@5b
    if-eq v4, v5, :cond_3

    #@5d
    .line 275
    return v6

    #@5e
    .line 279
    :cond_3
    const/4 v0, 0x0

    #@5f
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    #@62
    move-result v4

    #@63
    if-ge v0, v4, :cond_5

    #@65
    .line 280
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    #@68
    move-result v1

    #@69
    .line 281
    .local v1, "specDim":I
    if-eqz v1, :cond_4

    #@6b
    .line 282
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_4

    #@71
    .line 283
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameFormat;->getDimension(I)I

    #@74
    move-result v4

    #@75
    if-eq v4, v1, :cond_4

    #@77
    .line 284
    return v6

    #@78
    .line 279
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 289
    .end local v1    # "specDim":I
    :cond_5
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@7e
    move-result-object v4

    #@7f
    if-eqz v4, :cond_6

    #@81
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@84
    move-result-object v4

    #@85
    if-eqz v4, :cond_6

    #@87
    .line 290
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@92
    move-result v4

    #@93
    if-nez v4, :cond_6

    #@95
    .line 291
    return v6

    #@96
    .line 296
    :cond_6
    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@98
    if-eqz v4, :cond_8

    #@9a
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@9c
    if-eqz v4, :cond_8

    #@9e
    .line 297
    iget-object v4, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@a0
    invoke-virtual {v4}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    #@a3
    move-result-object v4

    #@a4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a7
    move-result-object v3

    #@a8
    .local v3, "specKey$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@ab
    move-result v4

    #@ac
    if-eqz v4, :cond_8

    #@ae
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b1
    move-result-object v2

    #@b2
    check-cast v2, Ljava/lang/String;

    #@b4
    .line 298
    .local v2, "specKey":Ljava/lang/String;
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@b6
    invoke-virtual {v4, v2}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    #@b9
    move-result v4

    #@ba
    if-eqz v4, :cond_7

    #@bc
    .line 299
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@be
    invoke-virtual {v4, v2}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c1
    move-result-object v4

    #@c2
    iget-object v5, p1, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@c4
    invoke-virtual {v5, v2}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c7
    move-result-object v5

    #@c8
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v4

    #@cc
    if-nez v4, :cond_7

    #@ce
    .line 300
    return v6

    #@cf
    .line 306
    .end local v2    # "specKey":Ljava/lang/String;
    .end local v3    # "specKey$iterator":Ljava/util/Iterator;
    :cond_8
    return v7
.end method

.method public mutableCopy()Landroid/filterfw/core/MutableFrameFormat;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    #@3
    invoke-direct {v0}, Landroid/filterfw/core/MutableFrameFormat;-><init>()V

    #@6
    .line 161
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    #@9
    move-result v2

    #@a
    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setBaseType(I)V

    #@d
    .line 162
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@10
    move-result v2

    #@11
    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    #@14
    .line 163
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@17
    move-result v2

    #@18
    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    #@1b
    .line 164
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getDimensions()[I

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions([I)V

    #@22
    .line 165
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0, v2}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    #@29
    .line 166
    iget-object v2, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@2b
    if-nez v2, :cond_0

    #@2d
    :goto_0
    iput-object v1, v0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@2f
    .line 167
    return-object v0

    #@30
    .line 166
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@32
    invoke-virtual {v1}, Landroid/filterfw/core/KeyValueMap;->clone()Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Landroid/filterfw/core/KeyValueMap;

    #@38
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/filterfw/core/FrameFormat;->getValuesPerSample()I

    #@3
    move-result v3

    #@4
    .line 404
    .local v3, "valuesPerSample":I
    const/4 v4, 0x1

    #@5
    if-ne v3, v4, :cond_0

    #@7
    const-string/jumbo v1, ""

    #@a
    .line 405
    .local v1, "sampleCountString":Ljava/lang/String;
    :goto_0
    iget v4, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    #@c
    if-nez v4, :cond_1

    #@e
    const-string/jumbo v2, ""

    #@11
    .line 406
    .local v2, "targetString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    #@13
    if-nez v4, :cond_2

    #@15
    .line 407
    const-string/jumbo v0, ""

    #@18
    .line 410
    .local v0, "classString":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 411
    iget v5, p0, Landroid/filterfw/core/FrameFormat;->mBaseType:I

    #@23
    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->baseTypeToString(I)Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    .line 410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 413
    iget-object v5, p0, Landroid/filterfw/core/FrameFormat;->mDimensions:[I

    #@31
    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->dimensionsToString([I)Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    .line 415
    iget-object v5, p0, Landroid/filterfw/core/FrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@3f
    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->metaDataToString(Landroid/filterfw/core/KeyValueMap;)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    return-object v4

    #@4c
    .line 404
    .end local v0    # "classString":Ljava/lang/String;
    .end local v1    # "sampleCountString":Ljava/lang/String;
    .end local v2    # "targetString":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    .restart local v1    # "sampleCountString":Ljava/lang/String;
    goto :goto_0

    #@51
    .line 405
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    iget v5, p0, Landroid/filterfw/core/FrameFormat;->mTarget:I

    #@58
    invoke-static {v5}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    const-string/jumbo v5, " "

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    .restart local v2    # "targetString":Ljava/lang/String;
    goto :goto_1

    #@6c
    .line 408
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v5, " class("

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    iget-object v5, p0, Landroid/filterfw/core/FrameFormat;->mObjectClass:Ljava/lang/Class;

    #@7a
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    const-string/jumbo v5, ") "

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v0

    #@8d
    .restart local v0    # "classString":Ljava/lang/String;
    goto :goto_2
.end method
