.class Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    .line 702
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 701
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 707
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@4
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v0

    #@a
    .line 709
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "end_button_behavior"

    #@d
    .line 708
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@14
    .line 712
    const-string/jumbo v1, "incall_power_button_behavior"

    #@17
    .line 711
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1e
    .line 715
    const-string/jumbo v1, "wake_gesture_enabled"

    #@21
    .line 714
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@28
    .line 718
    const-string/jumbo v1, "accelerometer_rotation"

    #@2b
    .line 717
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@32
    .line 721
    const-string/jumbo v1, "user_rotation"

    #@35
    .line 720
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@3c
    .line 724
    const-string/jumbo v1, "screen_off_timeout"

    #@3f
    .line 723
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@46
    .line 727
    const-string/jumbo v1, "pointer_location"

    #@49
    .line 726
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@50
    .line 730
    const-string/jumbo v1, "default_input_method"

    #@53
    .line 729
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@5a
    .line 733
    const-string/jumbo v1, "immersive_mode_confirmations"

    #@5d
    .line 732
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@64
    .line 736
    const-string/jumbo v1, "policy_control"

    #@67
    .line 735
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@6e
    .line 738
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@70
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings()V

    #@73
    .line 705
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings()V

    #@5
    .line 743
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@b
    .line 741
    return-void
.end method
