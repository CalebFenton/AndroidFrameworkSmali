.class Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingRestoredReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ManagedServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ManagedServices;

    #@0
    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->this$0:Lcom/android/server/notification/ManagedServices;

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
    .line 116
    const-string/jumbo v3, "android.os.action.SETTING_RESTORED"

    #@3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 117
    const-string/jumbo v3, "setting_name"

    #@10
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 118
    .local v0, "element":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@16
    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->-get0(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;

    #@19
    move-result-object v3

    #@1a
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    #@1c
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 119
    const-string/jumbo v3, "previous_value"

    #@25
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 120
    .local v2, "prevValue":Ljava/lang/String;
    const-string/jumbo v3, "new_value"

    #@2c
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 121
    .local v1, "newValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@32
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->getSendingUserId()I

    #@35
    move-result v4

    #@36
    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/android/server/notification/ManagedServices;->settingRestored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@39
    .line 115
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "newValue":Ljava/lang/String;
    .end local v2    # "prevValue":Ljava/lang/String;
    :cond_0
    return-void
.end method
