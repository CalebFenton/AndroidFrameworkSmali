.class Lcom/android/server/pm/PackageManagerService$1;
.super Landroid/os/storage/StorageEventListener;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 2008
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 9
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2042
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 2043
    const-string/jumbo v3, "PackageManager"

    #@9
    const-string/jumbo v4, "Forgetting internal storage is probably a mistake; ignoring"

    #@c
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 2044
    return-void

    #@10
    .line 2048
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@12
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@14
    monitor-enter v4

    #@15
    .line 2049
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@17
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@19
    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    #@1c
    move-result-object v0

    #@1d
    .line 2050
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v2

    #@21
    .local v2, "ps$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@2d
    .line 2051
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    const-string/jumbo v3, "PackageManager"

    #@30
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "Destroying "

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    const-string/jumbo v6, " because volume was forgotten"

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 2052
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@52
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@54
    new-instance v6, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    #@56
    const/4 v7, 0x0

    #@57
    invoke-direct {v6, v7}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    #@5a
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    #@5d
    move-result-object v6

    #@5e
    .line 2053
    const/4 v7, 0x0

    #@5f
    const/4 v8, 0x2

    #@60
    .line 2052
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@63
    goto :goto_0

    #@64
    .line 2048
    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "ps$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@65
    monitor-exit v4

    #@66
    throw v3

    #@67
    .line 2056
    .restart local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v2    # "ps$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@69
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@6b
    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->onVolumeForgotten(Ljava/lang/String;)V

    #@6e
    .line 2057
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@70
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@72
    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->writeLPr()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    monitor-exit v4

    #@76
    .line 2041
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 2011
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@6
    if-ne v1, v3, :cond_0

    #@8
    .line 2012
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    #@a
    if-ne v1, v4, :cond_2

    #@c
    .line 2013
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 2017
    .local v0, "volumeUuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@12
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap35(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    #@15
    .line 2018
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@17
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap34(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    #@1a
    .line 2022
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1c
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    #@1e
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerService;->onPrivateVolumeMounted(Ljava/lang/String;)V

    #@21
    .line 2024
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@23
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap30(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    #@26
    .line 2031
    .end local v0    # "volumeUuid":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    #@28
    if-nez v1, :cond_1

    #@2a
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 2032
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    #@32
    if-ne v1, v4, :cond_3

    #@34
    .line 2033
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@36
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    #@39
    .line 2010
    :cond_1
    :goto_1
    return-void

    #@3a
    .line 2026
    :cond_2
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    #@3c
    if-ne v1, v5, :cond_0

    #@3e
    .line 2027
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@40
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap42(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    #@43
    goto :goto_0

    #@44
    .line 2034
    :cond_3
    iget v1, p1, Landroid/os/storage/VolumeInfo;->state:I

    #@46
    if-ne v1, v5, :cond_1

    #@48
    .line 2035
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4a
    invoke-virtual {v1, v2, v2}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    #@4d
    goto :goto_1
.end method
