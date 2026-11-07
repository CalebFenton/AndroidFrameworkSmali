.class public Landroid/content/ContextWrapper;
.super Landroid/content/Context;
.source "ContextWrapper.java"


# instance fields
.field greylist mBase:Landroid/content/Context;

.field public blacklist mCallbacksRegisteredToSuper:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "base"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ContextWrapper;->mLock:Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    .line 97
    return-void
.end method


# virtual methods
.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .line 107
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 110
    iput-object p1, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    .line 111
    return-void

    .line 108
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base context already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 915
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "flags":I
    .end local p3    # "instanceName":Ljava/lang/String;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "conn":Landroid/content/ServiceConnection;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "flags":I
    .local v3, "instanceName":Ljava/lang/String;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "conn":Landroid/content/ServiceConnection;
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 903
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 909
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 5
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 891
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;)Z
    .registers 5
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;

    .line 897
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 936
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .end local p3    # "flags":I
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "user":Landroid/os/UserHandle;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    .local v3, "flags":I
    .local v4, "handler":Landroid/os/Handler;
    .local v5, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 922
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public blacklist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 12
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 943
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .end local p3    # "flags":Landroid/content/Context$BindServiceFlags;
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "user":Landroid/os/UserHandle;
    .local v1, "service":Landroid/content/Intent;
    .local v2, "conn":Landroid/content/ServiceConnection;
    .local v3, "flags":Landroid/content/Context$BindServiceFlags;
    .local v4, "handler":Landroid/os/Handler;
    .local v5, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public whitelist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 929
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o canLoadUnsafeResources()Z
    .registers 2

    .line 1326
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o canStartActivityForResult()Z
    .registers 2

    .line 455
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v0

    return v0
.end method

.method public whitelist checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 990
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 1073
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public whitelist checkCallingOrSelfUriPermissions(Ljava/util/List;I)[I
    .registers 4
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 1079
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->checkCallingOrSelfUriPermissions(Ljava/util/List;I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist checkCallingPermission(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 985
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkCallingUriPermission(Landroid/net/Uri;I)I
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 1062
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public whitelist checkCallingUriPermissions(Ljava/util/List;I)[I
    .registers 4
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 1068
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->checkCallingUriPermissions(Ljava/util/List;I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist checkContentUriPermissionFull(Landroid/net/Uri;III)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 1044
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->checkContentUriPermissionFull(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermission(Ljava/lang/String;II)I
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 974
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerToken"    # Landroid/os/IBinder;

    .line 980
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public whitelist checkSelfPermission(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 995
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;III)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 1038
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public greylist-max-o checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "callerToken"    # Landroid/os/IBinder;

    .line 1057
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .end local p5    # "callerToken":Landroid/os/IBinder;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "modeFlags":I
    .local v5, "callerToken":Landroid/os/IBinder;
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    move-result p1

    return p1
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .line 1085
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "readPermission":Ljava/lang/String;
    .end local p3    # "writePermission":Ljava/lang/String;
    .end local p4    # "pid":I
    .end local p5    # "uid":I
    .end local p6    # "modeFlags":I
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "readPermission":Ljava/lang/String;
    .local v3, "writePermission":Ljava/lang/String;
    .local v4, "pid":I
    .local v5, "uid":I
    .local v6, "modeFlags":I
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public whitelist checkUriPermissions(Ljava/util/List;III)[I
    .registers 6
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;III)[I"
        }
    .end annotation

    .line 1051
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->checkUriPermissions(Ljava/util/List;III)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist clearWallpaper()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->clearWallpaper()V

    .line 434
    return-void
.end method

.method public blacklist closeSystemDialogs()V
    .registers 2

    .line 1540
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->closeSystemDialogs()V

    .line 1541
    return-void
.end method

.method public greylist createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 4
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createAttributionContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 3
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 1212
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 3
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 1178
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createContext(Landroid/content/ContextParams;)Landroid/content/Context;
    .registers 3
    .param p1, "contextParams"    # Landroid/content/ContextParams;

    .line 1207
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "flags"    # I

    .line 1137
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createContextForSdkInSandbox(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 4
    .param p1, "sdkInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createContextForSdkInSandbox(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createContextForSplit(Ljava/lang/String;)Landroid/content/Context;
    .registers 3
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createCredentialProtectedStorageContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1300
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createDeviceContext(I)Landroid/content/Context;
    .registers 3
    .param p1, "deviceId"    # I

    .line 1188
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createDeviceProtectedStorageContext()Landroid/content/Context;
    .registers 2

    .line 1293
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .registers 3
    .param p1, "display"    # Landroid/view/Display;

    .line 1183
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "display"    # Landroid/view/Display;

    .line 1308
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 4
    .param p1, "type"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1194
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 5
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1201
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist databaseList()[Ljava/lang/String;
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist deleteDatabase(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist deleteFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist deleteSharedPreferences(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1012
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return-void
.end method

.method public whitelist enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 1104
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    .line 1105
    return-void
.end method

.method public whitelist enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    return-void
.end method

.method public whitelist enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    .line 1099
    return-void
.end method

.method public whitelist enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 1001
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1002
    return-void
.end method

.method public whitelist enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 1092
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    .end local p5    # "message":Ljava/lang/String;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "pid":I
    .local v3, "uid":I
    .local v4, "modeFlags":I
    .local v5, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 1093
    return-void
.end method

.method public whitelist enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I
    .param p7, "message"    # Ljava/lang/String;

    .line 1111
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "readPermission":Ljava/lang/String;
    .end local p3    # "writePermission":Ljava/lang/String;
    .end local p4    # "pid":I
    .end local p5    # "uid":I
    .end local p6    # "modeFlags":I
    .end local p7    # "message":Ljava/lang/String;
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "readPermission":Ljava/lang/String;
    .local v3, "writePermission":Ljava/lang/String;
    .local v4, "pid":I
    .local v5, "uid":I
    .local v6, "modeFlags":I
    .local v7, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 1114
    return-void
.end method

.method public whitelist fileList()[Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 1334
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAssociatedDisplayId()I
    .registers 2

    .line 1256
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssociatedDisplayId()I

    move-result v0

    return v0
.end method

.method public whitelist getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 1218
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    .line 1391
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAutofillOptions()Landroid/content/AutofillOptions;
    .registers 2

    .line 1405
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getBaseContext()Landroid/content/Context;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    return-object v0
.end method

.method public greylist getBasePackageName()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCacheDir()Ljava/io/File;
    .registers 2

    .line 328
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCodeCacheDir()Ljava/io/File;
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentCaptureOptions()Landroid/content/ContentCaptureOptions;
    .registers 2

    .line 1421
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCrateDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "cratedId"    # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getCrateDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDataDir()Ljava/io/File;
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 386
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 1277
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public whitelist getDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 353
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplay()Landroid/view/Display;
    .registers 2

    .line 1234
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .registers 3
    .param p1, "displayId"    # I

    .line 1229
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 1248
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public blacklist getDisplayNoVerify()Landroid/view/Display;
    .registers 2

    .line 1240
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExternalCacheDir()Ljava/io/File;
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExternalCacheDirs()[Ljava/io/File;
    .registers 2

    .line 343
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 308
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExternalMediaDirs()[Ljava/io/File;
    .registers 2

    .line 348
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFilesDir()Ljava/io/File;
    .registers 2

    .line 288
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getIApplicationThread()Landroid/app/IApplicationThread;
    .registers 2

    .line 1359
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMainExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMainLooper()Landroid/os/Looper;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getMainThreadHandler()Landroid/os/Handler;
    .registers 2

    .line 1375
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getNextAutofillId()I
    .registers 2

    .line 1383
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getNextAutofillId()I

    move-result v0

    return v0
.end method

.method public whitelist getNoBackupFilesDir()Ljava/io/File;
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getObbDir()Ljava/io/File;
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getObbDirs()[Ljava/io/File;
    .registers 2

    .line 323
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageCodePath()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageResourcePath()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getParams()Landroid/content/ContextParams;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPermissionRequestState(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getPermissionRequestState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getPreloadsFileCache()Ljava/io/File;
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPreloadsFileCache()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProcessToken()Landroid/os/IBinder;
    .registers 2

    .line 1367
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getProcessToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRegisteredIntentFilters(Landroid/content/BroadcastReceiver;)Ljava/util/List;
    .registers 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/BroadcastReceiver;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getRegisteredIntentFilters(Landroid/content/BroadcastReceiver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;
    .registers 6
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # J

    .line 1351
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .line 229
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 223
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 964
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 969
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public greylist getThemeResId()I
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    return v0
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 1173
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 1167
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public whitelist getWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperDesiredMinimumHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getWallpaperDesiredMinimumWidth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getWindowContextToken()Landroid/os/IBinder;
    .registers 2

    .line 1342
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 5
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .line 1023
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1024
    return-void
.end method

.method public blacklist isConfigurationContext()Z
    .registers 2

    .line 1451
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 1452
    const/4 v0, 0x0

    return v0

    .line 1454
    :cond_6
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isConfigurationContext()Z

    move-result v0

    return v0
.end method

.method public whitelist isCredentialProtectedStorage()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1320
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isCredentialProtectedStorage()Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceProtectedStorage()Z
    .registers 2

    .line 1313
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    return v0
.end method

.method public whitelist isRestricted()Z
    .registers 2

    .line 1223
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    return v0
.end method

.method public whitelist isUiContext()Z
    .registers 2

    .line 1440
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 1441
    const/4 v0, 0x0

    return v0

    .line 1443
    :cond_6
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isUiContext()Z

    move-result v0

    return v0
.end method

.method public whitelist moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 365
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 371
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peekWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->peekWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 1477
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-eqz v0, :cond_a

    .line 1478
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_2a

    .line 1479
    :cond_a
    const-wide/32 v0, 0xb84ba9c

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1480
    invoke-super {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1481
    iget-object v0, p0, Landroid/content/ContextWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1484
    :try_start_19
    iget-object v1, p0, Landroid/content/ContextWrapper;->mCallbacksRegisteredToSuper:Ljava/util/List;

    if-nez v1, :cond_24

    .line 1485
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/ContextWrapper;->mCallbacksRegisteredToSuper:Ljava/util/List;

    .line 1487
    :cond_24
    iget-object v1, p0, Landroid/content/ContextWrapper;->mCallbacksRegisteredToSuper:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    monitor-exit v0

    .line 1494
    :goto_2a
    return-void

    .line 1488
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_2b

    throw v1

    .line 1491
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ComponentCallbacks must be registered after this ContextWrapper is attached to a base Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerDeviceIdChangeListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/util/function/IntConsumer;

    .line 1283
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerDeviceIdChangeListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 1284
    return-void
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 778
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .registers 5
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .line 784
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 6
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .line 790
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 12
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 797
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "broadcastPermission":Ljava/lang/String;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .end local p5    # "flags":I
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v2, "filter":Landroid/content/IntentFilter;
    .local v3, "broadcastPermission":Ljava/lang/String;
    .local v4, "scheduler":Landroid/os/Handler;
    .local v5, "flags":I
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public greylist registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 12
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .line 827
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "filter":Landroid/content/IntentFilter;
    .end local p4    # "broadcastPermission":Ljava/lang/String;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v2, "user":Landroid/os/UserHandle;
    .local v3, "filter":Landroid/content/IntentFilter;
    .local v4, "broadcastPermission":Ljava/lang/String;
    .local v5, "scheduler":Landroid/os/Handler;
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public greylist registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 14
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "flags"    # I

    .line 837
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "filter":Landroid/content/IntentFilter;
    .end local p4    # "broadcastPermission":Ljava/lang/String;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .end local p6    # "flags":I
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v2, "user":Landroid/os/UserHandle;
    .local v3, "filter":Landroid/content/IntentFilter;
    .local v4, "broadcastPermission":Ljava/lang/String;
    .local v5, "scheduler":Landroid/os/Handler;
    .local v6, "flags":I
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 6
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .line 807
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 12
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 817
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p2    # "filter":Landroid/content/IntentFilter;
    .end local p3    # "broadcastPermission":Ljava/lang/String;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .end local p5    # "flags":I
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    .local v2, "filter":Landroid/content/IntentFilter;
    .local v3, "broadcastPermission":Ljava/lang/String;
    .local v4, "scheduler":Landroid/os/Handler;
    .local v5, "flags":I
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o reloadSharedPreferences()V
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->reloadSharedPreferences()V

    .line 236
    return-void
.end method

.method public whitelist removeStickyBroadcast(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 743
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 744
    return-void
.end method

.method public whitelist removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 773
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 774
    return-void
.end method

.method public whitelist revokeSelfPermissionsOnKill(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1118
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->revokeSelfPermissionsOnKill(Ljava/util/Collection;)V

    .line 1119
    return-void
.end method

.method public whitelist revokeUriPermission(Landroid/net/Uri;I)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 1028
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1029
    return-void
.end method

.method public whitelist revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 5
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .line 1033
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1034
    return-void
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 506
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 507
    return-void
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .line 511
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public greylist-max-o sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .line 553
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 554
    return-void
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 547
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 548
    return-void
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 603
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 604
    return-void
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    .line 609
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public greylist-max-o sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    .line 623
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 624
    return-void
.end method

.method public whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 616
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 617
    return-void
.end method

.method public greylist-max-o sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermissions"    # [Ljava/lang/String;

    .line 541
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public greylist-max-o sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    .line 518
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 534
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 535
    return-void
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "excludedPermissions"    # [Ljava/lang/String;
    .param p4, "excludedPackages"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/app/BroadcastOptions;

    .line 526
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "receiverPermissions":[Ljava/lang/String;
    .end local p3    # "excludedPermissions":[Ljava/lang/String;
    .end local p4    # "excludedPackages":[Ljava/lang/String;
    .end local p5    # "options":Landroid/app/BroadcastOptions;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "receiverPermissions":[Ljava/lang/String;
    .local v3, "excludedPermissions":[Ljava/lang/String;
    .local v4, "excludedPackages":[Ljava/lang/String;
    .local v5, "options":Landroid/app/BroadcastOptions;
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 528
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "initialCode"    # I
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "receiverAppOp"    # Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 691
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 693
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .line 559
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 596
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 599
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .line 575
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "receiverPermission":Ljava/lang/String;
    .end local p3    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .end local p5    # "initialCode":I
    .end local p6    # "initialData":Ljava/lang/String;
    .end local p7    # "initialExtras":Landroid/os/Bundle;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "receiverPermission":Ljava/lang/String;
    .local v3, "resultReceiver":Landroid/content/BroadcastReceiver;
    .local v4, "scheduler":Landroid/os/Handler;
    .local v5, "initialCode":I
    .local v6, "initialData":Ljava/lang/String;
    .local v7, "initialExtras":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 578
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 567
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 568
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 585
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 588
    return-void
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "receiverAppOp"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 670
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 672
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialCode"    # I
    .param p8, "initialData"    # Ljava/lang/String;
    .param p9, "initialExtras"    # Landroid/os/Bundle;

    .line 641
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 643
    return-void
.end method

.method public greylist-max-o sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "scheduler"    # Landroid/os/Handler;
    .param p8, "initialCode"    # I
    .param p9, "initialData"    # Ljava/lang/String;
    .param p10, "initialExtras"    # Landroid/os/Bundle;

    .line 651
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 653
    return-void
.end method

.method public whitelist sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 631
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 633
    return-void
.end method

.method public blacklist sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # [Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "scheduler"    # Landroid/os/Handler;
    .param p8, "initialCode"    # I
    .param p9, "initialData"    # Ljava/lang/String;
    .param p10, "initialExtras"    # Landroid/os/Bundle;

    .line 661
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 663
    return-void
.end method

.method public blacklist sendOrderedBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "receiverAppOp"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 681
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 683
    return-void
.end method

.method public whitelist sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 699
    return-void
.end method

.method public whitelist sendStickyBroadcast(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 727
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 728
    return-void
.end method

.method public whitelist sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 749
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 750
    return-void
.end method

.method public greylist-max-o sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    .line 758
    return-void
.end method

.method public whitelist sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "scheduler"    # Landroid/os/Handler;
    .param p4, "initialCode"    # I
    .param p5, "initialData"    # Ljava/lang/String;
    .param p6, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 735
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local p3    # "scheduler":Landroid/os/Handler;
    .end local p4    # "initialCode":I
    .end local p5    # "initialData":Ljava/lang/String;
    .end local p6    # "initialExtras":Landroid/os/Bundle;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "resultReceiver":Landroid/content/BroadcastReceiver;
    .local v3, "scheduler":Landroid/os/Handler;
    .local v4, "initialCode":I
    .local v5, "initialData":Ljava/lang/String;
    .local v6, "initialExtras":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 738
    return-void
.end method

.method public whitelist sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .end local p5    # "initialCode":I
    .end local p6    # "initialData":Ljava/lang/String;
    .end local p7    # "initialExtras":Landroid/os/Bundle;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "user":Landroid/os/UserHandle;
    .local v3, "resultReceiver":Landroid/content/BroadcastReceiver;
    .local v4, "scheduler":Landroid/os/Handler;
    .local v5, "initialCode":I
    .local v6, "initialData":Ljava/lang/String;
    .local v7, "initialExtras":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 768
    return-void
.end method

.method public greylist-max-o setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V
    .registers 3
    .param p1, "client"    # Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 1399
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V

    .line 1400
    return-void
.end method

.method public blacklist setAutofillOptions(Landroid/content/AutofillOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/content/AutofillOptions;

    .line 1411
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 1412
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setAutofillOptions(Landroid/content/AutofillOptions;)V

    .line 1414
    :cond_9
    return-void
.end method

.method public blacklist setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/content/ContentCaptureOptions;

    .line 1430
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 1431
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 1433
    :cond_9
    return-void
.end method

.method public whitelist setTheme(I)V
    .registers 3
    .param p1, "resid"    # I

    .line 157
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 158
    return-void
.end method

.method public whitelist setWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setWallpaper(Landroid/graphics/Bitmap;)V

    .line 422
    return-void
.end method

.method public whitelist setWallpaper(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setWallpaper(Ljava/io/InputStream;)V

    .line 428
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;)V
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 471
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    .line 472
    return-void
.end method

.method public whitelist startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 476
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 477
    return-void
.end method

.method public greylist-max-o startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)I
    .registers 5
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 483
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 438
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 460
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 461
    return-void
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 466
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 467
    return-void
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 444
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 445
    return-void
.end method

.method public greylist-max-o startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 450
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 451
    return-void
.end method

.method public whitelist startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 3
    .param p1, "service"    # Landroid/content/Intent;

    .line 860
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 879
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 959
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 12
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "fillInIntent":Landroid/content/Intent;
    .end local p3    # "flagsMask":I
    .end local p4    # "flagsValues":I
    .end local p5    # "extraFlags":I
    .local v1, "intent":Landroid/content/IntentSender;
    .local v2, "fillInIntent":Landroid/content/Intent;
    .local v3, "flagsMask":I
    .local v4, "flagsValues":I
    .local v5, "extraFlags":I
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .line 493
    return-void
.end method

.method public whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 14
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "fillInIntent":Landroid/content/Intent;
    .end local p3    # "flagsMask":I
    .end local p4    # "flagsValues":I
    .end local p5    # "extraFlags":I
    .end local p6    # "options":Landroid/os/Bundle;
    .local v1, "intent":Landroid/content/IntentSender;
    .local v2, "fillInIntent":Landroid/content/Intent;
    .local v3, "flagsMask":I
    .local v4, "flagsValues":I
    .local v5, "extraFlags":I
    .local v6, "options":Landroid/os/Bundle;
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 502
    return-void
.end method

.method public whitelist startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 3
    .param p1, "service"    # Landroid/content/Intent;

    .line 855
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public greylist startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 872
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist stopService(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/Intent;

    .line 865
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "name"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 885
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist unbindService(Landroid/content/ServiceConnection;)V
    .registers 3
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .line 953
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 954
    return-void
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 5
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 1515
    iget-object v0, p0, Landroid/content/ContextWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_3
    iget-object v1, p0, Landroid/content/ContextWrapper;->mCallbacksRegisteredToSuper:Ljava/util/List;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/content/ContextWrapper;->mCallbacksRegisteredToSuper:Ljava/util/List;

    .line 1517
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1518
    invoke-super {p0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1519
    iget-object v1, p0, Landroid/content/ContextWrapper;->mCallbacksRegisteredToSuper:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1520
    :cond_18
    iget-object v1, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    if-eqz v1, :cond_22

    .line 1521
    iget-object v1, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_2b

    .line 1522
    :cond_22
    const-wide/32 v1, 0xb84ba9c

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1527
    :goto_2b
    monitor-exit v0

    .line 1530
    return-void

    .line 1524
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ComponentCallbacks must be unregistered after this ContextWrapper is attached to a base Context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/ContextWrapper;
    .end local p1    # "callback":Landroid/content/ComponentCallbacks;
    throw v1

    .line 1527
    .restart local p0    # "this":Landroid/content/ContextWrapper;
    .restart local p1    # "callback":Landroid/content/ComponentCallbacks;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public whitelist unregisterDeviceIdChangeListener(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "listener"    # Ljava/util/function/IntConsumer;

    .line 1288
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterDeviceIdChangeListener(Ljava/util/function/IntConsumer;)V

    .line 1289
    return-void
.end method

.method public whitelist unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 843
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 844
    return-void
.end method

.method public blacklist updateDeviceId(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .line 1272
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->updateDeviceId(I)V

    .line 1273
    return-void
.end method

.method public greylist-max-o updateDisplay(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1264
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->updateDisplay(I)V

    .line 1265
    return-void
.end method

.method public whitelist updateServiceGroup(Landroid/content/ServiceConnection;II)V
    .registers 5
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "group"    # I
    .param p3, "importance"    # I

    .line 948
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->updateServiceGroup(Landroid/content/ServiceConnection;II)V

    .line 949
    return-void
.end method
