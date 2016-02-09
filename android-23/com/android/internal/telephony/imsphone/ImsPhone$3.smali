.class Lcom/android/internal/telephony/imsphone/ImsPhone$3;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 1365
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$3;->getResultCode()I

    #@4
    move-result v9

    #@5
    const/4 v10, -0x1

    #@6
    if-ne v9, v10, :cond_0

    #@8
    .line 1373
    const-string/jumbo v9, "alertTitle"

    #@b
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@e
    move-result-object v8

    #@f
    .line 1374
    .local v8, "title":Ljava/lang/CharSequence;
    const-string/jumbo v9, "alertMessage"

    #@12
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@15
    move-result-object v0

    #@16
    .line 1375
    .local v0, "messageAlert":Ljava/lang/CharSequence;
    const-string/jumbo v9, "notificationMessage"

    #@19
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@1c
    move-result-object v1

    #@1d
    .line 1377
    .local v1, "messageNotification":Ljava/lang/CharSequence;
    new-instance v6, Landroid/content/Intent;

    #@1f
    const-string/jumbo v9, "android.intent.action.MAIN"

    #@22
    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@25
    .line 1378
    .local v6, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v9, "com.android.settings"

    #@28
    .line 1379
    const-string/jumbo v10, "com.android.settings.Settings$WifiCallingSettingsActivity"

    #@2b
    .line 1378
    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2e
    .line 1380
    const-string/jumbo v9, "alertShow"

    #@31
    invoke-virtual {v6, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@34
    .line 1381
    const-string/jumbo v9, "alertTitle"

    #@37
    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@3a
    .line 1382
    const-string/jumbo v9, "alertMessage"

    #@3d
    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@40
    .line 1385
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@42
    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;

    #@45
    move-result-object v9

    #@46
    .line 1386
    const/4 v10, 0x0

    #@47
    .line 1388
    const/high16 v11, 0x8000000

    #@49
    .line 1384
    invoke-static {v9, v10, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@4c
    move-result-object v7

    #@4d
    .line 1392
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification$Builder;

    #@4f
    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@51
    invoke-static {v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;

    #@54
    move-result-object v10

    #@55
    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@58
    .line 1393
    const v10, 0x108008a

    #@5b
    .line 1392
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@66
    move-result-object v9

    #@67
    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@6a
    move-result-object v9

    #@6b
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@6e
    move-result-object v9

    #@6f
    .line 1398
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    #@71
    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    #@74
    invoke-virtual {v10, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    #@77
    move-result-object v10

    #@78
    .line 1392
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@7f
    move-result-object v2

    #@80
    .line 1400
    .local v2, "notification":Landroid/app/Notification;
    const-string/jumbo v5, "wifi_calling"

    #@83
    .line 1401
    .local v5, "notificationTag":Ljava/lang/String;
    const/4 v3, 0x1

    #@84
    .line 1404
    .local v3, "notificationId":I
    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$3;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@86
    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;

    #@89
    move-result-object v9

    #@8a
    .line 1405
    const-string/jumbo v10, "notification"

    #@8d
    .line 1404
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@90
    move-result-object v4

    #@91
    check-cast v4, Landroid/app/NotificationManager;

    #@93
    .line 1406
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v9, "wifi_calling"

    #@96
    invoke-virtual {v4, v9, v12, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@99
    .line 1367
    .end local v0    # "messageAlert":Ljava/lang/CharSequence;
    .end local v1    # "messageNotification":Ljava/lang/CharSequence;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "notificationId":I
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v5    # "notificationTag":Ljava/lang/String;
    .end local v6    # "resultIntent":Landroid/content/Intent;
    .end local v7    # "resultPendingIntent":Landroid/app/PendingIntent;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
