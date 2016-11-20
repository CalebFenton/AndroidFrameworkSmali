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
    .line 154
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

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
    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 158
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.extra.user_handle"

    #@7
    const/16 v4, -0x2710

    #@9
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c
    move-result v2

    #@d
    .line 160
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get0()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 161
    const-string/jumbo v3, "AppWidgetServiceImpl"

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "Received broadcast: "

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, " on user "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 164
    :cond_0
    const-string/jumbo v3, "android.intent.action.CONFIGURATION_CHANGED"

    #@3b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_1

    #@41
    .line 165
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@43
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    #@46
    .line 156
    :goto_0
    return-void

    #@47
    .line 166
    :cond_1
    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    #@4a
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v3

    #@4e
    if-nez v3, :cond_2

    #@50
    .line 167
    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    #@53
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v3

    #@57
    .line 166
    if-eqz v3, :cond_3

    #@59
    .line 168
    :cond_2
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@5b
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get5(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    #@5e
    move-result-object v4

    #@5f
    monitor-enter v4

    #@60
    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@62
    invoke-static {v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap12(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit v4

    #@66
    goto :goto_0

    #@67
    .line 168
    :catchall_0
    move-exception v3

    #@68
    monitor-exit v4

    #@69
    throw v3

    #@6a
    .line 171
    :cond_3
    const-string/jumbo v3, "android.intent.action.PACKAGES_SUSPENDED"

    #@6d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v3

    #@71
    if-eqz v3, :cond_4

    #@73
    .line 172
    const-string/jumbo v3, "android.intent.extra.changed_package_list"

    #@76
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    .line 173
    .local v1, "packages":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@7c
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    #@7f
    move-result v4

    #@80
    const/4 v5, 0x1

    #@81
    invoke-static {v3, v1, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap20(Lcom/android/server/appwidget/AppWidgetServiceImpl;[Ljava/lang/String;ZI)V

    #@84
    goto :goto_0

    #@85
    .line 174
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    #@88
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v3

    #@8c
    if-eqz v3, :cond_5

    #@8e
    .line 175
    const-string/jumbo v3, "android.intent.extra.changed_package_list"

    #@91
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    .line 176
    .restart local v1    # "packages":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@97
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    #@9a
    move-result v4

    #@9b
    const/4 v5, 0x0

    #@9c
    invoke-static {v3, v1, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap20(Lcom/android/server/appwidget/AppWidgetServiceImpl;[Ljava/lang/String;ZI)V

    #@9f
    goto :goto_0

    #@a0
    .line 178
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@a2
    invoke-static {v3, p2, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap11(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    #@a5
    goto :goto_0
.end method
