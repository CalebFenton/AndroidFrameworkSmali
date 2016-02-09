.class public final Landroid/net/NetworkScorerAppManager;
.super Ljava/lang/Object;
.source "NetworkScorerAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    }
.end annotation


# static fields
.field private static final SCORE_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "NetworkScorerAppManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.scoring.SCORE_NETWORKS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 48
    sput-object v0, Landroid/net/NetworkScorerAppManager;->SCORE_INTENT:Landroid/content/Intent;

    #@a
    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 149
    const-string/jumbo v2, "network_scorer_app"

    #@7
    .line 148
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 150
    .local v0, "scorerPackage":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public static getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 93
    new-instance v9, Ljava/util/ArrayList;

    #@3
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 95
    .local v9, "scorers":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v4

    #@a
    .line 98
    .local v4, "pm":Landroid/content/pm/PackageManager;
    sget-object v10, Landroid/net/NetworkScorerAppManager;->SCORE_INTENT:Landroid/content/Intent;

    #@c
    invoke-virtual {v4, v10, v14, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    #@f
    move-result-object v8

    #@10
    .line 99
    .local v8, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v6

    #@14
    .local v6, "receiver$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v10

    #@18
    if-eqz v10, :cond_2

    #@1a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    check-cast v5, Landroid/content/pm/ResolveInfo;

    #@20
    .line 101
    .local v5, "receiver":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@22
    .line 102
    .local v7, "receiverInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_0

    #@24
    .line 106
    const-string/jumbo v10, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    #@27
    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@29
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v10

    #@2d
    if-eqz v10, :cond_0

    #@2f
    .line 111
    const-string/jumbo v10, "android.permission.SCORE_NETWORKS"

    #@32
    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@34
    invoke-virtual {v4, v10, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    move-result v10

    #@38
    if-nez v10, :cond_0

    #@3a
    .line 119
    const/4 v2, 0x0

    #@3b
    .line 120
    .local v2, "configurationActivityClassName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    #@3d
    const-string/jumbo v10, "android.net.scoring.CUSTOM_ENABLE"

    #@40
    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@43
    .line 121
    .local v3, "intent":Landroid/content/Intent;
    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@45
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@48
    .line 122
    invoke-virtual {v4, v3, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@4b
    move-result-object v1

    #@4c
    .line 123
    .local v1, "configActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@4f
    move-result v10

    #@50
    if-nez v10, :cond_1

    #@52
    .line 124
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v10

    #@56
    check-cast v10, Landroid/content/pm/ResolveInfo;

    #@58
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@5a
    .line 125
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1

    #@5c
    .line 126
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@5e
    .line 132
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "configurationActivityClassName":Ljava/lang/String;
    :cond_1
    new-instance v10, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@60
    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@62
    .line 133
    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@64
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    #@66
    invoke-virtual {v7, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@69
    move-result-object v13

    #@6a
    .line 132
    invoke-direct {v10, v11, v12, v13, v2}, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)V

    #@6d
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@70
    goto :goto_0

    #@71
    .line 137
    .end local v1    # "configActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "receiver":Landroid/content/pm/ResolveInfo;
    .end local v7    # "receiverInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    return-object v9
.end method

.method public static getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 208
    return-object v4

    #@8
    .line 210
    :cond_0
    invoke-static {p0}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    #@b
    move-result-object v2

    #@c
    .line 211
    .local v2, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@1c
    .line 212
    .local v0, "app":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v3, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    #@1e
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 213
    return-object v0

    #@25
    .line 216
    .end local v0    # "app":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_2
    return-object v4
.end method

.method public static isCallerActiveScorer(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 192
    invoke-static {p0}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@4
    move-result-object v0

    #@5
    .line 193
    .local v0, "defaultApp":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_0

    #@7
    .line 194
    return v1

    #@8
    .line 196
    :cond_0
    iget v2, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageUid:I

    #@a
    if-eq p1, v2, :cond_1

    #@c
    .line 197
    return v1

    #@d
    .line 201
    :cond_1
    const-string/jumbo v2, "android.permission.SCORE_NETWORKS"

    #@10
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_2

    #@16
    const/4 v1, 0x1

    #@17
    :cond_2
    return v1
.end method

.method public static setActiveScorer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 165
    const-string/jumbo v2, "network_scorer_app"

    #@9
    .line 164
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 166
    .local v0, "oldPackageName":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 168
    return v4

    #@14
    .line 171
    :cond_0
    const-string/jumbo v1, "NetworkScorerAppManager"

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Changing network scorer from "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, " to "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 173
    if-nez p1, :cond_1

    #@3b
    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3e
    move-result-object v1

    #@3f
    .line 175
    const-string/jumbo v2, "network_scorer_app"

    #@42
    .line 174
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@45
    .line 176
    return v4

    #@46
    .line 179
    :cond_1
    invoke-static {p0, p1}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@49
    move-result-object v1

    #@4a
    if-eqz v1, :cond_2

    #@4c
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4f
    move-result-object v1

    #@50
    .line 181
    const-string/jumbo v2, "network_scorer_app"

    #@53
    .line 180
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@56
    .line 182
    return v4

    #@57
    .line 184
    :cond_2
    const-string/jumbo v1, "NetworkScorerAppManager"

    #@5a
    new-instance v2, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v3, "Requested network scorer is not valid: "

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 185
    const/4 v1, 0x0

    #@72
    return v1
.end method
