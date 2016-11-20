.class final Lcom/android/server/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;
    }
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2309
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2311
    const/4 v0, 0x0

    #@6
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@9
    .line 2312
    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    #@b
    .line 2310
    return-void
.end method

.method private isDefault([Z)Z
    .locals 5
    .param p1, "array"    # [Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2422
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2423
    return v4

    #@9
    .line 2425
    :cond_0
    array-length v3, p1

    #@a
    move v1, v2

    #@b
    :goto_0
    if-ge v1, v3, :cond_2

    #@d
    aget-boolean v0, p1, v1

    #@f
    .line 2426
    .local v0, "value":Z
    if-eqz v0, :cond_1

    #@11
    .line 2427
    return v2

    #@12
    .line 2425
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 2430
    .end local v0    # "value":Z
    :cond_2
    return v4
.end method


# virtual methods
.method synthetic -com_android_server_AppOpsService$ClientRestrictionState_lambda$1(I)V
    .locals 1
    .param p1, "changedCode"    # I

    #@0
    .prologue
    .line 2409
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/AppOpsService;->-wrap0(Lcom/android/server/AppOpsService;I)V

    #@5
    .line 0
    return-void
.end method

.method public binderDied()V
    .locals 9

    #@0
    .prologue
    .line 2397
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    #@2
    monitor-enter v7

    #@3
    .line 2398
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    #@5
    invoke-static {v6}, Lcom/android/server/AppOpsService;->-get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;

    #@8
    move-result-object v6

    #@9
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    #@b
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 2399
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    if-nez v6, :cond_0

    #@12
    monitor-exit v7

    #@13
    .line 2400
    return-void

    #@14
    .line 2402
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@19
    move-result v5

    #@1a
    .line 2403
    .local v5, "userCount":I
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    #@1d
    .line 2404
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, [Z

    #@25
    .line 2405
    .local v4, "restrictions":[Z
    array-length v3, v4

    #@26
    .line 2406
    .local v3, "restrictionCount":I
    const/4 v2, 0x0

    #@27
    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@29
    .line 2407
    aget-boolean v6, v4, v2

    #@2b
    if-eqz v6, :cond_1

    #@2d
    .line 2408
    move v0, v2

    #@2e
    .line 2409
    .local v0, "changedCode":I
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    #@30
    iget-object v6, v6, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    #@32
    new-instance v8, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;

    #@34
    invoke-direct {v8, p0, v0}, Lcom/android/server/AppOpsService$ClientRestrictionState$-void_binderDied__LambdaImpl0;-><init>(Lcom/android/server/AppOpsService$ClientRestrictionState;I)V

    #@37
    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3a
    .line 2406
    .end local v0    # "changedCode":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 2403
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 2413
    .end local v2    # "j":I
    .end local v3    # "restrictionCount":I
    .end local v4    # "restrictions":[Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v7

    #@44
    .line 2396
    return-void

    #@45
    .line 2397
    .end local v1    # "i":I
    .end local v5    # "userCount":I
    :catchall_0
    move-exception v6

    #@46
    monitor-exit v7

    #@47
    throw v6
.end method

.method public destroy()V
    .locals 2

    #@0
    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@6
    .line 2417
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "restriction"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2362
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2363
    return v2

    #@7
    .line 2365
    :cond_0
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [Z

    #@f
    .line 2366
    .local v1, "restrictions":[Z
    if-nez v1, :cond_1

    #@11
    .line 2367
    return v2

    #@12
    .line 2369
    :cond_1
    aget-boolean v4, v1, p1

    #@14
    if-nez v4, :cond_2

    #@16
    .line 2370
    return v2

    #@17
    .line 2372
    :cond_2
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@19
    if-nez v4, :cond_3

    #@1b
    .line 2373
    return v3

    #@1c
    .line 2375
    :cond_3
    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, [Ljava/lang/String;

    #@24
    .line 2376
    .local v0, "perUserExclusions":[Ljava/lang/String;
    if-nez v0, :cond_4

    #@26
    .line 2377
    return v3

    #@27
    .line 2379
    :cond_4
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_5

    #@2d
    :goto_0
    return v2

    #@2e
    :cond_5
    move v2, v3

    #@2f
    goto :goto_0
.end method

.method public isDefault()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2392
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v2

    #@c
    if-gtz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2383
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2384
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@a
    .line 2385
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@f
    move-result v0

    #@10
    if-gtz v0, :cond_0

    #@12
    .line 2386
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@14
    .line 2382
    :cond_0
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "excludedPackages"    # [Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2317
    const/4 v0, 0x0

    #@2
    .line 2319
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@4
    if-nez v3, :cond_0

    #@6
    if-eqz p2, :cond_0

    #@8
    .line 2320
    new-instance v3, Landroid/util/SparseArray;

    #@a
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@d
    iput-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@f
    .line 2323
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@11
    if-eqz v3, :cond_5

    #@13
    .line 2324
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, [Z

    #@1b
    .line 2325
    .local v2, "userRestrictions":[Z
    if-nez v2, :cond_1

    #@1d
    if-eqz p2, :cond_1

    #@1f
    .line 2326
    const/16 v3, 0x40

    #@21
    new-array v2, v3, [Z

    #@23
    .line 2327
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v3, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@28
    .line 2329
    :cond_1
    if-eqz v2, :cond_3

    #@2a
    aget-boolean v3, v2, p1

    #@2c
    if-eq v3, p2, :cond_3

    #@2e
    .line 2330
    aput-boolean p2, v2, p1

    #@30
    .line 2331
    if-nez p2, :cond_2

    #@32
    invoke-direct {p0, v2}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_2

    #@38
    .line 2332
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    #@3a
    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->remove(I)V

    #@3d
    .line 2333
    const/4 v2, 0x0

    #@3e
    .line 2335
    .end local v2    # "userRestrictions":[Z
    :cond_2
    const/4 v0, 0x1

    #@3f
    .line 2338
    :cond_3
    if-eqz v2, :cond_5

    #@41
    .line 2339
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@44
    move-result v1

    #@45
    .line 2340
    .local v1, "noExcludedPackages":Z
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@47
    if-nez v3, :cond_4

    #@49
    if-eqz v1, :cond_6

    #@4b
    .line 2343
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@4d
    if-eqz v3, :cond_5

    #@4f
    .line 2344
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@51
    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v3

    #@55
    check-cast v3, [Ljava/lang/Object;

    #@57
    .line 2343
    invoke-static {p3, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_7

    #@5d
    .line 2358
    .end local v1    # "noExcludedPackages":Z
    :cond_5
    :goto_1
    return v0

    #@5e
    .line 2341
    .restart local v1    # "noExcludedPackages":Z
    :cond_6
    new-instance v3, Landroid/util/SparseArray;

    #@60
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@63
    iput-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@65
    goto :goto_0

    #@66
    .line 2345
    :cond_7
    if-eqz v1, :cond_9

    #@68
    .line 2346
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@6a
    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->remove(I)V

    #@6d
    .line 2347
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@6f
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@72
    move-result v3

    #@73
    if-gtz v3, :cond_8

    #@75
    .line 2348
    iput-object v4, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@77
    .line 2353
    :cond_8
    :goto_2
    const/4 v0, 0x1

    #@78
    goto :goto_1

    #@79
    .line 2351
    :cond_9
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    #@7b
    invoke-virtual {v3, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@7e
    goto :goto_2
.end method
