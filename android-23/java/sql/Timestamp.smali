.class public Ljava/sql/Timestamp;
.super Ljava/util/Date;
.source "Timestamp.java"


# static fields
.field private static final PADDING:Ljava/lang/String; = "000000000"

.field private static final TIME_FORMAT_REGEX:Ljava/lang/String; = "[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}.*"

.field private static final serialVersionUID:J = 0x2618d5c80153bf65L


# instance fields
.field private nanos:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 3
    .param p1, "theYear"    # I
    .param p2, "theMonth"    # I
    .param p3, "theDate"    # I
    .param p4, "theHour"    # I
    .param p5, "theMinute"    # I
    .param p6, "theSecond"    # I
    .param p7, "theNano"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 84
    invoke-direct/range {p0 .. p6}, Ljava/util/Date;-><init>(IIIIII)V

    #@3
    .line 85
    if-ltz p7, :cond_0

    #@5
    const v0, 0x3b9ac9ff

    #@8
    if-le p7, v0, :cond_1

    #@a
    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "ns out of range: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 88
    :cond_1
    iput p7, p0, Ljava/sql/Timestamp;->nanos:I

    #@26
    .line 83
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "theTime"    # J

    #@0
    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    #@3
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;->setTimeImpl(J)V

    #@6
    .line 99
    return-void
.end method

.method private static badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Timestamp format must be yyyy-MM-dd HH:mm:ss.fffffffff; was \'"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 480
    const-string/jumbo v2, "\'"

    #@15
    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    return-object v0
.end method

.method private format(IILjava/lang/StringBuilder;)V
    .locals 4
    .param p1, "date"    # I
    .param p2, "digits"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 386
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 387
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    sub-int v1, p2, v1

    #@b
    if-lez v1, :cond_0

    #@d
    .line 388
    const-string/jumbo v1, "000000000"

    #@10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@13
    move-result v2

    #@14
    sub-int v2, p2, v2

    #@16
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 390
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 385
    return-void
.end method

.method private setTimeImpl(J)V
    .locals 7
    .param p1, "theTime"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x3e8

    #@2
    .line 334
    rem-long v2, p1, v4

    #@4
    long-to-int v0, v2

    #@5
    .line 335
    .local v0, "milliseconds":I
    int-to-long v2, v0

    #@6
    sub-long/2addr p1, v2

    #@7
    .line 336
    if-gez v0, :cond_0

    #@9
    .line 337
    sub-long/2addr p1, v4

    #@a
    .line 338
    add-int/lit16 v0, v0, 0x3e8

    #@c
    .line 340
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    #@f
    .line 341
    const v1, 0xf4240

    #@12
    mul-int/2addr v1, v0

    #@13
    invoke-virtual {p0, v1}, Ljava/sql/Timestamp;->setNanos(I)V

    #@16
    .line 323
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 13
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 407
    if-nez p0, :cond_0

    #@3
    .line 408
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v11, "Argument cannot be null"

    #@8
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v10

    #@c
    .line 412
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    .line 413
    const-string/jumbo v10, "[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}.*"

    #@13
    invoke-static {v10, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@16
    move-result v10

    #@17
    if-nez v10, :cond_1

    #@19
    .line 414
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@1c
    move-result-object v10

    #@1d
    throw v10

    #@1e
    .line 417
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@20
    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss"

    #@23
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@25
    invoke-direct {v1, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@28
    .line 418
    .local v1, "df":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/text/ParsePosition;

    #@2a
    invoke-direct {v7, v12}, Ljava/text/ParsePosition;-><init>(I)V

    #@2d
    .line 429
    .local v7, "pp":Ljava/text/ParsePosition;
    :try_start_0
    invoke-virtual {v1, p0, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result-object v0

    #@31
    .line 434
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_2

    #@33
    .line 435
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@36
    move-result-object v10

    #@37
    throw v10

    #@38
    .line 430
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v2

    #@39
    .line 431
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@3c
    move-result-object v10

    #@3d
    throw v10

    #@3e
    .line 446
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "date":Ljava/util/Date;
    :cond_2
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    #@41
    move-result v6

    #@42
    .line 447
    .local v6, "position":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@45
    move-result v10

    #@46
    sub-int v8, v10, v6

    #@48
    .line 450
    .local v8, "remaining":I
    if-nez v8, :cond_4

    #@4a
    .line 452
    const/4 v5, 0x0

    #@4b
    .line 472
    .local v5, "nanos":I
    :cond_3
    new-instance v9, Ljava/sql/Timestamp;

    #@4d
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@50
    move-result-wide v10

    #@51
    invoke-direct {v9, v10, v11}, Ljava/sql/Timestamp;-><init>(J)V

    #@54
    .line 473
    .local v9, "timestamp":Ljava/sql/Timestamp;
    invoke-virtual {v9, v5}, Ljava/sql/Timestamp;->setNanos(I)V

    #@57
    .line 475
    return-object v9

    #@58
    .line 455
    .end local v5    # "nanos":I
    .end local v9    # "timestamp":Ljava/sql/Timestamp;
    :cond_4
    const/4 v10, 0x2

    #@59
    if-lt v8, v10, :cond_5

    #@5b
    const/16 v10, 0xa

    #@5d
    if-le v8, v10, :cond_6

    #@5f
    .line 456
    :cond_5
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@62
    move-result-object v10

    #@63
    throw v10

    #@64
    .line 455
    :cond_6
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@67
    move-result v10

    #@68
    const/16 v11, 0x2e

    #@6a
    if-ne v10, v11, :cond_5

    #@6c
    .line 459
    add-int/lit8 v10, v6, 0x1

    #@6e
    :try_start_1
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@71
    move-result-object v10

    #@72
    invoke-static {v10}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@75
    move-result v5

    #@76
    .line 465
    .restart local v5    # "nanos":I
    if-eqz v5, :cond_3

    #@78
    .line 466
    add-int/lit8 v4, v8, -0x1

    #@7a
    .local v4, "i":I
    :goto_0
    const/16 v10, 0x9

    #@7c
    if-ge v4, v10, :cond_3

    #@7e
    .line 467
    mul-int/lit8 v5, v5, 0xa

    #@80
    .line 466
    add-int/lit8 v4, v4, 0x1

    #@82
    goto :goto_0

    #@83
    .line 460
    .end local v4    # "i":I
    .end local v5    # "nanos":I
    :catch_1
    move-exception v3

    #@84
    .line 461
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Ljava/sql/Timestamp;->badTimestampString(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    #@87
    move-result-object v10

    #@88
    throw v10
.end method


# virtual methods
.method public after(Ljava/sql/Timestamp;)Z
    .locals 8
    .param p1, "theTimestamp"    # Ljava/sql/Timestamp;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 118
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    #@5
    move-result-wide v2

    #@6
    .line 119
    .local v2, "thisTime":J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    #@9
    move-result-wide v0

    #@a
    .line 122
    .local v0, "compareTime":J
    cmp-long v4, v2, v0

    #@c
    if-lez v4, :cond_0

    #@e
    .line 123
    return v7

    #@f
    .line 126
    :cond_0
    cmp-long v4, v2, v0

    #@11
    if-gez v4, :cond_1

    #@13
    .line 127
    return v6

    #@14
    .line 133
    :cond_1
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    #@17
    move-result v4

    #@18
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    #@1b
    move-result v5

    #@1c
    if-le v4, v5, :cond_2

    #@1e
    .line 134
    return v7

    #@1f
    .line 136
    :cond_2
    return v6
.end method

.method public before(Ljava/sql/Timestamp;)Z
    .locals 8
    .param p1, "theTimestamp"    # Ljava/sql/Timestamp;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 150
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    #@5
    move-result-wide v2

    #@6
    .line 151
    .local v2, "thisTime":J
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    #@9
    move-result-wide v0

    #@a
    .line 154
    .local v0, "compareTime":J
    cmp-long v4, v2, v0

    #@c
    if-gez v4, :cond_0

    #@e
    .line 155
    return v7

    #@f
    .line 158
    :cond_0
    cmp-long v4, v2, v0

    #@11
    if-lez v4, :cond_1

    #@13
    .line 159
    return v6

    #@14
    .line 165
    :cond_1
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    #@17
    move-result v4

    #@18
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    #@1b
    move-result v5

    #@1c
    if-ge v4, v5, :cond_2

    #@1e
    .line 166
    return v7

    #@1f
    .line 168
    :cond_2
    return v6
.end method

.method public compareTo(Ljava/sql/Timestamp;)I
    .locals 4
    .param p1, "theTimestamp"    # Ljava/sql/Timestamp;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 218
    invoke-super {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    #@4
    move-result v0

    #@5
    .line 219
    .local v0, "result":I
    if-nez v0, :cond_2

    #@7
    .line 220
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    #@a
    move-result v2

    #@b
    .line 221
    .local v2, "thisNano":I
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    #@e
    move-result v1

    #@f
    .line 222
    .local v1, "thatNano":I
    if-le v2, v1, :cond_0

    #@11
    .line 223
    const/4 v3, 0x1

    #@12
    return v3

    #@13
    .line 224
    :cond_0
    if-ne v2, v1, :cond_1

    #@15
    .line 225
    return v3

    #@16
    .line 227
    :cond_1
    const/4 v3, -0x1

    #@17
    return v3

    #@18
    .line 230
    .end local v1    # "thatNano":I
    .end local v2    # "thisNano":I
    :cond_2
    return v0
.end method

.method public compareTo(Ljava/util/Date;)I
    .locals 1
    .param p1, "theObject"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    check-cast p1, Ljava/sql/Timestamp;

    #@2
    .end local p1    # "theObject":Ljava/util/Date;
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "theObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 245
    instance-of v0, p1, Ljava/sql/Timestamp;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 246
    check-cast p1, Ljava/sql/Timestamp;

    #@6
    .end local p1    # "theObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->equals(Ljava/sql/Timestamp;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 248
    .restart local p1    # "theObject":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public equals(Ljava/sql/Timestamp;)Z
    .locals 6
    .param p1, "theTimestamp"    # Ljava/sql/Timestamp;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 261
    if-nez p1, :cond_0

    #@3
    .line 262
    return v0

    #@4
    .line 264
    :cond_0
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    #@b
    move-result-wide v4

    #@c
    cmp-long v1, v2, v4

    #@e
    if-nez v1, :cond_1

    #@10
    .line 265
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getNanos()I

    #@13
    move-result v1

    #@14
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    #@17
    move-result v2

    #@18
    if-ne v1, v2, :cond_1

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 264
    :cond_1
    return v0
.end method

.method public getNanos()I
    .locals 1

    #@0
    .prologue
    .line 275
    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    #@2
    return v0
.end method

.method public getTime()J
    .locals 4

    #@0
    .prologue
    .line 288
    invoke-super {p0}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    .line 289
    .local v0, "theTime":J
    iget v2, p0, Ljava/sql/Timestamp;->nanos:I

    #@6
    const v3, 0xf4240

    #@9
    div-int/2addr v2, v3

    #@a
    int-to-long v2, v2

    #@b
    add-long/2addr v0, v2

    #@c
    .line 290
    return-wide v0
.end method

.method public setNanos(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    if-ltz p1, :cond_0

    #@2
    const v0, 0x3b9ac9ff

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Value out of range"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 306
    :cond_1
    iput p1, p0, Ljava/sql/Timestamp;->nanos:I

    #@12
    .line 302
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "theTime"    # J

    #@0
    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;->setTimeImpl(J)V

    #@3
    .line 319
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x3a

    #@2
    const/16 v5, 0x30

    #@4
    const/16 v4, 0x2d

    #@6
    const/4 v3, 0x2

    #@7
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x1d

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 356
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getYear()I

    #@11
    move-result v1

    #@12
    add-int/lit16 v1, v1, 0x76c

    #@14
    const/4 v2, 0x4

    #@15
    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    #@18
    .line 357
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 358
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getMonth()I

    #@1e
    move-result v1

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    #@24
    .line 359
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 360
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getDate()I

    #@2a
    move-result v1

    #@2b
    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    #@2e
    .line 361
    const/16 v1, 0x20

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 362
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getHours()I

    #@36
    move-result v1

    #@37
    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    #@3a
    .line 363
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 364
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getMinutes()I

    #@40
    move-result v1

    #@41
    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    #@44
    .line 365
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@47
    .line 366
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getSeconds()I

    #@4a
    move-result v1

    #@4b
    invoke-direct {p0, v1, v3, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    #@4e
    .line 367
    const/16 v1, 0x2e

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    .line 368
    iget v1, p0, Ljava/sql/Timestamp;->nanos:I

    #@55
    if-nez v1, :cond_1

    #@57
    .line 369
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    .line 377
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    return-object v1

    #@5f
    .line 371
    :cond_1
    iget v1, p0, Ljava/sql/Timestamp;->nanos:I

    #@61
    const/16 v2, 0x9

    #@63
    invoke-direct {p0, v1, v2, v0}, Ljava/sql/Timestamp;->format(IILjava/lang/StringBuilder;)V

    #@66
    .line 372
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@69
    move-result v1

    #@6a
    add-int/lit8 v1, v1, -0x1

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@6f
    move-result v1

    #@70
    if-ne v1, v5, :cond_0

    #@72
    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@75
    move-result v1

    #@76
    add-int/lit8 v1, v1, -0x1

    #@78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@7b
    goto :goto_0
.end method
