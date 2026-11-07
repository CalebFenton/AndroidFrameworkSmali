.class Landroid/widget/TextClock$1;
.super Landroid/content/BroadcastReceiver;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextClock;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextClock;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TextClock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$fgetmStopTicking(Landroid/widget/TextClock;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    return-void

    .line 182
    :cond_9
    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$fgetmTimeZone(Landroid/widget/TextClock;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 183
    const-string/jumbo v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "timeZone":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-static {v1, v0}, Landroid/widget/TextClock;->-$$Nest$mcreateTime(Landroid/widget/TextClock;Ljava/lang/String;)V

    .end local v0    # "timeZone":Ljava/lang/String;
    goto :goto_3f

    .line 185
    :cond_2a
    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 186
    return-void

    .line 185
    :cond_3f
    :goto_3f
    nop

    .line 188
    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$monTimeChanged(Landroid/widget/TextClock;)V

    .line 189
    return-void
.end method
