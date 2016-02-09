.class final Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    .line 802
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 799
    const-string/jumbo v0, "notification_light_pulse"

    #@8
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    .line 798
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    #@e
    .line 801
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    #@0
    .prologue
    .line 806
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v0

    #@a
    .line 807
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    #@c
    .line 808
    const/4 v2, 0x0

    #@d
    const/4 v3, -0x1

    #@e
    .line 807
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@11
    .line 809
    const/4 v1, 0x0

    #@12
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    #@15
    .line 805
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 813
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    #@3
    .line 812
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 817
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@3
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v1

    #@b
    .line 818
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    #@d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    #@f
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 820
    :cond_0
    const-string/jumbo v2, "notification_light_pulse"

    #@18
    .line 819
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 821
    .local v0, "pulseEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@21
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get14(Lcom/android/server/notification/NotificationManagerService;)Z

    #@24
    move-result v2

    #@25
    if-eq v2, v0, :cond_1

    #@27
    .line 822
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@29
    invoke-static {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->-set3(Lcom/android/server/notification/NotificationManagerService;Z)Z

    #@2c
    .line 823
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2e
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-wrap27(Lcom/android/server/notification/NotificationManagerService;)V

    #@31
    .line 816
    .end local v0    # "pulseEnabled":Z
    :cond_1
    return-void

    #@32
    .line 819
    :cond_2
    const/4 v0, 0x0

    #@33
    .restart local v0    # "pulseEnabled":Z
    goto :goto_0
.end method
