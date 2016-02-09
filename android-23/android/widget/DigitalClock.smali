.class public Landroid/widget/DigitalClock;
.super Landroid/widget/TextView;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DigitalClock$FormatChangeObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mCalendar:Ljava/util/Calendar;

.field mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method static synthetic -get0(Landroid/widget/DigitalClock;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/DigitalClock;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/DigitalClock;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    #@6
    .line 51
    invoke-direct {p0}, Landroid/widget/DigitalClock;->initClock()V

    #@9
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    #@6
    .line 56
    invoke-direct {p0}, Landroid/widget/DigitalClock;->initClock()V

    #@9
    .line 54
    return-void
.end method

.method private initClock()V
    .locals 4

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    #@a
    .line 64
    :cond_0
    new-instance v0, Landroid/widget/DigitalClock$FormatChangeObserver;

    #@c
    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$FormatChangeObserver;-><init>(Landroid/widget/DigitalClock;)V

    #@f
    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    #@11
    .line 65
    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@18
    move-result-object v0

    #@19
    .line 66
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@1b
    iget-object v2, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    #@1d
    const/4 v3, 0x1

    #@1e
    .line 65
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@21
    .line 68
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    #@24
    .line 59
    return-void
.end method

.method private setFormat()V
    .locals 1

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    #@a
    .line 100
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 118
    const-class v0, Landroid/widget/DigitalClock;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    #@3
    .line 74
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    #@6
    .line 75
    new-instance v0, Landroid/os/Handler;

    #@8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    #@d
    .line 80
    new-instance v0, Landroid/widget/DigitalClock$1;

    #@f
    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$1;-><init>(Landroid/widget/DigitalClock;)V

    #@12
    iput-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    #@14
    .line 91
    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    #@16
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@19
    .line 72
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    #@3
    .line 97
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    #@6
    .line 95
    return-void
.end method
