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
.field final synthetic blacklist this$0:Landroid/widget/AnalogClock;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AnalogClock;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/AnalogClock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 791
    iput-object p1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 794
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 795
    iget-object v0, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    invoke-static {v0}, Landroid/widget/AnalogClock;->-$$Nest$mcreateClock(Landroid/widget/AnalogClock;)V

    .line 798
    :cond_11
    iget-object v0, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    invoke-static {v0}, Landroid/widget/AnalogClock;->-$$Nest$fgetmTick(Landroid/widget/AnalogClock;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 799
    return-void
.end method
