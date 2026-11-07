.class public Lcom/android/internal/notification/NotificationChannelGroupsHelper;
.super Ljava/lang/Object;
.source "NotificationChannelGroupsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getGroupWithChannels(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Z)Landroid/app/NotificationChannelGroup;
    .registers 8
    .param p0, "groupId"    # Ljava/lang/String;
    .param p3, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;Z)",
            "Landroid/app/NotificationChannelGroup;"
        }
    .end annotation

    .line 122
    .local p1, "allChannels":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/NotificationChannel;>;"
    .local p2, "allGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    const/4 v0, 0x0

    .line 123
    .local v0, "group":Landroid/app/NotificationChannelGroup;
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 124
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 126
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 127
    .local v2, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_31

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 128
    :cond_31
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 129
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 132
    .end local v2    # "nc":Landroid/app/NotificationChannel;
    :cond_3e
    goto :goto_1d

    .line 134
    :cond_3f
    return-object v0
.end method

.method public static blacklist getGroupsWithChannels(Ljava/util/Collection;Ljava/util/Map;Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/List;
    .registers 11
    .param p2, "params"    # Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;",
            "Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 148
    .local p0, "allChannels":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/NotificationChannel;>;"
    .local p1, "allGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 149
    .local v0, "outputGroups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    new-instance v1, Landroid/app/NotificationChannelGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 150
    .local v1, "nonGrouped":Landroid/app/NotificationChannelGroup;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 151
    .local v4, "nc":Landroid/app/NotificationChannel;
    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetincludeDeleted(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_5a

    :cond_27
    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetchannelFilter(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_47

    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetincludeAllBlockedWithFilter(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 154
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-eqz v5, :cond_47

    :cond_39
    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetchannelFilter(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/Set;

    move-result-object v5

    .line 155
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 156
    :cond_47
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationClassification()Z

    move-result v5

    if-eqz v5, :cond_5c

    sget-object v5, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    goto :goto_5c

    :cond_5a
    const/4 v5, 0x0

    goto :goto_5d

    :cond_5c
    :goto_5c
    const/4 v5, 0x1

    .line 158
    .local v5, "includeChannel":Z
    :goto_5d
    if-eqz v5, :cond_9f

    .line 159
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9c

    .line 160
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9f

    .line 161
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 162
    .local v6, "ncg":Landroid/app/NotificationChannelGroup;
    if-nez v6, :cond_98

    .line 163
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v6

    .line 164
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 165
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_98
    invoke-virtual {v6, v4}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 168
    .end local v6    # "ncg":Landroid/app/NotificationChannelGroup;
    goto :goto_9f

    .line 170
    :cond_9c
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 173
    .end local v4    # "nc":Landroid/app/NotificationChannel;
    .end local v5    # "includeChannel":Z
    :cond_9f
    :goto_9f
    goto/16 :goto_f

    .line 174
    :cond_a1
    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetincludeNonGrouped(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b4

    .line 175
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_b4
    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetincludeEmpty(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 178
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 179
    .local v3, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_df

    .line 180
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v3    # "group":Landroid/app/NotificationChannelGroup;
    :cond_df
    goto :goto_c2

    .line 184
    :cond_e0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method
