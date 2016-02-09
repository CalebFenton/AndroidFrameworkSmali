.class public abstract Landroid/service/notification/NotificationListenerService;
.super Landroid/app/Service;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;,
        Landroid/service/notification/NotificationListenerService$Ranking;,
        Landroid/service/notification/NotificationListenerService$RankingMap;
    }
.end annotation


# static fields
.field public static final HINT_HOST_DISABLE_EFFECTS:I = 0x1

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationListenerService"

.field public static final TRIM_FULL:I = 0x0

.field public static final TRIM_LIGHT:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentUser:I

.field private mNoMan:Landroid/app/INotificationManager;

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mSystemContext:Landroid/content/Context;

.field private mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;


# direct methods
.method static synthetic -get0(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/service/notification/NotificationListenerService;)Landroid/content/Context;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-class v1, Landroid/service/notification/NotificationListenerService;

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 66
    const-string/jumbo v1, "["

    #@15
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 66
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 66
    const-string/jumbo v1, "]"

    #@28
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@32
    .line 138
    const/4 v0, 0x0

    #@33
    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@35
    .line 63
    return-void
.end method

.method private applyUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 2
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    .line 782
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    #@6
    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    #@8
    .line 781
    return-void
.end method

.method private createLegacyIconExtras(Landroid/app/Notification;)V
    .locals 7
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 663
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@3
    move-result-object v3

    #@4
    .line 664
    .local v3, "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    #@7
    move-result-object v1

    #@8
    .line 665
    .local v1, "largeIcon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_0

    #@a
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    #@d
    move-result v4

    #@e
    const/4 v5, 0x2

    #@f
    if-ne v4, v5, :cond_0

    #@11
    .line 666
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@13
    const-string/jumbo v5, "android.icon"

    #@16
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    #@19
    move-result v6

    #@1a
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1d
    .line 667
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    #@20
    move-result v4

    #@21
    iput v4, p1, Landroid/app/Notification;->icon:I

    #@23
    .line 669
    :cond_0
    if-eqz v1, :cond_1

    #@25
    .line 670
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@2c
    move-result-object v0

    #@2d
    .line 671
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@2f
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    #@31
    if-eqz v4, :cond_1

    #@33
    .line 672
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #@35
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@38
    move-result-object v2

    #@39
    .line 673
    .local v2, "largeIconBits":Landroid/graphics/Bitmap;
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@3b
    const-string/jumbo v5, "android.largeIcon"

    #@3e
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@41
    .line 674
    iput-object v2, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@43
    .line 662
    .end local v2    # "largeIconBits":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 786
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 787
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    #@6
    return-object v0

    #@7
    .line 789
    :cond_0
    return-object p0
.end method

.method private final getNotificationInterface()Landroid/app/INotificationManager;
    .locals 1

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 270
    const-string/jumbo v0, "notification"

    #@7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    .line 269
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    #@11
    .line 272
    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    #@13
    return-object v0
.end method

.method private isBound()Z
    .locals 2

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 616
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "Notification listener service not yet bound."

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 617
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 619
    :cond_0
    const/4 v0, 0x1

    #@f
    return v0
.end method


# virtual methods
.method public final cancelAllNotifications()V
    .locals 1

    #@0
    .prologue
    .line 348
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->cancelNotifications([Ljava/lang/String;)V

    #@4
    .line 347
    return-void
.end method

.method public final cancelNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 327
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 329
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@d
    .line 330
    const/4 v3, 0x1

    #@e
    new-array v3, v3, [Ljava/lang/String;

    #@10
    const/4 v4, 0x0

    #@11
    aput-object p1, v3, v4

    #@13
    .line 329
    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 326
    :goto_0
    return-void

    #@17
    .line 331
    :catch_0
    move-exception v0

    #@18
    .line 332
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@1a
    const-string/jumbo v2, "Unable to contact notification manager"

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method

.method public final cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    #@0
    .prologue
    .line 301
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 303
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@a
    move-result-object v1

    #@b
    .line 304
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@d
    .line 303
    invoke-interface {v1, v2, p1, p2, p3}, Landroid/app/INotificationManager;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 300
    :goto_0
    return-void

    #@11
    .line 305
    :catch_0
    move-exception v0

    #@12
    .line 306
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v2, "Unable to contact notification manager"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public final cancelNotifications([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 362
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 364
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@d
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 361
    :goto_0
    return-void

    #@11
    .line 365
    :catch_0
    move-exception v0

    #@12
    .line 366
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v2, "Unable to contact notification manager"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    #@0
    .prologue
    .line 419
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getActiveNotifications(I)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p1, "trim"    # I

    #@0
    .prologue
    .line 433
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 446
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .locals 13
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "trim"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 463
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    #@4
    move-result v9

    #@5
    if-nez v9, :cond_0

    #@7
    .line 464
    return-object v12

    #@8
    .line 466
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@b
    move-result-object v9

    #@c
    .line 467
    iget-object v10, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@e
    .line 466
    invoke-interface {v9, v10, p1, p2}, Landroid/app/INotificationManager;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@11
    move-result-object v7

    #@12
    .line 468
    .local v7, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@15
    move-result-object v5

    #@16
    .line 469
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v1, 0x0

    #@17
    .line 470
    .local v1, "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@1a
    move-result v0

    #@1b
    .line 471
    .local v0, "N":I
    const/4 v4, 0x0

    #@1c
    .end local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    #@1e
    .line 472
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v8

    #@22
    check-cast v8, Landroid/service/notification/StatusBarNotification;

    #@24
    .line 473
    .local v8, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@27
    move-result-object v6

    #@28
    .line 475
    .local v6, "notification":Landroid/app/Notification;
    :try_start_1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v9

    #@2c
    invoke-static {v9, v6}, Landroid/app/Notification$Builder;->rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;

    #@2f
    .line 477
    invoke-direct {p0, v6}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@32
    .line 471
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_0

    #@35
    .line 478
    :catch_0
    move-exception v2

    #@36
    .line 479
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    if-nez v1, :cond_1

    #@38
    .line 480
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    #@3a
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@3d
    .line 482
    :cond_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@40
    .line 483
    iget-object v9, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@42
    new-instance v10, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v11, "onNotificationPosted: can\'t rebuild notification from "

    #@4a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v10

    #@4e
    .line 484
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@51
    move-result-object v11

    #@52
    .line 483
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v10

    #@56
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v10

    #@5a
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@5d
    goto :goto_1

    #@5e
    .line 491
    .end local v0    # "N":I
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "i":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    .end local v8    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_1
    move-exception v3

    #@5f
    .line 492
    .local v3, "ex":Landroid/os/RemoteException;
    iget-object v9, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@61
    const-string/jumbo v10, "Unable to contact notification manager"

    #@64
    invoke-static {v9, v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    .line 494
    return-object v12

    #@68
    .line 487
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .restart local v7    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :cond_2
    if-eqz v1, :cond_3

    #@6a
    .line 488
    :try_start_3
    invoke-interface {v5, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    #@6d
    .line 490
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@70
    move-result v9

    #@71
    new-array v9, v9, [Landroid/service/notification/StatusBarNotification;

    #@73
    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@76
    move-result-object v9

    #@77
    check-cast v9, [Landroid/service/notification/StatusBarNotification;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@79
    return-object v9
.end method

.method public final getCurrentInterruptionFilter()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 536
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    return v3

    #@8
    .line 538
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@e
    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 539
    :catch_0
    move-exception v0

    #@14
    .line 540
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@16
    const-string/jumbo v2, "Unable to contact notification manager"

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 541
    return v3
.end method

.method public final getCurrentListenerHints()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 508
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    return v3

    #@8
    .line 510
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@e
    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 511
    :catch_0
    move-exception v0

    #@14
    .line 512
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@16
    const-string/jumbo v2, "Unable to contact notification manager"

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 513
    return v3
.end method

.method public getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    #@0
    .prologue
    .line 603
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    #@2
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 608
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 609
    new-instance v0, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;)V

    #@a
    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@c
    .line 611
    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@e
    return-object v0
.end method

.method public onInterruptionFilterChanged(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    #@0
    .prologue
    .line 263
    return-void
.end method

.method public onListenerConnected()V
    .locals 0

    #@0
    .prologue
    .line 232
    return-void
.end method

.method public onListenerHintsChanged(I)V
    .locals 0
    .param p1, "hints"    # I

    #@0
    .prologue
    .line 252
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    #@0
    .prologue
    .line 165
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    #@0
    .prologue
    .line 179
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    #@3
    .line 178
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    #@0
    .prologue
    .line 242
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    #@0
    .prologue
    .line 199
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    #@0
    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    #@3
    .line 223
    return-void
.end method

.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "currentUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 637
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    #@3
    .line 638
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 639
    new-instance v1, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@9
    invoke-direct {v1, p0, v2}, Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;)V

    #@c
    iput-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@e
    .line 641
    :cond_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@11
    move-result-object v0

    #@12
    .line 642
    .local v0, "noMan":Landroid/app/INotificationManager;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@14
    invoke-interface {v0, v1, p2, p3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    #@17
    .line 643
    iput p3, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    #@19
    .line 636
    return-void
.end method

.method public final requestInterruptionFilter(I)V
    .locals 3
    .param p1, "interruptionFilter"    # I

    #@0
    .prologue
    .line 577
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 579
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@a
    move-result-object v1

    #@b
    .line 580
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@d
    .line 579
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 576
    :goto_0
    return-void

    #@11
    .line 581
    :catch_0
    move-exception v0

    #@12
    .line 582
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v2, "Unable to contact notification manager"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public final requestListenerHints(I)V
    .locals 3
    .param p1, "hints"    # I

    #@0
    .prologue
    .line 557
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 559
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@d
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 556
    :goto_0
    return-void

    #@11
    .line 560
    :catch_0
    move-exception v0

    #@12
    .line 561
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v2, "Unable to contact notification manager"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public final setNotificationsShown([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 378
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 380
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@d
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 377
    :goto_0
    return-void

    #@11
    .line 381
    :catch_0
    move-exception v0

    #@12
    .line 382
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v2, "Unable to contact notification manager"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public final setOnNotificationPostedTrim(I)V
    .locals 3
    .param p1, "trim"    # I

    #@0
    .prologue
    .line 404
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 406
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@d
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 403
    :goto_0
    return-void

    #@11
    .line 407
    :catch_0
    move-exception v0

    #@12
    .line 408
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    #@14
    const-string/jumbo v2, "Unable to contact notification manager"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public unregisterAsSystemService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 655
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 656
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@7
    move-result-object v0

    #@8
    .line 657
    .local v0, "noMan":Landroid/app/INotificationManager;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$INotificationListenerWrapper;

    #@a
    iget v2, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    #@c
    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    #@f
    .line 654
    .end local v0    # "noMan":Landroid/app/INotificationManager;
    :cond_0
    return-void
.end method
