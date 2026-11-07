.class public Landroid/service/notification/ZenAdapters;
.super Ljava/lang/Object;
.source "ZenAdapters.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist notificationPolicyConversationSendersToZenPolicy(I)I
    .registers 2
    .param p0, "npPriorityConversationSenders"    # I

    .line 120
    packed-switch p0, :pswitch_data_c

    .line 128
    const/4 v0, 0x0

    return v0

    .line 126
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 124
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 122
    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;
    .registers 4
    .param p0, "policy"    # Landroid/app/NotificationManager$Policy;

    .line 31
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 32
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1e

    .line 35
    nop

    .line 36
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v1

    .line 35
    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v1

    goto :goto_1f

    .line 37
    :cond_1e
    move v1, v2

    .line 33
    :goto_1f
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 40
    nop

    .line 41
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowConversationsFrom()I

    move-result v1

    .line 40
    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->notificationPolicyConversationSendersToZenPolicy(I)I

    move-result v1

    goto :goto_34

    .line 42
    :cond_33
    const/4 v1, 0x3

    .line 38
    :goto_34
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v1

    .line 47
    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    goto :goto_59

    .line 49
    :cond_58
    nop

    .line 45
    :goto_59
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 55
    .local v0, "zenPolicyBuilder":Landroid/service/notification/ZenPolicy$Builder;
    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b9

    .line 56
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showLights()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 65
    :cond_b9
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist peopleTypeToPrioritySenders(II)I
    .registers 3
    .param p0, "zpPeopleType"    # I
    .param p1, "defaultResult"    # I

    .line 72
    packed-switch p0, :pswitch_data_a

    .line 80
    return p1

    .line 78
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 76
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 74
    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static blacklist prioritySendersToPeopleType(I)I
    .registers 2
    .param p0, "npPrioritySenders"    # I

    .line 88
    packed-switch p0, :pswitch_data_a

    .line 95
    const/4 v0, 0x3

    return v0

    .line 92
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 90
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist zenPolicyConversationSendersToNotificationPolicy(II)I
    .registers 3
    .param p0, "zpConversationSenders"    # I
    .param p1, "defaultResult"    # I

    .line 104
    packed-switch p0, :pswitch_data_a

    .line 112
    return p1

    .line 110
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 108
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 106
    :pswitch_8
    const/4 v0, 0x1

    return v0

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
