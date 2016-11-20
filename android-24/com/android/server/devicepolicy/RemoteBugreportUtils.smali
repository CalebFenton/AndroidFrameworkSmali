.class Lcom/android/server/devicepolicy/RemoteBugreportUtils;
.super Ljava/lang/Object;
.source "RemoteBugreportUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/RemoteBugreportUtils$RemoteBugreportNotificationType;
    }
.end annotation


# static fields
.field static final BUGREPORT_MIMETYPE:Ljava/lang/String; = "application/vnd.android.bugreport"

.field static final CTL_STOP:Ljava/lang/String; = "ctl.stop"

.field static final NOTIFICATION_ID:I = 0x28700e57

.field static final REMOTE_BUGREPORT_SERVICE:Ljava/lang/String; = "bugreportremote"

.field static final REMOTE_BUGREPORT_TIMEOUT_MILLIS:J = 0x927c0L


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static buildNotification(Landroid/content/Context;I)Landroid/app/Notification;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    #@0
    .prologue
    const/high16 v12, 0x10000000

    #@2
    const v11, 0x1040417

    #@5
    const/4 v4, 0x0

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v10, 0x1

    #@8
    .line 59
    new-instance v2, Landroid/content/Intent;

    #@a
    const-string/jumbo v0, "android.settings.SHOW_REMOTE_BUGREPORT_DIALOG"

    #@d
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 60
    .local v2, "dialogIntent":Landroid/content/Intent;
    const v0, 0x10008000

    #@13
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@16
    .line 61
    const-string/jumbo v0, "android.app.extra.bugreport_notification_type"

    #@19
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1c
    .line 63
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@1e
    move-object v0, p0

    #@1f
    move v1, p1

    #@20
    .line 62
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@23
    move-result-object v7

    #@24
    .line 65
    .local v7, "pendingDialogIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    #@26
    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@29
    .line 66
    const v1, 0x10806be

    #@2c
    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@3f
    move-result-object v0

    #@40
    .line 72
    const v1, 0x1060059

    #@43
    .line 71
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    #@46
    move-result v1

    #@47
    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@4a
    move-result-object v6

    #@4b
    .line 74
    .local v6, "builder":Landroid/app/Notification$Builder;
    const/4 v0, 0x2

    #@4c
    if-ne p1, v0, :cond_1

    #@4e
    .line 76
    const v0, 0x1040416

    #@51
    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0, v3, v3, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@5c
    .line 102
    :cond_0
    :goto_0
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@5f
    move-result-object v0

    #@60
    return-object v0

    #@61
    .line 78
    :cond_1
    if-ne p1, v10, :cond_2

    #@63
    .line 80
    const v0, 0x1040414

    #@66
    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0, v3, v3, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@71
    goto :goto_0

    #@72
    .line 82
    :cond_2
    const/4 v0, 0x3

    #@73
    if-ne p1, v0, :cond_0

    #@75
    .line 84
    new-instance v0, Landroid/content/Intent;

    #@77
    const-string/jumbo v1, "com.android.server.action.BUGREPORT_SHARING_ACCEPTED"

    #@7a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7d
    .line 83
    const v1, 0x28700e57

    #@80
    invoke-static {p0, v1, v0, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@83
    move-result-object v8

    #@84
    .line 87
    .local v8, "pendingIntentAccept":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    #@86
    .line 88
    const-string/jumbo v1, "com.android.server.action.BUGREPORT_SHARING_DECLINED"

    #@89
    .line 87
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8c
    const v1, 0x28700e57

    #@8f
    .line 86
    invoke-static {p0, v1, v0, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@92
    move-result-object v9

    #@93
    .line 90
    .local v9, "pendingIntentDecline":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Action$Builder;

    #@95
    .line 91
    const v1, 0x1040419

    #@98
    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    invoke-direct {v0, v4, v1, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@9f
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    #@a6
    move-result-object v0

    #@a7
    .line 92
    new-instance v1, Landroid/app/Notification$Action$Builder;

    #@a9
    .line 93
    const v3, 0x1040418

    #@ac
    .line 92
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@af
    move-result-object v3

    #@b0
    invoke-direct {v1, v4, v3, v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@b3
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    #@b6
    move-result-object v1

    #@b7
    .line 90
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    #@ba
    move-result-object v0

    #@bb
    .line 95
    const v1, 0x1040415

    #@be
    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c1
    move-result-object v1

    #@c2
    .line 90
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@c5
    move-result-object v0

    #@c6
    .line 96
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    .line 90
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@cd
    move-result-object v0

    #@ce
    .line 98
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    #@d0
    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    #@d3
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@d6
    move-result-object v3

    #@d7
    invoke-virtual {v1, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    #@da
    move-result-object v1

    #@db
    .line 90
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    #@de
    goto/16 :goto_0
.end method
