.class public final Ljava/time/temporal/ValueRange;
.super Ljava/lang/Object;
.source "ValueRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x658e56a90d32a548L


# instance fields
.field private final greylist-max-o maxLargest:J

.field private final greylist-max-o maxSmallest:J

.field private final greylist-max-o minLargest:J

.field private final greylist-max-o minSmallest:J


# direct methods
.method private constructor greylist-max-o <init>(JJJJ)V
    .registers 9
    .param p1, "minSmallest"    # J
    .param p3, "minLargest"    # J
    .param p5, "maxSmallest"    # J
    .param p7, "maxLargest"    # J

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-wide p1, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    .line 196
    iput-wide p3, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    .line 197
    iput-wide p5, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    .line 198
    iput-wide p7, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    .line 199
    return-void
.end method

.method private greylist-max-o genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J

    .line 344
    const-string v0, "): "

    if-eqz p1, :cond_2a

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (valid values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value (valid values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(JJ)Ljava/time/temporal/ValueRange;
    .registers 14
    .param p0, "min"    # J
    .param p2, "max"    # J

    .line 127
    cmp-long v0, p0, p2

    if-gtz v0, :cond_e

    .line 130
    new-instance v1, Ljava/time/temporal/ValueRange;

    move-wide v4, p0

    move-wide v8, p2

    move-wide v2, p0

    move-wide v6, p2

    .end local p0    # "min":J
    .end local p2    # "max":J
    .local v2, "min":J
    .local v6, "max":J
    invoke-direct/range {v1 .. v9}, Ljava/time/temporal/ValueRange;-><init>(JJJJ)V

    return-object v1

    .line 128
    .end local v2    # "min":J
    .end local v6    # "max":J
    .restart local p0    # "min":J
    .restart local p2    # "max":J
    :cond_e
    move-wide v2, p0

    .end local p0    # "min":J
    .restart local v2    # "min":J
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum value must be less than maximum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist test-api of(JJJ)Ljava/time/temporal/ValueRange;
    .registers 15
    .param p0, "min"    # J
    .param p2, "maxSmallest"    # J
    .param p4, "maxLargest"    # J

    .line 148
    cmp-long v0, p0, p2

    if-gtz v0, :cond_d

    .line 151
    move-wide v3, p0

    move-wide v1, p0

    move-wide v5, p2

    move-wide v7, p4

    .end local p0    # "min":J
    .end local p2    # "maxSmallest":J
    .end local p4    # "maxLargest":J
    .local v1, "min":J
    .local v5, "maxSmallest":J
    .local v7, "maxLargest":J
    invoke-static/range {v1 .. v8}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object p0

    return-object p0

    .line 149
    .end local v1    # "min":J
    .end local v5    # "maxSmallest":J
    .end local v7    # "maxLargest":J
    .restart local p0    # "min":J
    .restart local p2    # "maxSmallest":J
    .restart local p4    # "maxLargest":J
    :cond_d
    move-wide v1, p0

    .end local p0    # "min":J
    .restart local v1    # "min":J
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum value must be less than smallest maximum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist test-api of(JJJJ)Ljava/time/temporal/ValueRange;
    .registers 18
    .param p0, "minSmallest"    # J
    .param p2, "minLargest"    # J
    .param p4, "maxSmallest"    # J
    .param p6, "maxLargest"    # J

    .line 171
    cmp-long v0, p0, p2

    if-gtz v0, :cond_33

    .line 174
    cmp-long v0, p4, p6

    if-gtz v0, :cond_2b

    .line 177
    cmp-long v0, p2, p6

    if-gtz v0, :cond_23

    .line 180
    cmp-long v0, p0, p4

    if-gtz v0, :cond_1b

    .line 183
    new-instance v1, Ljava/time/temporal/ValueRange;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Ljava/time/temporal/ValueRange;-><init>(JJJJ)V

    return-object v1

    .line 181
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest minimum value must be less than smallest maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Largest minimum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 368
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 369
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2c

    .line 372
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_24

    .line 375
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1c

    .line 378
    return-void

    .line 376
    :cond_1c
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Minimum value must be less than maximum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_24
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_2c
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api checkValidIntValue(JLjava/time/temporal/TemporalField;)I
    .registers 6
    .param p1, "value"    # J
    .param p3, "field"    # Ljava/time/temporal/TemporalField;

    .line 337
    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 340
    long-to-int v0, p1

    return v0

    .line 338
    :cond_8
    new-instance v0, Ljava/time/DateTimeException;

    invoke-direct {p0, p3, p1, p2}, Ljava/time/temporal/ValueRange;->genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api checkValidValue(JLjava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "value"    # J
    .param p3, "field"    # Ljava/time/temporal/TemporalField;

    .line 318
    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 321
    return-wide p1

    .line 319
    :cond_7
    new-instance v0, Ljava/time/DateTimeException;

    invoke-direct {p0, p3, p1, p2}, Ljava/time/temporal/ValueRange;->genInvalidFieldMessage(Ljava/time/temporal/TemporalField;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 393
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 394
    return v0

    .line 400
    :cond_4
    instance-of v1, p1, Ljava/time/temporal/ValueRange;

    if-eqz v1, :cond_2c

    .line 396
    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ValueRange;

    .local v1, "other":Ljava/time/temporal/ValueRange;
    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v4, v1, Ljava/time/temporal/ValueRange;->minSmallest:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2c

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    iget-wide v4, v1, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2c

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v4, v1, Ljava/time/temporal/ValueRange;->maxSmallest:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2c

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    iget-wide v4, v1, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2c

    goto :goto_2d

    .end local v1    # "other":Ljava/time/temporal/ValueRange;
    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0
.end method

.method public whitelist test-api getLargestMinimum()J
    .registers 3

    .line 237
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    return-wide v0
.end method

.method public whitelist test-api getMaximum()J
    .registers 3

    .line 261
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    return-wide v0
.end method

.method public whitelist test-api getMinimum()J
    .registers 3

    .line 225
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    return-wide v0
.end method

.method public whitelist test-api getSmallestMaximum()J
    .registers 3

    .line 249
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 410
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    const/16 v5, 0x30

    shr-long/2addr v2, v5

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    shr-long/2addr v2, v6

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    shl-long/2addr v2, v5

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 413
    .local v0, "hash":J
    ushr-long v2, v0, v6

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public whitelist test-api isFixed()Z
    .registers 5

    .line 212
    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    iget-wide v0, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api isIntValue()Z
    .registers 5

    .line 278
    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public whitelist test-api isValidIntValue(J)Z
    .registers 4
    .param p1, "value"    # J

    .line 303
    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->isIntValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isValidValue(J)Z
    .registers 5
    .param p1, "value"    # J

    .line 290
    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 430
    iget-wide v1, p0, Ljava/time/temporal/ValueRange;->minSmallest:J

    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v1, v1, v3

    const/16 v2, 0x2f

    if-eqz v1, :cond_1d

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->minLargest:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 433
    :cond_1d
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 434
    iget-wide v3, p0, Ljava/time/temporal/ValueRange;->maxSmallest:J

    iget-wide v5, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_39

    .line 435
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljava/time/temporal/ValueRange;->maxLargest:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 437
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
