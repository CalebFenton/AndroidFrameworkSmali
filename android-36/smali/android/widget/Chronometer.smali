.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$OnChronometerTickListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o HOUR_IN_SEC:I = 0xe10

.field private static final greylist-max-o MIN_IN_SEC:I = 0x3c

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Chronometer"


# instance fields
.field private greylist-max-o mBase:J

.field private greylist-max-o mCountDown:Z

.field private greylist-max-o mFormat:Ljava/lang/String;

.field private greylist-max-o mFormatBuilder:Ljava/lang/StringBuilder;

.field private greylist-max-o mFormatter:Ljava/util/Formatter;

.field private greylist-max-o mFormatterArgs:[Ljava/lang/Object;

.field private greylist-max-o mFormatterLocale:Ljava/util/Locale;

.field private greylist-max-o mLogged:Z

.field private greylist-max-o mNow:J

.field private greylist-max-o mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private greylist-max-o mRecycle:Ljava/lang/StringBuilder;

.field private greylist-max-o mRunning:Z

.field private greylist-max-o mStarted:Z

.field private final greylist-max-o mTickRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mVisible:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRunning(Landroid/widget/Chronometer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Chronometer;->mRunning:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostTickOnNextSecond(Landroid/widget/Chronometer;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Chronometer;->postTickOnNextSecond()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateText(Landroid/widget/Chronometer;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    .line 338
    new-instance v1, Landroid/widget/Chronometer$1;

    invoke-direct {v1, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    .line 117
    sget-object v1, Lcom/android/internal/R$styleable;->Chronometer:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 119
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->Chronometer:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v7, "defStyleAttr":I
    .local v8, "defStyleRes":I
    invoke-virtual/range {v2 .. v8}, Landroid/widget/Chronometer;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 121
    const/4 p1, 0x0

    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v6, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setCountDown(Z)V

    .line 123
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    .line 126
    return-void
.end method

.method private static greylist-max-o formatDuration(J)Ljava/lang/String;
    .registers 10
    .param p0, "ms"    # J

    .line 374
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 375
    .local v0, "duration":I
    if-gez v0, :cond_8

    .line 376
    neg-int v0, v0

    .line 379
    :cond_8
    const/4 v1, 0x0

    .line 380
    .local v1, "h":I
    const/4 v2, 0x0

    .line 382
    .local v2, "m":I
    const/16 v3, 0xe10

    if-lt v0, v3, :cond_13

    .line 383
    div-int/lit16 v1, v0, 0xe10

    .line 384
    mul-int/lit16 v3, v1, 0xe10

    sub-int/2addr v0, v3

    .line 386
    :cond_13
    const/16 v3, 0x3c

    if-lt v0, v3, :cond_1c

    .line 387
    div-int/lit8 v2, v0, 0x3c

    .line 388
    mul-int/lit8 v3, v2, 0x3c

    sub-int/2addr v0, v3

    .line 390
    :cond_1c
    move v3, v0

    .line 392
    .local v3, "s":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v4, "measures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/util/Measure;>;"
    if-lez v1, :cond_32

    .line 394
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_32
    if-lez v2, :cond_42

    .line 397
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_42
    new-instance v5, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v5, v6}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v5

    .line 402
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/icu/util/Measure;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/icu/util/Measure;

    invoke-virtual {v5, v6}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v5

    .line 401
    return-object v5
.end method

.method private greylist-max-o init()V
    .registers 3

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    .line 130
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 131
    return-void
.end method

.method private blacklist postTickOnNextSecond()V
    .registers 10

    .line 350
    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    .line 352
    .local v0, "nowMillis":J
    iget-boolean v2, p0, Landroid/widget/Chronometer;->mCountDown:Z

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_14

    .line 353
    iget-wide v5, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v5, v0

    rem-long/2addr v5, v3

    .line 354
    .local v5, "delayMillis":J
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gtz v2, :cond_1f

    .line 355
    add-long/2addr v5, v3

    goto :goto_1f

    .line 358
    .end local v5    # "delayMillis":J
    :cond_14
    iget-wide v5, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    rem-long/2addr v5, v3

    sub-long v5, v3, v5

    .line 361
    .restart local v5    # "delayMillis":J
    :cond_1f
    :goto_1f
    const-wide/16 v2, 0x1

    add-long/2addr v5, v2

    .line 362
    iget-object v2, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v5, v6}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    return-void
.end method

.method private greylist-max-o updateRunning()V
    .registers 4

    .line 325
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/Chronometer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 326
    .local v0, "running":Z
    :goto_11
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRunning:Z

    if-eq v0, v1, :cond_2c

    .line 327
    if-eqz v0, :cond_25

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/widget/Chronometer;->updateText(J)V

    .line 329
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 330
    invoke-direct {p0}, Landroid/widget/Chronometer;->postTickOnNextSecond()V

    goto :goto_2a

    .line 332
    :cond_25
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 334
    :goto_2a
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    .line 336
    :cond_2c
    return-void
.end method

.method private declared-synchronized greylist-max-o updateText(J)V
    .registers 12
    .param p1, "now"    # J

    monitor-enter p0

    .line 291
    :try_start_1
    iput-wide p1, p0, Landroid/widget/Chronometer;->mNow:J

    .line 292
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    if-eqz v0, :cond_e

    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x1f3

    sub-long/2addr v0, v2

    goto :goto_12

    .end local p0    # "this":Landroid/widget/Chronometer;
    :cond_e
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v0, p1, v0

    :goto_12
    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    .line 293
    .local v0, "seconds":J
    const/4 v2, 0x0

    .line 294
    .local v2, "negative":Z
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_24

    .line 295
    neg-long v0, v0

    .line 296
    const/4 v2, 0x1

    .line 298
    :cond_24
    iget-object v3, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    invoke-static {v3, v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "text":Ljava/lang/String;
    if-eqz v2, :cond_3c

    .line 300
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x1040699

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 303
    :cond_3c
    iget-object v4, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz v4, :cond_98

    .line 304
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 305
    .local v4, "loc":Ljava/util/Locale;
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    if-eqz v5, :cond_50

    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 306
    :cond_50
    iput-object v4, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    .line 307
    new-instance v5, Ljava/util/Formatter;

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v5, v6, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    .line 309
    :cond_5b
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 310
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    aput-object v3, v5, v6
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_9d

    .line 312
    :try_start_65
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 313
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_74
    .catch Ljava/util/IllegalFormatException; {:try_start_65 .. :try_end_74} :catch_76
    .catchall {:try_start_65 .. :try_end_74} :catchall_9d

    move-object v3, v5

    .line 319
    goto :goto_98

    .line 314
    :catch_76
    move-exception v5

    .line 315
    .local v5, "ex":Ljava/util/IllegalFormatException;
    :try_start_77
    iget-boolean v6, p0, Landroid/widget/Chronometer;->mLogged:Z

    if-nez v6, :cond_98

    .line 316
    const-string v6, "Chronometer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal format string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Chronometer;->mLogged:Z

    .line 321
    .end local v4    # "loc":Ljava/util/Locale;
    .end local v5    # "ex":Ljava/util/IllegalFormatException;
    :cond_98
    :goto_98
    invoke-virtual {p0, v3}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_9b
    .catchall {:try_start_77 .. :try_end_9b} :catchall_9d

    .line 322
    monitor-exit p0

    return-void

    .line 290
    .end local v0    # "seconds":J
    .end local v2    # "negative":Z
    .end local v3    # "text":Ljava/lang/String;
    .end local p1    # "now":J
    :catchall_9d
    move-exception p1

    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p1
.end method


# virtual methods
.method greylist-max-o dispatchChronometerTick()V
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_9

    .line 367
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    .line 369
    :cond_9
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 412
    const-class v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBase()J
    .registers 3

    .line 188
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    return-wide v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 5

    .line 407
    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    iget-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/widget/Chronometer;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFormat()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method public whitelist isCountDown()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    return v0
.end method

.method public whitelist isTheFinalCountDown()Z
    .registers 5

    .line 161
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://youtu.be/9jK-NcRmVcw"

    .line 162
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.BROWSABLE"

    .line 163
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 164
    const v2, 0x81000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 166
    const/4 v0, 0x1

    return v0

    .line 167
    :catch_23
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 272
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 274
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 275
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 286
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 287
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 288
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 279
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 280
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 281
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 282
    return-void
.end method

.method public whitelist setBase(J)V
    .registers 5
    .param p1, "base"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 179
    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    .line 180
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 182
    return-void
.end method

.method public whitelist setCountDown(Z)V
    .registers 4
    .param p1, "countDown"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 142
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mCountDown:Z

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 144
    return-void
.end method

.method public whitelist setFormat(Ljava/lang/String;)V
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 204
    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    .line 205
    if-eqz p1, :cond_15

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_15

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 208
    :cond_15
    return-void
.end method

.method public whitelist setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 224
    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 225
    return-void
.end method

.method public greylist-max-o setStarted(Z)V
    .registers 2
    .param p1, "started"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 266
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 267
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 268
    return-void
.end method

.method public whitelist start()V
    .registers 2

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 245
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 246
    return-void
.end method

.method public whitelist stop()V
    .registers 2

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 257
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 258
    return-void
.end method
