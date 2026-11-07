.class public final Ljava/nio/file/attribute/FileTime;
.super Ljava/lang/Object;
.source "FileTime.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/file/attribute/FileTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DAYS_PER_10000_YEARS:J = 0x37bb49L

.field private static final greylist-max-o HOURS_PER_DAY:J = 0x18L

.field private static final greylist-max-o MAX_SECOND:J = 0x701cd2fa9578ffL

.field private static final greylist-max-o MICROS_PER_SECOND:J = 0xf4240L

.field private static final greylist-max-o MILLIS_PER_SECOND:J = 0x3e8L

.field private static final greylist-max-o MINUTES_PER_HOUR:J = 0x3cL

.field private static final greylist-max-o MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final greylist-max-o NANOS_PER_MICRO:I = 0x3e8

.field private static final greylist-max-o NANOS_PER_MILLI:I = 0xf4240

.field private static final greylist-max-o NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final greylist-max-o SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final greylist-max-o SECONDS_PER_10000_YEARS:J = 0x497968bd80L

.field private static final greylist-max-o SECONDS_PER_DAY:J = 0x15180L

.field private static final greylist-max-o SECONDS_PER_HOUR:J = 0xe10L

.field private static final greylist-max-o SECONDS_PER_MINUTE:J = 0x3cL


# instance fields
.field private greylist-max-o instant:Ljava/time/Instant;

.field private final greylist-max-o unit:Ljava/util/concurrent/TimeUnit;

.field private final greylist-max-o value:J

.field private greylist-max-o valueAsString:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V
    .registers 5
    .param p1, "value"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "instant"    # Ljava/time/Instant;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Ljava/nio/file/attribute/FileTime;->value:J

    .line 79
    iput-object p3, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 80
    iput-object p4, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    .line 81
    return-void
.end method

.method private greylist-max-o append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "w"    # I
    .param p3, "d"    # I

    .line 377
    nop

    :goto_1
    if-lez p2, :cond_f

    .line 378
    div-int v0, p3, p2

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    rem-int/2addr p3, p2

    .line 380
    div-int/lit8 p2, p2, 0xa

    goto :goto_1

    .line 382
    :cond_f
    return-object p1
.end method

.method public static whitelist test-api from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;
    .registers 5
    .param p0, "value"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 96
    const-string v0, "unit"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/nio/file/attribute/FileTime;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V

    return-object v0
.end method

.method public static whitelist test-api from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;
    .registers 5
    .param p0, "instant"    # Ljava/time/Instant;

    .line 124
    const-string v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/nio/file/attribute/FileTime;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V

    return-object v0
.end method

.method public static whitelist test-api fromMillis(J)Ljava/nio/file/attribute/FileTime;
    .registers 5
    .param p0, "value"    # J

    .line 110
    new-instance v0, Ljava/nio/file/attribute/FileTime;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/nio/file/attribute/FileTime;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/time/Instant;)V

    return-object v0
.end method

.method private static greylist-max-o scale(JJJ)J
    .registers 8
    .param p0, "d"    # J
    .param p2, "m"    # J
    .param p4, "over"    # J

    .line 209
    cmp-long v0, p0, p4

    if-lez v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 210
    :cond_a
    neg-long v0, p4

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 211
    :cond_12
    mul-long v0, p0, p2

    return-wide v0
.end method

.method private greylist-max-o toDays()J
    .registers 4

    .line 309
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_d

    .line 310
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0

    .line 312
    :cond_d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o toExcessNanos(J)J
    .registers 8
    .param p1, "days"    # J

    .line 317
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_16

    .line 318
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Ljava/nio/file/attribute/FileTime;->value:J

    iget-object v3, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0

    .line 320
    :cond_16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 321
    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 320
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 48
    check-cast p1, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, p1}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/nio/file/attribute/FileTime;)I
    .registers 15
    .param p1, "other"    # Ljava/nio/file/attribute/FileTime;

    .line 339
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p1, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-ne v0, v1, :cond_13

    .line 340
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    iget-wide v2, p1, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0

    .line 343
    :cond_13
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 344
    .local v0, "secs":J
    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 345
    .local v2, "secsOther":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v4

    .line 346
    .local v4, "cmp":I
    if-eqz v4, :cond_2a

    .line 347
    return v4

    .line 349
    :cond_2a
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->getNano()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Instant;->getNano()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->compare(JJ)I

    move-result v4

    .line 350
    if-eqz v4, :cond_43

    .line 351
    return v4

    .line 353
    :cond_43
    const-wide v5, 0x701cd2fa9578ffL

    cmp-long v5, v0, v5

    if-eqz v5, :cond_57

    const-wide v5, -0x701cefeb9bec00L

    cmp-long v5, v0, v5

    if-eqz v5, :cond_57

    .line 354
    const/4 v5, 0x0

    return v5

    .line 359
    :cond_57
    invoke-direct {p0}, Ljava/nio/file/attribute/FileTime;->toDays()J

    move-result-wide v5

    .line 360
    .local v5, "days":J
    invoke-direct {p1}, Ljava/nio/file/attribute/FileTime;->toDays()J

    move-result-wide v7

    .line 361
    .local v7, "daysOther":J
    cmp-long v9, v5, v7

    if-nez v9, :cond_70

    .line 362
    invoke-direct {p0, v5, v6}, Ljava/nio/file/attribute/FileTime;->toExcessNanos(J)J

    move-result-wide v9

    invoke-direct {p1, v7, v8}, Ljava/nio/file/attribute/FileTime;->toExcessNanos(J)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Long;->compare(JJ)I

    move-result v9

    return v9

    .line 364
    :cond_70
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->compare(JJ)I

    move-result v9

    return v9
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 291
    instance-of v0, p1, Ljava/nio/file/attribute/FileTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 305
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api to(Ljava/util/concurrent/TimeUnit;)J
    .registers 16
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 142
    const-string v0, "unit"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_12

    .line 144
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    iget-object v2, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    .line 146
    :cond_12
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 147
    .local v0, "secs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_50

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v4

    if-nez v6, :cond_2e

    goto :goto_50

    .line 150
    :cond_2e
    iget-object v6, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v6}, Ljava/time/Instant;->getNano()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 151
    .local v6, "nanos":J
    add-long v8, v0, v6

    .line 153
    .local v8, "r":J
    xor-long v10, v0, v8

    xor-long v12, v6, v8

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_4f

    .line 154
    cmp-long v10, v0, v12

    if-gez v10, :cond_4d

    goto :goto_4e

    :cond_4d
    move-wide v2, v4

    :goto_4e
    return-wide v2

    .line 156
    :cond_4f
    return-wide v8

    .line 148
    .end local v6    # "nanos":J
    .end local v8    # "r":J
    :cond_50
    :goto_50
    return-wide v0
.end method

.method public whitelist test-api toInstant()Ljava/time/Instant;
    .registers 10

    .line 231
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    if-nez v0, :cond_a6

    .line 232
    const-wide/16 v0, 0x0

    .line 233
    .local v0, "secs":J
    const/4 v2, 0x0

    .line 234
    .local v2, "nanos":I
    sget-object v3, Ljava/nio/file/attribute/FileTime$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    iget-object v4, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_aa

    .line 264
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Unit not handled"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 261
    :pswitch_1c
    iget-wide v3, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/32 v5, 0x3b9aca00

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    .line 262
    iget-wide v3, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v3

    long-to-int v2, v3

    .line 263
    goto :goto_83

    .line 256
    :pswitch_2d
    iget-wide v3, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/32 v5, 0xf4240

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    .line 257
    iget-wide v3, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit16 v2, v3, 0x3e8

    .line 259
    goto :goto_83

    .line 251
    :pswitch_40
    iget-wide v3, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/16 v5, 0x3e8

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    .line 252
    iget-wide v3, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    const v4, 0xf4240

    mul-int v2, v3, v4

    .line 254
    goto :goto_83

    .line 248
    :pswitch_55
    iget-wide v0, p0, Ljava/nio/file/attribute/FileTime;->value:J

    .line 249
    goto :goto_83

    .line 244
    :pswitch_58
    iget-wide v3, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/16 v5, 0x3c

    const-wide v7, 0x222222222222222L

    invoke-static/range {v3 .. v8}, Ljava/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v0

    .line 246
    goto :goto_83

    .line 240
    :pswitch_66
    iget-wide v3, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/16 v5, 0xe10

    const-wide v7, 0x91a2b3c4d5e6fL

    invoke-static/range {v3 .. v8}, Ljava/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v0

    .line 242
    goto :goto_83

    .line 236
    :pswitch_74
    iget-wide v3, p0, Ljava/nio/file/attribute/FileTime;->value:J

    const-wide/32 v5, 0x15180

    const-wide v7, 0x611722833944L

    invoke-static/range {v3 .. v8}, Ljava/nio/file/attribute/FileTime;->scale(JJJ)J

    move-result-wide v0

    .line 238
    nop

    .line 266
    :goto_83
    const-wide v3, -0x701cefeb9bec00L

    cmp-long v3, v0, v3

    if-gtz v3, :cond_91

    .line 267
    sget-object v3, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    iput-object v3, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    goto :goto_a6

    .line 268
    :cond_91
    const-wide v3, 0x701cd2fa9578ffL

    cmp-long v3, v0, v3

    if-ltz v3, :cond_9f

    .line 269
    sget-object v3, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    iput-object v3, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    goto :goto_a6

    .line 271
    :cond_9f
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    .line 273
    .end local v0    # "secs":J
    .end local v2    # "nanos":I
    :cond_a6
    :goto_a6
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    return-object v0

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_74
        :pswitch_66
        :pswitch_58
        :pswitch_55
        :pswitch_40
        :pswitch_2d
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist test-api toMillis()J
    .registers 14

    .line 170
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_d

    .line 171
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 173
    :cond_d
    iget-object v0, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 174
    .local v0, "secs":J
    iget-object v2, p0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    invoke-virtual {v2}, Ljava/time/Instant;->getNano()I

    move-result v2

    .line 176
    .local v2, "nanos":I
    const-wide/16 v3, 0x3e8

    mul-long v5, v0, v3

    .line 177
    .local v5, "r":J
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 178
    .local v7, "ax":J
    or-long v9, v7, v3

    const/16 v11, 0x1f

    ushr-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3f

    .line 179
    div-long v3, v5, v3

    cmp-long v3, v3, v0

    if-eqz v3, :cond_3f

    .line 180
    cmp-long v3, v0, v11

    if-gez v3, :cond_39

    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_3e

    :cond_39
    const-wide v3, 0x7fffffffffffffffL

    :goto_3e
    return-wide v3

    .line 183
    :cond_3f
    const v3, 0xf4240

    div-int v3, v2, v3

    int-to-long v3, v3

    add-long/2addr v3, v5

    return-wide v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 18

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    if-nez v1, :cond_104

    .line 413
    const-wide/16 v1, 0x0

    .line 414
    .local v1, "secs":J
    const/4 v3, 0x0

    .line 415
    .local v3, "nanos":I
    iget-object v4, v0, Ljava/nio/file/attribute/FileTime;->instant:Ljava/time/Instant;

    if-nez v4, :cond_20

    iget-object v4, v0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_20

    .line 416
    iget-object v4, v0, Ljava/nio/file/attribute/FileTime;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, v0, Ljava/nio/file/attribute/FileTime;->value:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    goto :goto_30

    .line 418
    :cond_20
    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    .line 419
    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->getNano()I

    move-result v3

    .line 422
    :goto_30
    const/4 v4, 0x0

    .line 423
    .local v4, "year":I
    const-wide v5, -0xe79747c00L

    cmp-long v5, v1, v5

    const/16 v6, 0x2710

    const-wide v7, 0xe79747c00L

    const-wide v9, 0x497968bd80L

    if-ltz v5, :cond_64

    .line 425
    sub-long v11, v1, v9

    add-long/2addr v11, v7

    .line 426
    .local v11, "zeroSecs":J
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v13

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    .line 427
    .local v13, "hi":J
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v9

    .line 428
    .local v9, "lo":J
    sub-long v7, v9, v7

    sget-object v5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v7, v8, v3, v5}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 429
    .local v5, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getYear()I

    move-result v7

    long-to-int v8, v13

    mul-int/2addr v8, v6

    add-int/2addr v7, v8

    .line 430
    .end local v4    # "year":I
    .end local v9    # "lo":J
    .end local v11    # "zeroSecs":J
    .end local v13    # "hi":J
    .local v7, "year":I
    goto :goto_79

    .line 432
    .end local v5    # "ldt":Ljava/time/LocalDateTime;
    .end local v7    # "year":I
    .restart local v4    # "year":I
    :cond_64
    add-long v11, v1, v7

    .line 433
    .restart local v11    # "zeroSecs":J
    div-long v13, v11, v9

    .line 434
    .restart local v13    # "hi":J
    rem-long v9, v11, v9

    .line 435
    .restart local v9    # "lo":J
    sub-long v7, v9, v7

    sget-object v5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v7, v8, v3, v5}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 436
    .restart local v5    # "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getYear()I

    move-result v7

    long-to-int v8, v13

    mul-int/2addr v8, v6

    add-int/2addr v7, v8

    .line 438
    .end local v4    # "year":I
    .end local v9    # "lo":J
    .end local v11    # "zeroSecs":J
    .end local v13    # "hi":J
    .restart local v7    # "year":I
    :goto_79
    if-gtz v7, :cond_7d

    .line 439
    add-int/lit8 v7, v7, -0x1

    .line 441
    :cond_7d
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getNano()I

    move-result v4

    .line 442
    .local v4, "fraction":I
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 443
    .local v8, "sb":Ljava/lang/StringBuilder;
    if-gez v7, :cond_8d

    const-string v9, "-"

    goto :goto_8f

    :cond_8d
    const-string v9, ""

    :goto_8f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 445
    if-ge v7, v6, :cond_a2

    .line 446
    const/16 v6, 0x3e8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-direct {v0, v8, v6, v9}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_a9

    .line 448
    :cond_a2
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :goto_a9
    const/16 v6, 0x2d

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v9

    const/16 v10, 0xa

    invoke-direct {v0, v8, v10, v9}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v6

    invoke-direct {v0, v8, v10, v6}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 454
    const/16 v6, 0x54

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getHour()I

    move-result v6

    invoke-direct {v0, v8, v10, v6}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 456
    const/16 v6, 0x3a

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v9

    invoke-direct {v0, v8, v10, v9}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v6

    invoke-direct {v0, v8, v10, v6}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 460
    if-eqz v4, :cond_f9

    .line 461
    const/16 v6, 0x2e

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    const v6, 0x5f5e100

    .line 464
    .local v6, "w":I
    :goto_ed
    rem-int/lit8 v9, v4, 0xa

    if-nez v9, :cond_f6

    .line 465
    div-int/lit8 v4, v4, 0xa

    .line 466
    div-int/lit8 v6, v6, 0xa

    goto :goto_ed

    .line 468
    :cond_f6
    invoke-direct {v0, v8, v6, v4}, Ljava/nio/file/attribute/FileTime;->append(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 470
    .end local v6    # "w":I
    :cond_f9
    const/16 v6, 0x5a

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Ljava/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    .line 473
    .end local v1    # "secs":J
    .end local v3    # "nanos":I
    .end local v4    # "fraction":I
    .end local v5    # "ldt":Ljava/time/LocalDateTime;
    .end local v7    # "year":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_104
    iget-object v1, v0, Ljava/nio/file/attribute/FileTime;->valueAsString:Ljava/lang/String;

    return-object v1
.end method
