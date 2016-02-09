.class public Landroid/content/ContextWrapper;
.super Landroid/content/Context;
.source "ContextWrapper.java"


# instance fields
.field mBase:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@5
    .line 54
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Base context already set"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 69
    :cond_0
    iput-object p1, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@f
    .line 65
    return-void
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 611
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canStartActivityForResult()Z
    .locals 1

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    #@0
    .prologue
    .line 706
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 648
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    #@0
    .prologue
    .line 701
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->checkCallingUriPermission(Landroid/net/Uri;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 637
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    #@0
    .prologue
    .line 690
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "callerToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    #@0
    .prologue
    .line 712
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public clearWallpaper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->clearWallpaper()V

    #@5
    .line 325
    return-void
.end method

.method public createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .locals 1
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 760
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 1
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 771
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    #@0
    .prologue
    .line 776
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 753
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 674
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 731
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    #@5
    .line 730
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 669
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 668
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 725
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    #@5
    .line 724
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 664
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@5
    .line 663
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 719
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    #@a
    .line 718
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I
    .param p7, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 738
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    move-object v7, p7

    #@9
    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    #@c
    .line 737
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getBasePackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCodeCacheDir()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .locals 1
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExternalMediaDirs()[Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNoBackupFilesDir()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 627
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 632
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 766
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getWallpaper()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getWallpaperDesiredMinimumHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getWallpaperDesiredMinimumWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    #@0
    .prologue
    .line 680
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    #@5
    .line 679
    return-void
.end method

.method public isRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 781
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->peekWallpaper()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 554
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 561
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 6
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 570
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 526
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    #@5
    .line 525
    return-void
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@5
    .line 547
    return-void
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    #@5
    .line 684
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@5
    .line 395
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@5
    .line 400
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    #@0
    .prologue
    .line 420
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V

    #@5
    .line 419
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    #@5
    .line 413
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@5
    .line 463
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 470
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@5
    .line 469
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    #@0
    .prologue
    .line 477
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    #@5
    .line 476
    return-void
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    #@5
    .line 406
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 426
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@5
    .line 425
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 457
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    move-object/from16 v7, p7

    #@a
    move-object/from16 v8, p8

    #@c
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@f
    .line 456
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    move-object v7, p7

    #@9
    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@c
    .line 433
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    move-object/from16 v7, p7

    #@a
    move-object/from16 v8, p8

    #@c
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@f
    .line 445
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialCode"    # I
    .param p8, "initialData"    # Ljava/lang/String;
    .param p9, "initialExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move-object/from16 v6, p6

    #@9
    move/from16 v7, p7

    #@b
    move-object/from16 v8, p8

    #@d
    move-object/from16 v9, p9

    #@f
    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@12
    .line 492
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
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

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object/from16 v5, p5

    #@8
    move-object/from16 v6, p6

    #@a
    move-object/from16 v7, p7

    #@c
    move/from16 v8, p8

    #@e
    move-object/from16 v9, p9

    #@10
    move-object/from16 v10, p10

    #@12
    invoke-virtual/range {v0 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@15
    .line 501
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    move-object/from16 v7, p7

    #@a
    move-object/from16 v8, p8

    #@c
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@f
    .line 483
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    #@5
    .line 508
    return-void
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 532
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@5
    .line 531
    return-void
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "scheduler"    # Landroid/os/Handler;
    .param p4, "initialCode"    # I
    .param p5, "initialData"    # Ljava/lang/String;
    .param p6, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 518
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@b
    .line 517
    return-void
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    move-object v7, p7

    #@9
    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@c
    .line 540
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    #@5
    .line 111
    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->setWallpaper(Landroid/graphics/Bitmap;)V

    #@5
    .line 313
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->setWallpaper(Ljava/io/InputStream;)V

    #@5
    .line 319
    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    #@5
    .line 363
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    #@5
    .line 368
    return-void
.end method

.method public startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@5
    .line 374
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@5
    .line 330
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    #@5
    .line 352
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@5
    .line 358
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@5
    .line 336
    return-void
.end method

.method public startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@5
    .line 342
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 6
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

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    #@a
    .line 381
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 7
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

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    #@b
    .line 389
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 581
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 586
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    #@0
    .prologue
    .line 616
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@5
    .line 615
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Landroid/content/ContextWrapper;->mBase:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@5
    .line 575
    return-void
.end method
