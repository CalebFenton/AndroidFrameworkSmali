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
.field final synthetic blacklist this$0:Landroid/widget/DigitalClock;


# direct methods
.method constructor blacklist <init>(Landroid/widget/DigitalClock;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/DigitalClock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 83
    iget-object v0, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    invoke-static {v0}, Landroid/widget/DigitalClock;->-$$Nest$fgetmTickerStopped(Landroid/widget/DigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 84
    :cond_9
    iget-object v0, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    iget-object v0, v0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 85
    iget-object v0, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    iget-object v1, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    iget-object v1, v1, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    iget-object v2, v2, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/DigitalClock;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    invoke-virtual {v0}, Landroid/widget/DigitalClock;->invalidate()V

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 88
    .local v0, "now":J
    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    .line 89
    .local v2, "next":J
    iget-object v4, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    invoke-static {v4}, Landroid/widget/DigitalClock;->-$$Nest$fgetmHandler(Landroid/widget/DigitalClock;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/DigitalClock$1;->this$0:Landroid/widget/DigitalClock;

    invoke-static {v5}, Landroid/widget/DigitalClock;->-$$Nest$fgetmTicker(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method
