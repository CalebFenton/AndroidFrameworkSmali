.class public Landroid/appwidget/AppWidgetProvider;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetProvider.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .line 146
    return-void
.end method

.method public whitelist onDeleted(Landroid/content/Context;[I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .line 162
    return-void
.end method

.method public whitelist onDisabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 196
    return-void
.end method

.method public whitelist onEnabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLE_AND_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    if-eqz v1, :cond_2a

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 62
    invoke-virtual {p0, p1, v1}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 64
    invoke-virtual {p0, p1, v1}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_d5

    .line 66
    :cond_2a
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "appWidgetIds"

    if-eqz v1, :cond_4a

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_48

    .line 69
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 70
    .local v2, "appWidgetIds":[I
    if-eqz v2, :cond_48

    array-length v3, v2

    if-lez v3, :cond_48

    .line 71
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 74
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "appWidgetIds":[I
    :cond_48
    goto/16 :goto_d5

    :cond_4a
    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "appWidgetId"

    if-eqz v1, :cond_6c

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_6b

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 77
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, "appWidgetId":I
    filled-new-array {v2}, [I

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 80
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "appWidgetId":I
    :cond_6b
    goto :goto_d5

    :cond_6c
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 82
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_97

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 83
    const-string v2, "appWidgetOptions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 84
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 85
    .local v3, "appWidgetId":I
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 86
    .local v2, "widgetExtras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v3, v2}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 89
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "widgetExtras":Landroid/os/Bundle;
    .end local v3    # "appWidgetId":I
    :cond_97
    goto :goto_d5

    :cond_98
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 90
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_d5

    .line 91
    :cond_a2
    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 92
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_d5

    .line 93
    :cond_ae
    const-string v1, "android.appwidget.action.APPWIDGET_RESTORED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 95
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_d5

    .line 96
    const-string v2, "appWidgetOldIds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 97
    .local v2, "oldIds":[I
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 98
    .local v3, "newIds":[I
    if-eqz v2, :cond_d5

    array-length v4, v2

    if-lez v4, :cond_d5

    .line 99
    invoke-virtual {p0, p1, v2, v3}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    .line 100
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 104
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "oldIds":[I
    .end local v3    # "newIds":[I
    :cond_d5
    :goto_d5
    return-void
.end method

.method public whitelist onRestored(Landroid/content/Context;[I[I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldWidgetIds"    # [I
    .param p3, "newWidgetIds"    # [I

    .line 219
    return-void
.end method

.method public whitelist onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .line 126
    return-void
.end method
