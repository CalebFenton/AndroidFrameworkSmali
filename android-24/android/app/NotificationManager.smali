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

.field public static final ACTION_INTERRUPTION_FILTER_CHANGED_INTERNAL:Ljava/lang/String; = "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

.field public static final ACTION_NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

.field public static final ACTION_NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.NOTIFICATION_POLICY_CHANGED"

.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field public static final INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8

.field private static localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 95
    const-string/jumbo v0, "NotificationManager"

    #@3
    sput-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@5
    .line 96
    const/4 v0, 0x0

    #@6
    sput-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    #@8
    .line 93
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 248
    iput-object p1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@5
    .line 246
    return-void
.end method

.method private static checkRequired(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 708
    if-nez p1, :cond_0

    #@2
    .line 709
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
    .line 707
    :cond_0
    return-void
.end method

.method private fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 324
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
    .line 325
    iget v0, p1, Landroid/app/Notification;->icon:I

    #@c
    invoke-static {p2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1, v0}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    #@13
    .line 323
    :cond_0
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 253
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
    .line 238
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 239
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    #@6
    return-object v1

    #@7
    .line 241
    :cond_0
    const-string/jumbo v1, "notification"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 242
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    #@14
    .line 243
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
    .line 1013
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1018
    return p1

    #@4
    .line 1014
    :pswitch_0
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 1015
    :pswitch_1
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 1016
    :pswitch_2
    const/4 v0, 0x3

    #@9
    return v0

    #@a
    .line 1017
    :pswitch_3
    const/4 v0, 0x2

    #@b
    return v0

    #@c
    .line 1013
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
    .line 1002
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1007
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1003
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1004
    :pswitch_1
    const/4 v0, 0x2

    #@8
    return v0

    #@9
    .line 1005
    :pswitch_2
    const/4 v0, 0x4

    #@a
    return v0

    #@b
    .line 1006
    :pswitch_3
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 1002
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
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 3
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;

    #@0
    .prologue
    .line 518
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 520
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 521
    :catch_0
    move-exception v0

    #@a
    .line 522
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public areNotificationsEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 601
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 603
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 604
    :catch_0
    move-exception v0

    #@10
    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v2

    #@14
    throw v2
.end method

.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 336
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    #@4
    .line 334
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    #@0
    .prologue
    .line 346
    new-instance v0, Landroid/os/UserHandle;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@c
    .line 344
    return-void
.end method

.method public cancelAll()V
    .locals 6

    #@0
    .prologue
    .line 370
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v2

    #@4
    .line 371
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 372
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
    .line 374
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
    .line 368
    return-void

    #@2f
    .line 375
    :catch_0
    move-exception v0

    #@30
    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@33
    move-result-object v3

    #@34
    throw v3
.end method

.method public cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 354
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v2

    #@4
    .line 355
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 356
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
    .line 358
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
    .line 352
    return-void

    #@3a
    .line 359
    :catch_0
    move-exception v0

    #@3b
    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@3e
    move-result-object v3

    #@3f
    throw v3
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 6

    #@0
    .prologue
    .line 948
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v4

    #@4
    .line 949
    .local v4, "service":Landroid/app/INotificationManager;
    iget-object v5, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 952
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
    .line 953
    .local v2, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@15
    move-result-object v1

    #@16
    .line 954
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
    .line 955
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    :catch_0
    move-exception v0

    #@24
    .line 956
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@27
    move-result-object v5

    #@28
    throw v5
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 499
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 501
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 502
    :catch_0
    move-exception v0

    #@a
    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public getAutomaticZenRules()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 472
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v13

    #@4
    .line 474
    .local v13, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v13}, Landroid/app/INotificationManager;->getZenRules()Ljava/util/List;

    #@7
    move-result-object v12

    #@8
    .line 475
    .local v12, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    new-instance v11, Ljava/util/HashMap;

    #@a
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 476
    .local v11, "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v10

    #@11
    .local v10, "rule$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v9

    #@1b
    check-cast v9, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@1d
    .line 477
    .local v9, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v14, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    #@1f
    new-instance v0, Landroid/app/AutomaticZenRule;

    #@21
    iget-object v1, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@23
    iget-object v2, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@25
    .line 478
    iget-object v3, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@27
    iget v4, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@29
    invoke-static {v4}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    #@2c
    move-result v4

    #@2d
    iget-boolean v5, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@2f
    .line 479
    iget-wide v6, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    #@31
    .line 477
    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZJ)V

    #@34
    invoke-interface {v11, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    goto :goto_0

    #@38
    .line 482
    .end local v9    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v10    # "rule$iterator":Ljava/util/Iterator;
    .end local v11    # "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    .end local v12    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    :catch_0
    move-exception v8

    #@39
    .line 483
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@3c
    move-result-object v0

    #@3d
    throw v0

    #@3e
    .line 481
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v10    # "rule$iterator":Ljava/util/Iterator;
    .restart local v11    # "ruleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    .restart local v12    # "rules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    :cond_0
    return-object v11
.end method

.method public final getCurrentInterruptionFilter()I
    .locals 3

    #@0
    .prologue
    .line 970
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 972
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
    .line 973
    :catch_0
    move-exception v0

    #@e
    .line 974
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v2

    #@12
    throw v2
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 384
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 386
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
    .line 387
    :catch_0
    move-exception v0

    #@a
    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public getImportance()I
    .locals 3

    #@0
    .prologue
    .line 589
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 591
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getPackageImportance(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 592
    :catch_0
    move-exception v0

    #@10
    .line 593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v2

    #@14
    throw v2
.end method

.method public getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 3

    #@0
    .prologue
    .line 650
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 652
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
    .line 653
    :catch_0
    move-exception v0

    #@10
    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v2

    #@14
    throw v2
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
    .line 689
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v4

    #@4
    .line 691
    .local v4, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v4}, Landroid/app/INotificationManager;->getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 692
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_1

    #@a
    array-length v5, v2

    #@b
    if-lez v5, :cond_1

    #@d
    .line 693
    new-instance v3, Landroid/util/ArraySet;

    #@f
    array-length v5, v2

    #@10
    invoke-direct {v3, v5}, Landroid/util/ArraySet;-><init>(I)V

    #@13
    .line 694
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    array-length v5, v2

    #@15
    if-ge v1, v5, :cond_0

    #@17
    .line 695
    aget-object v5, v2, v1

    #@19
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 694
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 697
    :cond_0
    return-object v3

    #@20
    .line 699
    .end local v1    # "i":I
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v3    # "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    #@21
    .line 700
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@24
    move-result-object v5

    #@25
    throw v5

    #@26
    .line 702
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "pkgs":[Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/util/ArraySet;

    #@28
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    #@2b
    return-object v5
.end method

.method public getRuleInstanceCount(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "owner"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 456
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 458
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->getRuleInstanceCount(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 459
    :catch_0
    move-exception v0

    #@a
    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public getZenMode()I
    .locals 3

    #@0
    .prologue
    .line 432
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 434
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
    .line 435
    :catch_0
    move-exception v0

    #@a
    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 3

    #@0
    .prologue
    .line 444
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 446
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
    .line 447
    :catch_0
    move-exception v0

    #@a
    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public isNotificationPolicyAccessGranted()Z
    .locals 3

    #@0
    .prologue
    .line 624
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 626
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
    .line 627
    :catch_0
    move-exception v0

    #@10
    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v2

    #@14
    throw v2
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 634
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 636
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
    .line 637
    :catch_0
    move-exception v0

    #@a
    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 408
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 410
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
    .line 411
    :catch_0
    move-exception v0

    #@a
    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 396
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 398
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
    .line 399
    :catch_0
    move-exception v0

    #@a
    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 268
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@4
    .line 266
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 284
    new-instance v0, Landroid/os/UserHandle;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@c
    .line 282
    return-void
.end method

.method public notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 292
    const/4 v2, 0x1

    #@1
    new-array v6, v2, [I

    #@3
    .line 293
    .local v6, "idOut":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@6
    move-result-object v0

    #@7
    .line 294
    .local v0, "service":Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 296
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@f
    invoke-static {v2, p3}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    #@12
    .line 297
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 298
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@18
    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    #@1b
    move-result-object v2

    #@1c
    iput-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@1e
    .line 299
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 300
    iget-object v2, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@26
    const-string/jumbo v3, "Notification.sound"

    #@29
    invoke-virtual {v2, v3}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    #@2c
    .line 303
    :cond_0
    invoke-direct {p0, p3, v1}, Landroid/app/NotificationManager;->fixLegacySmallIcon(Landroid/app/Notification;Ljava/lang/String;)V

    #@2f
    .line 304
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@31
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@34
    move-result-object v2

    #@35
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@37
    const/16 v3, 0x16

    #@39
    if-le v2, v3, :cond_1

    #@3b
    .line 305
    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@3e
    move-result-object v2

    #@3f
    if-nez v2, :cond_1

    #@41
    .line 306
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@43
    new-instance v3, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v4, "Invalid notification (no valid small icon): "

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v2

    #@5b
    .line 310
    :cond_1
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    #@5d
    if-eqz v2, :cond_2

    #@5f
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@61
    new-instance v3, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    const-string/jumbo v4, ": notify("

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    const-string/jumbo v4, ", "

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    const-string/jumbo v4, ")"

    #@83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 311
    :cond_2
    invoke-static {p3}, Landroid/app/Notification$Builder;->maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;

    #@91
    move-result-object v5

    #@92
    .line 313
    .local v5, "copy":Landroid/app/Notification;
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    #@94
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    .line 314
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@9b
    move-result v7

    #@9c
    move-object v3, p1

    #@9d
    move v4, p2

    #@9e
    .line 313
    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    #@a1
    .line 315
    const/4 v2, 0x0

    #@a2
    aget v2, v6, v2

    #@a4
    if-eq p2, v2, :cond_3

    #@a6
    .line 316
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    #@a8
    new-instance v3, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v4, "notify: id corrupted: sent "

    #@b0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v3

    #@b8
    const-string/jumbo v4, ", got back "

    #@bb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v3

    #@bf
    const/4 v4, 0x0

    #@c0
    aget v4, v6, v4

    #@c2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v3

    #@c6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v3

    #@ca
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@cd
    .line 290
    :cond_3
    return-void

    #@ce
    .line 318
    :catch_0
    move-exception v8

    #@cf
    .line 319
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d2
    move-result-object v2

    #@d3
    throw v2
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 561
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 563
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 564
    :catch_0
    move-exception v0

    #@a
    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 575
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 577
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 578
    :catch_0
    move-exception v0

    #@a
    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method

.method public final setInterruptionFilter(I)V
    .locals 3
    .param p1, "interruptionFilter"    # I

    #@0
    .prologue
    .line 992
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 994
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
    .line 991
    return-void

    #@e
    .line 995
    :catch_0
    move-exception v0

    #@f
    .line 996
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v2

    #@13
    throw v2
.end method

.method public setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 3
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    #@0
    .prologue
    .line 668
    const-string/jumbo v2, "policy"

    #@3
    invoke-static {v2, p1}, Landroid/app/NotificationManager;->checkRequired(Ljava/lang/String;Ljava/lang/Object;)V

    #@6
    .line 669
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@9
    move-result-object v1

    #@a
    .line 671
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
    .line 667
    return-void

    #@14
    .line 672
    :catch_0
    move-exception v0

    #@15
    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@18
    move-result-object v2

    #@19
    throw v2
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    #@0
    .prologue
    .line 679
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 681
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 678
    return-void

    #@8
    .line 682
    :catch_0
    move-exception v0

    #@9
    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v2

    #@d
    throw v2
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 420
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 422
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 419
    return-void

    #@8
    .line 423
    :catch_0
    move-exception v0

    #@9
    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v2

    #@d
    throw v2
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;

    #@0
    .prologue
    .line 540
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v1

    #@4
    .line 542
    .local v1, "service":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 543
    :catch_0
    move-exception v0

    #@a
    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v2

    #@e
    throw v2
.end method
