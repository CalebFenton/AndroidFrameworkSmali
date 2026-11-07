.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;,
        Landroid/widget/DateTimeView$DisambiguationTextMask;,
        Landroid/widget/DateTimeView$UnitDisplayLength;
    }
.end annotation


# static fields
.field public static final blacklist DISAMBIGUATION_TEXT_FUTURE:I = 0x2

.field public static final blacklist DISAMBIGUATION_TEXT_PAST:I = 0x1

.field private static final greylist-max-o SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final greylist-max-o SHOW_TIME:I = 0x0

.field public static final blacklist UNIT_DISPLAY_LENGTH_MEDIUM:I = 0x1

.field public static final blacklist UNIT_DISPLAY_LENGTH_SHORTEST:I

.field private static final greylist-max-o sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCanUseRelativeTimeDisplayConfigs:Z

.field greylist-max-o mLastDisplay:I

.field greylist-max-o mLastFormat:Ljava/text/DateFormat;

.field private blacklist mLocalTime:Ljava/time/LocalDateTime;

.field private greylist-max-o mNowText:Ljava/lang/String;

.field private blacklist mRelativeTimeDisambiguationTextMask:I

.field private blacklist mRelativeTimeUnitDisplayLength:I

.field private greylist-max-o mShowRelativeTime:Z

.field private greylist-max-o mTimeMillis:J

.field private greylist-max-o mUpdateTimeMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUpdateTimeMillis(Landroid/widget/DateTimeView;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    nop

    .line 91
    invoke-static {}, Landroid/view/flags/Flags;->dateTimeViewRelativeTimeDisplayConfigs()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    .line 114
    sget-object v1, Lcom/android/internal/R$styleable;->DateTimeView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 117
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    .line 118
    iget-boolean v3, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    if-eqz v3, :cond_33

    .line 119
    nop

    .line 120
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 119
    invoke-virtual {p0, v2}, Landroid/widget/DateTimeView;->setRelativeTimeDisambiguationTextMask(I)V

    .line 125
    nop

    .line 126
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 125
    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView;->setRelativeTimeUnitDisplayLength(I)V

    .line 131
    :cond_33
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-void
.end method

.method private static blacklist computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .registers 6
    .param p0, "time"    # Ljava/time/LocalDateTime;
    .param p1, "zoneId"    # Ljava/time/ZoneId;

    .line 501
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 502
    .local v0, "tomorrow":Ljava/time/LocalDate;
    sget-object v1, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 503
    .local v1, "nextMidnight":Ljava/time/LocalDateTime;
    invoke-static {v1, p1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v2

    return-wide v2
.end method

.method private static blacklist dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I
    .registers 6
    .param p0, "start"    # Ljava/time/LocalDateTime;
    .param p1, "end"    # Ljava/time/LocalDateTime;

    .line 523
    sget-object v0, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object v2, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    .line 524
    invoke-virtual {p0, v2}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 523
    return v0
.end method

.method private blacklist getDaysStringId(Z)I
    .registers 5
    .param p1, "past"    # Z

    .line 419
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    const v1, 0x104037a

    const v2, 0x104037b

    if-nez v0, :cond_f

    .line 420
    if-eqz p1, :cond_d

    .line 421
    goto :goto_e

    .line 422
    :cond_d
    move v1, v2

    .line 420
    :goto_e
    return v1

    .line 424
    :cond_f
    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    if-nez v0, :cond_29

    .line 425
    if-eqz p1, :cond_1f

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    .line 427
    const v0, 0x104037c

    return v0

    .line 428
    :cond_1f
    if-nez p1, :cond_28

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    .line 431
    return v2

    .line 434
    :cond_28
    return v1

    .line 437
    :cond_29
    if-eqz p1, :cond_35

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_35

    .line 439
    const v0, 0x1040377

    return v0

    .line 440
    :cond_35
    if-nez p1, :cond_41

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_41

    .line 443
    const v0, 0x1040376

    return v0

    .line 446
    :cond_41
    const v0, 0x1040375

    return v0
.end method

.method private blacklist getHoursStringId(Z)I
    .registers 5
    .param p1, "past"    # Z

    .line 386
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    const v1, 0x1040382

    const v2, 0x1040383

    if-nez v0, :cond_f

    .line 387
    if-eqz p1, :cond_d

    .line 388
    goto :goto_e

    .line 389
    :cond_d
    move v1, v2

    .line 387
    :goto_e
    return v1

    .line 391
    :cond_f
    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    if-nez v0, :cond_29

    .line 392
    if-eqz p1, :cond_1f

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    .line 394
    const v0, 0x1040384

    return v0

    .line 395
    :cond_1f
    if-nez p1, :cond_28

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    .line 398
    return v2

    .line 401
    :cond_28
    return v1

    .line 404
    :cond_29
    if-eqz p1, :cond_35

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_35

    .line 406
    const v0, 0x104037f

    return v0

    .line 407
    :cond_35
    if-nez p1, :cond_41

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_41

    .line 410
    const v0, 0x104037e

    return v0

    .line 413
    :cond_41
    const v0, 0x104037d

    return v0
.end method

.method private blacklist getMinutesStringId(Z)I
    .registers 5
    .param p1, "past"    # Z

    .line 352
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    const v1, 0x104038a

    const v2, 0x104038b

    if-nez v0, :cond_f

    .line 353
    if-eqz p1, :cond_d

    .line 354
    goto :goto_e

    .line 355
    :cond_d
    move v1, v2

    .line 353
    :goto_e
    return v1

    .line 358
    :cond_f
    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    if-nez v0, :cond_29

    .line 359
    if-eqz p1, :cond_1f

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    .line 361
    const v0, 0x104038c

    return v0

    .line 362
    :cond_1f
    if-nez p1, :cond_28

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    .line 365
    return v2

    .line 368
    :cond_28
    return v1

    .line 371
    :cond_29
    if-eqz p1, :cond_35

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_35

    .line 373
    const v0, 0x1040387

    return v0

    .line 374
    :cond_35
    if-nez p1, :cond_41

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_41

    .line 377
    const v0, 0x1040386

    return v0

    .line 380
    :cond_41
    const v0, 0x1040385

    return v0
.end method

.method private greylist-max-o getTimeFormat()Ljava/text/DateFormat;
    .registers 2

    .line 528
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getYearsStringId(Z)I
    .registers 5
    .param p1, "past"    # Z

    .line 452
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    const v1, 0x1040392

    const v2, 0x1040393

    if-nez v0, :cond_f

    .line 453
    if-eqz p1, :cond_d

    .line 454
    goto :goto_e

    .line 455
    :cond_d
    move v1, v2

    .line 453
    :goto_e
    return v1

    .line 457
    :cond_f
    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    if-nez v0, :cond_29

    .line 458
    if-eqz p1, :cond_1f

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    .line 460
    const v0, 0x1040394

    return v0

    .line 461
    :cond_1f
    if-nez p1, :cond_28

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    .line 464
    return v2

    .line 467
    :cond_28
    return v1

    .line 470
    :cond_29
    if-eqz p1, :cond_35

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_35

    .line 472
    const v0, 0x104038f

    return v0

    .line 473
    :cond_35
    if-nez p1, :cond_41

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_41

    .line 476
    const v0, 0x104038e

    return v0

    .line 479
    :cond_41
    const v0, 0x104038d

    return v0
.end method

.method private blacklist maybeSetText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 489
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 490
    return-void

    .line 493
    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    return-void
.end method

.method public static greylist-max-o setReceiverHandler(Landroid/os/Handler;)V
    .registers 4
    .param p0, "handler"    # Landroid/os/Handler;

    .line 596
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 597
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_16

    .line 598
    new-instance v1, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView-IA;)V

    move-object v0, v1

    .line 599
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 601
    :cond_16
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    .line 602
    return-void
.end method

.method private static blacklist toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .registers 5
    .param p0, "time"    # Ljava/time/LocalDateTime;
    .param p1, "zoneId"    # Ljava/time/ZoneId;

    .line 715
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    .line 716
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;
    .registers 5
    .param p0, "timeMillis"    # J
    .param p2, "zoneId"    # Ljava/time/ZoneId;

    .line 710
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 711
    .local v0, "instant":Ljava/time/Instant;
    invoke-static {v0, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o updateNowText()V
    .registers 3

    .line 514
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_5

    .line 515
    return-void

    .line 517
    :cond_5
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 519
    return-void
.end method

.method private greylist-max-o updateRelativeTime()V
    .registers 16

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 304
    .local v0, "now":J
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 307
    .local v2, "duration":J
    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_15

    move v4, v5

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    .line 309
    .local v4, "past":Z
    :goto_16
    const-wide/32 v6, 0xea60

    cmp-long v8, v2, v6

    const-wide/16 v9, 0x1

    if-gez v8, :cond_2b

    .line 310
    iget-object v5, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    .line 311
    iget-wide v11, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-long/2addr v11, v6

    add-long/2addr v11, v9

    iput-wide v11, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 312
    return-void

    .line 313
    :cond_2b
    const-wide/32 v11, 0x36ee80

    cmp-long v8, v2, v11

    if-gez v8, :cond_52

    .line 314
    div-long v5, v2, v6

    long-to-int v5, v5

    .line 315
    .local v5, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v4}, Landroid/widget/DateTimeView;->getMinutesStringId(Z)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "result":Ljava/lang/String;
    const-wide/32 v7, 0xea60

    .local v7, "millisIncrease":J
    goto/16 :goto_e6

    .line 317
    .end local v5    # "count":I
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "millisIncrease":J
    :cond_52
    const-wide/32 v6, 0x5265c00

    cmp-long v6, v2, v6

    if-gez v6, :cond_79

    .line 318
    div-long v5, v2, v11

    long-to-int v5, v5

    .line 319
    .restart local v5    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v4}, Landroid/widget/DateTimeView;->getHoursStringId(Z)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 320
    .restart local v6    # "result":Ljava/lang/String;
    const-wide/32 v7, 0x36ee80

    .restart local v7    # "millisIncrease":J
    goto/16 :goto_e6

    .line 321
    .end local v5    # "count":I
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "millisIncrease":J
    :cond_79
    const-wide v6, 0x7528ad000L

    cmp-long v8, v2, v6

    if-gez v8, :cond_c6

    .line 323
    iget-object v6, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 324
    .local v6, "localDateTime":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    .line 325
    .local v7, "zoneId":Ljava/time/ZoneId;
    invoke-static {v0, v1, v7}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v8

    .line 327
    .local v8, "localNow":Ljava/time/LocalDateTime;
    invoke-static {v6, v8}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 328
    .local v11, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {p0, v4}, Landroid/widget/DateTimeView;->getDaysStringId(Z)I

    move-result v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 329
    .local v12, "result":Ljava/lang/String;
    if-nez v4, :cond_ba

    if-eq v11, v5, :cond_b5

    goto :goto_ba

    .line 333
    :cond_b5
    const-wide/32 v13, 0x5265c00

    move-wide v7, v13

    .local v13, "millisIncrease":J
    goto :goto_c3

    .line 330
    .end local v13    # "millisIncrease":J
    :cond_ba
    :goto_ba
    invoke-static {v8, v7}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v13

    iput-wide v13, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 331
    const-wide/16 v13, -0x1

    move-wide v7, v13

    .line 336
    .end local v6    # "localDateTime":Ljava/time/LocalDateTime;
    .end local v8    # "localNow":Ljava/time/LocalDateTime;
    .local v7, "millisIncrease":J
    :goto_c3
    move v5, v11

    move-object v6, v12

    goto :goto_e6

    .line 337
    .end local v7    # "millisIncrease":J
    .end local v11    # "count":I
    .end local v12    # "result":Ljava/lang/String;
    :cond_c6
    div-long v5, v2, v6

    long-to-int v5, v5

    .line 338
    .restart local v5    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v4}, Landroid/widget/DateTimeView;->getYearsStringId(Z)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "result":Ljava/lang/String;
    const-wide v7, 0x7528ad000L

    .line 341
    .restart local v7    # "millisIncrease":J
    :goto_e6
    const-wide/16 v11, -0x1

    cmp-long v11, v7, v11

    if-eqz v11, :cond_101

    .line 342
    if-eqz v4, :cond_f9

    .line 343
    iget-wide v11, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/lit8 v13, v5, 0x1

    int-to-long v13, v13

    mul-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v11, v9

    iput-wide v11, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_101

    .line 345
    :cond_f9
    iget-wide v11, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v13, v5

    mul-long/2addr v13, v7

    sub-long/2addr v11, v13

    add-long/2addr v11, v9

    iput-wide v11, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 348
    :cond_101
    :goto_101
    invoke-direct {p0, v6}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    .line 349
    return-void
.end method


# virtual methods
.method greylist-max-o clearFormatAndUpdate()V
    .registers 2

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 533
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 534
    return-void
.end method

.method public blacklist isShowRelativeTime()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 136
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 137
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 138
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_19

    .line 139
    new-instance v1, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView-IA;)V

    move-object v0, v1

    .line 140
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 142
    :cond_19
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    .line 148
    iget-boolean v1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v1, :cond_23

    .line 149
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 151
    :cond_23
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 508
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 509
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 510
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 511
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 155
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 156
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 157
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-eqz v0, :cond_10

    .line 158
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    .line 160
    :cond_10
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 15
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 538
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 539
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_e4

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 543
    .local v0, "now":J
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 545
    .local v2, "duration":J
    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_1c

    move v4, v5

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    .line 547
    .local v4, "past":Z
    :goto_1d
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 548
    .local v6, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/32 v7, 0xea60

    cmp-long v9, v2, v7

    if-gez v9, :cond_2d

    .line 549
    iget-object v5, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .local v5, "result":Ljava/lang/String;
    goto/16 :goto_e1

    .line 550
    .end local v5    # "result":Ljava/lang/String;
    :cond_2d
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v2, v9

    const-string v12, "count"

    if-gez v11, :cond_59

    .line 551
    div-long v7, v2, v7

    long-to-int v5, v7

    .line 552
    .local v5, "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    nop

    .line 554
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 556
    if-eqz v4, :cond_4f

    const v8, 0x1040388

    goto :goto_52

    .line 557
    :cond_4f
    const v8, 0x1040389

    .line 553
    :goto_52
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .local v7, "result":Ljava/lang/String;
    goto/16 :goto_e1

    .line 558
    .end local v5    # "count":I
    .end local v7    # "result":Ljava/lang/String;
    :cond_59
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v2, v7

    if-gez v7, :cond_82

    .line 559
    div-long v7, v2, v9

    long-to-int v5, v7

    .line 560
    .restart local v5    # "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    nop

    .line 562
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 564
    if-eqz v4, :cond_79

    const v8, 0x1040380

    goto :goto_7c

    .line 565
    :cond_79
    const v8, 0x1040381

    .line 561
    :goto_7c
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .restart local v7    # "result":Ljava/lang/String;
    goto :goto_e1

    .line 566
    .end local v5    # "count":I
    .end local v7    # "result":Ljava/lang/String;
    :cond_82
    const-wide v7, 0x7528ad000L

    cmp-long v9, v2, v7

    if-gez v9, :cond_c0

    .line 568
    iget-object v7, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 569
    .local v7, "localDateTime":Ljava/time/LocalDateTime;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    .line 570
    .local v8, "zoneId":Ljava/time/ZoneId;
    invoke-static {v0, v1, v8}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v9

    .line 572
    .local v9, "localNow":Ljava/time/LocalDateTime;
    invoke-static {v7, v9}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 573
    .restart local v5    # "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    nop

    .line 575
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 577
    if-eqz v4, :cond_b7

    const v11, 0x1040378

    goto :goto_ba

    .line 578
    :cond_b7
    const v11, 0x1040379

    .line 574
    :goto_ba
    invoke-static {v10, v6, v11}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    .line 579
    .end local v8    # "zoneId":Ljava/time/ZoneId;
    .end local v9    # "localNow":Ljava/time/LocalDateTime;
    .local v7, "result":Ljava/lang/String;
    move-object v5, v7

    goto :goto_e1

    .line 580
    .end local v5    # "count":I
    .end local v7    # "result":Ljava/lang/String;
    :cond_c0
    div-long v7, v2, v7

    long-to-int v5, v7

    .line 581
    .restart local v5    # "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    nop

    .line 583
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 585
    if-eqz v4, :cond_d9

    const v8, 0x1040390

    goto :goto_dc

    .line 586
    :cond_d9
    const v8, 0x1040391

    .line 582
    :goto_dc
    invoke-static {v7, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 588
    .local v5, "result":Ljava/lang/String;
    :goto_e1
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 590
    .end local v0    # "now":J
    .end local v2    # "duration":J
    .end local v4    # "past":Z
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_e4
    return-void
.end method

.method public blacklist setRelativeTimeDisambiguationTextMask(I)V
    .registers 3
    .param p1, "disambiguationTextMask"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 182
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    if-nez v0, :cond_5

    .line 183
    return-void

    .line 185
    :cond_5
    iput p1, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    .line 186
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 187
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 188
    return-void
.end method

.method public blacklist setRelativeTimeUnitDisplayLength(I)V
    .registers 3
    .param p1, "unitDisplayLength"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 193
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    if-nez v0, :cond_5

    .line 194
    return-void

    .line 196
    :cond_5
    iput p1, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    .line 197
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 198
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 199
    return-void
.end method

.method public greylist-max-o setShowRelativeTime(Z)V
    .registers 2
    .param p1, "showRelativeTime"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 173
    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 174
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 175
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 176
    return-void
.end method

.method public greylist setTime(J)V
    .registers 5
    .param p1, "timeMillis"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 165
    iput-wide p1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 166
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 167
    .local v0, "dateTime":Ljava/time/LocalDateTime;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 168
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 169
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 214
    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 215
    .local v0, "gotVisible":Z
    :goto_d
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    if-eqz v0, :cond_15

    .line 217
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 219
    :cond_15
    return-void
.end method

.method greylist update()V
    .registers 24

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    if-eqz v1, :cond_eb

    invoke-virtual {v0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    goto/16 :goto_eb

    .line 226
    :cond_10
    iget-boolean v1, v0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v1, :cond_18

    .line 227
    invoke-direct {v0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    .line 228
    return-void

    .line 232
    :cond_18
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    .line 235
    .local v1, "zoneId":Ljava/time/ZoneId;
    iget-object v2, v0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    .line 236
    .local v2, "localTime":Ljava/time/LocalDateTime;
    nop

    .line 237
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v3

    sget-object v4, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 238
    .local v3, "localStartOfDay":Ljava/time/LocalDateTime;
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v4

    .line 240
    .local v4, "localTomorrowStartOfDay":Ljava/time/LocalDateTime;
    invoke-static {v1}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 242
    .local v5, "localNow":Ljava/time/LocalDateTime;
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-static {v8, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v8

    .line 243
    .local v8, "twelveHoursBefore":J
    invoke-virtual {v2, v6, v7}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v6

    .line 244
    .local v6, "twelveHoursAfter":J
    invoke-static {v3, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v10

    .line 245
    .local v10, "midnightBefore":J
    invoke-static {v4, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v12

    .line 246
    .local v12, "midnightAfter":J
    invoke-static {v2, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v14

    .line 247
    .local v14, "time":J
    invoke-static {v5, v1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v16

    .line 251
    .local v16, "now":J
    cmp-long v18, v16, v10

    if-ltz v18, :cond_62

    cmp-long v18, v16, v12

    if-ltz v18, :cond_6a

    :cond_62
    cmp-long v18, v16, v8

    if-ltz v18, :cond_71

    cmp-long v18, v16, v6

    if-gez v18, :cond_71

    .line 253
    :cond_6a
    const/16 v18, 0x0

    .line 254
    .local v18, "display":I
    move-object/from16 v19, v1

    move/from16 v1, v18

    goto :goto_77

    .line 257
    .end local v18    # "display":I
    :cond_71
    const/16 v18, 0x1

    move-object/from16 v19, v1

    move/from16 v1, v18

    .line 263
    .local v1, "display":I
    .local v19, "zoneId":Ljava/time/ZoneId;
    :goto_77
    move-object/from16 v18, v2

    .end local v2    # "localTime":Ljava/time/LocalDateTime;
    .local v18, "localTime":Ljava/time/LocalDateTime;
    iget v2, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v1, v2, :cond_84

    iget-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v2, :cond_84

    .line 265
    iget-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .local v2, "format":Ljava/text/DateFormat;
    goto :goto_b0

    .line 267
    .end local v2    # "format":Ljava/text/DateFormat;
    :cond_84
    packed-switch v1, :pswitch_data_ec

    .line 275
    move-object/from16 v20, v3

    .end local v3    # "localStartOfDay":Ljava/time/LocalDateTime;
    .local v20, "localStartOfDay":Ljava/time/LocalDateTime;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown display value: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    .end local v20    # "localStartOfDay":Ljava/time/LocalDateTime;
    .restart local v3    # "localStartOfDay":Ljava/time/LocalDateTime;
    :pswitch_a3
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 273
    .restart local v2    # "format":Ljava/text/DateFormat;
    goto :goto_ae

    .line 269
    .end local v2    # "format":Ljava/text/DateFormat;
    :pswitch_a9
    invoke-direct {v0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v2

    .line 270
    .restart local v2    # "format":Ljava/text/DateFormat;
    nop

    .line 277
    :goto_ae
    iput-object v2, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 281
    :goto_b0
    move-object/from16 v20, v3

    .end local v3    # "localStartOfDay":Ljava/time/LocalDateTime;
    .restart local v20    # "localStartOfDay":Ljava/time/LocalDateTime;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "text":Ljava/lang/String;
    invoke-direct {v0, v3}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    .line 285
    if-nez v1, :cond_d2

    .line 287
    cmp-long v21, v6, v12

    if-lez v21, :cond_ca

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide v2, v6

    goto :goto_cf

    :cond_ca
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide v2, v12

    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "text":Ljava/lang/String;
    .local v21, "format":Ljava/text/DateFormat;
    .local v22, "text":Ljava/lang/String;
    :goto_cf
    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_ea

    .line 290
    .end local v21    # "format":Ljava/text/DateFormat;
    .end local v22    # "text":Ljava/lang/String;
    .restart local v2    # "format":Ljava/text/DateFormat;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_d2
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "text":Ljava/lang/String;
    .restart local v21    # "format":Ljava/text/DateFormat;
    .restart local v22    # "text":Ljava/lang/String;
    iget-wide v2, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v2, v2, v16

    if-gez v2, :cond_e1

    .line 292
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_ea

    .line 296
    :cond_e1
    cmp-long v2, v8, v10

    if-gez v2, :cond_e7

    .line 297
    move-wide v2, v8

    goto :goto_e8

    :cond_e7
    move-wide v2, v10

    :goto_e8
    iput-wide v2, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 300
    :goto_ea
    return-void

    .line 224
    .end local v1    # "display":I
    .end local v4    # "localTomorrowStartOfDay":Ljava/time/LocalDateTime;
    .end local v5    # "localNow":Ljava/time/LocalDateTime;
    .end local v6    # "twelveHoursAfter":J
    .end local v8    # "twelveHoursBefore":J
    .end local v10    # "midnightBefore":J
    .end local v12    # "midnightAfter":J
    .end local v14    # "time":J
    .end local v16    # "now":J
    .end local v18    # "localTime":Ljava/time/LocalDateTime;
    .end local v19    # "zoneId":Ljava/time/ZoneId;
    .end local v20    # "localStartOfDay":Ljava/time/LocalDateTime;
    .end local v21    # "format":Ljava/text/DateFormat;
    .end local v22    # "text":Ljava/lang/String;
    :cond_eb
    :goto_eb
    return-void

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_a3
    .end packed-switch
.end method
