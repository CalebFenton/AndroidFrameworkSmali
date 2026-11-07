.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextClock$ClockEventDelegate;,
        Landroid/widget/TextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private blacklist mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

.field private greylist-max-o mDescFormat:Ljava/lang/CharSequence;

.field private greylist-max-o mDescFormat12:Ljava/lang/CharSequence;

.field private greylist-max-o mDescFormat24:Ljava/lang/CharSequence;

.field private greylist-max-o mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private greylist-max-o mFormat12:Ljava/lang/CharSequence;

.field private greylist-max-o mFormat24:Ljava/lang/CharSequence;

.field private greylist-max-o mFormatChangeObserver:Landroid/database/ContentObserver;

.field private greylist-max-o mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final greylist-max-o mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mRegistered:Z

.field private greylist-max-o mShouldRunTicker:Z

.field private greylist-max-o mShowCurrentUserTime:Z

.field private greylist-max-o mStopTicking:Z

.field private final greylist-max-o mTicker:Ljava/lang/Runnable;

.field private greylist-max-o mTime:Ljava/util/Calendar;

.field private greylist-max-o mTimeZone:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasSeconds(Landroid/widget/TextClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopTicking(Landroid/widget/TextClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTime(Landroid/widget/TextClock;)Ljava/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeZone(Landroid/widget/TextClock;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mchooseFormat(Landroid/widget/TextClock;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateTime(Landroid/widget/TextClock;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeChanged(Landroid/widget/TextClock;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    const-string v0, "h:mm a"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 129
    const-string v0, "H:mm"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 228
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 229
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 230
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 261
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 264
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 176
    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 266
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 268
    .local v5, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->TextClock:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v2, "context":Landroid/content/Context;
    .local v4, "attrs":Landroid/util/AttributeSet;
    .local v6, "defStyleAttr":I
    .local v7, "defStyleRes":I
    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextClock;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 271
    const/4 p1, 0x0

    :try_start_22
    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 272
    const/4 p1, 0x1

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 273
    const/4 p1, 0x2

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_3e

    .line 275
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    nop

    .line 278
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 279
    return-void

    .line 275
    :catchall_3e
    move-exception v0

    move-object p1, v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    throw p1
.end method

.method private static greylist-max-o abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .line 580
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    move-object v0, p2

    goto :goto_9

    :cond_6
    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method private greylist-max-o chooseFormat()V
    .registers 5

    .line 552
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 554
    .local v0, "format24Requested":Z
    if-eqz v0, :cond_23

    .line 555
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    const-string v3, "Hm"

    invoke-direct {p0, v3}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 556
    iget-object v1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_3f

    .line 558
    :cond_23
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    const-string v3, "hm"

    invoke-direct {p0, v3}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 559
    iget-object v1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 562
    :goto_3f
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 563
    .local v1, "hadSeconds":Z
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 565
    iget-boolean v2, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v2, :cond_56

    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eq v1, v2, :cond_56

    .line 566
    iget-object v2, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 568
    :cond_56
    return-void
.end method

.method private greylist-max-o createTime(Ljava/lang/String;)V
    .registers 5
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "tz":Ljava/util/TimeZone;
    if-nez p1, :cond_8

    .line 297
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_1b

    .line 300
    :cond_8
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 305
    :try_start_c
    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;
    :try_end_f
    .catch Ljava/time/DateTimeException; {:try_start_c .. :try_end_f} :catch_10

    .line 311
    goto :goto_1b

    .line 306
    :catch_10
    move-exception v1

    .line 309
    .local v1, "ex":Ljava/time/DateTimeException;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    .line 314
    .end local v1    # "ex":Ljava/time/DateTimeException;
    :goto_1b
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    .line 315
    return-void
.end method

.method private blacklist getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "skeleton"    # Ljava/lang/String;

    .line 571
    nop

    .line 572
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 571
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 573
    .local v0, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o init()V
    .registers 3

    .line 282
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    .line 283
    const-string v0, "hm"

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 285
    :cond_c
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_18

    .line 286
    const-string v0, "Hm"

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 288
    :cond_18
    new-instance v0, Landroid/widget/TextClock$ClockEventDelegate;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    .line 290
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 292
    return-void
.end method

.method private greylist onTimeChanged()V
    .registers 4

    .line 660
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 661
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 663
    return-void
.end method

.method private greylist-max-o registerObserver()V
    .registers 4

    .line 632
    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_24

    .line 633
    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_13

    .line 634
    new-instance v0, Landroid/widget/TextClock$FormatChangeObserver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/TextClock$FormatChangeObserver;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 644
    :cond_13
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_19

    const/4 v0, -0x1

    goto :goto_1d

    :cond_19
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 645
    .local v0, "userHandle":I
    :goto_1d
    iget-object v1, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextClock$ClockEventDelegate;->registerFormatChangeObserver(Landroid/database/ContentObserver;I)V

    .line 647
    .end local v0    # "userHandle":I
    :cond_24
    return-void
.end method

.method private greylist-max-o unregisterObserver()V
    .registers 3

    .line 650
    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_b

    .line 651
    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;->unregisterFormatChangeObserver(Landroid/database/ContentObserver;)V

    .line 653
    :cond_b
    return-void
.end method


# virtual methods
.method public blacklist disableClockTick()V
    .registers 2

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    .line 629
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 668
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 670
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 671
    .local v0, "s":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    move-object v2, v1

    goto :goto_10

    :cond_c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_10
    const-string v3, "format12Hour"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 674
    if-nez v0, :cond_1d

    move-object v2, v1

    goto :goto_21

    :cond_1d
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_21
    const-string v3, "format24Hour"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v2, :cond_2b

    goto :goto_31

    :cond_2b
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_31
    const-string v2, "format"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v1, "hasSeconds"

    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 677
    return-void
.end method

.method public greylist-max-r getFormat()Ljava/lang/CharSequence;
    .registers 2

    .line 544
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getFormat12Hour()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 330
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getFormat24Hour()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 390
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTimeZone()Ljava/lang/String;
    .registers 2

    .line 510
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist is24HourModeEnabled()Z
    .registers 3

    .line 491
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_11

    .line 492
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 494
    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 585
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 587
    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-nez v0, :cond_1d

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    .line 590
    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock$ClockEventDelegate;->registerTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    .line 591
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 593
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 595
    :cond_1d
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 612
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 614
    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_14

    .line 615
    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;->unregisterTimeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 616
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    .line 620
    :cond_14
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .registers 3
    .param p1, "isVisible"    # Z

    .line 599
    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    .line 601
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-nez v0, :cond_12

    if-eqz p1, :cond_12

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    .line 603
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_20

    .line 604
    :cond_12
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v0, :cond_20

    if-nez p1, :cond_20

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    .line 606
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 608
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist refreshTime()V
    .registers 1

    .line 467
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 468
    invoke-virtual {p0}, Landroid/widget/TextClock;->invalidate()V

    .line 469
    return-void
.end method

.method public blacklist setClockEventDelegate(Landroid/widget/TextClock$ClockEventDelegate;)V
    .registers 4
    .param p1, "delegate"    # Landroid/widget/TextClock$ClockEventDelegate;

    .line 459
    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Clock events already registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 460
    iput-object p1, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    .line 461
    return-void
.end method

.method public greylist-max-o setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 371
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    .line 373
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 374
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 375
    return-void
.end method

.method public greylist-max-o setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 430
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    .line 432
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 433
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 434
    return-void
.end method

.method public whitelist setFormat12Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 360
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 362
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 363
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 364
    return-void
.end method

.method public whitelist setFormat24Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 419
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 421
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 422
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 423
    return-void
.end method

.method public greylist-max-o setShowCurrentUserTime(Z)V
    .registers 2
    .param p1, "showCurrentUserTime"    # Z

    .line 444
    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    .line 446
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 447
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 448
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 449
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 450
    return-void
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)V
    .registers 2
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 530
    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    .line 532
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 534
    return-void
.end method
