.class public final Ljava/time/zone/ZoneOffsetTransitionRule;
.super Ljava/lang/Object;
.source "ZoneOffsetTransitionRule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final whitelist serialVersionUID:J = 0x5f9acf201199524bL


# instance fields
.field private final greylist-max-o dom:B

.field private final greylist-max-o dow:Ljava/time/DayOfWeek;

.field private final greylist-max-o month:Ljava/time/Month;

.field private final greylist-max-o offsetAfter:Ljava/time/ZoneOffset;

.field private final greylist-max-o offsetBefore:Ljava/time/ZoneOffset;

.field private final greylist-max-o standardOffset:Ljava/time/ZoneOffset;

.field private final greylist-max-o time:Ljava/time/LocalTime;

.field private final greylist-max-o timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final greylist-max-o timeEndOfDay:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 100
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .registers 11
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonthIndicator"    # I
    .param p3, "dayOfWeek"    # Ljava/time/DayOfWeek;
    .param p4, "time"    # Ljava/time/LocalTime;
    .param p5, "timeEndOfDay"    # Z
    .param p6, "timeDefinition"    # Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p7, "standardOffset"    # Ljava/time/ZoneOffset;
    .param p8, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p9, "offsetAfter"    # Ljava/time/ZoneOffset;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    nop

    .line 228
    iput-object p1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    .line 229
    int-to-byte v0, p2

    iput-byte v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    .line 230
    iput-object p3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    .line 231
    iput-object p4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    .line 232
    iput-boolean p5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    .line 233
    iput-object p6, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 234
    iput-object p7, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    .line 235
    iput-object p8, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 236
    iput-object p9, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    .line 237
    return-void
.end method

.method public static whitelist test-api of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;
    .registers 19
    .param p0, "month"    # Ljava/time/Month;
    .param p1, "dayOfMonthIndicator"    # I
    .param p2, "dayOfWeek"    # Ljava/time/DayOfWeek;
    .param p3, "time"    # Ljava/time/LocalTime;
    .param p4, "timeEndOfDay"    # Z
    .param p5, "timeDefinition"    # Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p6, "standardOffset"    # Ljava/time/ZoneOffset;
    .param p7, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p8, "offsetAfter"    # Ljava/time/ZoneOffset;

    .line 182
    const-string v0, "month"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    const-string v0, "time"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    const-string v0, "timeDefinition"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    const-string v0, "standardOffset"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    const-string v0, "offsetBefore"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    const-string v0, "offsetAfter"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    const/16 v0, -0x1c

    if-lt p1, v0, :cond_5b

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_5b

    if-eqz p1, :cond_5b

    .line 191
    if-eqz p4, :cond_41

    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {p3, v0}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_41

    .line 192
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Time must be midnight when end of day flag is true"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_41
    :goto_41
    invoke-virtual {p3}, Ljava/time/LocalTime;->getNano()I

    move-result v0

    if-nez v0, :cond_53

    .line 197
    new-instance v0, Ljava/time/zone/ZoneOffsetTransitionRule;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v9}, Ljava/time/zone/ZoneOffsetTransitionRule;-><init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v0

    .line 195
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time\'s nano-of-second must be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;
    .registers 18
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 347
    .local v0, "data":I
    ushr-int/lit8 v1, v0, 0x1c

    invoke-static {v1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v2

    .line 348
    .local v2, "month":Ljava/time/Month;
    const/high16 v1, 0xfc00000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x16

    add-int/lit8 v3, v1, -0x20

    .line 349
    .local v3, "dom":I
    const/high16 v1, 0x380000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x13

    .line 350
    .local v1, "dowByte":I
    if-nez v1, :cond_1a

    const/4 v4, 0x0

    goto :goto_1e

    :cond_1a
    invoke-static {v1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v4

    .line 351
    .local v4, "dow":Ljava/time/DayOfWeek;
    :goto_1e
    const v5, 0x7c000

    and-int/2addr v5, v0

    ushr-int/lit8 v11, v5, 0xe

    .line 352
    .local v11, "timeByte":I
    invoke-static {}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v5

    and-int/lit16 v6, v0, 0x3000

    ushr-int/lit8 v6, v6, 0xc

    aget-object v7, v5, v6

    .line 353
    .local v7, "defn":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    and-int/lit16 v5, v0, 0xff0

    ushr-int/lit8 v12, v5, 0x4

    .line 354
    .local v12, "stdByte":I
    and-int/lit8 v5, v0, 0xc

    ushr-int/lit8 v13, v5, 0x2

    .line 355
    .local v13, "beforeByte":I
    and-int/lit8 v14, v0, 0x3

    .line 356
    .local v14, "afterByte":I
    const/16 v5, 0x1f

    const/4 v6, 0x0

    if-ne v11, v5, :cond_47

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    goto :goto_4d

    :cond_47
    rem-int/lit8 v5, v11, 0x18

    invoke-static {v5, v6}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v5

    .line 357
    .local v5, "time":Ljava/time/LocalTime;
    :goto_4d
    const/16 v8, 0xff

    if-ne v12, v8, :cond_56

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v8

    goto :goto_5a

    :cond_56
    add-int/lit8 v8, v12, -0x80

    mul-int/lit16 v8, v8, 0x384

    :goto_5a
    invoke-static {v8}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v8

    .line 358
    .local v8, "std":Ljava/time/ZoneOffset;
    const/4 v9, 0x3

    if-ne v13, v9, :cond_66

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v10

    goto :goto_6d

    :cond_66
    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    mul-int/lit16 v15, v13, 0x708

    add-int/2addr v10, v15

    :goto_6d
    invoke-static {v10}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v10

    .line 359
    .local v10, "before":Ljava/time/ZoneOffset;
    if-ne v14, v9, :cond_78

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    goto :goto_7f

    :cond_78
    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    mul-int/lit16 v15, v14, 0x708

    add-int/2addr v9, v15

    :goto_7f
    invoke-static {v9}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v9

    .line 360
    .local v9, "after":Ljava/time/ZoneOffset;
    const/16 v15, 0x18

    if-ne v11, v15, :cond_88

    const/4 v6, 0x1

    :cond_88
    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    .local v9, "before":Ljava/time/ZoneOffset;
    .local v10, "after":Ljava/time/ZoneOffset;
    invoke-static/range {v2 .. v10}, Ljava/time/zone/ZoneOffsetTransitionRule;->of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v6

    return-object v6
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 296
    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api createTransition(I)Ljava/time/zone/ZoneOffsetTransition;
    .registers 8
    .param p1, "year"    # I

    .line 489
    iget-byte v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v0, :cond_2b

    .line 490
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/time/Month;->length(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 491
    .local v0, "date":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v1, :cond_41

    .line 492
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_41

    .line 495
    .end local v0    # "date":Ljava/time/LocalDate;
    :cond_2b
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-static {p1, v0, v1}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 496
    .restart local v0    # "date":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v1, :cond_41

    .line 497
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    .line 500
    :cond_41
    :goto_41
    iget-boolean v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_4b

    .line 501
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 503
    :cond_4b
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 504
    .local v1, "localDT":Ljava/time/LocalDateTime;
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v1, v3, v4}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 505
    .local v2, "transition":Ljava/time/LocalDateTime;
    new-instance v3, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-direct {v3, v2, v4, v5}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v3
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "otherRule"    # Ljava/lang/Object;

    .line 519
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 520
    return v0

    .line 531
    :cond_4
    instance-of v1, p1, Ljava/time/zone/ZoneOffsetTransitionRule;

    if-eqz v1, :cond_52

    .line 522
    move-object v1, p1

    check-cast v1, Ljava/time/zone/ZoneOffsetTransitionRule;

    .local v1, "other":Ljava/time/zone/ZoneOffsetTransitionRule;
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    iget-object v3, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    if-ne v2, v3, :cond_52

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    iget-byte v3, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-ne v2, v3, :cond_52

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    iget-object v3, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-ne v2, v3, :cond_52

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v3, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    if-ne v2, v3, :cond_52

    iget-boolean v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    iget-boolean v3, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-ne v2, v3, :cond_52

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    iget-object v3, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    .line 528
    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    iget-object v3, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    .line 529
    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v3, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 530
    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    iget-object v3, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    .line 531
    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_53

    .end local v1    # "other":Ljava/time/zone/ZoneOffsetTransitionRule;
    :cond_52
    const/4 v0, 0x0

    .line 522
    :goto_53
    return v0
.end method

.method public whitelist test-api getDayOfMonthIndicator()I
    .registers 2

    .line 397
    iget-byte v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    return v0
.end method

.method public whitelist test-api getDayOfWeek()Ljava/time/DayOfWeek;
    .registers 2

    .line 413
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    return-object v0
.end method

.method public whitelist test-api getLocalTime()Ljava/time/LocalTime;
    .registers 2

    .line 425
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist test-api getMonth()Ljava/time/Month;
    .registers 2

    .line 375
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    return-object v0
.end method

.method public whitelist test-api getOffsetAfter()Ljava/time/ZoneOffset;
    .registers 2

    .line 475
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api getOffsetBefore()Ljava/time/ZoneOffset;
    .registers 2

    .line 466
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api getStandardOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 457
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist test-api getTimeDefinition()Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 2

    .line 448
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 541
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v0

    iget-boolean v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    .line 542
    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v1, v1, 0x20

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    .line 543
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-nez v1, :cond_21

    const/4 v1, 0x7

    goto :goto_27

    :cond_21
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v1

    :goto_27
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    .line 544
    .local v0, "hash":I
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 545
    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    .line 544
    return v1
.end method

.method public whitelist test-api isMidnightEndOfDay()Z
    .registers 2

    .line 436
    iget-boolean v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "TransitionRule["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 558
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->compareTo(Ljava/time/ZoneOffset;)I

    move-result v2

    if-lez v2, :cond_18

    const-string v2, "Gap "

    goto :goto_1a

    :cond_18
    const-string v2, "Overlap "

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 559
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    const/16 v2, 0x20

    if-eqz v1, :cond_ab

    .line 561
    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5a

    .line 562
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on or before last day of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v2}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be

    .line 563
    :cond_5a
    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v1, :cond_87

    .line 564
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on or before last day minus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v2}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be

    .line 566
    :cond_87
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on or after "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v3}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_be

    .line 569
    :cond_ab
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    :goto_be
    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v2, :cond_cb

    const-string v2, "24:00"

    goto :goto_d1

    :cond_cb
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_d1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string v2, ", standard offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 574
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 16
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget-boolean v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v0, :cond_8

    const v0, 0x15180

    goto :goto_e

    :cond_8
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v0

    .line 307
    .local v0, "timeSecs":I
    :goto_e
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    .line 308
    .local v1, "stdOffset":I
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    sub-int/2addr v2, v1

    .line 309
    .local v2, "beforeDiff":I
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v3, v1

    .line 310
    .local v3, "afterDiff":I
    rem-int/lit16 v4, v0, 0xe10

    const/16 v5, 0x1f

    if-nez v4, :cond_36

    iget-boolean v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v4, :cond_2f

    const/16 v4, 0x18

    goto :goto_37

    :cond_2f
    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v4}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    goto :goto_37

    :cond_36
    move v4, v5

    .line 311
    .local v4, "timeByte":I
    :goto_37
    rem-int/lit16 v6, v1, 0x384

    const/16 v7, 0xff

    if-nez v6, :cond_42

    div-int/lit16 v6, v1, 0x384

    add-int/lit16 v6, v6, 0x80

    goto :goto_43

    :cond_42
    move v6, v7

    .line 312
    .local v6, "stdOffsetByte":I
    :goto_43
    const/16 v8, 0xe10

    const/4 v9, 0x3

    const/16 v10, 0x708

    if-eqz v2, :cond_51

    if-eq v2, v10, :cond_51

    if-ne v2, v8, :cond_4f

    goto :goto_51

    :cond_4f
    move v11, v9

    goto :goto_53

    :cond_51
    :goto_51
    div-int/lit16 v11, v2, 0x708

    .line 313
    .local v11, "beforeByte":I
    :goto_53
    if-eqz v3, :cond_5c

    if-eq v3, v10, :cond_5c

    if-ne v3, v8, :cond_5a

    goto :goto_5c

    :cond_5a
    move v8, v9

    goto :goto_5e

    :cond_5c
    :goto_5c
    div-int/lit16 v8, v3, 0x708

    .line 314
    .local v8, "afterByte":I
    :goto_5e
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-nez v10, :cond_64

    const/4 v10, 0x0

    goto :goto_6a

    :cond_64
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v10}, Ljava/time/DayOfWeek;->getValue()I

    move-result v10

    .line 315
    .local v10, "dowByte":I
    :goto_6a
    iget-object v12, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v12}, Ljava/time/Month;->getValue()I

    move-result v12

    shl-int/lit8 v12, v12, 0x1c

    iget-byte v13, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v13, v13, 0x20

    shl-int/lit8 v13, v13, 0x16

    add-int/2addr v12, v13

    shl-int/lit8 v13, v10, 0x13

    add-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0xe

    add-int/2addr v12, v13

    iget-object v13, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 319
    invoke-virtual {v13}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v13

    shl-int/lit8 v13, v13, 0xc

    add-int/2addr v12, v13

    shl-int/lit8 v13, v6, 0x4

    add-int/2addr v12, v13

    shl-int/lit8 v13, v11, 0x2

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    .line 323
    .local v12, "b":I
    invoke-interface {p1, v12}, Ljava/io/DataOutput;->writeInt(I)V

    .line 324
    if-ne v4, v5, :cond_97

    .line 325
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 327
    :cond_97
    if-ne v6, v7, :cond_9c

    .line 328
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 330
    :cond_9c
    if-ne v11, v9, :cond_a7

    .line 331
    iget-object v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 333
    :cond_a7
    if-ne v8, v9, :cond_b2

    .line 334
    iget-object v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 336
    :cond_b2
    return-void
.end method
