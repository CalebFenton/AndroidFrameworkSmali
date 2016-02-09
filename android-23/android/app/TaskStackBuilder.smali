.class public Landroid/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "a"    # Landroid/content/Context;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@a
    .line 68
    iput-object p1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@c
    .line 67
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 79
    new-instance v0, Landroid/app/TaskStackBuilder;

    #@2
    invoke-direct {v0, p0}, Landroid/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;
    .locals 1
    .param p1, "nextIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 91
    return-object p0
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;
    .locals 2
    .param p1, "nextIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    .line 108
    .local v0, "target":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    #@6
    .line 109
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@f
    move-result-object v0

    #@10
    .line 111
    :cond_0
    if-eqz v0, :cond_1

    #@12
    .line 112
    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    #@15
    .line 114
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    #@18
    .line 115
    return-object p0
.end method

.method public addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;
    .locals 3
    .param p1, "sourceActivity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 130
    .local v0, "parent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    #@6
    .line 133
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@9
    move-result-object v1

    #@a
    .line 134
    .local v1, "target":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    #@c
    .line 135
    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@15
    move-result-object v1

    #@16
    .line 137
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    #@19
    .line 138
    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    #@1c
    .line 140
    .end local v1    # "target":Landroid/content/ComponentName;
    :cond_1
    return-object p0
.end method

.method public addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;
    .locals 9
    .param p1, "sourceActivityName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 165
    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 166
    .local v2, "insertAt":I
    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@8
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v5

    #@c
    .line 168
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    #@d
    :try_start_0
    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@10
    move-result-object v1

    #@11
    .line 169
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@13
    .line 170
    .local v4, "parentActivity":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    #@15
    .line 171
    new-instance v6, Landroid/content/ComponentName;

    #@17
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@19
    invoke-direct {v6, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 172
    .local v6, "target":Landroid/content/ComponentName;
    const/4 v7, 0x0

    #@1d
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@20
    move-result-object v1

    #@21
    .line 173
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@23
    .line 174
    if-nez v4, :cond_0

    #@25
    if-nez v2, :cond_0

    #@27
    .line 175
    invoke-static {v6}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@2a
    move-result-object v3

    #@2b
    .line 177
    .local v3, "parent":Landroid/content/Intent;
    :goto_1
    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    goto :goto_0

    #@31
    .line 179
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "parent":Landroid/content/Intent;
    .end local v4    # "parentActivity":Ljava/lang/String;
    .end local v6    # "target":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    #@32
    .line 180
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "TaskStackBuilder"

    #@35
    const-string/jumbo v8, "Bad ComponentName while traversing activity parent metadata"

    #@38
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 181
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@3d
    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@40
    throw v7

    #@41
    .line 176
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "parentActivity":Ljava/lang/String;
    .restart local v6    # "target":Landroid/content/ComponentName;
    :cond_0
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    #@43
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    #@46
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@49
    move-result-object v3

    #@4a
    .restart local v3    # "parent":Landroid/content/Intent;
    goto :goto_1

    #@4b
    .line 183
    .end local v3    # "parent":Landroid/content/Intent;
    .end local v6    # "target":Landroid/content/ComponentName;
    :cond_1
    return-object p0
.end method

.method public addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/TaskStackBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@7
    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public editIntentAt(I)Landroid/content/Intent;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/Intent;

    #@8
    return-object v0
.end method

.method public getIntentCount()I
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 301
    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    new-array v1, v2, [Landroid/content/Intent;

    #@9
    .line 302
    .local v1, "intents":[Landroid/content/Intent;
    array-length v2, v1

    #@a
    if-nez v2, :cond_0

    #@c
    return-object v1

    #@d
    .line 304
    :cond_0
    new-instance v3, Landroid/content/Intent;

    #@f
    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/content/Intent;

    #@17
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@1a
    const v2, 0x1000c000

    #@1d
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@20
    move-result-object v2

    #@21
    aput-object v2, v1, v4

    #@23
    .line 307
    const/4 v0, 0x1

    #@24
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@25
    if-ge v0, v2, :cond_1

    #@27
    .line 308
    new-instance v3, Landroid/content/Intent;

    #@29
    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/content/Intent;

    #@31
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@34
    aput-object v3, v1, v0

    #@36
    .line 307
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 310
    :cond_1
    return-object v1
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 249
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    .line 271
    const-string/jumbo v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    #@d
    .line 270
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 274
    :cond_0
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@13
    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, p1, v1, p2, p3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    .line 285
    const-string/jumbo v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    #@d
    .line 284
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 288
    :cond_0
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@13
    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    #@16
    move-result-object v2

    #@17
    move v1, p1

    #@18
    move v3, p2

    #@19
    move-object v4, p3

    #@1a
    move-object v5, p4

    #@1b
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public startActivities()V
    .locals 1

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    #@4
    .line 208
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 233
    new-instance v0, Landroid/os/UserHandle;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v1

    #@6
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    invoke-virtual {p0, p1, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@c
    .line 232
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    .line 219
    const-string/jumbo v1, "No intents added to TaskStackBuilder; cannot startActivities"

    #@d
    .line 218
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 222
    :cond_0
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@13
    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@1a
    .line 216
    return-void
.end method
