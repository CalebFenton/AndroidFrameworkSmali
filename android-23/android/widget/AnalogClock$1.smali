.class Landroid/widget/AnalogClock$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AnalogClock;


# direct methods
.method constructor <init>(Landroid/widget/AnalogClock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AnalogClock;

    #@0
    .prologue
    .line 253
    iput-object p1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "android.intent.action.TIMEZONE_CHANGED"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 257
    const-string/jumbo v1, "time-zone"

    #@10
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 258
    .local v0, "tz":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    #@16
    new-instance v2, Landroid/text/format/Time;

    #@18
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #@23
    invoke-static {v1, v2}, Landroid/widget/AnalogClock;->-set0(Landroid/widget/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;

    #@26
    .line 261
    .end local v0    # "tz":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    #@28
    invoke-static {v1}, Landroid/widget/AnalogClock;->-wrap0(Landroid/widget/AnalogClock;)V

    #@2b
    .line 263
    iget-object v1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    #@2d
    invoke-virtual {v1}, Landroid/widget/AnalogClock;->invalidate()V

    #@30
    .line 255
    return-void
.end method
