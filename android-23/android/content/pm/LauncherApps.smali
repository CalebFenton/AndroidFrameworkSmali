.class public Landroid/content/pm/LauncherApps;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$Callback;,
        Landroid/content/pm/LauncherApps$CallbackMessageHandler;,
        Landroid/content/pm/LauncherApps$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LauncherApps"


# instance fields
.field private mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherApps$CallbackMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mService:Landroid/content/pm/ILauncherApps;


# direct methods
.method static synthetic -get0(Landroid/content/pm/LauncherApps;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ILauncherApps;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ILauncherApps;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 60
    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    #@a
    .line 359
    new-instance v0, Landroid/content/pm/LauncherApps$1;

    #@c
    invoke-direct {v0, p0}, Landroid/content/pm/LauncherApps$1;-><init>(Landroid/content/pm/LauncherApps;)V

    #@f
    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    #@11
    .line 130
    iput-object p1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    #@13
    .line 131
    iput-object p2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    #@15
    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    #@1b
    .line 129
    return-void
.end method

.method private addCallbackLocked(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 351
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V

    #@3
    .line 352
    if-nez p2, :cond_0

    #@5
    .line 353
    new-instance p2, Landroid/os/Handler;

    #@7
    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    #@a
    .line 355
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    #@c
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;-><init>(Landroid/os/Looper;Landroid/content/pm/LauncherApps$Callback;)V

    #@13
    .line 356
    .local v0, "toAdd":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    #@15
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    .line 349
    return-void
.end method

.method private findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    #@0
    .prologue
    .line 330
    if-nez p1, :cond_0

    #@2
    .line 331
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Callback cannot be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 333
    :cond_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    #@d
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@10
    move-result v1

    #@11
    .line 334
    .local v1, "size":I
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@14
    .line 335
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    #@16
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    #@1c
    invoke-static {v2}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->-get0(Landroid/content/pm/LauncherApps$CallbackMessageHandler;)Landroid/content/pm/LauncherApps$Callback;

    #@1f
    move-result-object v2

    #@20
    if-ne v2, p1, :cond_1

    #@22
    .line 336
    return v0

    #@23
    .line 334
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 339
    :cond_2
    const/4 v2, -0x1

    #@27
    return v2
.end method

.method static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "ri"    # Landroid/content/pm/ResolveInfo;

    #@0
    .prologue
    .line 177
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@6
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@8
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@a
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method private removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    #@0
    .prologue
    .line 343
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I

    #@3
    move-result v0

    #@4
    .line 344
    .local v0, "pos":I
    if-ltz v0, :cond_0

    #@6
    .line 345
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    #@8
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@b
    .line 342
    :cond_0
    return-void
.end method


# virtual methods
.method public getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 145
    const/4 v6, 0x0

    #@1
    .line 147
    .local v6, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    #@3
    invoke-interface {v1, p1, p2}, Landroid/content/pm/ILauncherApps;->getLauncherActivities(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v6

    #@7
    .line 151
    .local v6, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_0

    #@9
    .line 152
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@b
    return-object v1

    #@c
    .line 148
    .local v6, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v11

    #@d
    .line 149
    .local v11, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@f
    const-string/jumbo v3, "Failed to call LauncherAppsService"

    #@12
    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 154
    .end local v11    # "re":Landroid/os/RemoteException;
    .local v6, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    #@18
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 155
    .local v9, "lais":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@1e
    move-result v7

    #@1f
    .line 156
    .local v7, "count":I
    const/4 v8, 0x0

    #@20
    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    #@22
    .line 157
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/content/pm/ResolveInfo;

    #@28
    .line 158
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    const-wide/16 v4, 0x0

    #@2a
    .line 160
    .local v4, "firstInstallTime":J
    :try_start_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    #@2c
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2e
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@30
    .line 161
    const/16 v12, 0x2000

    #@32
    .line 160
    invoke-virtual {v1, v3, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@35
    move-result-object v1

    #@36
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@38
    .line 165
    :goto_1
    new-instance v0, Landroid/content/pm/LauncherActivityInfo;

    #@3a
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    #@3c
    move-object v3, p2

    #@3d
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;J)V

    #@40
    .line 171
    .local v0, "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    .line 156
    add-int/lit8 v8, v8, 0x1

    #@45
    goto :goto_0

    #@46
    .line 173
    .end local v0    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "firstInstallTime":J
    :cond_1
    return-object v9

    #@47
    .line 162
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "firstInstallTime":J
    :catch_1
    move-exception v10

    #@48
    .local v10, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/ILauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 274
    :catch_0
    move-exception v0

    #@8
    .line 275
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Failed to call LauncherAppsService"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method

.method public isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/ILauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 258
    :catch_0
    move-exception v0

    #@8
    .line 259
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Failed to call LauncherAppsService"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
.end method

.method public registerCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    #@0
    .prologue
    .line 286
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    #@4
    .line 285
    return-void
.end method

.method public registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 296
    monitor-enter p0

    #@1
    .line 297
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I

    #@6
    move-result v2

    #@7
    if-gez v2, :cond_0

    #@9
    .line 298
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    #@b
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    .line 299
    .local v0, "addedFirstCallback":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/LauncherApps;->addCallbackLocked(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 300
    if-eqz v0, :cond_0

    #@17
    .line 302
    :try_start_1
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    #@19
    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    #@1b
    invoke-interface {v2, v3}, Landroid/content/pm/ILauncherApps;->addOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .end local v0    # "addedFirstCallback":Z
    :cond_0
    :goto_1
    monitor-exit p0

    #@1f
    .line 295
    return-void

    #@20
    .line 298
    :cond_1
    const/4 v0, 0x0

    #@21
    .restart local v0    # "addedFirstCallback":Z
    goto :goto_0

    #@22
    .line 296
    .end local v0    # "addedFirstCallback":Z
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2

    #@25
    .line 303
    .restart local v0    # "addedFirstCallback":Z
    :catch_0
    move-exception v1

    #@26
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 190
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    #@3
    invoke-interface {v1, p1, p2}, Landroid/content/pm/ILauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v2

    #@7
    .line 191
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    #@9
    .line 192
    const-wide/16 v4, 0x0

    #@b
    .line 194
    .local v4, "firstInstallTime":J
    :try_start_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    #@d
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@f
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@11
    .line 195
    const/16 v8, 0x2000

    #@13
    .line 194
    invoke-virtual {v1, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@16
    move-result-object v1

    #@17
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@19
    .line 199
    :goto_0
    :try_start_2
    new-instance v0, Landroid/content/pm/LauncherActivityInfo;

    #@1b
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    #@1d
    move-object v3, p2

    #@1e
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@21
    .line 201
    .local v0, "info":Landroid/content/pm/LauncherActivityInfo;
    return-object v0

    #@22
    .line 203
    .end local v0    # "info":Landroid/content/pm/LauncherActivityInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "firstInstallTime":J
    :catch_0
    move-exception v7

    #@23
    .line 204
    .local v7, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@25
    const-string/jumbo v3, "Failed to call LauncherAppsService"

    #@28
    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 206
    .end local v7    # "re":Landroid/os/RemoteException;
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v3

    #@2d
    .line 196
    .restart local v4    # "firstInstallTime":J
    :catch_1
    move-exception v6

    #@2e
    .local v6, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    #@2
    invoke-interface {v1, p1, p3, p4, p2}, Landroid/content/pm/ILauncherApps;->showAppDetailsAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 239
    :goto_0
    return-void

    #@6
    .line 242
    :catch_0
    move-exception v0

    #@7
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    #@2
    invoke-interface {v1, p1, p3, p4, p2}, Landroid/content/pm/ILauncherApps;->startActivityAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 218
    :goto_0
    return-void

    #@6
    .line 224
    :catch_0
    move-exception v0

    #@7
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    #@0
    .prologue
    .line 317
    monitor-enter p0

    #@1
    .line 318
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V

    #@4
    .line 319
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    #@6
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 321
    :try_start_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    #@e
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    #@10
    invoke-interface {v1, v2}, Landroid/content/pm/ILauncherApps;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    :cond_0
    :goto_0
    monitor-exit p0

    #@14
    .line 316
    return-void

    #@15
    .line 317
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1

    #@18
    .line 322
    :catch_0
    move-exception v0

    #@19
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
