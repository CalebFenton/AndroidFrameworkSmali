.class Landroid/widget/Chronometer$1;
.super Landroid/os/Handler;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Chronometer;


# direct methods
.method constructor <init>(Landroid/widget/Chronometer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Chronometer;

    #@0
    .prologue
    .line 270
    iput-object p1, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "m"    # Landroid/os/Message;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    #@2
    invoke-static {v0}, Landroid/widget/Chronometer;->-get0(Landroid/widget/Chronometer;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 273
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    #@a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v2

    #@e
    invoke-static {v0, v2, v3}, Landroid/widget/Chronometer;->-wrap0(Landroid/widget/Chronometer;J)V

    #@11
    .line 274
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    #@13
    invoke-virtual {v0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    #@16
    .line 275
    const/4 v0, 0x2

    #@17
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@1a
    move-result-object v0

    #@1b
    const-wide/16 v2, 0x3e8

    #@1d
    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/Chronometer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@20
    .line 271
    :cond_0
    return-void
.end method
