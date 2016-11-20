.class public Lcom/android/server/pm/ProtectedPackages;
.super Ljava/lang/Object;
.source "ProtectedPackages.java"


# instance fields
.field private mDeviceOwnerPackage:Ljava/lang/String;

.field private mDeviceOwnerUserId:I

.field private final mLock:Ljava/lang/Object;

.field private mProfileOwnerPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mLock:Ljava/lang/Object;

    #@a
    .line 30
    return-void
.end method

.method private hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 56
    if-nez p2, :cond_0

    #@4
    .line 57
    return v2

    #@5
    .line 59
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 61
    iget v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    #@e
    if-ne v0, p1, :cond_1

    #@10
    .line 62
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    #@12
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v0

    #@16
    .line 61
    if-eqz v0, :cond_1

    #@18
    monitor-exit v1

    #@19
    .line 63
    return v3

    #@1a
    .line 66
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 67
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    monitor-exit v1

    #@2b
    .line 68
    return v3

    #@2c
    :cond_2
    monitor-exit v1

    #@2d
    .line 72
    return v2

    #@2e
    .line 59
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method


# virtual methods
.method public canPackageBeWiped(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public canPackageStateBeChanged(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .locals 3
    .param p1, "deviceOwnerUserId"    # I
    .param p2, "deviceOwnerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 46
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 47
    :try_start_0
    iput p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    #@6
    .line 49
    const/16 v2, -0x2710

    #@8
    if-ne p1, v2, :cond_0

    #@a
    move-object p2, v0

    #@b
    .line 48
    .end local p2    # "deviceOwnerPackage":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    #@d
    .line 50
    if-nez p3, :cond_1

    #@f
    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 45
    return-void

    #@13
    .line 51
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v0

    #@17
    goto :goto_0

    #@18
    .line 46
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method
