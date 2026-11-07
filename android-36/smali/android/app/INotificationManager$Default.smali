.class public Landroid/app/INotificationManager$Default;
.super Ljava/lang/Object;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "fromUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist allowAssistantAdjustment(Ljava/lang/String;)V
    .registers 2
    .param p1, "adjustmentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public blacklist appCanBePromoted(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "adjustment"    # Landroid/service/notification/Adjustment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    return-void
.end method

.method public blacklist applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    .local p2, "adjustments":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    return-void
.end method

.method public blacklist applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "adjustment"    # Landroid/service/notification/Adjustment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    return-void
.end method

.method public blacklist applyRestore([BI)V
    .registers 3
    .param p1, "payload"    # [B
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    return-void
.end method

.method public blacklist areBubblesAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist areBubblesEnabled(Landroid/os/UserHandle;)Z
    .registers 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist areChannelsBypassingDnd()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist areNotificationsEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist canBePromoted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canShowBadge(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canUseFullScreenIntent(Landroid/content/AttributionSource;)Z
    .registers 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cancelAllNotifications(Ljava/lang/String;I)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    return-void
.end method

.method public blacklist cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    return-void
.end method

.method public blacklist cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist cleanUpCallersAfter(J)V
    .registers 3
    .param p1, "timeThreshold"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    return-void
.end method

.method public blacklist clearData(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "fromApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V
    .registers 2
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    return-void
.end method

.method public blacklist createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "parentChannel"    # Landroid/app/NotificationChannel;
    .param p4, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    return-void
.end method

.method public blacklist createConversationNotificationChannelForPackageFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 7
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "parentChannelId"    # Ljava/lang/String;
    .param p5, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelGroupList"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public blacklist createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelsList"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    return-void
.end method

.method public blacklist createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelsList"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    return-void
.end method

.method public blacklist deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method

.method public blacklist deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelGroupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    return-void
.end method

.method public blacklist deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "postedTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    return-void
.end method

.method public blacklist disallowAssistantAdjustment(Ljava/lang/String;)V
    .registers 2
    .param p1, "adjustmentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public blacklist enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "notification"    # Landroid/app/Notification;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IZILandroid/app/ITransientNotificationCallback;)Z
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "duration"    # I
    .param p5, "isUiContext"    # Z
    .param p6, "displayId"    # I
    .param p7, "callback"    # Landroid/app/ITransientNotificationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZI)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "callback"    # Landroid/app/ITransientNotification;
    .param p4, "duration"    # I
    .param p5, "isUiContext"    # Z
    .param p6, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishToken(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "trim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAdjustmentDeniedPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedAdjustmentKeyTypes()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAutomaticZenRuleState(Ljava/lang/String;)I
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAutomaticZenRules()Landroid/content/pm/ParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBackupPayload(I)[B
    .registers 3
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBubblePreferenceForPackage(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;
    .registers 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "returnParentIfNoConversationChannel"    # Z
    .param p6, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConversations(Z)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .param p1, "onlyImportant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultNotificationAssistant()Landroid/content/ComponentName;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEffectsSuppressor()Landroid/content/ComponentName;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEnabledNotificationListenerPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEnabledNotificationListeners(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHintsFromListenerNoToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHistoricalNotifications(Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;
    .registers 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "includeSnoozed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;
    .registers 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingAttributionTag"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "includeSnoozed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;
    .registers 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "conversationId"    # Ljava/lang/String;
    .param p5, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelGroupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 5
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;
    .registers 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingAttributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPackageImportance(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPackagesBypassingDnd(I)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPackagesWithAnyChannels(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrivateNotificationsAllowed()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRecentBlockedNotificationChannelGroupsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRuleInstanceCount(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "owner"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "trim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUnsupportedAdjustmentTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getZenMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasEnabledNotificationListener(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasSentValidBubble(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasSentValidMsg(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist incrementCounter(Ljava/lang/String;)V
    .registers 2
    .param p1, "metricId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    return-void
.end method

.method public blacklist isAdjustmentSupportedForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isImportanceLocked(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInCall(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInInvalidMsgState(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "assistant"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "listener"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "listener"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPackagePaused(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPermissionFixed(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matchesCallFilter(Landroid/os/Bundle;)Z
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V
    .registers 4
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "defaultTypes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    .local p3, "disallowedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    return-void
.end method

.method public blacklist onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pullStats(JIZLjava/util/List;)J
    .registers 8
    .param p1, "startNs"    # J
    .param p3, "report"    # I
    .param p4, "doAgg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 571
    .local p5, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "listener"    # Landroid/app/ICallNotificationEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    return-void
.end method

.method public blacklist registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .registers 4
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    return-void
.end method

.method public blacklist removeAutomaticZenRule(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "fromUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeAutomaticZenRules(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fromUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestBindListener(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    return-void
.end method

.method public blacklist requestBindProvider(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    return-void
.end method

.method public blacklist requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "hints"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    return-void
.end method

.method public blacklist requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    return-void
.end method

.method public blacklist requestUnbindListener(Landroid/service/notification/INotificationListener;)V
    .registers 2
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    return-void
.end method

.method public blacklist requestUnbindListenerComponent(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    return-void
.end method

.method public blacklist requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V
    .registers 2
    .param p1, "token"    # Landroid/service/notification/IConditionProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    return-void
.end method

.method public blacklist setAdjustmentSupportedForPackage(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    return-void
.end method

.method public blacklist setAdjustmentTypeSupportedState(Landroid/service/notification/INotificationListener;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "supported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    return-void
.end method

.method public blacklist setAssistantAdjustmentKeyTypeState(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    return-void
.end method

.method public blacklist setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "condition"    # Landroid/service/notification/Condition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    return-void
.end method

.method public blacklist setBubblesAllowed(Ljava/lang/String;II)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "bubblePreference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    return-void
.end method

.method public blacklist setCanBePromoted(Ljava/lang/String;IZZ)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "promote"    # Z
    .param p4, "fromUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    return-void
.end method

.method public blacklist setHideSilentStatusIcons(Z)V
    .registers 2
    .param p1, "hide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public blacklist setInterruptionFilter(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "interruptionFilter"    # I
    .param p3, "fromUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    return-void
.end method

.method public blacklist setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isDemoted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V
    .registers 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "nlf"    # Landroid/service/notification/NotificationListenerFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    return-void
.end method

.method public blacklist setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    .registers 2
    .param p1, "effects"    # Landroid/service/notification/ZenDeviceEffects;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    return-void
.end method

.method public blacklist setNASMigrationDoneAndResetDefault(IZ)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "loadFromConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    return-void
.end method

.method public blacklist setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 3
    .param p1, "assistant"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    return-void
.end method

.method public blacklist setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .registers 4
    .param p1, "assistant"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    return-void
.end method

.method public blacklist setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "delegate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    return-void
.end method

.method public blacklist setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    .registers 4
    .param p1, "listener"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .param p3, "userSet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    return-void
.end method

.method public blacklist setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    .registers 5
    .param p1, "listener"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "enabled"    # Z
    .param p4, "userSet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    return-void
.end method

.method public blacklist setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;Z)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;
    .param p3, "fromUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    return-void
.end method

.method public blacklist setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    return-void
.end method

.method public blacklist setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "granted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    return-void
.end method

.method public blacklist setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    return-void
.end method

.method public blacklist setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "trim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    return-void
.end method

.method public blacklist setPrivateNotificationsAllowed(Z)V
    .registers 2
    .param p1, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    return-void
.end method

.method public blacklist setShowBadge(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "showBadge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist setToastRateLimitingEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    return-void
.end method

.method public blacklist setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "fromUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    return-void
.end method

.method public blacklist shouldHideSilentStatusIcons(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist silenceNotificationSound()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    return-void
.end method

.method public blacklist snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "snoozeCriterionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    return-void
.end method

.method public blacklist snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V
    .registers 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "until"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    return-void
.end method

.method public blacklist unlockAllNotificationChannels()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    return-void
.end method

.method public blacklist unlockNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    return-void
.end method

.method public blacklist unregisterCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "listener"    # Landroid/app/ICallNotificationEventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    return-void
.end method

.method public blacklist unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .registers 3
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    return-void
.end method

.method public blacklist unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    return-void
.end method

.method public blacklist unsnoozeNotificationFromSystemListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    return-void
.end method

.method public blacklist updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .param p3, "fromUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    return-void
.end method

.method public blacklist updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    .registers 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "channel"    # Landroid/app/NotificationChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    return-void
.end method

.method public blacklist updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public blacklist updateNotificationChannelGroupFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;)V
    .registers 5
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "group"    # Landroid/app/NotificationChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    return-void
.end method
