.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$OnChronometerTickListener;,
        Landroid/widget/Chronometer$1;
    }
.end annotation


# static fields
.field private static final HOUR_IN_SEC:I = 0xe10

.field private static final MIN_IN_SEC:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "Chronometer"

.field private static final TICK_WHAT:I = 0x2


# instance fields
.field private mBase:J

.field private mFormat:Ljava/lang/String;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mFormatterArgs:[Ljava/lang/Object;

.field private mFormatterLocale:Ljava/util/Locale;

.field private mHandler:Landroid/os/Handler;

.field private mLogged:Z

.field private mNow:J

.field private mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private mRecycle:Ljava/lang/StringBuilder;

.field private mRunning:Z

.field private mStarted:Z

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Landroid/widget/Chronometer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    #@2
    return v0
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
    .line 83
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 71
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    #@8
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    const/16 v2, 0x8

    #@c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    iput-object v1, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    #@11
    .line 270
    new-instance v1, Landroid/widget/Chronometer$1;

    #@13
    invoke-direct {v1, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    #@16
    iput-object v1, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    #@18
    .line 106
    sget-object v1, Lcom/android/internal/R$styleable;->Chronometer:[I

    #@1a
    .line 105
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1d
    move-result-object v0

    #@1e
    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    #@26
    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 110
    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    #@2c
    .line 102
    return-void
.end method

.method private static formatDuration(J)Ljava/lang/String;
    .locals 10
    .param p0, "ms"    # J

    #@0
    .prologue
    .line 289
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v4

    #@4
    .line 290
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 292
    .local v6, "text":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x3e8

    #@b
    div-long v8, p0, v8

    #@d
    long-to-int v0, v8

    #@e
    .line 293
    .local v0, "duration":I
    if-gez v0, :cond_0

    #@10
    .line 294
    neg-int v0, v0

    #@11
    .line 297
    :cond_0
    const/4 v2, 0x0

    #@12
    .line 298
    .local v2, "h":I
    const/4 v3, 0x0

    #@13
    .line 300
    .local v3, "m":I
    const/16 v7, 0xe10

    #@15
    if-lt v0, v7, :cond_1

    #@17
    .line 301
    div-int/lit16 v2, v0, 0xe10

    #@19
    .line 302
    mul-int/lit16 v7, v2, 0xe10

    #@1b
    sub-int/2addr v0, v7

    #@1c
    .line 304
    :cond_1
    const/16 v7, 0x3c

    #@1e
    if-lt v0, v7, :cond_2

    #@20
    .line 305
    div-int/lit8 v3, v0, 0x3c

    #@22
    .line 306
    mul-int/lit8 v7, v3, 0x3c

    #@24
    sub-int/2addr v0, v7

    #@25
    .line 308
    :cond_2
    move v5, v0

    #@26
    .line 311
    .local v5, "s":I
    if-lez v2, :cond_3

    #@28
    .line 312
    const/4 v7, 0x1

    #@29
    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    #@2b
    .line 313
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v8

    #@2f
    const/4 v9, 0x0

    #@30
    aput-object v8, v7, v9

    #@32
    const v8, 0x1140004

    #@35
    .line 312
    invoke-virtual {v4, v8, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 315
    :cond_3
    if-lez v3, :cond_5

    #@3e
    .line 316
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@41
    move-result v7

    #@42
    if-lez v7, :cond_4

    #@44
    .line 317
    const/16 v7, 0x20

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@49
    .line 319
    :cond_4
    const/4 v7, 0x1

    #@4a
    new-array v7, v7, [Ljava/lang/Object;

    #@4c
    .line 320
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v8

    #@50
    const/4 v9, 0x0

    #@51
    aput-object v8, v7, v9

    #@53
    const v8, 0x1140003

    #@56
    .line 319
    invoke-virtual {v4, v8, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 323
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@60
    move-result v7

    #@61
    if-lez v7, :cond_6

    #@63
    .line 324
    const/16 v7, 0x20

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 326
    :cond_6
    const/4 v7, 0x1

    #@69
    new-array v7, v7, [Ljava/lang/Object;

    #@6b
    .line 327
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e
    move-result-object v8

    #@6f
    const/4 v9, 0x0

    #@70
    aput-object v8, v7, v9

    #@72
    const v8, 0x1140002

    #@75
    .line 326
    invoke-virtual {v4, v8, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    .line 332
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    return-object v7

    #@81
    .line 328
    :catch_0
    move-exception v1

    #@82
    .line 330
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v7, 0x0

    #@83
    return-object v7
.end method

.method private init()V
    .locals 2

    #@0
    .prologue
    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    #@6
    .line 115
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    #@8
    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    #@b
    .line 113
    return-void
.end method

.method private updateRunning()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 257
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mVisible:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    #@7
    .line 258
    :goto_0
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRunning:Z

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 259
    if-eqz v0, :cond_2

    #@d
    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10
    move-result-wide v2

    #@11
    invoke-direct {p0, v2, v3}, Landroid/widget/Chronometer;->updateText(J)V

    #@14
    .line 261
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    #@17
    .line 262
    iget-object v1, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    #@19
    iget-object v2, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    #@1b
    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@1e
    move-result-object v2

    #@1f
    const-wide/16 v4, 0x3e8

    #@21
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@24
    .line 266
    :goto_1
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    #@26
    .line 256
    :cond_0
    return-void

    #@27
    .line 257
    :cond_1
    const/4 v0, 0x0

    #@28
    .local v0, "running":Z
    goto :goto_0

    #@29
    .line 264
    .end local v0    # "running":Z
    :cond_2
    iget-object v1, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    #@2b
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@2e
    goto :goto_1
.end method

.method private declared-synchronized updateText(J)V
    .locals 9
    .param p1, "now"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 230
    :try_start_0
    iput-wide p1, p0, Landroid/widget/Chronometer;->mNow:J

    #@3
    .line 231
    iget-wide v6, p0, Landroid/widget/Chronometer;->mBase:J

    #@5
    sub-long v2, p1, v6

    #@7
    .line 232
    .local v2, "seconds":J
    const-wide/16 v6, 0x3e8

    #@9
    div-long/2addr v2, v6

    #@a
    .line 233
    iget-object v5, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    #@c
    invoke-static {v5, v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 235
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@17
    move-result-object v1

    #@18
    .line 237
    .local v1, "loc":Ljava/util/Locale;
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    #@1a
    if-eqz v5, :cond_1

    #@1c
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    #@1e
    invoke-virtual {v1, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_1

    #@24
    .line 241
    :goto_0
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@26
    const/4 v6, 0x0

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@2a
    .line 242
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    #@2c
    const/4 v6, 0x0

    #@2d
    aput-object v4, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 244
    :try_start_1
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    #@31
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    #@33
    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    #@35
    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@38
    .line 245
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result-object v4

    #@3e
    .line 253
    .end local v1    # "loc":Ljava/util/Locale;
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p0, v4}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    monitor-exit p0

    #@42
    .line 229
    return-void

    #@43
    .line 238
    .restart local v1    # "loc":Ljava/util/Locale;
    :cond_1
    :try_start_3
    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    #@45
    .line 239
    new-instance v5, Ljava/util/Formatter;

    #@47
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5, v6, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@4c
    iput-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .end local v1    # "loc":Ljava/util/Locale;
    .end local v2    # "seconds":J
    .end local v4    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@50
    monitor-exit p0

    #@51
    throw v5

    #@52
    .line 246
    .restart local v1    # "loc":Ljava/util/Locale;
    .restart local v2    # "seconds":J
    .restart local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@53
    .line 247
    .local v0, "ex":Ljava/util/IllegalFormatException;
    :try_start_4
    iget-boolean v5, p0, Landroid/widget/Chronometer;->mLogged:Z

    #@55
    if-nez v5, :cond_0

    #@57
    .line 248
    const-string/jumbo v5, "Chronometer"

    #@5a
    new-instance v6, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v7, "Illegal format string: "

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    iget-object v7, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    #@68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 249
    const/4 v5, 0x1

    #@74
    iput-boolean v5, p0, Landroid/widget/Chronometer;->mLogged:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@76
    goto :goto_1
.end method


# virtual methods
.method dispatchChronometerTick()V
    .locals 1

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 282
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    #@6
    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    #@9
    .line 280
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 342
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
    .line 134
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    #@2
    return-wide v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    #@0
    .prologue
    .line 337
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
    .line 160
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    #@2
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 217
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    #@3
    .line 218
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    #@6
    .line 219
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    #@9
    .line 216
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 224
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    #@4
    .line 225
    if-nez p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    #@9
    .line 226
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    #@c
    .line 223
    return-void
.end method

.method public setBase(J)V
    .locals 3
    .param p1, "base"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 125
    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    #@2
    .line 126
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    #@5
    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v0

    #@9
    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    #@c
    .line 124
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    #@2
    .line 151
    if-eqz p1, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 152
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
    .line 149
    :cond_0
    return-void
.end method

.method public setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Chronometer$OnChronometerTickListener;

    #@0
    .prologue
    .line 169
    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    #@2
    .line 168
    return-void
.end method

.method public setStarted(Z)V
    .locals 0
    .param p1, "started"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 211
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    #@2
    .line 212
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    #@5
    .line 210
    return-void
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 189
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    #@3
    .line 190
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    #@6
    .line 188
    return-void
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    #@3
    .line 202
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    #@6
    .line 200
    return-void
.end method
