.class public Landroid/metrics/LogMaker;
.super Ljava/lang/Object;
.source "LogMaker.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final greylist-max-o MAX_SERIALIZED_SIZE:I = 0xfa0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "LogBuilder"


# instance fields
.field private greylist-max-o entries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "category"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 55
    return-void
.end method

.method public constructor whitelist <init>([Ljava/lang/Object;)V
    .registers 3
    .param p1, "items"    # [Ljava/lang/Object;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    .line 59
    if-eqz p1, :cond_10

    .line 60
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->deserialize([Ljava/lang/Object;)V

    goto :goto_14

    .line 62
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 64
    :goto_14
    return-void
.end method


# virtual methods
.method public whitelist addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 245
    if-nez p2, :cond_7

    .line 246
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->clearTaggedData(I)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0

    .line 248
    :cond_7
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->isValidValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_37

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log value too long, omitted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 255
    :cond_37
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    :goto_3c
    return-object p0

    .line 249
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be loggable type - int, long, float, String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearCategory()Landroid/metrics/LogMaker;
    .registers 3

    .line 74
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 75
    return-object p0
.end method

.method public whitelist clearPackageName()Landroid/metrics/LogMaker;
    .registers 3

    .line 150
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 151
    return-object p0
.end method

.method public greylist-max-o clearProcessId()Landroid/metrics/LogMaker;
    .registers 3

    .line 170
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x361

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 171
    return-object p0
.end method

.method public whitelist clearSubtype()Landroid/metrics/LogMaker;
    .registers 3

    .line 98
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 99
    return-object p0
.end method

.method public whitelist clearTaggedData(I)Landroid/metrics/LogMaker;
    .registers 3
    .param p1, "tag"    # I

    .line 267
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 268
    return-object p0
.end method

.method public greylist-max-o clearTimestamp()Landroid/metrics/LogMaker;
    .registers 3

    .line 128
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x325

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 129
    return-object p0
.end method

.method public whitelist clearType()Landroid/metrics/LogMaker;
    .registers 3

    .line 86
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 87
    return-object p0
.end method

.method public greylist-max-o clearUid()Landroid/metrics/LogMaker;
    .registers 3

    .line 191
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x3af

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 192
    return-object p0
.end method

.method public whitelist deserialize([Ljava/lang/Object;)V
    .registers 8
    .param p1, "items"    # [Ljava/lang/Object;

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "i":I
    :goto_1
    if-eqz p1, :cond_4b

    array-length v1, p1

    if-ge v0, v1, :cond_4b

    .line 414
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-object v0, p1, v0

    .line 415
    .local v0, "key":Ljava/lang/Object;
    array-length v2, p1

    if-ge v1, v2, :cond_15

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v1, p1, v1

    move v5, v2

    move-object v2, v1

    move v1, v5

    goto :goto_16

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_15
    const/4 v2, 0x0

    .line 416
    .local v2, "value":Ljava/lang/Object;
    :goto_16
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_27

    .line 417
    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_49

    .line 419
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_38

    const-string/jumbo v4, "null"

    goto :goto_3c

    :cond_38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LogBuilder"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .end local v0    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    :goto_49
    move v0, v1

    goto :goto_1

    .line 422
    .end local v1    # "i":I
    .local v0, "i":I
    :cond_4b
    return-void
.end method

.method public whitelist getCategory()I
    .registers 3

    .line 287
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 289
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 291
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCounterBucket()J
    .registers 4

    .line 367
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x321

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 368
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    .line 369
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 371
    :cond_14
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist getCounterName()Ljava/lang/String;
    .registers 3

    .line 357
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x31f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 358
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 359
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 361
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getCounterValue()I
    .registers 3

    .line 383
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 384
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 385
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 387
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getEntries()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 3

    .line 327
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 328
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 329
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 331
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getProcessId()I
    .registers 3

    .line 337
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x361

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 338
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 339
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 341
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getSubtype()I
    .registers 3

    .line 307
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 308
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 309
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 311
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getTaggedData(I)Ljava/lang/Object;
    .registers 3
    .param p1, "tag"    # I

    .line 282
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .registers 4

    .line 317
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x325

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 318
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_14

    .line 319
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 321
    :cond_14
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist getType()I
    .registers 3

    .line 297
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 299
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 301
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getUid()I
    .registers 3

    .line 347
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x3af

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 348
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 349
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 351
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist isLongCounterBucket()Z
    .registers 3

    .line 377
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x321

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    return v1
.end method

.method public whitelist isSubsetOf(Landroid/metrics/LogMaker;)Z
    .registers 8
    .param p1, "that"    # Landroid/metrics/LogMaker;

    .line 429
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 430
    return v0

    .line 432
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 433
    iget-object v2, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 434
    .local v2, "key":I
    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 435
    .local v3, "thisValue":Ljava/lang/Object;
    iget-object v4, p1, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 436
    .local v4, "thatValue":Ljava/lang/Object;
    if-nez v3, :cond_23

    if-nez v4, :cond_29

    :cond_23
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 437
    :cond_29
    return v0

    .line 432
    .end local v2    # "key":I
    .end local v3    # "thisValue":Ljava/lang/Object;
    .end local v4    # "thatValue":Ljava/lang/Object;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 439
    .end local v1    # "i":I
    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isValidValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 275
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_13

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_13

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_13

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist serialize()[Ljava/lang/Object;
    .registers 5

    .line 395
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 396
    .local v0, "out":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 397
    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 398
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 400
    .end local v1    # "i":I
    :cond_30
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 401
    .local v1, "size":I
    const/16 v2, 0xfa0

    if-gt v1, v2, :cond_3e

    .line 405
    return-object v0

    .line 402
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log line too long, did not emit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogBuilder"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public whitelist setCategory(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "category"    # I

    .line 68
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    return-object p0
.end method

.method public greylist-max-o setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 143
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x367

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    return-object p0
.end method

.method public greylist-max-o setCounterBucket(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "bucket"    # I

    .line 213
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x321

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    return-object p0
.end method

.method public greylist-max-o setCounterBucket(J)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "bucket"    # J

    .line 224
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x321

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    return-object p0
.end method

.method public greylist-max-o setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x31f

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    return-object p0
.end method

.method public greylist-max-o setCounterValue(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "value"    # I

    .line 235
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x322

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    return-object p0
.end method

.method public greylist-max-o setLatency(J)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "milliseconds"    # J

    .line 108
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x54f

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    return-object p0
.end method

.method public greylist-max-o setProcessId(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "pid"    # I

    .line 162
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x361

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    return-object p0
.end method

.method public whitelist setSubtype(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "subtype"    # I

    .line 92
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    return-object p0
.end method

.method public greylist-max-o setTimestamp(J)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "timestamp"    # J

    .line 120
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x325

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    return-object p0
.end method

.method public whitelist setType(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "type"    # I

    .line 80
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    return-object p0
.end method

.method public greylist-max-o setUid(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "uid"    # I

    .line 182
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x3af

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    return-object p0
.end method
