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
    .line 126
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
    .line 129
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
    if-eqz v3, :cond_1

    #@d
    .line 130
    const-string/jumbo v3, "setting_name"

    #@10
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 131
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
    if-nez v3, :cond_0

    #@22
    .line 132
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@24
    invoke-static {v3}, Lcom/android/server/notification/ManagedServices;->-get0(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$Config;

    #@27
    move-result-object v3

    #@28
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    #@2a
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    .line 131
    if-eqz v3, :cond_1

    #@30
    .line 133
    :cond_0
    const-string/jumbo v3, "previous_value"

    #@33
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 134
    .local v2, "prevValue":Ljava/lang/String;
    const-string/jumbo v3, "new_value"

    #@3a
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 135
    .local v1, "newValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->this$0:Lcom/android/server/notification/ManagedServices;

    #@40
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$SettingRestoredReceiver;->getSendingUserId()I

    #@43
    move-result v4

    #@44
    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/android/server/notification/ManagedServices;->settingRestored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@47
    .line 128
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "newValue":Ljava/lang/String;
    .end local v2    # "prevValue":Ljava/lang/String;
    :cond_1
    return-void
.end method
