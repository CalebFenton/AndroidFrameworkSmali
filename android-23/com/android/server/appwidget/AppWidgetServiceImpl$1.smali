.class Lcom/android/server/appwidget/AppWidgetServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/16 v4, -0x2710

    #@2
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 139
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get0()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 140
    const-string/jumbo v1, "AppWidgetServiceImpl"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Received broadcast: "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 143
    :cond_0
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 144
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@31
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap8(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    #@34
    .line 136
    :goto_0
    return-void

    #@35
    .line 145
    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_STARTED"

    #@38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_2

    #@3e
    .line 146
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@40
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@43
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@46
    move-result v2

    #@47
    invoke-static {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap10(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@4a
    goto :goto_0

    #@4b
    .line 148
    :cond_2
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    #@4e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_3

    #@54
    .line 149
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@56
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@59
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@5c
    move-result v2

    #@5d
    invoke-static {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap11(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@60
    goto :goto_0

    #@61
    .line 152
    :cond_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@63
    .line 153
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@66
    .line 152
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@69
    move-result v2

    #@6a
    invoke-static {v1, p2, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap9(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    #@6d
    goto :goto_0
.end method
