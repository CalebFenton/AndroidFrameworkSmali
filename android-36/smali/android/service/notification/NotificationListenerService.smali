.class public abstract Landroid/service/notification/NotificationListenerService;
.super Landroid/app/Service;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;,
        Landroid/service/notification/NotificationListenerService$MyHandler;,
        Landroid/service/notification/NotificationListenerService$RankingMap;,
        Landroid/service/notification/NotificationListenerService$Ranking;,
        Landroid/service/notification/NotificationListenerService$ChannelOrGroupModificationTypes;,
        Landroid/service/notification/NotificationListenerService$NotificationFilterTypes;,
        Landroid/service/notification/NotificationListenerService$NotificationCancelReason;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SETTINGS_HOME:Ljava/lang/String; = "android.service.notification.action.SETTINGS_HOME"

.field public static final whitelist FLAG_FILTER_TYPE_ALERTING:I = 0x2

.field public static final whitelist FLAG_FILTER_TYPE_CONVERSATIONS:I = 0x1

.field public static final whitelist FLAG_FILTER_TYPE_ONGOING:I = 0x8

.field public static final whitelist FLAG_FILTER_TYPE_SILENT:I = 0x4

.field public static final whitelist HINT_HOST_DISABLE_CALL_EFFECTS:I = 0x4

.field public static final whitelist HINT_HOST_DISABLE_EFFECTS:I = 0x1

.field public static final whitelist HINT_HOST_DISABLE_NOTIFICATION_EFFECTS:I = 0x2

.field public static final whitelist INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final whitelist INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final whitelist INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final whitelist INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final whitelist INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field public static final whitelist META_DATA_DEFAULT_AUTOBIND:Ljava/lang/String; = "android.service.notification.default_autobind_listenerservice"

.field public static final whitelist META_DATA_DEFAULT_FILTER_TYPES:Ljava/lang/String; = "android.service.notification.default_filter_types"

.field public static final whitelist META_DATA_DISABLED_FILTER_TYPES:Ljava/lang/String; = "android.service.notification.disabled_filter_types"

.field public static final whitelist NOTIFICATION_CHANNEL_OR_GROUP_ADDED:I = 0x1

.field public static final whitelist NOTIFICATION_CHANNEL_OR_GROUP_DELETED:I = 0x3

.field public static final whitelist NOTIFICATION_CHANNEL_OR_GROUP_UPDATED:I = 0x2

.field public static final whitelist REASON_APP_CANCEL:I = 0x8

.field public static final whitelist REASON_APP_CANCEL_ALL:I = 0x9

.field public static final whitelist REASON_ASSISTANT_CANCEL:I = 0x16

.field public static final whitelist REASON_CANCEL:I = 0x2

.field public static final whitelist REASON_CANCEL_ALL:I = 0x3

.field public static final whitelist REASON_CHANNEL_BANNED:I = 0x11

.field public static final whitelist REASON_CHANNEL_REMOVED:I = 0x14

.field public static final whitelist REASON_CLEAR_DATA:I = 0x15

.field public static final whitelist REASON_CLICK:I = 0x1

.field public static final whitelist REASON_ERROR:I = 0x4

.field public static final whitelist REASON_GROUP_OPTIMIZATION:I = 0xd

.field public static final whitelist REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field public static final whitelist REASON_LISTENER_CANCEL:I = 0xa

.field public static final whitelist REASON_LISTENER_CANCEL_ALL:I = 0xb

.field public static final whitelist REASON_LOCKDOWN:I = 0x17

.field public static final whitelist REASON_PACKAGE_BANNED:I = 0x7

.field public static final whitelist REASON_PACKAGE_CHANGED:I = 0x5

.field public static final whitelist REASON_PACKAGE_SUSPENDED:I = 0xe

.field public static final whitelist REASON_PROFILE_TURNED_OFF:I = 0xf

.field public static final whitelist REASON_SNOOZED:I = 0x12

.field public static final whitelist REASON_TIMEOUT:I = 0x13

.field public static final whitelist REASON_UNAUTOBUNDLED:I = 0x10

.field public static final whitelist REASON_USER_STOPPED:I = 0x6

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationListenerService"

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist TRIM_FULL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist TRIM_LIGHT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final greylist-max-p TAG:Ljava/lang/String;

.field private greylist-max-o isConnected:Z

.field protected greylist-max-o mCurrentUser:I

.field private greylist-max-p mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field protected greylist-max-p mNoMan:Landroid/app/INotificationManager;

.field private greylist-max-o mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field protected greylist-max-o mSystemContext:Landroid/content/Context;

.field protected greylist-max-r mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetTAG(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisConnected(Landroid/service/notification/NotificationListenerService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRankingMap(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputisConnected(Landroid/service/notification/NotificationListenerService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybePopulatePeople(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->maybePopulatePeople(Landroid/app/Notification;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybePopulateRemoteViews(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->maybePopulateRemoteViews(Landroid/app/Notification;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 117
    nop

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return-void
.end method

.method private greylist-max-o cleanUpNotificationList(Landroid/content/pm/ParceledListSlice;)[Landroid/service/notification/StatusBarNotification;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)[",
            "Landroid/service/notification/StatusBarNotification;"
        }
    .end annotation

    .line 1115
    .local p1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    if-eqz p1, :cond_66

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_66

    .line 1118
    :cond_9
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1119
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v1, 0x0

    .line 1120
    .local v1, "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1121
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_54

    .line 1122
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    .line 1123
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 1126
    .local v5, "notification":Landroid/app/Notification;
    :try_start_1f
    invoke-virtual {p0, v5}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V

    .line 1128
    invoke-direct {p0, v5}, Landroid/service/notification/NotificationListenerService;->maybePopulateRemoteViews(Landroid/app/Notification;)V

    .line 1130
    invoke-direct {p0, v5}, Landroid/service/notification/NotificationListenerService;->maybePopulatePeople(Landroid/app/Notification;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_28} :catch_29

    .line 1138
    goto :goto_51

    .line 1131
    :catch_29
    move-exception v6

    .line 1132
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    if-nez v1, :cond_32

    .line 1133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v7

    .line 1135
    :cond_32
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    iget-object v7, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get(Active/Snoozed)Notifications: can\'t rebuild notification from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1137
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1136
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v5    # "notification":Landroid/app/Notification;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1140
    .end local v3    # "i":I
    :cond_54
    if-eqz v1, :cond_59

    .line 1141
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1143
    :cond_59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/notification/StatusBarNotification;

    return-object v3

    .line 1116
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v1    # "corruptNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "N":I
    :cond_66
    :goto_66
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method private greylist-max-o maybePopulatePeople(Landroid/app/Notification;)V
    .registers 8
    .param p1, "notification"    # Landroid/app/Notification;

    .line 1464
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_3f

    .line 1465
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people.list"

    const-class v2, Landroid/app/Person;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1467
    .local v0, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1468
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1469
    .local v1, "size":I
    new-array v2, v1, [Ljava/lang/String;

    .line 1470
    .local v2, "peopleArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    if-ge v3, v1, :cond_38

    .line 1471
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    .line 1472
    .local v4, "person":Landroid/app/Person;
    invoke-virtual {v4}, Landroid/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 1470
    .end local v4    # "person":Landroid/app/Person;
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1474
    .end local v3    # "i":I
    :cond_38
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.people"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1477
    .end local v0    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    .end local v1    # "size":I
    .end local v2    # "peopleArray":[Ljava/lang/String;
    :cond_3f
    return-void
.end method

.method private greylist-max-o maybePopulateRemoteViews(Landroid/app/Notification;)V
    .registers 6
    .param p1, "notification"    # Landroid/app/Notification;

    .line 1445
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_28

    .line 1446
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1450
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1451
    .local v1, "content":Landroid/widget/RemoteViews;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 1452
    .local v2, "big":Landroid/widget/RemoteViews;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 1454
    .local v3, "headsUp":Landroid/widget/RemoteViews;
    iput-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1455
    iput-object v2, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1456
    iput-object v3, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1458
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "content":Landroid/widget/RemoteViews;
    .end local v2    # "big":Landroid/widget/RemoteViews;
    .end local v3    # "headsUp":Landroid/widget/RemoteViews;
    :cond_28
    return-void
.end method

.method public static whitelist requestRebind(Landroid/content/ComponentName;)V
    .registers 4
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 1371
    nop

    .line 1372
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1371
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 1374
    .local v0, "noMan":Landroid/app/INotificationManager;
    :try_start_c
    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->requestBindListener(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 1377
    nop

    .line 1378
    return-void

    .line 1375
    :catch_11
    move-exception v1

    .line 1376
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist requestUnbind(Landroid/content/ComponentName;)V
    .registers 4
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 1386
    nop

    .line 1387
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1386
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 1389
    .local v0, "noMan":Landroid/app/INotificationManager;
    :try_start_c
    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->requestUnbindListenerComponent(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 1392
    nop

    .line 1393
    return-void

    .line 1390
    :catch_11
    move-exception v1

    .line 1391
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public final greylist-max-o applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 3
    .param p1, "update"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 1725
    invoke-virtual {p1}, Landroid/service/notification/NotificationRankingUpdate;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1726
    return-void
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .line 464
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 465
    new-instance v0, Landroid/service/notification/NotificationListenerService$MyHandler;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationListenerService$MyHandler;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    .line 466
    return-void
.end method

.method public final whitelist cancelAllNotifications()V
    .registers 2

    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->cancelNotifications([Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public final whitelist cancelNotification(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 745
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 747
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    .line 751
    goto :goto_1d

    .line 749
    :catch_15
    move-exception v0

    .line 750
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method public final whitelist cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 717
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/INotificationManager;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 721
    goto :goto_19

    .line 719
    :catch_11
    move-exception v0

    .line 720
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final whitelist cancelNotifications([Ljava/lang/String;)V
    .registers 5
    .param p1, "keys"    # [Ljava/lang/String;

    .line 786
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 788
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 791
    goto :goto_19

    .line 789
    :catch_11
    move-exception v0

    .line 790
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final whitelist clearRequestedListenerHints()V
    .registers 4

    .line 1207
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1209
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 1212
    goto :goto_19

    .line 1210
    :catch_11
    move-exception v0

    .line 1211
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1213
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final whitelist createConversationNotificationChannelForPackage(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "parentChannelId"    # Ljava/lang/String;
    .param p4, "conversationId"    # Ljava/lang/String;

    .line 907
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 909
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_1a

    .line 910
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "parentChannelId":Ljava/lang/String;
    .end local p4    # "conversationId":Ljava/lang/String;
    .local v3, "pkg":Ljava/lang/String;
    .local v4, "user":Landroid/os/UserHandle;
    .local v5, "parentChannelId":Ljava/lang/String;
    .local v6, "conversationId":Ljava/lang/String;
    :try_start_12
    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->createConversationNotificationChannelForPackageFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_17

    .line 909
    return-object p1

    .line 912
    :catch_17
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v5    # "parentChannelId":Ljava/lang/String;
    .end local v6    # "conversationId":Ljava/lang/String;
    .restart local p1    # "pkg":Ljava/lang/String;
    .restart local p2    # "user":Landroid/os/UserHandle;
    .restart local p3    # "parentChannelId":Ljava/lang/String;
    .restart local p4    # "conversationId":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 913
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "parentChannelId":Ljava/lang/String;
    .end local p4    # "conversationId":Ljava/lang/String;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "user":Landroid/os/UserHandle;
    .restart local v5    # "parentChannelId":Ljava/lang/String;
    .restart local v6    # "conversationId":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_20
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string p3, "Unable to contact notification manager"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public final greylist-max-o createLegacyIconExtras(Landroid/app/Notification;)V
    .registers 8
    .param p1, "n"    # Landroid/app/Notification;

    .line 1423
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_50

    .line 1424
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1425
    .local v0, "smallIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 1426
    .local v1, "largeIcon":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 1427
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.icon"

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1428
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iput v2, p1, Landroid/app/Notification;->icon:I

    .line 1430
    :cond_30
    if-eqz v1, :cond_50

    .line 1431
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1432
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_50

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_50

    .line 1433
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1434
    .local v3, "largeIconBits":Landroid/graphics/Bitmap;
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.largeIcon"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1435
    iput-object v3, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1439
    .end local v0    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v1    # "largeIcon":Landroid/graphics/drawable/Icon;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "largeIconBits":Landroid/graphics/Bitmap;
    :cond_50
    return-void
.end method

.method public whitelist getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .registers 3

    .line 1029
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1030
    .local v0, "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_c

    :cond_a
    new-array v1, v1, [Landroid/service/notification/StatusBarNotification;

    :goto_c
    return-object v1
.end method

.method public greylist getActiveNotifications(I)[Landroid/service/notification/StatusBarNotification;
    .registers 4
    .param p1, "trim"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1065
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1066
    .local v0, "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_9

    move-object v1, v0

    goto :goto_c

    :cond_9
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/service/notification/StatusBarNotification;

    :goto_c
    return-object v1
.end method

.method public whitelist getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 4
    .param p1, "keys"    # [Ljava/lang/String;

    .line 1082
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 1083
    .local v1, "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    if-eqz v1, :cond_9

    move-object v0, v1

    goto :goto_b

    :cond_9
    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    :goto_b
    return-object v0
.end method

.method public greylist getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .registers 7
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "trim"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1101
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1102
    return-object v1

    .line 1104
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 1105
    invoke-interface {v0, v2, p1, p2}, Landroid/app/INotificationManager;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1106
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-direct {p0, v0}, Landroid/service/notification/NotificationListenerService;->cleanUpNotificationList(Landroid/content/pm/ParceledListSlice;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17
    .catch Landroid/os/BadParcelableException; {:try_start_8 .. :try_end_16} :catch_17

    return-object v1

    .line 1107
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :catch_17
    move-exception v0

    .line 1108
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1110
    .end local v0    # "ex":Ljava/lang/Exception;
    return-object v1
.end method

.method protected greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 1730
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 1731
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    return-object v0

    .line 1733
    :cond_7
    return-object p0
.end method

.method public final whitelist getCurrentInterruptionFilter()I
    .registers 5

    .line 1191
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1193
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 1194
    :catch_13
    move-exception v0

    .line 1195
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    return v1
.end method

.method public final whitelist getCurrentListenerHints()I
    .registers 5

    .line 1160
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1162
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 1163
    :catch_13
    move-exception v0

    .line 1164
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1165
    return v1
.end method

.method public whitelist getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;
    .registers 3

    .line 1287
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1288
    :try_start_3
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    monitor-exit v0

    return-object v1

    .line 1289
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final whitelist getNotificationChannelGroups(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 978
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 981
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    .line 981
    return-object v0

    .line 983
    :catch_17
    move-exception v0

    .line 984
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 985
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist getNotificationChannels(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 955
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 958
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    .line 958
    return-object v0

    .line 960
    :catch_17
    move-exception v0

    .line 961
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected final greylist-max-p getNotificationInterface()Landroid/app/INotificationManager;
    .registers 2

    .line 678
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_12

    .line 679
    nop

    .line 680
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 679
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    .line 682
    :cond_12
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public final whitelist getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;
    .registers 4

    .line 1044
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 1045
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1046
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-direct {p0, v0}, Landroid/service/notification/NotificationListenerService;->cleanUpNotificationList(Landroid/content/pm/ParceledListSlice;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 1047
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :catch_10
    move-exception v0

    .line 1048
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist isBound()Z
    .registers 3

    .line 1309
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_d

    .line 1310
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Notification listener service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v0, 0x0

    return v0

    .line 1313
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist migrateNotificationFilter(ILjava/util/List;)V
    .registers 6
    .param p1, "defaultTypes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 859
    .local p2, "disallowedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 861
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 865
    goto :goto_19

    .line 863
    :catch_11
    move-exception v0

    .line 864
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1300
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_b

    .line 1301
    new-instance v0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-direct {v0, p0}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 1303
    :cond_b
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    return-object v0
.end method

.method public whitelist onDestroy()V
    .registers 1

    .line 1318
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 1319
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1320
    return-void
.end method

.method public whitelist onInterruptionFilterChanged(I)V
    .registers 2
    .param p1, "interruptionFilter"    # I

    .line 673
    return-void
.end method

.method public whitelist onListenerConnected()V
    .registers 1

    .line 579
    return-void
.end method

.method public whitelist onListenerDisconnected()V
    .registers 1

    .line 589
    return-void
.end method

.method public whitelist onListenerHintsChanged(I)V
    .registers 2
    .param p1, "hints"    # I

    .line 611
    return-void
.end method

.method public whitelist onNotificationChannelGroupModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "modificationType"    # I

    .line 661
    return-void
.end method

.method public whitelist onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "modificationType"    # I

    .line 642
    return-void
.end method

.method public whitelist onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 478
    return-void
.end method

.method public whitelist onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 491
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 492
    return-void
.end method

.method public whitelist onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 600
    return-void
.end method

.method public whitelist onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 511
    return-void
.end method

.method public whitelist onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 532
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 533
    return-void
.end method

.method public whitelist onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "reason"    # I

    .line 555
    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 556
    return-void
.end method

.method public whitelist onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/NotificationStats;I)V
    .registers 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "stats"    # Landroid/service/notification/NotificationStats;
    .param p4, "reason"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 568
    invoke-virtual {p0, p1, p2, p4}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 569
    return-void
.end method

.method public whitelist onSilentStatusBarIconsVisibilityChanged(Z)V
    .registers 2
    .param p1, "hideSilentStatusIcons"    # Z

    .line 623
    return-void
.end method

.method public greylist registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "currentUser"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1338
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_b

    .line 1339
    new-instance v0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-direct {v0, p0}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 1341
    :cond_b
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    .line 1342
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1343
    .local v0, "noMan":Landroid/app/INotificationManager;
    new-instance v1, Landroid/service/notification/NotificationListenerService$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/service/notification/NotificationListenerService$MyHandler;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    .line 1344
    iput p3, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    .line 1345
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 1346
    return-void
.end method

.method public final whitelist requestInterruptionFilter(I)V
    .registers 5
    .param p1, "interruptionFilter"    # I

    .line 1258
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1260
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 1261
    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 1264
    goto :goto_19

    .line 1262
    :catch_11
    move-exception v0

    .line 1263
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final whitelist requestListenerHints(I)V
    .registers 5
    .param p1, "hints"    # I

    .line 1230
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1232
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 1235
    goto :goto_19

    .line 1233
    :catch_11
    move-exception v0

    .line 1234
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1236
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final whitelist requestUnbind()V
    .registers 4

    .line 1406
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-eqz v0, :cond_17

    .line 1407
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1409
    .local v0, "noMan":Landroid/app/INotificationManager;
    :try_start_8
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    .line 1411
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    .line 1414
    goto :goto_17

    .line 1412
    :catch_11
    move-exception v1

    .line 1413
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1416
    .end local v0    # "noMan":Landroid/app/INotificationManager;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public final whitelist setNotificationsShown([Ljava/lang/String;)V
    .registers 5
    .param p1, "keys"    # [Ljava/lang/String;

    .line 880
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 882
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 885
    goto :goto_19

    .line 883
    :catch_11
    move-exception v0

    .line 884
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 886
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final greylist setOnNotificationPostedTrim(I)V
    .registers 5
    .param p1, "trim"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1011
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1013
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 1016
    goto :goto_19

    .line 1014
    :catch_11
    move-exception v0

    .line 1015
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final whitelist snoozeNotification(Ljava/lang/String;J)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "durationMs"    # J

    .line 835
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 837
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/INotificationManager;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 841
    goto :goto_19

    .line 839
    :catch_11
    move-exception v0

    .line 840
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final greylist snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "snoozeCriterionId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 812
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 814
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 818
    goto :goto_19

    .line 816
    :catch_11
    move-exception v0

    .line 817
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public greylist unregisterAsSystemService()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-eqz v0, :cond_f

    .line 1359
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1360
    .local v0, "noMan":Landroid/app/INotificationManager;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    iget v2, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 1362
    .end local v0    # "noMan":Landroid/app/INotificationManager;
    :cond_f
    return-void
.end method

.method public final whitelist updateNotificationChannel(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "channel"    # Landroid/app/NotificationChannel;

    .line 933
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 935
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    .line 940
    nop

    .line 941
    return-void

    .line 937
    :catch_12
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
