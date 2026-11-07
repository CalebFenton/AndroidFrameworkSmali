.class public Landroid/telecom/DefaultDialerManager;
.super Ljava/lang/Object;
.source "DefaultDialerManager.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "DefaultDialerManager"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o filterByIntent(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;I)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_41

    .line 216
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 218
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 219
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 220
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_40

    .line 221
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 222
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_3d

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 223
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 224
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 228
    .end local v3    # "i":I
    :cond_40
    return-object v0

    .line 213
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "length":I
    :cond_41
    :goto_41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static greylist-max-o getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # I

    .line 131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 133
    .local v0, "identity":J
    :try_start_4
    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleManager;

    const-string v3, "android.app.role.DIALER"

    .line 134
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    .line 136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    return-object v2

    .line 136
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    throw v2
.end method

.method public static greylist-max-o getInstalledDialerApplications(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 155
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 157
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 159
    .local v3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 162
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 163
    .local v7, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_3c

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 164
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    iget v8, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3c

    .line 167
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_3c
    goto :goto_1a

    .line 171
    :cond_3d
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v5, "dialIntentWithTelScheme":Landroid/content/Intent;
    const-string v2, ""

    const/4 v6, 0x0

    const-string/jumbo v7, "tel"

    invoke-static {v7, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    invoke-static {p0, v4, v5, p1}, Landroid/telecom/DefaultDialerManager;->filterByIntent(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 233
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static greylist-max-o isDefaultOrSystemDialer(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 194
    return v1

    .line 196
    :cond_8
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 197
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 198
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    const/4 v1, 0x1

    .line 197
    :cond_21
    return v1
.end method

.method static synthetic blacklist lambda$setDefaultDialerApplication$0(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "successful"    # Ljava/lang/Boolean;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_13

    .line 84
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 86
    :goto_13
    return-void
.end method

.method public static greylist-max-o setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 79
    .local v1, "identity":J
    :try_start_4
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 80
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v3, Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    move-object v10, v3

    .line 87
    .local v10, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/role/RoleManager;

    const-string v5, "android.app.role.DIALER"

    .line 88
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    sget-object v9, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_20} :catch_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_20} :catch_39
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_20} :catch_39
    .catchall {:try_start_4 .. :try_end_20} :catchall_35

    .line 87
    const/4 v7, 0x0

    move-object v6, p1

    .end local p1    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    :try_start_22
    invoke-virtual/range {v4 .. v10}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 90
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v3, v4, p1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_2c} :catch_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_22 .. :try_end_2c} :catch_32
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_2c} :catch_32
    .catchall {:try_start_22 .. :try_end_2c} :catchall_64

    .line 91
    nop

    .line 96
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    const/4 p1, 0x1

    return p1

    .line 92
    .end local v0    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v10    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :catch_32
    move-exception v0

    move-object p1, v0

    goto :goto_3c

    .line 96
    .end local v6    # "packageName":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_35
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .end local p1    # "packageName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    goto :goto_66

    .line 92
    .end local v6    # "packageName":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_39
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    .line 93
    .restart local v6    # "packageName":Ljava/lang/String;
    .local p1, "e":Ljava/lang/Exception;
    :goto_3c
    :try_start_3c
    const-string v0, "DefaultDialerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set default dialer to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_3c .. :try_end_5e} :catchall_64

    .line 94
    nop

    .line 96
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    const/4 v0, 0x0

    return v0

    .line 96
    .end local p1    # "e":Ljava/lang/Exception;
    :catchall_64
    move-exception v0

    move-object p1, v0

    :goto_66
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    throw p1
.end method
