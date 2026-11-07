.class public Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;
.super Ljava/lang/Object;
.source "InstallCarrierAppUtils.java"


# static fields
.field private static blacklist sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getAppNameFromPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "carrier_app_names"

    .line 168
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 171
    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getAppNameFromPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getAppNameFromPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 182
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return-object v1

    .line 190
    :cond_e
    const-string v0, "\\s*;\\s*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 192
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    return-object v1

    .line 196
    :cond_1f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    const-string v2, "\\s*:\\s*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 199
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    const/4 v2, 0x0

    .line 200
    aget-object v2, v0, v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 p0, 0x1

    .line 201
    aget-object p0, v0, p0

    return-object p0

    :cond_46
    return-object v1
.end method

.method private static blacklist getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2

    .line 208
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method static blacklist getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 117
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static blacklist hideAllNotifications(Landroid/content/Context;)V
    .registers 7

    .line 95
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_27

    .line 102
    :cond_b
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_27

    aget-object v3, v0, v2

    .line 103
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_24

    .line 104
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_27
    :goto_27
    return-void
.end method

.method static blacklist hideNotification(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 110
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist isPackageInstallNotificationActive(Landroid/content/Context;)Z
    .registers 6

    .line 157
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 159
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1c

    aget-object v3, p0, v2

    .line 160
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    return v1
.end method

.method static blacklist registerPackageInstallReceiver(Landroid/content/Context;)V
    .registers 3

    .line 137
    sget-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    if-nez v0, :cond_20

    .line 138
    new-instance v0, Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 141
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_20
    return-void
.end method

.method static blacklist showNotification(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .line 54
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040523

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getAppNameFromPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const v2, 0x1040521

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_1d
    const v3, 0x1040522

    .line 62
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_28
    const v3, 0x1040520

    .line 65
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_carrier_app_notification_persistent"

    const/4 v5, 0x1

    .line 67
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move v5, v4

    .line 72
    :goto_3f
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v6, 0xc000000

    .line 71
    invoke-static {p0, v4, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 75
    new-instance v4, Landroid/app/Notification$Action$Builder;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v0, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 76
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 78
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v4, "sim"

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x10805de

    .line 82
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 88
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/16 v1, 0xc

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method static blacklist showNotificationIfNotInstalledDelayed(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 7

    .line 124
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 128
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/ShowInstallAppNotificationReceiver;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    .line 125
    invoke-static {p0, v2, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    const/4 p1, 0x3

    .line 130
    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static blacklist unregisterPackageInstallReceiver(Landroid/content/Context;)V
    .registers 2

    .line 147
    sget-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    if-nez v0, :cond_5

    return-void

    .line 150
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 151
    sget-object v0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 152
    sput-object p0, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->sCarrierAppInstallReceiver:Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;

    return-void
.end method
