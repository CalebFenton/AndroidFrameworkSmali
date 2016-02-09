.class Lcom/android/server/notification/NotificationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/16 v1, -0x2710

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 755
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8
    move-result-object v10

    #@9
    .line 757
    .local v10, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    #@c
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 760
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@14
    invoke-static {v0, v6}, Lcom/android/server/notification/NotificationManagerService;->-set4(Lcom/android/server/notification/NotificationManagerService;Z)Z

    #@17
    .line 761
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@19
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap27(Lcom/android/server/notification/NotificationManagerService;)V

    #@1c
    .line 754
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 762
    :cond_1
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    #@20
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 763
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@28
    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->-set4(Lcom/android/server/notification/NotificationManagerService;Z)Z

    #@2b
    .line 764
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2d
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap27(Lcom/android/server/notification/NotificationManagerService;)V

    #@30
    goto :goto_0

    #@31
    .line 765
    :cond_2
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    #@34
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_3

    #@3a
    .line 766
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@3c
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    #@3e
    .line 767
    const-string/jumbo v2, "state"

    #@41
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 766
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v1

    #@49
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-set2(Lcom/android/server/notification/NotificationManagerService;Z)Z

    #@4c
    .line 768
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4e
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap27(Lcom/android/server/notification/NotificationManagerService;)V

    #@51
    goto :goto_0

    #@52
    .line 769
    :cond_3
    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    #@55
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_4

    #@5b
    .line 770
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@5e
    const/4 v1, -0x1

    #@5f
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@62
    move-result v7

    #@63
    .line 771
    .local v7, "userHandle":I
    if-ltz v7, :cond_0

    #@65
    .line 772
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@67
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get1()I

    #@6a
    move-result v1

    #@6b
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get0()I

    #@6e
    move-result v2

    #@6f
    .line 773
    const/4 v8, 0x6

    #@70
    move v5, v4

    #@71
    move-object v9, v3

    #@72
    .line 772
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@75
    goto :goto_0

    #@76
    .line 775
    .end local v7    # "userHandle":I
    :cond_4
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    #@79
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_5

    #@7f
    .line 777
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@81
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get13(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    #@88
    .line 778
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8a
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@8c
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    #@8f
    goto :goto_0

    #@90
    .line 779
    :cond_5
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@93
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v0

    #@97
    if-eqz v0, :cond_6

    #@99
    .line 780
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@9c
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@9f
    move-result v11

    #@a0
    .line 782
    .local v11, "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    #@a5
    move-result-object v0

    #@a6
    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    #@a9
    .line 783
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@ab
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@ae
    move-result-object v0

    #@af
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    #@b2
    .line 785
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@b4
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0, v11}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched(I)V

    #@bb
    .line 786
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@bd
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@c0
    move-result-object v0

    #@c1
    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserSwitched(I)V

    #@c4
    .line 787
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c6
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@c9
    move-result-object v0

    #@ca
    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserSwitched(I)V

    #@cd
    goto/16 :goto_0

    #@cf
    .line 788
    .end local v11    # "user":I
    :cond_6
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@d2
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v0

    #@d6
    if-eqz v0, :cond_7

    #@d8
    .line 789
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@da
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@dd
    move-result-object v0

    #@de
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 790
    :cond_7
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@e6
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e9
    move-result v0

    #@ea
    if-eqz v0, :cond_0

    #@ec
    .line 791
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@ef
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@f2
    move-result v11

    #@f3
    .line 792
    .restart local v11    # "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@f5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@f8
    move-result-object v0

    #@f9
    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserRemoved(I)V

    #@fc
    goto/16 :goto_0
.end method
