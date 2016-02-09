.class public Lcom/android/server/notification/ManagedServices$UserProfiles;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserProfiles"
.end annotation


# instance fields
.field private final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 692
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    #@a
    .line 690
    return-void
.end method


# virtual methods
.method public getCurrentProfileIds()[I
    .locals 5

    #@0
    .prologue
    .line 709
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    #@2
    monitor-enter v4

    #@3
    .line 710
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v3

    #@9
    new-array v2, v3, [I

    #@b
    .line 711
    .local v2, "users":[I
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@10
    move-result v0

    #@11
    .line 712
    .local v0, "N":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@14
    .line 713
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@19
    move-result v3

    #@1a
    aput v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 712
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    :cond_0
    monitor-exit v4

    #@20
    .line 715
    return-object v2

    #@21
    .line 709
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "users":[I
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v4

    #@23
    throw v3
.end method

.method public isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 720
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    monitor-exit v1

    #@d
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0

    #@10
    .line 720
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public updateCache(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 695
    const-string/jumbo v5, "user"

    #@3
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Landroid/os/UserManager;

    #@9
    .line 696
    .local v4, "userManager":Landroid/os/UserManager;
    if-eqz v4, :cond_1

    #@b
    .line 697
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@e
    move-result v0

    #@f
    .line 698
    .local v0, "currentUserId":I
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    .line 699
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    #@15
    monitor-enter v6

    #@16
    .line 700
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    #@1b
    .line 701
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/content/pm/UserInfo;

    #@2b
    .line 702
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    #@2d
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    #@2f
    invoke-virtual {v5, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 699
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@34
    monitor-exit v6

    #@35
    throw v5

    #@36
    .restart local v3    # "user$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v6

    #@37
    .line 694
    .end local v0    # "currentUserId":I
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
