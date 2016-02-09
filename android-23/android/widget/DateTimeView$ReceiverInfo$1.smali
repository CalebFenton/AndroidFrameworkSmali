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
.field final synthetic this$1:Landroid/widget/DateTimeView$ReceiverInfo;


# direct methods
.method constructor <init>(Landroid/widget/DateTimeView$ReceiverInfo;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/DateTimeView$ReceiverInfo;

    #@0
    .prologue
    .line 203
    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 207
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@10
    move-result-wide v2

    #@11
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    #@13
    invoke-virtual {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->getSoonestUpdateTime()J

    #@16
    move-result-wide v4

    #@17
    cmp-long v1, v2, v4

    #@19
    if-gez v1, :cond_0

    #@1b
    .line 212
    return-void

    #@1c
    .line 216
    :cond_0
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    #@1e
    invoke-virtual {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->updateAll()V

    #@21
    .line 205
    return-void
.end method
