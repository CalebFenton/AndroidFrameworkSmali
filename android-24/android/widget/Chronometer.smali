.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$1;,
        Landroid/widget/Chronometer$OnChronometerTickListener;
    }
.end annotation


# static fields
.field private static final HOUR_IN_SEC:I = 0xe10

.field private static final MIN_IN_SEC:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "Chronometer"


# instance fields
.field private mBase:J

.field private mCountDown:Z

.field private mFormat:Ljava/lang/String;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mFormatterArgs:[Ljava/lang/Object;

.field private mFormatterLocale:Ljava/util/Locale;

.field private mLogged:Z

.field private mNow:J

.field private mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private mRecycle:Ljava/lang/StringBuilder;

.field private mRunning:Z

.field private mStarted:Z

.field private final mTickRunnable:Ljava/lang/Runnable;

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Landroid/widget/Chronometer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/Chronometer;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Chronometer;J)V
    .locals 1
    .param p1, "now"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 95
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 76
    new-array v1, v4, [Ljava/lang/Object;

    #@7
    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    #@9
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    const/16 v2, 0x8

    #@d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@10
    iput-object v1, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    #@12
    .line 305
    new-instance v1, Landroid/widget/Chronometer$1;

    #@14
    invoke-direct {v1, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    #@17
    iput-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    #@19
    .line 110
    sget-object v1, Lcom/android/internal/R$styleable;->Chronometer:[I

    #@1b
    .line 109
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1e
    move-result-object v0

    #@1f
    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    #@26
    .line 112
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@29
    move-result v1

    #@2a
    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->setCountDown(Z)V

    #@2d
    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@30
    .line 115
    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    #@33
    .line 106
    return-void
.end method

.method private static formatDuration(J)Ljava/lang/String;
    .locals 10
    .param p0, "ms"    # J

    #@0
    .prologue
    .line 325
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v4

    #@4
    .line 326
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 328
    .local v6, "text":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x3e8

    #@b
    div-long v8, p0, v8

    #@d
    long-to-int v0, v8

    #@e
    .line 329
    .local v0, "duration":I
    if-gez v0, :cond_0

    #@10
    .line 330
    neg-int v0, v0

    #@11
    .line 333
    :cond_0
    const/4 v2, 0x0

    #@12
    .line 334
    .local v2, "h":I
    const/4 v3, 0x0

    #@13
    .line 336
    .local v3, "m":I
    const/16 v7, 0xe10

    #@15
    if-lt v0, v7, :cond_1

    #@17
    .line 337
    div-int/lit16 v2, v0, 0xe10

    #@19
    .line 338
    mul-int/lit16 v7, v2, 0xe10

    #@1b
    sub-int/2addr v0, v7

    #@1c
    .line 340
    :cond_1
    const/16 v7, 0x3c

    #@1e
    if-lt v0, v7, :cond_2

    #@20
    .line 341
    div-int/lit8 v3, v0, 0x3c

    #@22
    .line 342
    mul-int/lit8 v7, v3, 0x3c

    #@24
    sub-int/2addr v0, v7

    #@25
    .line 344
    :cond_2
    move v5, v0

    #@26
    .line 347
    .local v5, "s":I
    if-lez v2, :cond_3

    #@28
    .line 348
    const/4 v7, 0x1

    #@29
    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    #@2b
    .line 349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v8

    #@2f
    const/4 v9, 0x0

    #@30
    aput-object v8, v7, v9

    #@32
    const v8, 0x1140006

    #@35
    .line 348
    invoke-virtual {v4, v8, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 351
    :cond_3
    if-lez v3, :cond_5

    #@3e
    .line 352
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@41
    move-result v7

    #@42
    if-lez v7, :cond_4

    #@44
    .line 353
    const/16 v7, 0x20

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    .line 355
    :cond_4
    const/4 v7, 0x1

    #@4a
    new-array v7, v7, [Ljava/lang/Object;

    #@4c
    .line 356
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v8

    #@50
    const/4 v9, 0x0

    #@51
    aput-object v8, v7, v9

    #@53
    const v8, 0x1140005

    #@56
    .line 355
    invoke-virtual {v4, v8, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 359
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@60
    move-result v7

    #@61
    if-lez v7, :cond_6

    #@63
    .line 360
    const/16 v7, 0x20

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 362
    :cond_6
    const/4 v7, 0x1

    #@69
    new-array v7, v7, [Ljava/lang/Object;

    #@6b
    .line 363
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e
    move-result-object v8

    #@6f
    const/4 v9, 0x0

    #@70
    aput-object v8, v7, v9

    #@72
    const v8, 0x1140004

    #@75
    .line 362
    invoke-virtual {v4, v8, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    .line 368
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    return-object v7

    #@81
    .line 364
    :catch_0
    move-exception v1

    #@82
    .line 366
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v7, 0x0

    #@83
    return-object v7
.end method

.method private init()V
    .locals 2

    #@0
    .prologue
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    #@6
    .line 120
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    #@8
    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    #@b
    .line 118
    return-void
.end method

.method private updateRunning()V
    .locals 4

    #@0
    .prologue
    .line 292
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mVisible:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    #@6
    .line 293
    :goto_0
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRunning:Z

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 294
    if-eqz v0, :cond_2

    #@c
    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v2

    #@10
    invoke-direct {p0, v2, v3}, Landroid/widget/Chronometer;->updateText(J)V

    #@13
    .line 296
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    #@16
    .line 297
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    #@18
    const-wide/16 v2, 0x3e8

    #@1a
    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1d
    .line 301
    :goto_1
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    #@1f
    .line 291
    :cond_0
    return-void

    #@20
    .line 292
    :cond_1
    const/4 v0, 0x0

    #@21
    .local v0, "running":Z
    goto :goto_0

    #@22
    .line 299
    .end local v0    # "running":Z
    :cond_2
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    #@24
    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@27
    goto :goto_1
.end method

.method private declared-synchronized updateText(J)V
    .locals 9
    .param p1, "now"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 257
    :try_start_0
    iput-wide p1, p0, Landroid/widget/Chronometer;->mNow:J

    #@3
    .line 258
    iget-boolean v6, p0, Landroid/widget/Chronometer;->mCountDown:Z

    #@5
    if-eqz v6, :cond_3

    #@7
    iget-wide v6, p0, Landroid/widget/Chronometer;->mBase:J

    #@9
    sub-long v4, v6, p1

    #@b
    .line 259
    .local v4, "seconds":J
    :goto_0
    const-wide/16 v6, 0x3e8

    #@d
    div-long/2addr v4, v6

    #@e
    .line 260
    const/4 v2, 0x0

    #@f
    .line 261
    .local v2, "negative":Z
    const-wide/16 v6, 0x0

    #@11
    cmp-long v6, v4, v6

    #@13
    if-gez v6, :cond_0

    #@15
    .line 262
    neg-long v4, v4

    #@16
    .line 263
    const/4 v2, 0x1

    #@17
    .line 265
    :cond_0
    iget-object v6, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    #@19
    invoke-static {v6, v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 266
    .local v3, "text":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@1f
    .line 267
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v6

    #@23
    const/4 v7, 0x1

    #@24
    new-array v7, v7, [Ljava/lang/Object;

    #@26
    const/4 v8, 0x0

    #@27
    aput-object v3, v7, v8

    #@29
    const v8, 0x10405e8

    #@2c
    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 270
    :cond_1
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    #@32
    if-eqz v6, :cond_2

    #@34
    .line 271
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@37
    move-result-object v1

    #@38
    .line 272
    .local v1, "loc":Ljava/util/Locale;
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    #@3a
    if-eqz v6, :cond_4

    #@3c
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    #@3e
    invoke-virtual {v1, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v6

    #@42
    if-eqz v6, :cond_4

    #@44
    .line 276
    :goto_1
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@46
    const/4 v7, 0x0

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@4a
    .line 277
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    #@4c
    const/4 v7, 0x0

    #@4d
    aput-object v3, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .line 279
    :try_start_1
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    #@51
    iget-object v7, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    #@53
    iget-object v8, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    #@55
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@58
    .line 280
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@5a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    move-result-object v3

    #@5e
    .line 288
    .end local v1    # "loc":Ljava/util/Locale;
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {p0, v3}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    monitor-exit p0

    #@62
    .line 256
    return-void

    #@63
    .line 258
    .end local v2    # "negative":Z
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "seconds":J
    :cond_3
    :try_start_3
    iget-wide v6, p0, Landroid/widget/Chronometer;->mBase:J

    #@65
    sub-long v4, p1, v6

    #@67
    .restart local v4    # "seconds":J
    goto :goto_0

    #@68
    .line 273
    .restart local v1    # "loc":Ljava/util/Locale;
    .restart local v2    # "negative":Z
    .restart local v3    # "text":Ljava/lang/String;
    :cond_4
    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    #@6a
    .line 274
    new-instance v6, Ljava/util/Formatter;

    #@6c
    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v6, v7, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@71
    iput-object v6, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    goto :goto_1

    #@74
    .end local v1    # "loc":Ljava/util/Locale;
    .end local v2    # "negative":Z
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "seconds":J
    :catchall_0
    move-exception v6

    #@75
    monitor-exit p0

    #@76
    throw v6

    #@77
    .line 281
    .restart local v1    # "loc":Ljava/util/Locale;
    .restart local v2    # "negative":Z
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "seconds":J
    :catch_0
    move-exception v0

    #@78
    .line 282
    .local v0, "ex":Ljava/util/IllegalFormatException;
    :try_start_4
    iget-boolean v6, p0, Landroid/widget/Chronometer;->mLogged:Z

    #@7a
    if-nez v6, :cond_2

    #@7c
    .line 283
    const-string/jumbo v6, "Chronometer"

    #@7f
    new-instance v7, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v8, "Illegal format string: "

    #@87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    iget-object v8, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    #@8d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v7

    #@91
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v7

    #@95
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 284
    const/4 v6, 0x1

    #@99
    iput-boolean v6, p0, Landroid/widget/Chronometer;->mLogged:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9b
    goto :goto_2
.end method


# virtual methods
.method dispatchChronometerTick()V
    .locals 1

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 318
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    #@6
    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    #@9
    .line 316
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 378
    const-class v0, Landroid/widget/Chronometer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBase()J
    .locals 2

    #@0
    .prologue
    .line 161
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    #@2
    return-wide v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    #@0
    .prologue
    .line 373
    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    #@2
    iget-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    #@4
    sub-long/2addr v0, v2

    #@5
    invoke-static {v0, v1}, Landroid/widget/Chronometer;->formatDuration(J)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    #@2
    return-object v0
.end method

.method public isCountDown()Z
    .locals 1

    #@0
    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    #@2
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    #@3
    .line 245
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    #@6
    .line 246
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    #@9
    .line 243
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 251
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    #@4
    .line 252
    if-nez p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    #@9
    .line 253
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    #@c
    .line 250
    return-void
.end method

.method public setBase(J)V
    .locals 3
    .param p1, "base"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 152
    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    #@2
    .line 153
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    #@5
    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v0

    #@9
    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    #@c
    .line 151
    return-void
.end method

.method public setCountDown(Z)V
    .locals 2
    .param p1, "countDown"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 132
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mCountDown:Z

    #@2
    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    #@9
    .line 131
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 177
    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    #@2
    .line 178
    if-eqz p1, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    mul-int/lit8 v1, v1, 0x2

    #@10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@15
    .line 176
    :cond_0
    return-void
.end method

.method public setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Chronometer$OnChronometerTickListener;

    #@0
    .prologue
    .line 196
    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    #@2
    .line 195
    return-void
.end method

.method public setStarted(Z)V
    .locals 0
    .param p1, "started"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 238
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    #@2
    .line 239
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    #@5
    .line 237
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 216
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    #@3
    .line 217
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    #@6
    .line 215
    return-void
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 228
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    #@3
    .line 229
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    #@6
    .line 227
    return-void
.end method
