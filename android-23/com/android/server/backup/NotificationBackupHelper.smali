.class public Lcom/android/server/backup/NotificationBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "NotificationBackupHelper.java"


# static fields
.field static final BLOB_VERSION:I = 0x1

.field static final DEBUG:Z

.field static final KEY_NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field static final TAG:Ljava/lang/String; = "NotifBackupHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 29
    const-string/jumbo v0, "NotifBackupHelper"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/backup/NotificationBackupHelper;->DEBUG:Z

    #@a
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 38
    new-array v0, v3, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "notifications"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    invoke-direct {p0, v3, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    #@c
    .line 37
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    #@0
    .prologue
    .line 61
    sget-boolean v2, Lcom/android/server/backup/NotificationBackupHelper;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 62
    const-string/jumbo v2, "NotifBackupHelper"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "Got restore of "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 65
    :cond_0
    const-string/jumbo v2, "notifications"

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 68
    :try_start_0
    const-string/jumbo v2, "notification"

    #@2a
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@2d
    move-result-object v2

    #@2e
    .line 67
    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@31
    move-result-object v1

    #@32
    .line 69
    .local v1, "nm":Landroid/app/INotificationManager;
    const/4 v2, 0x0

    #@33
    invoke-interface {v1, p2, v2}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 60
    .end local v1    # "nm":Landroid/app/INotificationManager;
    :cond_1
    :goto_0
    return-void

    #@37
    .line 70
    :catch_0
    move-exception v0

    #@38
    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NotifBackupHelper"

    #@3b
    const-string/jumbo v3, "Couldn\'t communicate with notification manager"

    #@3e
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_0
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    const/4 v1, 0x0

    #@1
    .line 45
    .local v1, "newPayload":[B
    const-string/jumbo v3, "notifications"

    #@4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 48
    :try_start_0
    const-string/jumbo v3, "notification"

    #@d
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v3

    #@11
    .line 47
    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@14
    move-result-object v2

    #@15
    .line 49
    .local v2, "nm":Landroid/app/INotificationManager;
    const/4 v3, 0x0

    #@16
    invoke-interface {v2, v3}, Landroid/app/INotificationManager;->getBackupPayload(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v1

    #@1a
    .line 56
    .end local v1    # "newPayload":[B
    .end local v2    # "nm":Landroid/app/INotificationManager;
    :cond_0
    :goto_0
    return-object v1

    #@1b
    .line 50
    .restart local v1    # "newPayload":[B
    :catch_0
    move-exception v0

    #@1c
    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NotifBackupHelper"

    #@1f
    const-string/jumbo v4, "Couldn\'t communicate with notification manager"

    #@22
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 53
    const/4 v1, 0x0

    #@26
    goto :goto_0
.end method
