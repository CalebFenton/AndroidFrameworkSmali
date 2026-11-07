.class final Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DayPeriod"
.end annotation


# static fields
.field private static final blacklist DAYPERIOD_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist DPCOMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RULE:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist from:J

.field private final blacklist index:J

.field private final blacklist to:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5299
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->DAYPERIOD_CACHE:Ljava/util/Map;

    .line 5303
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->DPCOMPARATOR:Ljava/util/Comparator;

    .line 5307
    const-string v0, "(?<type>[a-z12]+):(?<from>\\d{2}):00(-(?<to>\\d{2}))*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->RULE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>(JJJ)V
    .registers 7
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "index"    # J

    .line 5330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5331
    iput-wide p1, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    .line 5332
    iput-wide p3, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    .line 5333
    iput-wide p5, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->index:J

    .line 5334
    return-void
.end method

.method private blacklist duration()J
    .registers 5

    .line 5375
    iget-wide v0, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const-wide/16 v0, 0x5a0

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    add-long/2addr v0, v2

    goto :goto_16

    :cond_11
    iget-wide v0, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    sub-long/2addr v0, v2

    :goto_16
    return-wide v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;)I
    .registers 6
    .param p0, "dp1"    # Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;
    .param p1, "dp2"    # Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    .line 5303
    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->duration()J

    move-result-wide v0

    invoke-direct {p1}, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->duration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static blacklist mapToIndex(Ljava/lang/String;)J
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .line 5386
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_b8

    :cond_7
    goto/16 :goto_87

    :sswitch_9
    const-string v0, "afternoon2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_88

    :sswitch_14
    const-string v0, "afternoon1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_88

    :sswitch_1f
    const-string v0, "evening2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_88

    :sswitch_2a
    const-string v0, "evening1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_88

    :sswitch_35
    const-string v0, "noon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_88

    :sswitch_3f
    const-string v0, "pm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_88

    :sswitch_49
    const-string v0, "am"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_88

    :sswitch_53
    const-string v0, "morning2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_88

    :sswitch_5d
    const-string v0, "morning1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_88

    :sswitch_67
    const-string v0, "night2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_88

    :sswitch_72
    const-string v0, "night1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_88

    :sswitch_7d
    const-string v0, "midnight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_88

    :goto_87
    const/4 v0, -0x1

    :goto_88
    packed-switch v0, :pswitch_data_ea

    .line 5399
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "invalid day period type"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5398
    :pswitch_93
    const-wide/16 v0, 0xb

    goto :goto_b6

    .line 5397
    :pswitch_96
    const-wide/16 v0, 0xa

    goto :goto_b6

    .line 5396
    :pswitch_99
    const-wide/16 v0, 0x9

    goto :goto_b6

    .line 5395
    :pswitch_9c
    const-wide/16 v0, 0x8

    goto :goto_b6

    .line 5394
    :pswitch_9f
    const-wide/16 v0, 0x7

    goto :goto_b6

    .line 5393
    :pswitch_a2
    const-wide/16 v0, 0x6

    goto :goto_b6

    .line 5392
    :pswitch_a5
    const-wide/16 v0, 0x5

    goto :goto_b6

    .line 5391
    :pswitch_a8
    const-wide/16 v0, 0x4

    goto :goto_b6

    .line 5390
    :pswitch_ab
    const-wide/16 v0, 0x3

    goto :goto_b6

    .line 5389
    :pswitch_ae
    const-wide/16 v0, 0x2

    goto :goto_b6

    .line 5388
    :pswitch_b1
    const-wide/16 v0, 0x1

    goto :goto_b6

    .line 5387
    :pswitch_b4
    const-wide/16 v0, 0x0

    .line 5386
    :goto_b6
    return-wide v0

    nop

    :sswitch_data_b8
    .sparse-switch
        -0x61cd9530 -> :sswitch_7d
        -0x3e52e0e7 -> :sswitch_72
        -0x3e52e0e6 -> :sswitch_67
        -0xc843f13 -> :sswitch_5d
        -0xc843f12 -> :sswitch_53
        0xc2c -> :sswitch_49
        0xdfd -> :sswitch_3f
        0x33af60 -> :sswitch_35
        0x108ef8a9 -> :sswitch_2a
        0x108ef8aa -> :sswitch_1f
        0x5cc08075 -> :sswitch_14
        0x5cc08076 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 5462
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 5463
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 5464
    :cond_12
    move-object v2, p1

    check-cast v2, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    .line 5465
    .local v2, "dayPeriod":Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;
    iget-wide v3, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    iget-wide v5, v2, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    iget-wide v3, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    iget-wide v5, v2, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    iget-wide v3, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->index:J

    iget-wide v5, v2, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->index:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 5463
    .end local v2    # "dayPeriod":Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;
    :cond_30
    :goto_30
    return v1
.end method

.method blacklist getIndex()J
    .registers 3

    .line 5342
    iget-wide v0, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->index:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 5472
    iget-wide v0, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->index:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist includes(J)Z
    .registers 9
    .param p1, "mod"    # J

    .line 5362
    iget-wide v0, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_16

    iget-wide v4, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_16

    const-wide/16 v2, 0x5a0

    cmp-long v0, p1, v2

    if-nez v0, :cond_16

    .line 5363
    return v1

    .line 5365
    :cond_16
    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_22

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_44

    :cond_22
    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    cmp-long v0, v2, p1

    if-gtz v0, :cond_2e

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_44

    :cond_2e
    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    iget-wide v4, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_43

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_44

    iget-wide v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :cond_44
    :goto_44
    return v1
.end method

.method blacklist mid()J
    .registers 7

    .line 5350
    iget-wide v0, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    invoke-direct {p0}, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->duration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x5a0

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 5477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v5, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    rem-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DayPeriod(%02d:%02d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5478
    iget-wide v1, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->from:J

    iget-wide v5, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2e

    const-string v1, ")"

    goto :goto_46

    :cond_2e
    iget-wide v1, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v5, p0, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->to:J

    rem-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "-%02d:%02d)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5477
    return-object v0
.end method
