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
    .line 48
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.scoring.SCORE_NETWORKS"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 47
    sput-object v0, Landroid/net/NetworkScorerAppManager;->SCORE_INTENT:Landroid/content/Intent;

    #@a
    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 184
    const-string/jumbo v2, "network_scorer_app"

    #@7
    .line 183
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 185
    .local v0, "scorerPackage":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public static getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;
    .locals 18
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
    .line 114
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 118
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    #@d
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 119
    .local v16, "scorers":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@13
    move-result-object v10

    #@14
    .line 123
    .local v10, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Landroid/net/NetworkScorerAppManager;->SCORE_INTENT:Landroid/content/Intent;

    #@16
    const/4 v2, 0x0

    #@17
    const/4 v3, 0x0

    #@18
    invoke-virtual {v10, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@1b
    move-result-object v14

    #@1c
    .line 124
    .local v14, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v12

    #@20
    .local v12, "receiver$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_5

    #@26
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v11

    #@2a
    check-cast v11, Landroid/content/pm/ResolveInfo;

    #@2c
    .line 126
    .local v11, "receiver":Landroid/content/pm/ResolveInfo;
    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2e
    .line 127
    .local v13, "receiverInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v13, :cond_1

    #@30
    .line 131
    const-string/jumbo v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    #@33
    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 137
    const-string/jumbo v1, "android.permission.SCORE_NETWORKS"

    #@3e
    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@40
    invoke-virtual {v10, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    move-result v1

    #@44
    if-nez v1, :cond_1

    #@46
    .line 145
    const/4 v5, 0x0

    #@47
    .line 146
    .local v5, "configurationActivityClassName":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    #@49
    const-string/jumbo v1, "android.net.scoring.CUSTOM_ENABLE"

    #@4c
    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4f
    .line 147
    .local v9, "intent":Landroid/content/Intent;
    iget-object v1, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@51
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@54
    .line 148
    const/4 v1, 0x0

    #@55
    invoke-virtual {v10, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@58
    move-result-object v8

    #@59
    .line 149
    .local v8, "configActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_2

    #@5b
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@5e
    move-result v1

    #@5f
    if-eqz v1, :cond_4

    #@61
    .line 157
    .end local v5    # "configurationActivityClassName":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    #@62
    .line 158
    .local v6, "scoringServiceClassName":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    #@64
    const-string/jumbo v1, "android.net.scoring.SCORE_NETWORKS"

    #@67
    move-object/from16 v0, v17

    #@69
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6c
    .line 159
    .local v17, "serviceIntent":Landroid/content/Intent;
    iget-object v1, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@6e
    move-object/from16 v0, v17

    #@70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@73
    .line 160
    const/4 v1, 0x0

    #@74
    move-object/from16 v0, v17

    #@76
    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@79
    move-result-object v15

    #@7a
    .line 161
    .local v15, "resolveServiceInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v15, :cond_3

    #@7c
    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@7e
    if-eqz v1, :cond_3

    #@80
    .line 162
    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@82
    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@84
    .line 167
    .end local v6    # "scoringServiceClassName":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@86
    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@88
    .line 168
    iget-object v3, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8a
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@8c
    invoke-virtual {v13, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@8f
    move-result-object v4

    #@90
    .line 167
    invoke-direct/range {v1 .. v6}, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    #@93
    move-object/from16 v0, v16

    #@95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@98
    goto :goto_0

    #@99
    .line 150
    .end local v15    # "resolveServiceInfo":Landroid/content/pm/ResolveInfo;
    .end local v17    # "serviceIntent":Landroid/content/Intent;
    .restart local v5    # "configurationActivityClassName":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    #@9a
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9d
    move-result-object v1

    #@9e
    check-cast v1, Landroid/content/pm/ResolveInfo;

    #@a0
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@a2
    .line 151
    .local v7, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_2

    #@a4
    .line 152
    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@a6
    .local v5, "configurationActivityClassName":Ljava/lang/String;
    goto :goto_1

    #@a7
    .line 172
    .end local v5    # "configurationActivityClassName":Ljava/lang/String;
    .end local v7    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "configActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "receiver":Landroid/content/pm/ResolveInfo;
    .end local v13    # "receiverInfo":Landroid/content/pm/ActivityInfo;
    :cond_5
    return-object v16
.end method

.method public static getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 243
    return-object v4

    #@8
    .line 245
    :cond_0
    invoke-static {p0}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    #@b
    move-result-object v2

    #@c
    .line 246
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
    .line 247
    .local v0, "app":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v3, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    #@1e
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 248
    return-object v0

    #@25
    .line 251
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
    .line 227
    invoke-static {p0}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@4
    move-result-object v0

    #@5
    .line 228
    .local v0, "defaultApp":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_0

    #@7
    .line 229
    return v1

    #@8
    .line 231
    :cond_0
    iget v2, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageUid:I

    #@a
    if-eq p1, v2, :cond_1

    #@c
    .line 232
    return v1

    #@d
    .line 236
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
    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 200
    const-string/jumbo v2, "network_scorer_app"

    #@9
    .line 199
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 201
    .local v0, "oldPackageName":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 203
    return v4

    #@14
    .line 206
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
    .line 208
    if-nez p1, :cond_1

    #@3b
    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3e
    move-result-object v1

    #@3f
    .line 210
    const-string/jumbo v2, "network_scorer_app"

    #@42
    .line 209
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@45
    .line 211
    return v4

    #@46
    .line 214
    :cond_1
    invoke-static {p0, p1}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    #@49
    move-result-object v1

    #@4a
    if-eqz v1, :cond_2

    #@4c
    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4f
    move-result-object v1

    #@50
    .line 216
    const-string/jumbo v2, "network_scorer_app"

    #@53
    .line 215
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    #@56
    .line 217
    return v4

    #@57
    .line 219
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
    .line 220
    const/4 v1, 0x0

    #@72
    return v1
.end method
