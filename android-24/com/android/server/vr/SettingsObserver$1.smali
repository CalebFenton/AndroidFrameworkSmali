.class Lcom/android/server/vr/SettingsObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/SettingsObserver;

.field final synthetic val$secureSettingName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/vr/SettingsObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/SettingsObserver;
    .param p2, "val$secureSettingName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/vr/SettingsObserver$1;->this$0:Lcom/android/server/vr/SettingsObserver;

    #@2
    iput-object p2, p0, Lcom/android/server/vr/SettingsObserver$1;->val$secureSettingName:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 73
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
    .line 74
    const-string/jumbo v3, "setting_name"

    #@10
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 75
    .local v0, "element":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/vr/SettingsObserver$1;->val$secureSettingName:Ljava/lang/String;

    #@16
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 76
    const-string/jumbo v3, "previous_value"

    #@1f
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 77
    .local v2, "prevValue":Ljava/lang/String;
    const-string/jumbo v3, "new_value"

    #@26
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 78
    .local v1, "newValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/vr/SettingsObserver$1;->this$0:Lcom/android/server/vr/SettingsObserver;

    #@2c
    invoke-virtual {p0}, Lcom/android/server/vr/SettingsObserver$1;->getSendingUserId()I

    #@2f
    move-result v4

    #@30
    invoke-static {v3, v2, v1, v4}, Lcom/android/server/vr/SettingsObserver;->-wrap1(Lcom/android/server/vr/SettingsObserver;Ljava/lang/String;Ljava/lang/String;I)V

    #@33
    .line 72
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "newValue":Ljava/lang/String;
    .end local v2    # "prevValue":Ljava/lang/String;
    :cond_0
    return-void
.end method
