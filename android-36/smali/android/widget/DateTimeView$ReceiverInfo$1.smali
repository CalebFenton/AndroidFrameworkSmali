.class Landroid/widget/DateTimeView$ReceiverInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView$ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DateTimeView$ReceiverInfo;


# direct methods
.method constructor blacklist <init>(Landroid/widget/DateTimeView$ReceiverInfo;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/DateTimeView$ReceiverInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 606
    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$0:Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 609
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$0:Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-virtual {v3}, Landroid/widget/DateTimeView$ReceiverInfo;->getSoonestUpdateTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1b

    .line 615
    return-void

    .line 619
    :cond_1b
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$0:Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-virtual {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->updateAll()V

    .line 620
    return-void
.end method
