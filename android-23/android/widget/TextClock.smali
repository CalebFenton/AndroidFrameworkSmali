.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextClock$1;,
        Landroid/widget/TextClock$2;,
        Landroid/widget/TextClock$3;
    }
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAttached:Z

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private final mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/widget/TextClock;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TextClock;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/TextClock;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/TextClock;Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/TextClock;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 105
    const-string/jumbo v0, "h:mm a"

    #@3
    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    #@5
    .line 119
    const-string/jumbo v0, "H:mm"

    #@8
    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    #@a
    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@3
    .line 140
    new-instance v0, Landroid/widget/TextClock$1;

    #@5
    new-instance v1, Landroid/os/Handler;

    #@7
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@a
    invoke-direct {v0, p0, v1}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    #@d
    iput-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@f
    .line 154
    new-instance v0, Landroid/widget/TextClock$2;

    #@11
    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    #@14
    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@16
    .line 165
    new-instance v0, Landroid/widget/TextClock$3;

    #@18
    invoke-direct {v0, p0}, Landroid/widget/TextClock$3;-><init>(Landroid/widget/TextClock;)V

    #@1b
    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@1d
    .line 185
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    #@20
    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 216
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 215
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
    .line 220
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 140
    new-instance v1, Landroid/widget/TextClock$1;

    #@5
    new-instance v2, Landroid/os/Handler;

    #@7
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    #@a
    invoke-direct {v1, p0, v2}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    #@d
    iput-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@f
    .line 154
    new-instance v1, Landroid/widget/TextClock$2;

    #@11
    invoke-direct {v1, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    #@14
    iput-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@16
    .line 165
    new-instance v1, Landroid/widget/TextClock$3;

    #@18
    invoke-direct {v1, p0}, Landroid/widget/TextClock$3;-><init>(Landroid/widget/TextClock;)V

    #@1b
    iput-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@1d
    .line 223
    sget-object v1, Lcom/android/internal/R$styleable;->TextClock:[I

    #@1f
    .line 222
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@22
    move-result-object v0

    #@23
    .line 225
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@24
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@2a
    .line 226
    const/4 v1, 0x1

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@31
    .line 227
    const/4 v1, 0x2

    #@32
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 229
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3b
    .line 232
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    #@3e
    .line 219
    return-void

    #@3f
    .line 228
    :catchall_0
    move-exception v1

    #@40
    .line 229
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@43
    .line 228
    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 508
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    .end local p2    # "c":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    #@5
    .restart local p2    # "c":Ljava/lang/CharSequence;
    :cond_0
    move-object p2, p1

    #@6
    goto :goto_0

    #@7
    :cond_1
    move-object p2, p0

    #@8
    goto :goto_0
.end method

.method private chooseFormat()V
    .locals 1

    #@0
    .prologue
    .line 462
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/widget/TextClock;->chooseFormat(Z)V

    #@4
    .line 461
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 6
    .param p1, "handleTicker"    # Z

    #@0
    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    #@3
    move-result v0

    #@4
    .line 485
    .local v0, "format24Requested":Z
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@f
    move-result-object v3

    #@10
    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@12
    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@15
    move-result-object v2

    #@16
    .line 487
    .local v2, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_1

    #@18
    .line 488
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@1a
    iget-object v4, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@1c
    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    #@1e
    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@21
    move-result-object v3

    #@22
    iput-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@24
    .line 489
    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    #@26
    iget-object v4, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    #@28
    iget-object v5, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@2a
    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@2d
    move-result-object v3

    #@2e
    iput-object v3, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    #@30
    .line 495
    :goto_0
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    #@32
    .line 496
    .local v1, "hadSeconds":Z
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@34
    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    #@37
    move-result v3

    #@38
    iput-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    #@3a
    .line 498
    if-eqz p1, :cond_0

    #@3c
    iget-boolean v3, p0, Landroid/widget/TextClock;->mAttached:Z

    #@3e
    if-eqz v3, :cond_0

    #@40
    iget-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    #@42
    if-eq v1, v3, :cond_0

    #@44
    .line 499
    if-eqz v1, :cond_2

    #@46
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    #@49
    move-result-object v3

    #@4a
    iget-object v4, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@4c
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@4f
    .line 482
    :cond_0
    :goto_1
    return-void

    #@50
    .line 491
    .end local v1    # "hadSeconds":Z
    :cond_1
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@52
    iget-object v4, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@54
    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    #@56
    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@59
    move-result-object v3

    #@5a
    iput-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@5c
    .line 492
    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    #@5e
    iget-object v4, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    #@60
    iget-object v5, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@62
    invoke-static {v3, v4, v5}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@65
    move-result-object v3

    #@66
    iput-object v3, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    #@68
    goto :goto_0

    #@69
    .line 500
    .restart local v1    # "hadSeconds":Z
    :cond_2
    iget-object v3, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@6b
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    #@6e
    goto :goto_1
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    if-eqz p1, :cond_0

    #@2
    .line 253
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    #@c
    .line 251
    :goto_0
    return-void

    #@d
    .line 255
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    #@13
    goto :goto_0
.end method

.method private init()V
    .locals 2

    #@0
    .prologue
    .line 236
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@6
    if-nez v1, :cond_2

    #@8
    .line 237
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@13
    move-result-object v1

    #@14
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@16
    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@19
    move-result-object v0

    #@1a
    .line 238
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@1c
    if-nez v1, :cond_1

    #@1e
    .line 239
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    #@20
    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@22
    .line 241
    :cond_1
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@24
    if-nez v1, :cond_2

    #@26
    .line 242
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    #@28
    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@2a
    .line 246
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    iget-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    #@2c
    invoke-direct {p0, v1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    #@2f
    .line 248
    const/4 v1, 0x0

    #@30
    invoke-direct {p0, v1}, Landroid/widget/TextClock;->chooseFormat(Z)V

    #@33
    .line 235
    return-void
.end method

.method private onTimeChanged()V
    .locals 4

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    #@2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@9
    .line 577
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@b
    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    #@d
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    #@14
    .line 578
    iget-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    #@16
    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    #@18
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    #@1f
    .line 575
    return-void
.end method

.method private registerObserver()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 556
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v0

    #@9
    .line 557
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 558
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@f
    .line 559
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@11
    const/4 v3, -0x1

    #@12
    .line 558
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@15
    .line 555
    :goto_0
    return-void

    #@16
    .line 561
    :cond_0
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@18
    .line 562
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@1a
    .line 561
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1d
    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 5

    #@0
    .prologue
    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 548
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 549
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 550
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    #@14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    .line 552
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@1d
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    #@20
    move-result-object v3

    #@21
    const/4 v4, 0x0

    #@22
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@25
    .line 545
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    #@0
    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v0

    #@8
    .line 572
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@a
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@d
    .line 570
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    #@0
    .prologue
    .line 567
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@9
    .line 566
    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 584
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@4
    .line 586
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    .line 587
    .local v0, "s":Ljava/lang/CharSequence;
    const-string/jumbo v3, "format12Hour"

    #@b
    if-nez v0, :cond_0

    #@d
    move-object v1, v2

    #@e
    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 589
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    .line 590
    const-string/jumbo v3, "format24Hour"

    #@18
    if-nez v0, :cond_1

    #@1a
    move-object v1, v2

    #@1b
    :goto_1
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 591
    const-string/jumbo v1, "format"

    #@21
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@23
    if-nez v3, :cond_2

    #@25
    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 592
    const-string/jumbo v1, "hasSeconds"

    #@2b
    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    #@2d
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@30
    .line 583
    return-void

    #@31
    .line 587
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    goto :goto_0

    #@36
    .line 590
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    goto :goto_1

    #@3b
    .line 591
    :cond_2
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@3d
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    goto :goto_2
.end method

.method public getFormat()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 472
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 411
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 412
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 414
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 513
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    #@3
    .line 515
    iget-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 516
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    #@a
    .line 518
    invoke-direct {p0}, Landroid/widget/TextClock;->registerReceiver()V

    #@d
    .line 519
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    #@10
    .line 521
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    #@12
    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    #@15
    .line 523
    iget-boolean v0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 524
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@1b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@1e
    .line 512
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 526
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@22
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 533
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    #@3
    .line 535
    iget-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 536
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterReceiver()V

    #@a
    .line 537
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    #@d
    .line 539
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@16
    .line 541
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    #@19
    .line 532
    :cond_0
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 312
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    #@2
    .line 314
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@5
    .line 315
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 311
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 370
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    #@2
    .line 372
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@5
    .line 373
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 369
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 301
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@2
    .line 303
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@5
    .line 304
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 300
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 359
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@2
    .line 361
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@5
    .line 362
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 358
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    #@0
    .prologue
    .line 384
    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    #@2
    .line 386
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@5
    .line 387
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 388
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    #@b
    .line 389
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    #@e
    .line 383
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 449
    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    #@2
    .line 451
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    #@5
    .line 452
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 448
    return-void
.end method
