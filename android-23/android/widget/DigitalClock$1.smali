.class Landroid/widget/DigitalClock$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DigitalClock;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DigitalClock;


# direct methods
.method constructor <init>(Landroid/widget/DigitalClock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DigitalClock;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x3e8

    #@2
    .line 82
    iget-object v4, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    #@4
    invoke-static {v4}, Landroid/widget/DigitalClock;->-get2(Landroid/widget/DigitalClock;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    return-void

    #@b
    .line 83
    :cond_0
    iget-object v4, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    #@d
    iget-object v4, v4, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    #@f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v6

    #@13
    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@16
    .line 84
    iget-object v4, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    #@18
    iget-object v5, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    #@1a
    iget-object v5, v5, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    #@1c
    iget-object v6, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    #@1e
    iget-object v6, v6, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    #@20
    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v4, v5}, Landroid/widget/DigitalClock;->setText(Ljava/lang/CharSequence;)V

    #@27
    .line 85
    iget-object v4, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    #@29
    invoke-virtual {v4}, Landroid/widget/DigitalClock;->invalidate()V

    #@2c
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2f
    move-result-wide v2

    #@30
    .line 87
    .local v2, "now":J
    rem-long v4, v2, v8

    #@32
    sub-long v4, v8, v4

    #@34
    add-long v0, v2, v4

    #@36
    .line 88
    .local v0, "next":J
    iget-object v4, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    #@38
    invoke-static {v4}, Landroid/widget/DigitalClock;->-get0(Landroid/widget/DigitalClock;)Landroid/os/Handler;

    #@3b
    move-result-object v4

    #@3c
    iget-object v5, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    #@3e
    invoke-static {v5}, Landroid/widget/DigitalClock;->-get1(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    #@45
    .line 81
    return-void
.end method
