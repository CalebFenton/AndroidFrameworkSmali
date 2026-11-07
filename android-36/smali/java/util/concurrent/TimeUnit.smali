.class public final enum Ljava/util/concurrent/TimeUnit;
.super Ljava/lang/Enum;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/concurrent/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/concurrent/TimeUnit;

.field public static final enum whitelist test-api DAYS:Ljava/util/concurrent/TimeUnit;

.field private static final blacklist DAY_SCALE:J = 0x4e94914f0000L

.field public static final enum whitelist test-api HOURS:Ljava/util/concurrent/TimeUnit;

.field private static final blacklist HOUR_SCALE:J = 0x34630b8a000L

.field public static final enum whitelist test-api MICROSECONDS:Ljava/util/concurrent/TimeUnit;

.field private static final blacklist MICRO_SCALE:J = 0x3e8L

.field public static final enum whitelist test-api MILLISECONDS:Ljava/util/concurrent/TimeUnit;

.field private static final blacklist MILLI_SCALE:J = 0xf4240L

.field public static final enum whitelist test-api MINUTES:Ljava/util/concurrent/TimeUnit;

.field private static final blacklist MINUTE_SCALE:J = 0xdf8475800L

.field public static final enum whitelist test-api NANOSECONDS:Ljava/util/concurrent/TimeUnit;

.field private static final blacklist NANO_SCALE:J = 0x1L

.field public static final enum whitelist test-api SECONDS:Ljava/util/concurrent/TimeUnit;

.field private static final blacklist SECOND_SCALE:J = 0x3b9aca00L


# instance fields
.field private final blacklist maxMicros:J

.field private final blacklist maxMillis:J

.field private final blacklist maxNanos:J

.field private final blacklist maxSecs:J

.field private final blacklist microRatio:J

.field private final blacklist milliRatio:I

.field private final blacklist scale:J

.field private final blacklist secRatio:I


# direct methods
.method private static synthetic blacklist $values()[Ljava/util/concurrent/TimeUnit;
    .registers 7

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    filled-new-array/range {v0 .. v6}, [Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 79
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "NANOSECONDS"

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 83
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    const-string v4, "MICROSECONDS"

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 87
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x2

    const-wide/32 v2, 0xf4240

    const-string v4, "MILLISECONDS"

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 91
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x3

    const-wide/32 v2, 0x3b9aca00

    const-string v4, "SECONDS"

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 96
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x4

    const-wide v2, 0xdf8475800L

    const-string v4, "MINUTES"

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 101
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const-wide v2, 0x34630b8a000L

    const-string v4, "HOURS"

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 106
    new-instance v0, Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x6

    const-wide v2, 0x4e94914f0000L

    const-string v4, "DAYS"

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 75
    invoke-static {}, Ljava/util/concurrent/TimeUnit;->$values()[Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IJ)V
    .registers 12
    .param p3, "s"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput-wide p3, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    .line 134
    const-wide p1, 0x7fffffffffffffffL

    div-long v0, p1, p3

    iput-wide v0, p0, Ljava/util/concurrent/TimeUnit;->maxNanos:J

    .line 135
    const-wide/16 v0, 0x3e8

    cmp-long v2, p3, v0

    if-ltz v2, :cond_17

    div-long v0, p3, v0

    goto :goto_18

    :cond_17
    div-long/2addr v0, p3

    .line 136
    .local v0, "ur":J
    :goto_18
    iput-wide v0, p0, Ljava/util/concurrent/TimeUnit;->microRatio:J

    .line 137
    div-long v2, p1, v0

    iput-wide v2, p0, Ljava/util/concurrent/TimeUnit;->maxMicros:J

    .line 138
    const-wide/32 v2, 0xf4240

    cmp-long v4, p3, v2

    if-ltz v4, :cond_28

    div-long v2, p3, v2

    goto :goto_29

    :cond_28
    div-long/2addr v2, p3

    .line 139
    .local v2, "mr":J
    :goto_29
    long-to-int v4, v2

    iput v4, p0, Ljava/util/concurrent/TimeUnit;->milliRatio:I

    .line 140
    div-long v4, p1, v2

    iput-wide v4, p0, Ljava/util/concurrent/TimeUnit;->maxMillis:J

    .line 141
    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p3, v4

    if-ltz v6, :cond_3a

    div-long v4, p3, v4

    goto :goto_3b

    :cond_3a
    div-long/2addr v4, p3

    .line 142
    .local v4, "sr":J
    :goto_3b
    long-to-int v6, v4

    iput v6, p0, Ljava/util/concurrent/TimeUnit;->secRatio:I

    .line 143
    div-long/2addr p1, v4

    iput-wide p1, p0, Ljava/util/concurrent/TimeUnit;->maxSecs:J

    .line 144
    return-void
.end method

.method private static blacklist cvt(JJJ)J
    .registers 14
    .param p0, "d"    # J
    .param p2, "dst"    # J
    .param p4, "src"    # J

    .line 155
    cmp-long v0, p4, p2

    if-nez v0, :cond_5

    .line 156
    return-wide p0

    .line 157
    :cond_5
    cmp-long v0, p4, p2

    if-gez v0, :cond_e

    .line 158
    div-long v0, p2, p4

    div-long v0, p0, v0

    return-wide v0

    .line 159
    :cond_e
    div-long v0, p4, p2

    move-wide v2, v0

    .local v2, "r":J
    const-wide v4, 0x7fffffffffffffffL

    div-long v0, v4, v0

    move-wide v6, v0

    .local v6, "m":J
    cmp-long v0, p0, v0

    if-lez v0, :cond_1e

    .line 160
    return-wide v4

    .line 161
    :cond_1e
    neg-long v0, v6

    cmp-long v0, p0, v0

    if-gez v0, :cond_26

    .line 162
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 164
    :cond_26
    mul-long v0, p0, v2

    return-wide v0
.end method

.method private greylist-max-o excessNanos(JJ)I
    .registers 12
    .param p1, "d"    # J
    .param p3, "m"    # J

    .line 369
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    const-wide/32 v4, 0xf4240

    if-nez v0, :cond_11

    .line 370
    mul-long/2addr v4, p3

    sub-long v0, p1, v4

    long-to-int v0, v0

    return v0

    .line 371
    :cond_11
    const-wide/16 v0, 0x3e8

    cmp-long v6, v2, v0

    if-nez v6, :cond_1c

    .line 372
    mul-long/2addr v0, p1

    mul-long/2addr v4, p3

    sub-long/2addr v0, v4

    long-to-int v0, v0

    return v0

    .line 374
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist test-api of(Ljava/time/temporal/ChronoUnit;)Ljava/util/concurrent/TimeUnit;
    .registers 4
    .param p0, "chronoUnit"    # Ljava/time/temporal/ChronoUnit;

    .line 480
    sget-object v0, Ljava/util/concurrent/TimeUnit$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    const-string v1, "chronoUnit"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No TimeUnit equivalent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :pswitch_2c
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 486
    :pswitch_2f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 485
    :pswitch_32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 484
    :pswitch_35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 483
    :pswitch_38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 482
    :pswitch_3b
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 481
    :pswitch_3e
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
    .end packed-switch
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    const-class v0, Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/util/concurrent/TimeUnit;
    .registers 1

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, [Ljava/util/concurrent/TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api convert(JLjava/util/concurrent/TimeUnit;)J
    .registers 12
    .param p1, "sourceDuration"    # J
    .param p3, "sourceUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 186
    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 191
    iget-wide v4, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    iget-wide v6, p3, Ljava/util/concurrent/TimeUnit;->scale:J

    move-wide v2, p1

    .end local p1    # "sourceDuration":J
    .local v2, "sourceDuration":J
    invoke-static/range {v2 .. v7}, Ljava/util/concurrent/TimeUnit;->cvt(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 190
    .end local v2    # "sourceDuration":J
    .restart local p1    # "sourceDuration":J
    :pswitch_11
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0

    .line 189
    :pswitch_16
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 188
    :pswitch_1b
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0

    .line 187
    :pswitch_20
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method public whitelist test-api convert(Ljava/time/Duration;)J
    .registers 13
    .param p1, "duration"    # Ljava/time/Duration;

    .line 218
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    .line 219
    .local v0, "secs":J
    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result v2

    .line 220
    .local v2, "nano":I
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_17

    if-lez v2, :cond_17

    .line 222
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 223
    const v5, 0x3b9aca00

    sub-int/2addr v2, v5

    .line 227
    :cond_17
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p0, v5, :cond_1d

    .line 228
    int-to-long v5, v2

    .local v5, "nanoVal":J
    goto :goto_29

    .line 229
    .end local v5    # "nanoVal":J
    :cond_1d
    iget-wide v5, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    move-wide v7, v5

    .local v7, "s":J
    const-wide/32 v9, 0x3b9aca00

    cmp-long v5, v5, v9

    if-gez v5, :cond_5f

    .line 230
    int-to-long v5, v2

    div-long/2addr v5, v7

    .line 235
    .end local v7    # "s":J
    .restart local v5    # "nanoVal":J
    :goto_29
    iget v7, p0, Ljava/util/concurrent/TimeUnit;->secRatio:I

    int-to-long v7, v7

    mul-long/2addr v7, v0

    add-long/2addr v7, v5

    .line 236
    .local v7, "val":J
    iget-wide v9, p0, Ljava/util/concurrent/TimeUnit;->maxSecs:J

    cmp-long v9, v0, v9

    if-gez v9, :cond_3b

    iget-wide v9, p0, Ljava/util/concurrent/TimeUnit;->maxSecs:J

    neg-long v9, v9

    cmp-long v9, v0, v9

    if-gtz v9, :cond_50

    :cond_3b
    iget-wide v9, p0, Ljava/util/concurrent/TimeUnit;->maxSecs:J

    cmp-long v9, v0, v9

    if-nez v9, :cond_45

    cmp-long v9, v7, v3

    if-gtz v9, :cond_50

    :cond_45
    iget-wide v9, p0, Ljava/util/concurrent/TimeUnit;->maxSecs:J

    neg-long v9, v9

    cmp-long v9, v0, v9

    if-nez v9, :cond_52

    cmp-long v9, v7, v3

    if-gez v9, :cond_52

    .line 239
    :cond_50
    move-wide v3, v7

    goto :goto_5e

    .line 240
    :cond_52
    cmp-long v3, v0, v3

    if-lez v3, :cond_5c

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_5e

    :cond_5c
    const-wide/high16 v3, -0x8000000000000000L

    .line 236
    :goto_5e
    return-wide v3

    .line 231
    .end local v5    # "nanoVal":J
    .local v7, "s":J
    :cond_5f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p0, v3, :cond_64

    .line 232
    return-wide v0

    .line 234
    :cond_64
    iget v3, p0, Ljava/util/concurrent/TimeUnit;->secRatio:I

    int-to-long v3, v3

    div-long v3, v0, v3

    return-wide v3
.end method

.method public whitelist test-api sleep(J)V
    .registers 6
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 443
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    .line 444
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 445
    .local v0, "ms":J
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 446
    .local v2, "ns":I
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    .line 448
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_11
    return-void
.end method

.method public whitelist test-api timedJoin(Ljava/lang/Thread;J)V
    .registers 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 425
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_11

    .line 426
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 427
    .local v0, "ms":J
    invoke-direct {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 428
    .local v2, "ns":I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Thread;->join(JI)V

    .line 430
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_11
    return-void
.end method

.method public whitelist test-api timedWait(Ljava/lang/Object;J)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 405
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_11

    .line 406
    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 407
    .local v0, "ms":J
    invoke-direct {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    .line 408
    .local v2, "ns":I
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 410
    .end local v0    # "ms":J
    .end local v2    # "ns":I
    :cond_11
    return-void
.end method

.method public whitelist test-api toChronoUnit()Ljava/time/temporal/ChronoUnit;
    .registers 2

    .line 457
    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 465
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 464
    :pswitch_d
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 463
    :pswitch_10
    sget-object v0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 462
    :pswitch_13
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 461
    :pswitch_16
    sget-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 460
    :pswitch_19
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 459
    :pswitch_1c
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 458
    :pswitch_1f
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist test-api toDays(J)J
    .registers 9
    .param p1, "duration"    # J

    .line 357
    const-wide v2, 0x4e94914f0000L

    iget-wide v4, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    move-wide v0, p1

    .end local p1    # "duration":J
    .local v0, "duration":J
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit;->cvt(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist test-api toHours(J)J
    .registers 9
    .param p1, "duration"    # J

    .line 346
    const-wide v2, 0x34630b8a000L

    iget-wide v4, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    move-wide v0, p1

    .end local p1    # "duration":J
    .local v0, "duration":J
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit;->cvt(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist test-api toMicros(J)J
    .registers 9
    .param p1, "duration"    # J

    .line 273
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x3e8

    cmp-long v0, v0, v4

    if-gtz v0, :cond_14

    .line 274
    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    move-wide v0, p1

    goto :goto_13

    :cond_f
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->microRatio:J

    div-long v0, p1, v0

    :goto_13
    return-wide v0

    .line 275
    :cond_14
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->maxMicros:J

    move-wide v4, v0

    .local v4, "m":J
    cmp-long v0, p1, v0

    if-lez v0, :cond_21

    .line 276
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 277
    :cond_21
    neg-long v0, v4

    cmp-long v0, p1, v0

    if-gez v0, :cond_29

    .line 278
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 280
    :cond_29
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->microRatio:J

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public whitelist test-api toMillis(J)J
    .registers 9
    .param p1, "duration"    # J

    .line 293
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/32 v4, 0xf4240

    cmp-long v0, v0, v4

    if-gtz v0, :cond_16

    .line 294
    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    move-wide v0, p1

    goto :goto_15

    :cond_10
    iget v0, p0, Ljava/util/concurrent/TimeUnit;->milliRatio:I

    int-to-long v0, v0

    div-long v0, p1, v0

    :goto_15
    return-wide v0

    .line 295
    :cond_16
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->maxMillis:J

    move-wide v4, v0

    .local v4, "m":J
    cmp-long v0, p1, v0

    if-lez v0, :cond_23

    .line 296
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 297
    :cond_23
    neg-long v0, v4

    cmp-long v0, p1, v0

    if-gez v0, :cond_2b

    .line 298
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 300
    :cond_2b
    iget v0, p0, Ljava/util/concurrent/TimeUnit;->milliRatio:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public whitelist test-api toMinutes(J)J
    .registers 9
    .param p1, "duration"    # J

    .line 333
    const-wide v2, 0xdf8475800L

    iget-wide v4, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    move-wide v0, p1

    .end local p1    # "duration":J
    .local v0, "duration":J
    invoke-static/range {v0 .. v5}, Ljava/util/concurrent/TimeUnit;->cvt(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist test-api toNanos(J)J
    .registers 9
    .param p1, "duration"    # J

    .line 253
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_a

    .line 254
    return-wide p1

    .line 255
    :cond_a
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->maxNanos:J

    move-wide v4, v0

    .local v4, "m":J
    cmp-long v0, p1, v0

    if-lez v0, :cond_17

    .line 256
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 257
    :cond_17
    neg-long v0, v4

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    .line 258
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 260
    :cond_1f
    mul-long v0, p1, v2

    return-wide v0
.end method

.method public whitelist test-api toSeconds(J)J
    .registers 9
    .param p1, "duration"    # J

    .line 313
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->scale:J

    move-wide v2, v0

    .local v2, "s":J
    const-wide/32 v4, 0x3b9aca00

    cmp-long v0, v0, v4

    if-gtz v0, :cond_16

    .line 314
    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    move-wide v0, p1

    goto :goto_15

    :cond_10
    iget v0, p0, Ljava/util/concurrent/TimeUnit;->secRatio:I

    int-to-long v0, v0

    div-long v0, p1, v0

    :goto_15
    return-wide v0

    .line 315
    :cond_16
    iget-wide v0, p0, Ljava/util/concurrent/TimeUnit;->maxSecs:J

    move-wide v4, v0

    .local v4, "m":J
    cmp-long v0, p1, v0

    if-lez v0, :cond_23

    .line 316
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 317
    :cond_23
    neg-long v0, v4

    cmp-long v0, p1, v0

    if-gez v0, :cond_2b

    .line 318
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 320
    :cond_2b
    iget v0, p0, Ljava/util/concurrent/TimeUnit;->secRatio:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    return-wide v0
.end method
