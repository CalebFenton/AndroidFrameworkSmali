.class public Landroid/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final greylist-max-o mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "a"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 68
    iput-object p1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public static whitelist create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/app/TaskStackBuilder;

    invoke-direct {v0, p0}, Landroid/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public whitelist addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;
    .registers 3
    .param p1, "nextIntent"    # Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-object p0
.end method

.method public whitelist addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;
    .registers 4
    .param p1, "nextIntent"    # Landroid/content/Intent;

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 108
    .local v0, "target":Landroid/content/ComponentName;
    if-nez v0, :cond_10

    .line 109
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 111
    :cond_10
    if-eqz v0, :cond_15

    .line 112
    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    .line 114
    :cond_15
    invoke-virtual {p0, p1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 115
    return-object p0
.end method

.method public whitelist addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;
    .registers 5
    .param p1, "sourceActivity"    # Landroid/app/Activity;

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 130
    .local v0, "parent":Landroid/content/Intent;
    if-eqz v0, :cond_1c

    .line 133
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 134
    .local v1, "target":Landroid/content/ComponentName;
    if-nez v1, :cond_16

    .line 135
    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 137
    :cond_16
    invoke-virtual {p0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    .line 138
    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 140
    .end local v1    # "target":Landroid/content/ComponentName;
    :cond_1c
    return-object p0
.end method

.method public whitelist addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;
    .registers 10
    .param p1, "sourceActivityName"    # Landroid/content/ComponentName;

    .line 165
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 166
    .local v0, "insertAt":I
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 168
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 169
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 170
    .local v4, "parentActivity":Ljava/lang/String;
    :goto_13
    if-eqz v4, :cond_3d

    .line 171
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v5, "target":Landroid/content/ComponentName;
    invoke-virtual {v1, v5, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    move-object v3, v6

    .line 173
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    move-object v4, v6

    .line 174
    if-nez v4, :cond_2d

    if-nez v0, :cond_2d

    .line 175
    invoke-static {v5}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_36

    .line 176
    :cond_2d
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    :goto_36
    nop

    .line 177
    .local v6, "parent":Landroid/content/Intent;
    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_3c} :catch_3f

    .line 178
    .end local v5    # "target":Landroid/content/ComponentName;
    .end local v6    # "parent":Landroid/content/Intent;
    goto :goto_13

    .line 182
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "parentActivity":Ljava/lang/String;
    :cond_3d
    nop

    .line 183
    return-object p0

    .line 179
    :catch_3f
    move-exception v2

    .line 180
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "TaskStackBuilder"

    const-string v4, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public whitelist addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/TaskStackBuilder;"
        }
    .end annotation

    .line 152
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist editIntentAt(I)Landroid/content/Intent;
    .registers 3
    .param p1, "index"    # I

    .line 202
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getIntentCount()I
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getIntents()[Landroid/content/Intent;
    .registers 5

    .line 303
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    .line 304
    .local v0, "intents":[Landroid/content/Intent;
    array-length v1, v0

    if-nez v1, :cond_c

    return-object v0

    .line 306
    :cond_c
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    .line 309
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_24
    array-length v2, v0

    if-ge v1, v2, :cond_39

    .line 310
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v2, v0, v1

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 312
    .end local v1    # "i":I
    :cond_39
    return-object v0
.end method

.method public whitelist getPendingIntent(II)Landroid/app/PendingIntent;
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 270
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 275
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 271
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 285
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 290
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v3

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "requestCode":I
    .end local p2    # "flags":I
    .end local p3    # "options":Landroid/os/Bundle;
    .end local p4    # "user":Landroid/os/UserHandle;
    .local v2, "requestCode":I
    .local v4, "flags":I
    .local v5, "options":Landroid/os/Bundle;
    .local v6, "user":Landroid/os/UserHandle;
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 286
    .end local v2    # "requestCode":I
    .end local v4    # "flags":I
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v6    # "user":Landroid/os/UserHandle;
    .restart local p1    # "requestCode":I
    .restart local p2    # "flags":I
    .restart local p3    # "options":Landroid/os/Bundle;
    .restart local p4    # "user":Landroid/os/UserHandle;
    :cond_17
    move v2, p1

    move v4, p2

    .end local p1    # "requestCode":I
    .end local p2    # "flags":I
    .restart local v2    # "requestCode":I
    .restart local v4    # "flags":I
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)I
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 217
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 222
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)I

    move-result v0

    return v0

    .line 218
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivities()V
    .registers 2

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method public whitelist startActivities(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "options"    # Landroid/os/Bundle;

    .line 233
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)I

    .line 234
    return-void
.end method
