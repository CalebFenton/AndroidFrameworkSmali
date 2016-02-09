.class public Lcom/android/server/notification/ZenModeConditions;
.super Ljava/lang/Object;
.source "ZenModeConditions.java"

# interfaces
.implements Lcom/android/server/notification/ConditionProviders$Callback;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mFirstEvaluation:Z

.field private final mHelper:Lcom/android/server/notification/ZenModeHelper;

.field private final mSubscriptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    #@2
    sput-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    #@4
    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 3
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    #@a
    .line 41
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    #@d
    .line 44
    iput-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    #@f
    .line 45
    iput-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@11
    .line 46
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@13
    const-string/jumbo v1, "countdown"

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 47
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@1e
    new-instance v1, Lcom/android/server/notification/CountdownConditionProvider;

    #@20
    invoke-direct {v1}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    #@23
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    #@26
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@28
    const-string/jumbo v1, "schedule"

    #@2b
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_1

    #@31
    .line 50
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@33
    new-instance v1, Lcom/android/server/notification/ScheduleConditionProvider;

    #@35
    invoke-direct {v1}, Lcom/android/server/notification/ScheduleConditionProvider;-><init>()V

    #@38
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    #@3b
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@3d
    const-string/jumbo v1, "event"

    #@40
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_2

    #@46
    .line 53
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@48
    new-instance v1, Lcom/android/server/notification/EventConditionProvider;

    #@4a
    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getLooper()Landroid/os/Looper;

    #@4d
    move-result-object v2

    #@4e
    invoke-direct {v1, v2}, Lcom/android/server/notification/EventConditionProvider;-><init>(Landroid/os/Looper;)V

    #@51
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    #@54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@56
    invoke-virtual {v0, p0}, Lcom/android/server/notification/ConditionProviders;->setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V

    #@59
    .line 43
    return-void
.end method

.method private evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V
    .locals 9
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "processSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    const/4 v6, 0x0

    #@1
    .line 128
    if-eqz p1, :cond_0

    #@3
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@5
    if-nez v5, :cond_1

    #@7
    :cond_0
    return-void

    #@8
    .line 129
    :cond_1
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@a
    .line 130
    .local v1, "id":Landroid/net/Uri;
    const/4 v2, 0x0

    #@b
    .line 131
    .local v2, "isSystemCondition":Z
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@d
    invoke-virtual {v5}, Lcom/android/server/notification/ConditionProviders;->getSystemProviders()Ljava/lang/Iterable;

    #@10
    move-result-object v5

    #@11
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v4

    #@15
    .local v4, "sp$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_3

    #@1b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Lcom/android/server/notification/SystemConditionProviderService;

    #@21
    .line 132
    .local v3, "sp":Lcom/android/server/notification/SystemConditionProviderService;
    invoke-virtual {v3, v1}, Lcom/android/server/notification/SystemConditionProviderService;->isValidConditionId(Landroid/net/Uri;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_2

    #@27
    .line 133
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@29
    invoke-virtual {v3}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v3}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v5, v7, v1, v8}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    #@34
    .line 134
    invoke-virtual {v3}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    #@37
    move-result-object v5

    #@38
    iput-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@3a
    .line 135
    const/4 v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 138
    .end local v3    # "sp":Lcom/android/server/notification/SystemConditionProviderService;
    :cond_3
    if-nez v2, :cond_5

    #@3e
    .line 139
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@40
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@42
    invoke-virtual {v5, v7}, Lcom/android/server/notification/ConditionProviders;->findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;

    #@45
    move-result-object v0

    #@46
    .line 140
    .local v0, "cp":Landroid/service/notification/IConditionProvider;
    sget-boolean v5, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    #@48
    if-eqz v5, :cond_4

    #@4a
    const-string/jumbo v7, "ZenModeHelper"

    #@4d
    new-instance v5, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v8, "Ensure external rule exists: "

    #@55
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v8

    #@59
    if-eqz v0, :cond_6

    #@5b
    const/4 v5, 0x1

    #@5c
    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    const-string/jumbo v8, " for "

    #@63
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 141
    :cond_4
    if-eqz v0, :cond_5

    #@74
    .line 142
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@76
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@78
    invoke-virtual {v5, v7, v1, v0}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    #@7b
    .line 145
    .end local v0    # "cp":Landroid/service/notification/IConditionProvider;
    :cond_5
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@7d
    if-nez v5, :cond_7

    #@7f
    .line 146
    const-string/jumbo v5, "ZenModeHelper"

    #@82
    new-instance v7, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v8, "No component found for automatic rule: "

    #@8a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    iget-object v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v7

    #@94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v7

    #@98
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    .line 147
    iput-boolean v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@9d
    .line 148
    return-void

    #@9e
    .restart local v0    # "cp":Landroid/service/notification/IConditionProvider;
    :cond_6
    move v5, v6

    #@9f
    .line 140
    goto :goto_1

    #@a0
    .line 150
    .end local v0    # "cp":Landroid/service/notification/IConditionProvider;
    :cond_7
    if-eqz p2, :cond_8

    #@a2
    .line 151
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@a5
    .line 153
    :cond_8
    if-eqz p3, :cond_9

    #@a7
    .line 154
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@a9
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@ab
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@ad
    invoke-virtual {v5, v6, v7}, Lcom/android/server/notification/ConditionProviders;->subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)Z

    #@b0
    move-result v5

    #@b1
    if-eqz v5, :cond_b

    #@b3
    .line 155
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    #@b5
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@b7
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@b9
    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 160
    :cond_9
    :goto_2
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@be
    if-nez v5, :cond_a

    #@c0
    .line 161
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@c2
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@c4
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@c6
    invoke-virtual {v5, v6, v7}, Lcom/android/server/notification/ConditionProviders;->findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;

    #@c9
    move-result-object v5

    #@ca
    iput-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@cc
    .line 162
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@ce
    if-eqz v5, :cond_a

    #@d0
    sget-boolean v5, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    #@d2
    if-eqz v5, :cond_a

    #@d4
    const-string/jumbo v5, "ZenModeHelper"

    #@d7
    new-instance v6, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v7, "Found existing condition for: "

    #@df
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v6

    #@e3
    .line 163
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@e5
    .line 162
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v6

    #@e9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v6

    #@ed
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f0
    .line 127
    :cond_a
    return-void

    #@f1
    .line 157
    :cond_b
    sget-boolean v5, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    #@f3
    if-eqz v5, :cond_9

    #@f5
    const-string/jumbo v5, "ZenModeHelper"

    #@f8
    const-string/jumbo v6, "zmc failed to subscribe"

    #@fb
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@fe
    goto :goto_2
.end method

.method private isAutomaticActive(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 168
    if-nez p1, :cond_0

    #@3
    return v4

    #@4
    .line 169
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    #@6
    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    #@9
    move-result-object v0

    #@a
    .line 170
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_1

    #@c
    return v4

    #@d
    .line 171
    :cond_1
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .local v2, "rule$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_3

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@23
    .line 172
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@25
    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_2

    #@2b
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 173
    const/4 v3, 0x1

    #@32
    return v3

    #@33
    .line 176
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    return v4
.end method

.method private updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 2
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;
    .param p3, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 189
    if-eqz p1, :cond_0

    #@3
    if-nez p3, :cond_1

    #@5
    :cond_0
    return v1

    #@6
    :cond_1
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 190
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@c
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_2

    #@12
    return v1

    #@13
    .line 191
    :cond_2
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@15
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_3

    #@1b
    return v1

    #@1c
    .line 192
    :cond_3
    iput-object p2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@1e
    .line 193
    const/4 v0, 0x1

    #@1f
    return v0
.end method

.method private updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 3
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 180
    if-eqz p1, :cond_0

    #@3
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    #@9
    if-nez v0, :cond_1

    #@b
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 185
    :cond_0
    return v1

    #@12
    .line 181
    :cond_1
    iput-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@14
    .line 182
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    #@16
    if-eqz v0, :cond_2

    #@18
    const-string/jumbo v0, "ZenModeHelper"

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "Snoozing reset for "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 183
    :cond_2
    const/4 v0, 0x1

    #@35
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mSubscriptions="

    #@6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e
    .line 58
    return-void
.end method

.method public evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V
    .locals 11
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "processSubscriptions"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 67
    if-nez p1, :cond_0

    #@4
    return-void

    #@5
    .line 68
    :cond_0
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@7
    if-eqz v7, :cond_1

    #@9
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@b
    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@d
    if-eqz v7, :cond_1

    #@f
    .line 69
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@11
    invoke-virtual {v7}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_2

    #@17
    .line 73
    :cond_1
    :goto_0
    new-instance v4, Landroid/util/ArraySet;

    #@19
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    #@1c
    .line 74
    .local v4, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@1e
    invoke-direct {p0, v7, v4, p2}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V

    #@21
    .line 75
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@23
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@26
    move-result-object v7

    #@27
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v2

    #@2b
    .local v2, "automaticRule$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_4

    #@31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@37
    .line 76
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, v1, v4, p2}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V

    #@3a
    .line 77
    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeConditions;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@3d
    goto :goto_1

    #@3e
    .line 70
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v2    # "automaticRule$iterator":Ljava/util/Iterator;
    .end local v4    # "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    :cond_2
    sget-boolean v7, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    #@40
    if-eqz v7, :cond_3

    #@42
    const-string/jumbo v7, "ZenModeHelper"

    #@45
    const-string/jumbo v8, "evaluateConfig: clearing manual rule"

    #@48
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 71
    :cond_3
    iput-object v9, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@4d
    goto :goto_0

    #@4e
    .line 79
    .restart local v2    # "automaticRule$iterator":Ljava/util/Iterator;
    .restart local v4    # "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    :cond_4
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    #@53
    move-result v0

    #@54
    .line 80
    .local v0, "N":I
    add-int/lit8 v5, v0, -0x1

    #@56
    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_6

    #@58
    .line 81
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    #@5a
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@5d
    move-result-object v6

    #@5e
    check-cast v6, Landroid/net/Uri;

    #@60
    .line 82
    .local v6, "id":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    #@62
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@65
    move-result-object v3

    #@66
    check-cast v3, Landroid/content/ComponentName;

    #@68
    .line 83
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz p2, :cond_5

    #@6a
    .line 84
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@6d
    move-result v7

    #@6e
    if-nez v7, :cond_5

    #@70
    .line 85
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@72
    invoke-virtual {v7, v3, v6}, Lcom/android/server/notification/ConditionProviders;->unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V

    #@75
    .line 86
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    #@77
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@7a
    .line 80
    :cond_5
    add-int/lit8 v5, v5, -0x1

    #@7c
    goto :goto_2

    #@7d
    .line 90
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v6    # "id":Landroid/net/Uri;
    :cond_6
    iput-boolean v10, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    #@7f
    .line 66
    return-void
.end method

.method public onBootComplete()V
    .locals 0

    #@0
    .prologue
    .line 94
    return-void
.end method

.method public onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .locals 7
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;

    #@0
    .prologue
    .line 113
    sget-boolean v4, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    const-string/jumbo v4, "ZenModeHelper"

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "onConditionChanged "

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    const-string/jumbo v6, " "

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 114
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    #@2b
    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    #@2e
    move-result-object v2

    #@2f
    .line 115
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v2, :cond_1

    #@31
    return-void

    #@32
    .line 116
    :cond_1
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    #@35
    move-result-object v2

    #@36
    .line 117
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@38
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/notification/ZenModeConditions;->updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@3b
    move-result v3

    #@3c
    .line 118
    .local v3, "updated":Z
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@3e
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@41
    move-result-object v4

    #@42
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v1

    #@46
    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_2

    #@4c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@52
    .line 119
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ZenModeConditions;->updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@55
    move-result v4

    #@56
    or-int/2addr v3, v4

    #@57
    .line 120
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeConditions;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@5a
    move-result v4

    #@5b
    or-int/2addr v3, v4

    #@5c
    goto :goto_0

    #@5d
    .line 122
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    if-eqz v3, :cond_3

    #@5f
    .line 123
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    #@61
    const-string/jumbo v5, "conditionChanged"

    #@64
    invoke-virtual {v4, v2, v5}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    #@67
    .line 112
    :cond_3
    return-void
.end method

.method public onServiceAdded(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 105
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "ZenModeHelper"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "onServiceAdded "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeConditions;->isAutomaticActive(Landroid/content/ComponentName;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 107
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    #@26
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    #@28
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    #@2b
    move-result-object v1

    #@2c
    const-string/jumbo v2, "zmc.onServiceAdded"

    #@2f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    #@32
    .line 104
    :cond_1
    return-void
.end method

.method public onUserSwitched()V
    .locals 0

    #@0
    .prologue
    .line 99
    return-void
.end method

.method public requestConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 1
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ConditionProviders;->requestConditions(Landroid/service/notification/IConditionListener;I)V

    #@5
    .line 62
    return-void
.end method
