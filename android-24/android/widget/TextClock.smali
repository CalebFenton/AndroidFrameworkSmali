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
        Landroid/widget/TextClock$FormatChangeObserver;
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

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 190
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@3
    .line 160
    new-instance v0, Landroid/widget/TextClock$1;

    #@5
    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    #@8
    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@a
    .line 171
    new-instance v0, Landroid/widget/TextClock$2;

    #@c
    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    #@f
    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@11
    .line 191
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    #@14
    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 207
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 160
    new-instance v1, Landroid/widget/TextClock$1;

    #@5
    invoke-direct {v1, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    #@8
    iput-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@a
    .line 171
    new-instance v1, Landroid/widget/TextClock$2;

    #@c
    invoke-direct {v1, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    #@f
    iput-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@11
    .line 229
    sget-object v1, Lcom/android/internal/R$styleable;->TextClock:[I

    #@13
    .line 228
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@16
    move-result-object v0

    #@17
    .line 231
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@18
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@1e
    .line 232
    const/4 v1, 0x1

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@25
    .line 233
    const/4 v1, 0x2

    #@26
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    iput-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 235
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2f
    .line 238
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    #@32
    .line 225
    return-void

    #@33
    .line 234
    :catchall_0
    move-exception v1

    #@34
    .line 235
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@37
    .line 234
    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 514
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
    .line 468
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/widget/TextClock;->chooseFormat(Z)V

    #@4
    .line 467
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 6
    .param p1, "handleTicker"    # Z

    #@0
    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    #@3
    move-result v0

    #@4
    .line 491
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
    .line 493
    .local v2, "ld":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_1

    #@18
    .line 494
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
    .line 495
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
    .line 501
    :goto_0
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    #@32
    .line 502
    .local v1, "hadSeconds":Z
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@34
    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    #@37
    move-result v3

    #@38
    iput-boolean v3, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    #@3a
    .line 504
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
    .line 505
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
    .line 488
    :cond_0
    :goto_1
    return-void

    #@50
    .line 497
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
    .line 498
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
    .line 506
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
    .line 258
    if-eqz p1, :cond_0

    #@2
    .line 259
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
    .line 257
    :goto_0
    return-void

    #@d
    .line 261
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
    .line 242
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@6
    if-nez v1, :cond_2

    #@8
    .line 243
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
    .line 244
    .local v0, "ld":Llibcore/icu/LocaleData;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@1c
    if-nez v1, :cond_1

    #@1e
    .line 245
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    #@20
    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@22
    .line 247
    :cond_1
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@24
    if-nez v1, :cond_2

    #@26
    .line 248
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    #@28
    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@2a
    .line 252
    .end local v0    # "ld":Llibcore/icu/LocaleData;
    :cond_2
    iget-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    #@2c
    invoke-direct {p0, v1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    #@2f
    .line 254
    const/4 v1, 0x0

    #@30
    invoke-direct {p0, v1}, Landroid/widget/TextClock;->chooseFormat(Z)V

    #@33
    .line 241
    return-void
.end method

.method private onTimeChanged()V
    .locals 4

    #@0
    .prologue
    .line 597
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    #@2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@9
    .line 598
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
    .line 599
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
    .line 596
    return-void
.end method

.method private registerObserver()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 570
    invoke-virtual {p0}, Landroid/widget/TextClock;->isAttachedToWindow()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 571
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 572
    new-instance v1, Landroid/widget/TextClock$FormatChangeObserver;

    #@d
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, p0, v2}, Landroid/widget/TextClock$FormatChangeObserver;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    #@14
    iput-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@16
    .line 574
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d
    move-result-object v0

    #@1e
    .line 575
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 576
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@24
    .line 577
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@26
    const/4 v3, -0x1

    #@27
    .line 576
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@2a
    .line 569
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    #@2b
    .line 579
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@2d
    .line 580
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@2f
    .line 579
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@32
    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 6

    #@0
    .prologue
    .line 552
    new-instance v3, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 554
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    #@8
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 555
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    #@e
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 556
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    #@14
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    .line 565
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@1d
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@20
    move-result-object v2

    #@21
    .line 566
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    #@24
    move-result-object v5

    #@25
    const/4 v4, 0x0

    #@26
    .line 565
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@29
    .line 551
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    #@0
    .prologue
    .line 590
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 591
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v0

    #@c
    .line 592
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    #@e
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@11
    .line 589
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    #@0
    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@9
    .line 585
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
    .line 605
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@4
    .line 607
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    .line 608
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
    .line 610
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    .line 611
    const-string/jumbo v3, "format24Hour"

    #@18
    if-nez v0, :cond_1

    #@1a
    move-object v1, v2

    #@1b
    :goto_1
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 612
    const-string/jumbo v1, "format"

    #@21
    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    #@23
    if-nez v3, :cond_2

    #@25
    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 613
    const-string/jumbo v1, "hasSeconds"

    #@2b
    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    #@2d
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@30
    .line 604
    return-void

    #@31
    .line 608
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    goto :goto_0

    #@36
    .line 611
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    goto :goto_1

    #@3b
    .line 612
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
    .line 478
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
    .line 277
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
    .line 336
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 435
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 417
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 418
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
    .line 420
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
    .line 519
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    #@3
    .line 521
    iget-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 522
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    #@a
    .line 524
    invoke-direct {p0}, Landroid/widget/TextClock;->registerReceiver()V

    #@d
    .line 525
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    #@10
    .line 527
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    #@12
    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    #@15
    .line 529
    iget-boolean v0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 530
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@1b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@1e
    .line 518
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 532
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@22
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 539
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    #@3
    .line 541
    iget-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 542
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterReceiver()V

    #@a
    .line 543
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    #@d
    .line 545
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@16
    .line 547
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    #@19
    .line 538
    :cond_0
    return-void
.end method

.method public setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 318
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    #@2
    .line 320
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@5
    .line 321
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 317
    return-void
.end method

.method public setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 376
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    #@2
    .line 378
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@5
    .line 379
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 375
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 307
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    #@2
    .line 309
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@5
    .line 310
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 306
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 365
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    #@2
    .line 367
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@5
    .line 368
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 364
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0
    .param p1, "showCurrentUserTime"    # Z

    #@0
    .prologue
    .line 390
    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    #@2
    .line 392
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    #@5
    .line 393
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 394
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    #@b
    .line 395
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    #@e
    .line 389
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 455
    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    #@2
    .line 457
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    #@5
    .line 458
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    #@8
    .line 454
    return-void
.end method
