.class Lcom/android/server/am/PreBootBroadcaster$1;
.super Landroid/os/Handler;
.source "PreBootBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreBootBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PreBootBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/server/am/PreBootBroadcaster;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PreBootBroadcaster;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    #@0
    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    #@2
    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 124
    iget-object v8, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    #@4
    invoke-static {v8}, Lcom/android/server/am/PreBootBroadcaster;->-get0(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;

    #@7
    move-result-object v8

    #@8
    iget-object v1, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@a
    .line 126
    .local v1, "context":Landroid/content/Context;
    const-class v8, Landroid/app/NotificationManager;

    #@c
    .line 125
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@f
    move-result-object v6

    #@10
    check-cast v6, Landroid/app/NotificationManager;

    #@12
    .line 127
    .local v6, "notifManager":Landroid/app/NotificationManager;
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@14
    .line 128
    .local v4, "max":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@16
    .line 130
    .local v2, "index":I
    iget v8, p1, Landroid/os/Message;->what:I

    #@18
    packed-switch v8, :pswitch_data_0

    #@1b
    .line 123
    :goto_0
    return-void

    #@1c
    .line 133
    :pswitch_0
    const v8, 0x10403b3

    #@1f
    .line 132
    invoke-virtual {v1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@22
    move-result-object v7

    #@23
    .line 135
    .local v7, "title":Ljava/lang/CharSequence;
    new-instance v3, Landroid/content/Intent;

    #@25
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@28
    .line 136
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "com.android.settings"

    #@2b
    .line 137
    const-string/jumbo v9, "com.android.settings.HelpTrampoline"

    #@2e
    .line 136
    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@31
    .line 138
    const-string/jumbo v8, "android.intent.extra.TEXT"

    #@34
    const-string/jumbo v9, "help_url_upgrading"

    #@37
    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3a
    .line 141
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8, v3, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@41
    move-result-object v8

    #@42
    if-eqz v8, :cond_0

    #@44
    .line 142
    invoke-static {v1, v12, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@47
    move-result-object v0

    #@48
    .line 147
    :goto_1
    new-instance v8, Landroid/app/Notification$Builder;

    #@4a
    iget-object v9, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    #@4c
    invoke-static {v9}, Lcom/android/server/am/PreBootBroadcaster;->-get0(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;

    #@4f
    move-result-object v9

    #@50
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@52
    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@55
    .line 148
    const v9, 0x10806d7

    #@58
    .line 147
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@5b
    move-result-object v8

    #@5c
    .line 149
    const-wide/16 v10, 0x0

    #@5e
    .line 147
    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@69
    move-result-object v8

    #@6a
    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@6d
    move-result-object v8

    #@6e
    .line 153
    const/4 v9, 0x2

    #@6f
    .line 147
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@72
    move-result-object v8

    #@73
    .line 155
    const v9, 0x106005b

    #@76
    .line 154
    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    #@79
    move-result v9

    #@7a
    .line 147
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@85
    move-result-object v8

    #@86
    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8, v4, v2, v12}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@91
    move-result-object v5

    #@92
    .line 161
    .local v5, "notif":Landroid/app/Notification;
    const-string/jumbo v8, "PreBootBroadcaster"

    #@95
    iget-object v9, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    #@97
    invoke-static {v9}, Lcom/android/server/am/PreBootBroadcaster;->-get1(Lcom/android/server/am/PreBootBroadcaster;)I

    #@9a
    move-result v9

    #@9b
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@9e
    move-result-object v9

    #@9f
    invoke-virtual {v6, v8, v12, v5, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@a2
    goto/16 :goto_0

    #@a4
    .line 144
    .end local v5    # "notif":Landroid/app/Notification;
    :cond_0
    const/4 v0, 0x0

    #@a5
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    goto :goto_1

    #@a6
    .line 165
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    const-string/jumbo v8, "PreBootBroadcaster"

    #@a9
    iget-object v9, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    #@ab
    invoke-static {v9}, Lcom/android/server/am/PreBootBroadcaster;->-get1(Lcom/android/server/am/PreBootBroadcaster;)I

    #@ae
    move-result v9

    #@af
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@b2
    move-result-object v9

    #@b3
    invoke-virtual {v6, v8, v12, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@b6
    goto/16 :goto_0

    #@b8
    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
