.class public abstract Landroid/service/notification/NotificationAssistantService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationAssistantService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationAssistantService$MyHandler;,
        Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;,
        Landroid/service/notification/NotificationAssistantService$Source;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_NOTIFICATION_ASSISTANT_DETAIL_SETTINGS:Ljava/lang/String; = "android.service.notification.action.NOTIFICATION_ASSISTANT_DETAIL_SETTINGS"

.field public static final whitelist ACTION_NOTIFICATION_ASSISTANT_FEEDBACK_SETTINGS:Ljava/lang/String; = "android.service.notification.action.NOTIFICATION_ASSISTANT_FEEDBACK_SETTINGS"

.field public static final blacklist EXTRA_NOTIFICATION_ADJUSTMENT:Ljava/lang/String; = "android.service.notification.extra.NOTIFICATION_ADJUSTMENT"

.field public static final whitelist EXTRA_NOTIFICATION_KEY:Ljava/lang/String; = "android.service.notification.extra.NOTIFICATION_KEY"

.field public static final whitelist FEEDBACK_RATING:Ljava/lang/String; = "feedback.rating"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationAssistantService"

.field public static final whitelist SOURCE_FROM_APP:I = 0x0

.field public static final whitelist SOURCE_FROM_ASSISTANT:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NotificationAssistants"


# instance fields
.field protected greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetAdjustmentIssuer(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/Adjustment;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationAssistantService;->setAdjustmentIssuer(Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method private blacklist setAdjustmentIssuer(Landroid/service/notification/Adjustment;)V
    .registers 4
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .line 575
    if-eqz p1, :cond_28

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/notification/Adjustment;->setIssuer(Ljava/lang/String;)V

    .line 578
    :cond_28
    return-void
.end method


# virtual methods
.method public final whitelist adjustNotification(Landroid/service/notification/Adjustment;)V
    .registers 5
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .line 357
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 359
    :cond_7
    :try_start_7
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationAssistantService;->setAdjustmentIssuer(Landroid/service/notification/Adjustment;)V

    .line 360
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_15

    .line 364
    nop

    .line 365
    return-void

    .line 361
    :catch_15
    move-exception v0

    .line 362
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NotificationAssistants"

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist adjustNotifications(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    .line 375
    .local p1, "adjustments":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 377
    :cond_7
    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/Adjustment;

    .line 378
    .local v1, "adjustment":Landroid/service/notification/Adjustment;
    invoke-direct {p0, v1}, Landroid/service/notification/NotificationAssistantService;->setAdjustmentIssuer(Landroid/service/notification/Adjustment;)V

    .line 379
    .end local v1    # "adjustment":Landroid/service/notification/Adjustment;
    goto :goto_b

    .line 380
    :cond_1b
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_24} :catch_26

    .line 384
    nop

    .line 385
    return-void

    .line 381
    :catch_26
    move-exception v0

    .line 382
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NotificationAssistants"

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .line 159
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->attachBaseContext(Landroid/content/Context;)V

    .line 160
    new-instance v0, Landroid/service/notification/NotificationAssistantService$MyHandler;

    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationAssistantService$MyHandler;-><init>(Landroid/service/notification/NotificationAssistantService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    .line 161
    return-void
.end method

.method public whitelist onActionInvoked(Ljava/lang/String;Landroid/app/Notification$Action;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "action"    # Landroid/app/Notification$Action;
    .param p3, "source"    # I

    .line 320
    return-void
.end method

.method public whitelist onAllowedAdjustmentsChanged()V
    .registers 1

    .line 336
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_c

    .line 166
    new-instance v0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;-><init>(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/NotificationAssistantService-IA;)V

    iput-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 168
    :cond_c
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    return-object v0
.end method

.method public whitelist onNotificationClicked(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 327
    return-void
.end method

.method public whitelist onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 300
    return-void
.end method

.method public abstract whitelist onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/Adjustment;
.end method

.method public whitelist onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)Landroid/service/notification/Adjustment;
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "channel"    # Landroid/app/NotificationChannel;

    .line 206
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationAssistantService;->onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/Adjustment;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/Adjustment;
    .registers 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "channel"    # Landroid/app/NotificationChannel;
    .param p3, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 220
    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationAssistantService;->onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)Landroid/service/notification/Adjustment;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isUserAction"    # Z
    .param p3, "isExpanded"    # Z

    .line 294
    return-void
.end method

.method public whitelist onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "feedback"    # Landroid/os/Bundle;

    .line 347
    return-void
.end method

.method public whitelist onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/NotificationStats;I)V
    .registers 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "stats"    # Landroid/service/notification/NotificationStats;
    .param p4, "reason"    # I

    .line 249
    invoke-virtual {p0, p1, p2, p4}, Landroid/service/notification/NotificationAssistantService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 250
    return-void
.end method

.method public abstract whitelist onNotificationSnoozedUntilContext(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
.end method

.method public whitelist onNotificationVisibilityChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isVisible"    # Z

    .line 284
    return-void
.end method

.method public whitelist onNotificationsSeen(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist onPanelHidden()V
    .registers 1

    .line 274
    return-void
.end method

.method public whitelist onPanelRevealed(I)V
    .registers 2
    .param p1, "items"    # I

    .line 267
    return-void
.end method

.method public whitelist onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reply"    # Ljava/lang/CharSequence;
    .param p3, "source"    # I

    .line 310
    return-void
.end method

.method public final whitelist setAdjustmentTypeSupportedState(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "supported"    # Z

    .line 414
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 416
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->setAdjustmentTypeSupportedState(Landroid/service/notification/INotificationListener;Ljava/lang/String;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 419
    goto :goto_19

    .line 417
    :catch_11
    move-exception v0

    .line 418
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NotificationAssistants"

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final whitelist unsnoozeNotification(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 397
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 399
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 402
    goto :goto_19

    .line 400
    :catch_11
    move-exception v0

    .line 401
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NotificationAssistants"

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method
