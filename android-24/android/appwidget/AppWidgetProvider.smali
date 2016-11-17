.class public Landroid/appwidget/AppWidgetProvider;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 139
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    #@0
    .prologue
    .line 155
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 189
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 174
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.appwidget.action.APPWIDGET_UPDATE"

    #@8
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_1

    #@e
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@11
    move-result-object v3

    #@12
    .line 63
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    #@14
    .line 64
    const-string/jumbo v7, "appWidgetIds"

    #@17
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@1a
    move-result-object v2

    #@1b
    .line 65
    .local v2, "appWidgetIds":[I
    if-eqz v2, :cond_0

    #@1d
    array-length v7, v2

    #@1e
    if-lez v7, :cond_0

    #@20
    .line 66
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {p0, p1, v7, v2}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    #@27
    .line 57
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    #@28
    .line 69
    :cond_1
    const-string/jumbo v7, "android.appwidget.action.APPWIDGET_DELETED"

    #@2b
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_2

    #@31
    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@34
    move-result-object v3

    #@35
    .line 71
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    #@37
    const-string/jumbo v7, "appWidgetId"

    #@3a
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_0

    #@40
    .line 72
    const-string/jumbo v7, "appWidgetId"

    #@43
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@46
    move-result v1

    #@47
    .line 73
    .local v1, "appWidgetId":I
    const/4 v7, 0x1

    #@48
    new-array v7, v7, [I

    #@4a
    aput v1, v7, v8

    #@4c
    invoke-virtual {p0, p1, v7}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    #@4f
    goto :goto_0

    #@50
    .line 75
    .end local v1    # "appWidgetId":I
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v7, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    #@53
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v7

    #@57
    if-eqz v7, :cond_3

    #@59
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@5c
    move-result-object v3

    #@5d
    .line 77
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    #@5f
    const-string/jumbo v7, "appWidgetId"

    #@62
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@65
    move-result v7

    #@66
    if-eqz v7, :cond_0

    #@68
    .line 78
    const-string/jumbo v7, "appWidgetOptions"

    #@6b
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@6e
    move-result v7

    #@6f
    .line 77
    if-eqz v7, :cond_0

    #@71
    .line 79
    const-string/jumbo v7, "appWidgetId"

    #@74
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@77
    move-result v1

    #@78
    .line 80
    .restart local v1    # "appWidgetId":I
    const-string/jumbo v7, "appWidgetOptions"

    #@7b
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@7e
    move-result-object v6

    #@7f
    .line 81
    .local v6, "widgetExtras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {p0, p1, v7, v1, v6}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    #@86
    goto :goto_0

    #@87
    .line 84
    .end local v1    # "appWidgetId":I
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v6    # "widgetExtras":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v7, "android.appwidget.action.APPWIDGET_ENABLED"

    #@8a
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v7

    #@8e
    if-eqz v7, :cond_4

    #@90
    .line 85
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    #@93
    goto :goto_0

    #@94
    .line 86
    :cond_4
    const-string/jumbo v7, "android.appwidget.action.APPWIDGET_DISABLED"

    #@97
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v7

    #@9b
    if-eqz v7, :cond_5

    #@9d
    .line 87
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    #@a0
    goto :goto_0

    #@a1
    .line 88
    :cond_5
    const-string/jumbo v7, "android.appwidget.action.APPWIDGET_RESTORED"

    #@a4
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v7

    #@a8
    if-eqz v7, :cond_0

    #@aa
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@ad
    move-result-object v3

    #@ae
    .line 90
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    #@b0
    .line 91
    const-string/jumbo v7, "appWidgetOldIds"

    #@b3
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@b6
    move-result-object v5

    #@b7
    .line 92
    .local v5, "oldIds":[I
    const-string/jumbo v7, "appWidgetIds"

    #@ba
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@bd
    move-result-object v4

    #@be
    .line 93
    .local v4, "newIds":[I
    if-eqz v5, :cond_0

    #@c0
    array-length v7, v5

    #@c1
    if-lez v7, :cond_0

    #@c3
    .line 94
    invoke-virtual {p0, p1, v5, v4}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    #@c6
    .line 95
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@c9
    move-result-object v7

    #@ca
    invoke-virtual {p0, p1, v7, v4}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    #@cd
    goto/16 :goto_0
.end method

.method public onRestored(Landroid/content/Context;[I[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldWidgetIds"    # [I
    .param p3, "newWidgetIds"    # [I

    #@0
    .prologue
    .line 209
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    #@0
    .prologue
    .line 120
    return-void
.end method
