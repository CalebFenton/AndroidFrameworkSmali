.class Lcom/android/server/pm/PackageManagerService$PackageFreezer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageFreezer"
.end annotation


# instance fields
.field private final mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageName:Ljava/lang/String;

.field private final mWeFroze:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 20084
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 20075
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    .line 20076
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@13
    .line 20085
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    #@15
    .line 20086
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    #@17
    .line 20087
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    #@1a
    .line 20088
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@1c
    const-string/jumbo v1, "close"

    #@1f
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@22
    .line 20084
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "killReason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 20091
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 20075
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@7
    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@a
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    .line 20076
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@f
    move-result-object v4

    #@10
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@12
    .line 20092
    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@14
    monitor-enter v5

    #@15
    .line 20093
    :try_start_0
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    #@17
    .line 20094
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    #@19
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    #@1b
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1e
    move-result v4

    #@1f
    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    #@21
    .line 20096
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@23
    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@25
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    #@27
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@2d
    .line 20097
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_0

    #@2f
    .line 20098
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@31
    iget v6, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    #@33
    invoke-static {p1, v4, v6, p3, p4}, Lcom/android/server/pm/PackageManagerService;->-wrap26(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IILjava/lang/String;)V

    #@36
    .line 20101
    :cond_0
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@38
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Landroid/content/pm/PackageParser$Package;

    #@3e
    .line 20102
    .local v2, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_1

    #@40
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@42
    if-eqz v4, :cond_1

    #@44
    .line 20103
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v0

    #@4a
    .line 20104
    .local v0, "N":I
    new-array v4, v0, [Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    #@4c
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    #@4e
    .line 20105
    const/4 v1, 0x0

    #@4f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@51
    .line 20106
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    #@53
    new-instance v7, Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    #@55
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5a
    move-result-object v4

    #@5b
    check-cast v4, Landroid/content/pm/PackageParser$Package;

    #@5d
    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@5f
    invoke-direct {v7, p1, v4, p3, p4}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    #@62
    aput-object v7, v6, v1

    #@64
    .line 20105
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_0

    #@67
    .line 20110
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x0

    #@68
    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6a
    :cond_2
    monitor-exit v5

    #@6b
    .line 20113
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@6d
    const-string/jumbo v5, "close"

    #@70
    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@73
    .line 20091
    return-void

    #@74
    .line 20092
    .end local v2    # "p":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v4

    #@75
    monitor-exit v5

    #@76
    throw v4
.end method


# virtual methods
.method public close()V
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 20128
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@3
    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    #@6
    .line 20129
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    const/4 v3, 0x1

    #@9
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 20130
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@11
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@13
    monitor-enter v2

    #@14
    .line 20131
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 20132
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1a
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    #@1c
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    #@1e
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@21
    .line 20135
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 20136
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    #@27
    array-length v4, v3

    #@28
    :goto_0
    if-ge v1, v4, :cond_1

    #@2a
    aget-object v0, v3, v1

    #@2c
    .line 20137
    .local v0, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 20136
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :cond_1
    monitor-exit v2

    #@33
    .line 20127
    :cond_2
    return-void

    #@34
    .line 20130
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 20119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 20120
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 20122
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 20117
    return-void

    #@c
    .line 20121
    :catchall_0
    move-exception v0

    #@d
    .line 20122
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 20121
    throw v0
.end method
