.class public abstract Landroid/service/notification/NotificationRankerService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationRankerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationRankerService$MyHandler;,
        Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;
    }
.end annotation


# static fields
.field public static final REASON_APP_CANCEL:I = 0x8

.field public static final REASON_APP_CANCEL_ALL:I = 0x9

.field public static final REASON_DELEGATE_CANCEL:I = 0x2

.field public static final REASON_DELEGATE_CANCEL_ALL:I = 0x3

.field public static final REASON_DELEGATE_CLICK:I = 0x1

.field public static final REASON_DELEGATE_ERROR:I = 0x4

.field public static final REASON_GROUP_OPTIMIZATION:I = 0xd

.field public static final REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field public static final REASON_LISTENER_CANCEL:I = 0xa

.field public static final REASON_LISTENER_CANCEL_ALL:I = 0xb

.field public static final REASON_PACKAGE_BANNED:I = 0x7

.field public static final REASON_PACKAGE_CHANGED:I = 0x5

.field public static final REASON_PACKAGE_SUSPENDED:I = 0xe

.field public static final REASON_PROFILE_TURNED_OFF:I = 0xf

.field public static final REASON_UNAUTOBUNDLED:I = 0x10

.field public static final REASON_USER_STOPPED:I = 0x6

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationRankerService"

.field private static final TAG:Ljava/lang/String; = "NotificationRankers"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/service/notification/NotificationRankerService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/notification/NotificationRankerService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final adjustNotification(Landroid/service/notification/Adjustment;)V
    .locals 3
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    #@0
    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/service/notification/NotificationRankerService;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationRankerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Landroid/service/notification/NotificationRankerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    #@d
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->applyAdjustmentFromRankerService(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 195
    :goto_0
    return-void

    #@11
    .line 199
    :catch_0
    move-exception v0

    #@12
    .line 200
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "NotificationRankers"

    #@15
    const-string/jumbo v2, "Unable to contact notification manager"

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_0
.end method

.method public final adjustNotifications(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 212
    .local p1, "adjustments":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    invoke-virtual {p0}, Landroid/service/notification/NotificationRankerService;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    return-void

    #@7
    .line 214
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationRankerService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Landroid/service/notification/NotificationRankerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    #@d
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->applyAdjustmentsFromRankerService(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 211
    :goto_0
    return-void

    #@11
    .line 215
    :catch_0
    move-exception v0

    #@12
    .line 216
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "NotificationRankers"

    #@15
    const-string/jumbo v2, "Unable to contact notification manager"

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    goto :goto_0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    #@0
    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 120
    new-instance v0, Landroid/service/notification/NotificationRankerService$MyHandler;

    #@5
    invoke-virtual {p0}, Landroid/service/notification/NotificationRankerService;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationRankerService$MyHandler;-><init>(Landroid/service/notification/NotificationRankerService;Landroid/os/Looper;)V

    #@10
    iput-object v0, p0, Landroid/service/notification/NotificationRankerService;->mHandler:Landroid/os/Handler;

    #@12
    .line 118
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 125
    iget-object v0, p0, Landroid/service/notification/NotificationRankerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 126
    new-instance v0, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;-><init>(Landroid/service/notification/NotificationRankerService;Landroid/service/notification/NotificationRankerService$NotificationRankingServiceWrapper;)V

    #@a
    iput-object v0, p0, Landroid/service/notification/NotificationRankerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    #@c
    .line 128
    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationRankerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    #@e
    return-object v0
.end method

.method public onNotificationActionClick(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "actionIndex"    # I

    #@0
    .prologue
    .line 172
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;J)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J

    #@0
    .prologue
    .line 160
    return-void
.end method

.method public abstract onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;IZ)Landroid/service/notification/Adjustment;
.end method

.method public onNotificationRemoved(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "reason"    # I

    #@0
    .prologue
    .line 184
    return-void
.end method

.method public onNotificationVisibilityChanged(Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "visible"    # Z

    #@0
    .prologue
    .line 149
    return-void
.end method

.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "currentUser"    # I

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "the ranker lifecycle is managed by the system."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public unregisterAsSystemService()V
    .locals 2

    #@0
    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "the ranker lifecycle is managed by the system."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
