.class public Landroid/support/v4/app/NotificationManagerCompat;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationManagerCompat$Impl;,
        Landroid/support/v4/app/NotificationManagerCompat$ImplBase;,
        Landroid/support/v4/app/NotificationManagerCompat$ImplEclair;,
        Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;,
        Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;,
        Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;,
        Landroid/support/v4/app/NotificationManagerCompat$Task;,
        Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;,
        Landroid/support/v4/app/NotificationManagerCompat$CancelTask;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_SIDE_CHANNEL:Ljava/lang/String; = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

.field public static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field private static final IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

.field static final MAX_SIDE_CHANNEL_SDK_VERSION:I = 0x13

.field private static final SETTING_ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final SIDE_CHANNEL_BIND_FLAGS:I

.field private static final SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS:I = 0x3e8

.field private static final SIDE_CHANNEL_RETRY_MAX_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "NotifManCompat"

.field private static sEnabledNotificationListenerPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabledNotificationListeners:Ljava/lang/String;

.field private static final sEnabledNotificationListenersLock:Ljava/lang/Object;

.field private static final sLock:Ljava/lang/Object;

.field private static sSideChannelManager:Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Landroid/support/v4/app/NotificationManagerCompat;->SIDE_CHANNEL_BIND_FLAGS:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 88
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    #@7
    .line 92
    new-instance v0, Ljava/util/HashSet;

    #@9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@c
    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    #@e
    .line 97
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    #@15
    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@17
    const/16 v1, 0xe

    #@19
    if-lt v0, v1, :cond_0

    #@1b
    .line 166
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;

    #@1d
    invoke-direct {v0}, Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;-><init>()V

    #@20
    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    #@22
    .line 172
    :goto_0
    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    #@24
    invoke-interface {v0}, Landroid/support/v4/app/NotificationManagerCompat$Impl;->getSideChannelBindFlags()I

    #@27
    move-result v0

    #@28
    sput v0, Landroid/support/v4/app/NotificationManagerCompat;->SIDE_CHANNEL_BIND_FLAGS:I

    #@2a
    .line 54
    return-void

    #@2b
    .line 167
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2d
    const/4 v1, 0x5

    #@2e
    if-lt v0, v1, :cond_1

    #@30
    .line 168
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$ImplEclair;

    #@32
    invoke-direct {v0}, Landroid/support/v4/app/NotificationManagerCompat$ImplEclair;-><init>()V

    #@35
    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    #@37
    goto :goto_0

    #@38
    .line 170
    :cond_1
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$ImplBase;

    #@3a
    invoke-direct {v0}, Landroid/support/v4/app/NotificationManagerCompat$ImplBase;-><init>()V

    #@3d
    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    #@3f
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 107
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    #@5
    .line 108
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    #@7
    .line 109
    const-string/jumbo v1, "notification"

    #@a
    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/app/NotificationManager;

    #@10
    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@12
    .line 106
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 103
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public static getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v5

    #@4
    .line 235
    const-string/jumbo v6, "enabled_notification_listeners"

    #@7
    .line 233
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 237
    .local v3, "enabledNotificationListeners":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@d
    .line 238
    sget-object v5, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;

    #@f
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    .line 252
    :cond_0
    :goto_0
    sget-object v5, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    #@17
    return-object v5

    #@18
    .line 239
    :cond_1
    const-string/jumbo v5, ":"

    #@1b
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 240
    .local v2, "components":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    #@21
    array-length v5, v2

    #@22
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    #@25
    .line 241
    .local v4, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@26
    array-length v6, v2

    #@27
    :goto_1
    if-ge v5, v6, :cond_3

    #@29
    aget-object v0, v2, v5

    #@2b
    .line 242
    .local v0, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@2e
    move-result-object v1

    #@2f
    .line 243
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    #@31
    .line 244
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@38
    .line 241
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 247
    .end local v0    # "component":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_3
    sget-object v6, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenersLock:Ljava/lang/Object;

    #@3d
    monitor-enter v6

    #@3e
    .line 248
    :try_start_0
    sput-object v4, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListenerPackages:Ljava/util/Set;

    #@40
    .line 249
    sput-object v3, Landroid/support/v4/app/NotificationManagerCompat;->sEnabledNotificationListeners:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    monitor-exit v6

    #@43
    goto :goto_0

    #@44
    .line 247
    :catchall_0
    move-exception v5

    #@45
    monitor-exit v6

    #@46
    throw v5
.end method

.method private pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
    .locals 3
    .param p1, "task"    # Landroid/support/v4/app/NotificationManagerCompat$Task;

    #@0
    .prologue
    .line 267
    sget-object v1, Landroid/support/v4/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 268
    :try_start_0
    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sSideChannelManager:Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 269
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;

    #@9
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v0, v2}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;-><init>(Landroid/content/Context;)V

    #@12
    sput-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sSideChannelManager:Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 272
    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->sSideChannelManager:Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;

    #@17
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->queueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    #@1a
    .line 266
    return-void

    #@1b
    .line 267
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method private static useSideChannelForNotification(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 259
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 260
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v1, "android.support.useSideChannel"

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 180
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    #@4
    .line 179
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 189
    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    #@2
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@4
    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat$Impl;->cancelNotification(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    #@7
    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@9
    const/16 v1, 0x13

    #@b
    if-gt v0, v1, :cond_0

    #@d
    .line 191
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;

    #@f
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1, p2, p1}, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@18
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    #@1b
    .line 188
    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 2

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    #@5
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@7
    const/16 v1, 0x13

    #@9
    if-gt v0, v1, :cond_0

    #@b
    .line 199
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;

    #@d
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;-><init>(Ljava/lang/String;)V

    #@16
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    #@19
    .line 196
    :cond_0
    return-void
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@4
    .line 208
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 219
    invoke-static {p3}, Landroid/support/v4/app/NotificationManagerCompat;->useSideChannelForNotification(Landroid/app/Notification;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 220
    new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;

    #@8
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1, p2, p1, p3}, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    #@11
    invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V

    #@14
    .line 223
    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    #@16
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@18
    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat$Impl;->cancelNotification(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    #@1b
    .line 218
    :goto_0
    return-void

    #@1c
    .line 225
    :cond_0
    sget-object v0, Landroid/support/v4/app/NotificationManagerCompat;->IMPL:Landroid/support/v4/app/NotificationManagerCompat$Impl;

    #@1e
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    #@20
    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/app/NotificationManagerCompat$Impl;->postNotification(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    #@23
    goto :goto_0
.end method
