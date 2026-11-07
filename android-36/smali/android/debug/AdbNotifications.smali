.class public final Landroid/debug/AdbNotifications;
.super Ljava/lang/Object;
.source "AdbNotifications.java"


# static fields
.field private static final blacklist ADB_NOTIFICATION_CHANNEL_ID_TV:Ljava/lang/String; = "usbdevicemanager.adb.tv"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createNotification(Landroid/content/Context;B)Landroid/app/Notification;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "transportType"    # B

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, "resources":Landroid/content/res/Resources;
    const/4 v1, 0x1

    if-nez p1, :cond_e

    .line 57
    const v2, 0x1040133

    .line 58
    .local v2, "titleId":I
    const v3, 0x1040132

    .local v3, "messageId":I
    goto :goto_16

    .line 59
    .end local v2    # "titleId":I
    .end local v3    # "messageId":I
    :cond_e
    if-ne p1, v1, :cond_9e

    .line 60
    const v2, 0x1040136

    .line 61
    .restart local v2    # "titleId":I
    const v3, 0x1040135

    .line 67
    .restart local v3    # "messageId":I
    :goto_16
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 68
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 70
    .local v5, "message":Ljava/lang/CharSequence;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v6

    .line 71
    .local v10, "intent":Landroid/content/Intent;
    const v6, 0x10008000

    invoke-virtual {v10, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x100000

    invoke-virtual {v6, v10, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 75
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x0

    .line 76
    .local v7, "pIntent":Landroid/app/PendingIntent;
    if-eqz v6, :cond_4c

    .line 77
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v12, 0x0

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/high16 v11, 0x4000000

    move-object v8, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v8, "context":Landroid/content/Context;
    invoke-static/range {v8 .. v13}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    goto :goto_4d

    .line 76
    .end local v8    # "context":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_4c
    move-object v8, p0

    .line 83
    .end local p0    # "context":Landroid/content/Context;
    .restart local v8    # "context":Landroid/content/Context;
    :goto_4d
    new-instance p0, Landroid/app/Notification$Builder;

    const-string v9, "DEVELOPER_IMPORTANT"

    invoke-direct {p0, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    const v9, 0x10809ab

    invoke-virtual {p0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 85
    const-wide/16 v11, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 86
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 88
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 89
    const v9, 0x106001c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 91
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 92
    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 93
    invoke-virtual {p0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 94
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 96
    const-string/jumbo v9, "usbdevicemanager.adb.tv"

    invoke-virtual {v1, v9}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v1

    .line 95
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 83
    return-object p0

    .line 63
    .end local v2    # "titleId":I
    .end local v3    # "messageId":I
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "message":Ljava/lang/CharSequence;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "pIntent":Landroid/app/PendingIntent;
    .end local v8    # "context":Landroid/content/Context;
    .end local v10    # "intent":Landroid/content/Intent;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_9e
    move-object v8, p0

    .end local p0    # "context":Landroid/content/Context;
    .restart local v8    # "context":Landroid/content/Context;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNotification called with unknown transport type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
