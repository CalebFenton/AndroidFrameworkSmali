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
    .line 757
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
    const/4 v2, -0x1

    #@1
    const/4 v6, 0x1

    #@2
    const/16 v1, -0x2710

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    .line 760
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@9
    move-result-object v10

    #@a
    .line 762
    .local v10, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    #@d
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 765
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@15
    invoke-static {v0, v6}, Lcom/android/server/notification/NotificationManagerService;->-set5(Lcom/android/server/notification/NotificationManagerService;Z)Z

    #@18
    .line 766
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1a
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap36(Lcom/android/server/notification/NotificationManagerService;)V

    #@1d
    .line 759
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 767
    :cond_1
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    #@21
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 768
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@29
    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->-set5(Lcom/android/server/notification/NotificationManagerService;Z)Z

    #@2c
    .line 769
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2e
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap36(Lcom/android/server/notification/NotificationManagerService;)V

    #@31
    goto :goto_0

    #@32
    .line 770
    :cond_2
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    #@35
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_3

    #@3b
    .line 771
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@3d
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    #@3f
    .line 772
    const-string/jumbo v2, "state"

    #@42
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 771
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-set2(Lcom/android/server/notification/NotificationManagerService;Z)Z

    #@4d
    .line 773
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4f
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap36(Lcom/android/server/notification/NotificationManagerService;)V

    #@52
    goto :goto_0

    #@53
    .line 774
    :cond_3
    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    #@56
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_4

    #@5c
    .line 775
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@5f
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@62
    move-result v7

    #@63
    .line 776
    .local v7, "userHandle":I
    if-ltz v7, :cond_0

    #@65
    .line 777
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
    .line 778
    const/4 v8, 0x6

    #@70
    move v5, v4

    #@71
    move-object v9, v3

    #@72
    .line 777
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@75
    goto :goto_0

    #@76
    .line 780
    .end local v7    # "userHandle":I
    :cond_4
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    #@79
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_5

    #@7f
    .line 781
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@82
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@85
    move-result v7

    #@86
    .line 782
    .restart local v7    # "userHandle":I
    if-ltz v7, :cond_0

    #@88
    .line 783
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8a
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get1()I

    #@8d
    move-result v1

    #@8e
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-get0()I

    #@91
    move-result v2

    #@92
    .line 784
    const/16 v8, 0xf

    #@94
    move v5, v4

    #@95
    move-object v9, v3

    #@96
    .line 783
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@99
    goto :goto_0

    #@9a
    .line 786
    .end local v7    # "userHandle":I
    :cond_5
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    #@9d
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v0

    #@a1
    if-eqz v0, :cond_6

    #@a3
    .line 788
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get13(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    #@ac
    .line 789
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@ae
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@b0
    if-eqz v0, :cond_0

    #@b2
    .line 790
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@b4
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@b6
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 792
    :cond_6
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@be
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v0

    #@c2
    if-eqz v0, :cond_7

    #@c4
    .line 793
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@c7
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@ca
    move-result v11

    #@cb
    .line 795
    .local v11, "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@cd
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    #@d0
    move-result-object v0

    #@d1
    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    #@d4
    .line 796
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@d6
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@d9
    move-result-object v0

    #@da
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    #@dd
    .line 798
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@df
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0, v11}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched(I)V

    #@e6
    .line 799
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@eb
    move-result-object v0

    #@ec
    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserSwitched(I)V

    #@ef
    .line 800
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@f1
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@f4
    move-result-object v0

    #@f5
    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onUserSwitched(I)V

    #@f8
    .line 801
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@fa
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@fd
    move-result-object v0

    #@fe
    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserSwitched(I)V

    #@101
    goto/16 :goto_0

    #@103
    .line 802
    .end local v11    # "user":I
    :cond_7
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    #@106
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@109
    move-result v0

    #@10a
    if-eqz v0, :cond_8

    #@10c
    .line 803
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@10e
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@111
    move-result-object v0

    #@112
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    #@115
    goto/16 :goto_0

    #@117
    .line 804
    :cond_8
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@11a
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11d
    move-result v0

    #@11e
    if-eqz v0, :cond_9

    #@120
    .line 805
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@123
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@126
    move-result v11

    #@127
    .line 806
    .restart local v11    # "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@129
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@12c
    move-result-object v0

    #@12d
    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserRemoved(I)V

    #@130
    goto/16 :goto_0

    #@132
    .line 807
    .end local v11    # "user":I
    :cond_9
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    #@135
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@138
    move-result v0

    #@139
    if-eqz v0, :cond_0

    #@13b
    .line 808
    const-string/jumbo v0, "android.intent.extra.user_handle"

    #@13e
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@141
    move-result v11

    #@142
    .line 809
    .restart local v11    # "user":I
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@144
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@147
    move-result-object v0

    #@148
    invoke-virtual {v0, v11}, Lcom/android/server/notification/ConditionProviders;->onUserUnlocked(I)V

    #@14b
    .line 810
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@14d
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@150
    move-result-object v0

    #@151
    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserUnlocked(I)V

    #@154
    .line 811
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@156
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@159
    move-result-object v0

    #@15a
    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->onUserUnlocked(I)V

    #@15d
    .line 812
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@15f
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@162
    move-result-object v0

    #@163
    invoke-virtual {v0, v11}, Lcom/android/server/notification/ZenModeHelper;->onUserUnlocked(I)V

    #@166
    goto/16 :goto_0
.end method
