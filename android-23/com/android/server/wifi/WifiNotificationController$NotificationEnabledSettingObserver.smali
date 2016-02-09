.class Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@2
    .line 274
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 273
    return-void
.end method

.method private getValue()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 297
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@3
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->-get0(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v1

    #@b
    .line 298
    const-string/jumbo v2, "wifi_networks_available_notification_on"

    #@e
    .line 297
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@11
    move-result v1

    #@12
    if-ne v1, v0, :cond_0

    #@14
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    #@3
    .line 290
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@5
    monitor-enter v1

    #@6
    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@8
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->getValue()Z

    #@b
    move-result v2

    #@c
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNotificationController;->-set1(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    #@f
    .line 292
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@11
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->-wrap1(Lcom/android/server/wifi/WifiNotificationController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 287
    return-void

    #@16
    .line 290
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public register()V
    .locals 4

    #@0
    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@2
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->-get0(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v0

    #@a
    .line 280
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    #@d
    .line 279
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@10
    move-result-object v1

    #@11
    .line 280
    const/4 v2, 0x1

    #@12
    .line 279
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@15
    .line 281
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@17
    monitor-enter v2

    #@18
    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    #@1a
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->getValue()Z

    #@1d
    move-result v3

    #@1e
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNotificationController;->-set1(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 277
    return-void

    #@23
    .line 281
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method
