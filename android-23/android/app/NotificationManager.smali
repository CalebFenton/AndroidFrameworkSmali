.class public Landroid/app/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$Policy;
    }
.end annotation


# static fields
.field public static final ACTION_EFFECTS_SUPPRESSOR_CHANGED:Ljava/lang/String; = "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

.field public static final ACTION_INTERRUPTION_FILTER_CHANGED:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED"

.field public static final ACTION_NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

.field public static final ACTION_NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_CHANGED"

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "NotificationManager"

    #@3
    sput-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@5
    .line 92
    const/4 v0, 0x0

    #@6
    sput-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    #@8
    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 174
    iput-object p1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@5
    .line 172
    return-void
.end method

.method private static checkRequired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 518
    if-nez p1, :cond_0

    #@2
    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, " is required"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 517
    :cond_0
    return-void
.end method

.method private fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget v0, p1, Landroid/app/Notification;->icon:I

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 269
    iget v0, p1, Landroid/app/Notification;->icon:I

    #@c
    invoke-static {p2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1, v0}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    #@13
    .line 267
    :cond_0
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 179
    const-string/jumbo v0, "notification"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/NotificationManager;

    #@9
    return-object v0
.end method

.method public static getService()Landroid/app/INotificationManager;
    .locals 2

    #@0
    .prologue
    .line 164
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 165
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    #@6
    return-object v1

    #@7
    .line 167
    :cond_0
    const-string/jumbo v1, "notification"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 168
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    #@14
    .line 169
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    #@16
    return-object v1
.end method

.method public static zenModeFromInterruptionFilter(II)I
    .locals 1
    .param p0, "interruptionFilter"    # I
    .param p1, "defValue"    # I

    #@0
    .prologue
    .line 749
    packed-switch p0, :pswitch_data_0

    #@3
    .line 754
    return p1

    #@4
    .line 750
    :pswitch_0
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 751
    :pswitch_1
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 752
    :pswitch_2
    const/4 v0, 0x3

    #@9
    return v0

    #@a
    .line 753
    :pswitch_3
    const/4 v0, 0x2

    #@b
    return v0

    #@c
    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static zenModeToInterruptionFilter(I)I
    .locals 1
    .param p0, "zen"    # I

    #@0
    .prologue
    .line 738
    packed-switch p0, :pswitch_data_0

    #@3
    .line 743
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 739
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 740
    :pswitch_1
    const/4 v0, 0x2

    #@8
    return v0

    #@9
    .line 741
    :pswitch_2
    const/4 v0, 0x4

    #@a
    return v0

    #@b
    .line 742
    :pswitch_3
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 738
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 280
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    #@4
    .line 278
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 290
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v2

    #@4
    .line 291
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 292
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v3, Landroid/app/NotificationManager;->localLOGV:Z

    #@c
    if-eqz v3, :cond_0

    #@e
    sget-object v3, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    const-string/jumbo v5, ": cancel("

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, ")"

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 294
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@35
    move-result v3

    #@36
    invoke-interface {v2, v1, p1, p2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 288
    :goto_0
    return-void

    #@3a
    .line 295
    :catch_0
    move-exception v0

    #@3b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public cancelAll()V
    .locals 6

    #@0
    .prologue
    .line 319
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v2

    #@4
    .line 320
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 321
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v3, Landroid/app/NotificationManager;->localLOGV:Z

    #@c
    if-eqz v3, :cond_0

    #@e
    sget-object v3, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    const-string/jumbo v5, ": cancelAll()"

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 323
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2a
    move-result v3

    #@2b
    invoke-interface {v2, v1, v3}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 317
    :goto_0
    return-void

    #@2f
    .line 324
    :catch_0
    move-exception v0

    #@30
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 304
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v2

    #@4
    .line 305
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 306
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v3, Landroid/app/NotificationManager;->localLOGV:Z

    #@c
    if-eqz v3, :cond_0

    #@e
    sget-object v3, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    const-string/jumbo v5, ": cancel("

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, ")"

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 308
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@35
    move-result v3

    #@36
    invoke-interface {v2, v1, p1, p2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 302
    :goto_0
    return-void

    #@3a
    .line 309
    :catch_0
    move-exception v0

    #@3b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 7

    #@0
    .prologue
    .line 678
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v4

    #@4
    .line 679
    .local v4, "service":Landroid/app/INotificationManager;
    iget-object v5, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 682
    .local v3, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@d
    move-result v5

    #@e
    invoke-interface {v4, v3, v5}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@11
    move-result-object v2

    #@12
    .line 683
    .local v2, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@15
    move-result-object v1

    #@16
    .line 684
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@19
    move-result v5

    #@1a
    new-array v5, v5, [Landroid/service/notification/StatusBarNotification;

    #@1c
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, [Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    return-object v5

    #@23
    .line 685
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :catch_0
    move-exception v0

    #@24
    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@26
    const-string/jumbo v6, "Unable to talk to notification manager. Woe!"

    #@29
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    .line 688
    const/4 v5, 0x0

    #@2d
    new-array v5, v5, [Landroid/service/notification/StatusBarNotification;

    #@2f
    return-object v5
.end method

.method public final getCurrentInterruptionFilter()I
    .locals 4

    #@0
    .prologue
    .line 705
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 707
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenMode()I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v2

    #@c
    return v2

    #@d
    .line 708
    :catch_0
    move-exception v0

    #@e
    .line 709
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@10
    const-string/jumbo v3, "Unable to talk to notification manager. Woe!"

    #@13
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 711
    const/4 v2, 0x0

    #@17
    return v2
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 332
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 334
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 335
    :catch_0
    move-exception v0

    #@a
    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@b
    return-object v2
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 3

    #@0
    .prologue
    .line 463
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 465
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 466
    :catch_0
    move-exception v0

    #@10
    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@11
    return-object v2
.end method

.method public getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 500
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v4

    #@4
    .line 502
    .local v4, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v4}, Landroid/app/INotificationManager;->getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 503
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_1

    #@a
    array-length v5, v2

    #@b
    if-lez v5, :cond_1

    #@d
    .line 504
    new-instance v3, Landroid/util/ArraySet;

    #@f
    array-length v5, v2

    #@10
    invoke-direct {v3, v5}, Landroid/util/ArraySet;-><init>(I)V

    #@13
    .line 505
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    array-length v5, v2

    #@15
    if-ge v1, v5, :cond_0

    #@17
    .line 506
    aget-object v5, v2, v1

    #@19
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 505
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 508
    :cond_0
    return-object v3

    #@20
    .line 510
    .end local v1    # "i":I
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v3    # "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    #@21
    .line 512
    :cond_1
    new-instance v5, Landroid/util/ArraySet;

    #@23
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    #@26
    return-object v5
.end method

.method public getZenMode()I
    .locals 3

    #@0
    .prologue
    .line 402
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 404
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 405
    :catch_0
    move-exception v0

    #@a
    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@b
    return v2
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 3

    #@0
    .prologue
    .line 414
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 416
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 417
    :catch_0
    move-exception v0

    #@a
    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@b
    return-object v2
.end method

.method public isNotificationPolicyAccessGranted()Z
    .locals 3

    #@0
    .prologue
    .line 437
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 439
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 440
    :catch_0
    move-exception v0

    #@10
    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@11
    return v2
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 447
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 449
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 450
    :catch_0
    move-exception v0

    #@a
    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@b
    return v2
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 356
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 358
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 359
    :catch_0
    move-exception v0

    #@a
    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@b
    return v2
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 344
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 346
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 347
    :catch_0
    move-exception v0

    #@a
    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@b
    return v2
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 194
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@4
    .line 192
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 210
    const/4 v2, 0x1

    #@1
    new-array v6, v2, [I

    #@3
    .line 211
    .local v6, "idOut":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@6
    move-result-object v0

    #@7
    .line 212
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 213
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 214
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@13
    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@19
    .line 215
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 216
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@21
    const-string/jumbo v3, "Notification.sound"

    #@24
    invoke-virtual {v2, v3}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    #@27
    .line 219
    :cond_0
    invoke-direct {p0, p3, v1}, Landroid/app/NotificationManager;->fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V

    #@2a
    .line 220
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@2c
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2f
    move-result-object v2

    #@30
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@32
    const/16 v3, 0x16

    #@34
    if-le v2, v3, :cond_1

    #@36
    .line 221
    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@39
    move-result-object v2

    #@3a
    if-nez v2, :cond_1

    #@3c
    .line 222
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3e
    new-instance v3, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v4, "Invalid notification (no valid small icon): "

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@55
    throw v2

    #@56
    .line 226
    :cond_1
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    #@58
    if-eqz v2, :cond_2

    #@5a
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@5c
    new-instance v3, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    const-string/jumbo v4, ": notify("

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    const-string/jumbo v4, ", "

    #@73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    const-string/jumbo v4, ")"

    #@7e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 227
    :cond_2
    invoke-virtual {p3}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    #@8c
    move-result-object v5

    #@8d
    .line 228
    .local v5, "stripped":Landroid/app/Notification;
    invoke-static {v5}, Landroid/app/Notification$Builder;->stripForDelivery(Landroid/app/Notification;)V

    #@90
    .line 230
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@92
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    .line 231
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@99
    move-result v7

    #@9a
    move-object v3, p1

    #@9b
    move v4, p2

    #@9c
    .line 230
    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    #@9f
    .line 232
    const/4 v2, 0x0

    #@a0
    aget v2, v6, v2

    #@a2
    if-eq p2, v2, :cond_3

    #@a4
    .line 233
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@a6
    new-instance v3, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v4, "notify: id corrupted: sent "

    #@ae
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    const-string/jumbo v4, ", got back "

    #@b9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v3

    #@bd
    const/4 v4, 0x0

    #@be
    aget v4, v6, v4

    #@c0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v3

    #@c4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v3

    #@c8
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@cb
    .line 208
    :cond_3
    :goto_0
    return-void

    #@cc
    .line 235
    :catch_0
    move-exception v8

    #@cd
    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 244
    const/4 v2, 0x1

    #@1
    new-array v6, v2, [I

    #@3
    .line 245
    .local v6, "idOut":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@6
    move-result-object v0

    #@7
    .line 246
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 247
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 248
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@13
    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@19
    .line 249
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 250
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@21
    const-string/jumbo v3, "Notification.sound"

    #@24
    invoke-virtual {v2, v3}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    #@27
    .line 253
    :cond_0
    invoke-direct {p0, p3, v1}, Landroid/app/NotificationManager;->fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V

    #@2a
    .line 254
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    #@2c
    if-eqz v2, :cond_1

    #@2e
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@30
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    const-string/jumbo v4, ": notify("

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    const-string/jumbo v4, ", "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    const-string/jumbo v4, ")"

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 255
    :cond_1
    invoke-virtual {p3}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    #@60
    move-result-object v5

    #@61
    .line 256
    .local v5, "stripped":Landroid/app/Notification;
    invoke-static {v5}, Landroid/app/Notification$Builder;->stripForDelivery(Landroid/app/Notification;)V

    #@64
    .line 258
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@66
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    .line 259
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@6d
    move-result v7

    #@6e
    move-object v3, p1

    #@6f
    move v4, p2

    #@70
    .line 258
    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    #@73
    .line 260
    const/4 v2, 0x0

    #@74
    aget v2, v6, v2

    #@76
    if-eq p2, v2, :cond_2

    #@78
    .line 261
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@7a
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v4, "notify: id corrupted: sent "

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    const-string/jumbo v4, ", got back "

    #@8d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    const/4 v4, 0x0

    #@92
    aget v4, v6, v4

    #@94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v3

    #@9c
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9f
    .line 242
    :cond_2
    :goto_0
    return-void

    #@a0
    .line 263
    :catch_0
    move-exception v8

    #@a1
    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    #@0
    .prologue
    .line 391
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 393
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 390
    :goto_0
    return-void

    #@8
    .line 394
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final setInterruptionFilter(I)V
    .locals 4
    .param p1, "interruptionFilter"    # I

    #@0
    .prologue
    .line 728
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 730
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 727
    :goto_0
    return-void

    #@e
    .line 731
    :catch_0
    move-exception v0

    #@f
    .line 732
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@11
    const-string/jumbo v3, "Unable to talk to notification manager. Woe!"

    #@14
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 3
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    #@0
    .prologue
    .line 481
    const-string/jumbo v2, "policy"

    #@3
    invoke-static {v2, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    #@6
    .line 482
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@9
    move-result-object v1

    #@a
    .line 484
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 480
    :goto_0
    return-void

    #@14
    .line 485
    :catch_0
    move-exception v0

    #@15
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    #@0
    .prologue
    .line 491
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 493
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 490
    :goto_0
    return-void

    #@8
    .line 494
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 368
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 370
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 367
    :goto_0
    return-void

    #@8
    .line 371
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    .locals 3
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 379
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 381
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 382
    :catch_0
    move-exception v0

    #@a
    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@b
    return v2
.end method
