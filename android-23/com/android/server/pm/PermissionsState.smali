.class public final Lcom/android/server/pm/PermissionsState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PermissionsState$PermissionData;,
        Lcom/android/server/pm/PermissionsState$PermissionState;
    }
.end annotation


# static fields
.field private static final NO_GIDS:[I

.field public static final PERMISSION_OPERATION_FAILURE:I = -0x1

.field public static final PERMISSION_OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_OPERATION_SUCCESS_GIDS_CHANGED:I = 0x1


# instance fields
.field private mGlobalGids:[I

.field private mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PermissionsState$PermissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [I

    #@3
    sput-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@5
    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@5
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@7
    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState;)V
    .locals 1
    .param p1, "prototype"    # Lcom/android/server/pm/PermissionsState;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@5
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@7
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    #@a
    .line 71
    return-void
.end method

.method private static appendInts([I[I)[I
    .locals 3
    .param p0, "current"    # [I
    .param p1, "added"    # [I

    #@0
    .prologue
    .line 521
    if-eqz p0, :cond_0

    #@2
    if-eqz p1, :cond_0

    #@4
    .line 522
    const/4 v1, 0x0

    #@5
    array-length v2, p1

    #@6
    :goto_0
    if-ge v1, v2, :cond_0

    #@8
    aget v0, p1, v1

    #@a
    .line 523
    .local v0, "guid":I
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@d
    move-result-object p0

    #@e
    .line 522
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 526
    .end local v0    # "guid":I
    :cond_0
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .locals 3
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 530
    const/4 v0, -0x1

    #@1
    if-eq p0, v0, :cond_0

    #@3
    if-gez p0, :cond_0

    #@5
    .line 531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Invalid userId:"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 529
    :cond_0
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 548
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 549
    return-void

    #@6
    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 552
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 553
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@15
    .line 547
    :cond_1
    return-void
.end method

.method private ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;
    .locals 3
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    #@0
    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 537
    new-instance v1, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@b
    .line 539
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@d
    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@15
    .line 540
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_1

    #@17
    .line 541
    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@19
    .end local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-direct {v0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    #@1c
    .line 542
    .restart local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1e
    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 544
    :cond_1
    return-object v0
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 436
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 437
    return-object v2

    #@6
    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@e
    .line 440
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_1

    #@10
    .line 441
    return-object v2

    #@11
    .line 443
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 447
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 449
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@5
    if-nez v5, :cond_0

    #@7
    .line 450
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object v5

    #@b
    return-object v5

    #@c
    .line 453
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    #@e
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 455
    .local v4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@16
    move-result v1

    #@17
    .line 456
    .local v1, "permissionCount":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1a
    .line 457
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@22
    .line 459
    .local v2, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    #@25
    move-result-object v3

    #@26
    .line 460
    .local v3, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v3, :cond_1

    #@28
    .line 461
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    .line 456
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 465
    .end local v2    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    .end local v3    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_2
    return-object v4
.end method

.method private grantPermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 6
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 469
    iget-object v4, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@3
    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 470
    return v5

    #@a
    .line 473
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    #@d
    move-result-object v4

    #@e
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    const/4 v0, 0x0

    #@15
    .line 474
    .local v0, "hasGids":Z
    :goto_0
    if-eqz v0, :cond_2

    #@17
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@1a
    move-result-object v2

    #@1b
    .line 476
    .local v2, "oldGids":[I
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    #@1e
    move-result-object v3

    #@1f
    .line 478
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->grant(I)Z

    #@22
    move-result v4

    #@23
    if-nez v4, :cond_3

    #@25
    .line 479
    return v5

    #@26
    .line 473
    .end local v0    # "hasGids":Z
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    const/4 v0, 0x1

    #@27
    .restart local v0    # "hasGids":Z
    goto :goto_0

    #@28
    .line 474
    :cond_2
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@2a
    .restart local v2    # "oldGids":[I
    goto :goto_1

    #@2b
    .line 482
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    if-eqz v0, :cond_4

    #@2d
    .line 483
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@30
    move-result-object v1

    #@31
    .line 484
    .local v1, "newGids":[I
    array-length v4, v2

    #@32
    array-length v5, v1

    #@33
    if-eq v4, v5, :cond_4

    #@35
    .line 485
    const/4 v4, 0x1

    #@36
    return v4

    #@37
    .line 489
    .end local v1    # "newGids":[I
    :cond_4
    const/4 v4, 0x0

    #@38
    return v4
.end method

.method private revokePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 7
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 493
    iget-object v4, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@3
    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    .line 494
    return v6

    #@a
    .line 497
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    #@d
    move-result-object v4

    #@e
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    const/4 v0, 0x0

    #@15
    .line 498
    .local v0, "hasGids":Z
    :goto_0
    if-eqz v0, :cond_2

    #@17
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@1a
    move-result-object v2

    #@1b
    .line 500
    .local v2, "oldGids":[I
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1d
    iget-object v5, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@1f
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@25
    .line 502
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->revoke(I)Z

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_3

    #@2b
    .line 503
    return v6

    #@2c
    .line 497
    .end local v0    # "hasGids":Z
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    const/4 v0, 0x1

    #@2d
    .restart local v0    # "hasGids":Z
    goto :goto_0

    #@2e
    .line 498
    :cond_2
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@30
    .restart local v2    # "oldGids":[I
    goto :goto_1

    #@31
    .line 506
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_4

    #@37
    .line 507
    iget-object v4, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@39
    invoke-direct {p0, v4}, Lcom/android/server/pm/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    #@3c
    .line 510
    :cond_4
    if-eqz v0, :cond_5

    #@3e
    .line 511
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@41
    move-result-object v1

    #@42
    .line 512
    .local v1, "newGids":[I
    array-length v4, v2

    #@43
    array-length v5, v1

    #@44
    if-eq v4, v5, :cond_5

    #@46
    .line 513
    const/4 v4, 0x1

    #@47
    return v4

    #@48
    .line 517
    .end local v1    # "newGids":[I
    :cond_5
    const/4 v4, 0x0

    #@49
    return v4
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 388
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 390
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@5
    .line 392
    .local v0, "gids":[I
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@7
    if-eqz v6, :cond_2

    #@9
    .line 393
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v4

    #@f
    .line 394
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@12
    .line 395
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/lang/String;

    #@1a
    .line 396
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    #@1d
    move-result v6

    #@1e
    if-nez v6, :cond_1

    #@20
    .line 394
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 399
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@2b
    .line 400
    .local v5, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v5, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->computeGids(I)[I

    #@2e
    move-result-object v2

    #@2f
    .line 401
    .local v2, "permGids":[I
    sget-object v6, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@31
    if-eq v2, v6, :cond_0

    #@33
    .line 402
    invoke-static {v0, v2}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    #@36
    move-result-object v0

    #@37
    goto :goto_1

    #@38
    .line 407
    .end local v1    # "i":I
    .end local v2    # "permGids":[I
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_2
    return-object v0
.end method

.method public computeGids([I)[I
    .locals 5
    .param p1, "userIds"    # [I

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@2
    .line 419
    .local v0, "gids":[I
    const/4 v3, 0x0

    #@3
    array-length v4, p1

    #@4
    :goto_0
    if-ge v3, v4, :cond_0

    #@6
    aget v2, p1, v3

    #@8
    .line 420
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@b
    move-result-object v1

    #@c
    .line 421
    .local v1, "userGids":[I
    invoke-static {v0, v1}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    #@f
    move-result-object v0

    #@10
    .line 419
    add-int/lit8 v3, v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 424
    .end local v1    # "userGids":[I
    .end local v2    # "userId":I
    :cond_0
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/pm/PermissionsState;)V
    .locals 6
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 92
    if-ne p1, p0, :cond_0

    #@3
    .line 93
    return-void

    #@4
    .line 95
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 96
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@a
    if-nez v4, :cond_3

    #@c
    .line 97
    iput-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@e
    .line 102
    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@10
    if-eqz v4, :cond_4

    #@12
    .line 103
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@14
    if-nez v4, :cond_2

    #@16
    .line 104
    new-instance v4, Landroid/util/ArrayMap;

    #@18
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    #@1b
    iput-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1d
    .line 106
    :cond_2
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@22
    move-result v2

    #@23
    .line 107
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    #@26
    .line 108
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@28
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/lang/String;

    #@2e
    .line 109
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@30
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@36
    .line 110
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@38
    new-instance v5, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@3a
    invoke-direct {v5, v3}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V

    #@3d
    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 107
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_1

    #@43
    .line 99
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "permissionCount":I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@45
    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    #@48
    goto :goto_0

    #@49
    .line 114
    :cond_4
    sget-object v4, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@4b
    iput-object v4, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@4d
    .line 115
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@4f
    sget-object v5, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@51
    if-eq v4, v5, :cond_5

    #@53
    .line 116
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@55
    .line 117
    iget-object v5, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@57
    array-length v5, v5

    #@58
    .line 116
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    #@5b
    move-result-object v4

    #@5c
    iput-object v4, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@5e
    .line 91
    :cond_5
    return-void
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 278
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getInstallPermissionStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 299
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/pm/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;

    #@3
    move-result-object v0

    #@4
    .line 321
    .local v0, "installPermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_0

    #@6
    .line 322
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 324
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    #@e
    move-result-object v1

    #@f
    .line 325
    .local v1, "runtimePermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v1, :cond_1

    #@11
    .line 326
    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 328
    :cond_1
    const/4 v2, 0x0

    #@17
    return v2
.end method

.method public getPermissions(I)Ljava/util/Set;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 247
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@5
    if-nez v4, :cond_0

    #@7
    .line 248
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@a
    move-result-object v4

    #@b
    return-object v4

    #@c
    .line 251
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    #@e
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@11
    .line 253
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@16
    move-result v2

    #@17
    .line 254
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@1a
    .line 255
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/lang/String;

    #@22
    .line 257
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 258
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    .line 261
    :cond_1
    const/4 v4, -0x1

    #@2c
    if-eq p1, v4, :cond_2

    #@2e
    .line 262
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_2

    #@34
    .line 263
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    .line 254
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 268
    .end local v1    # "permission":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 289
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 308
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 309
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public grantInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    #@0
    .prologue
    .line 130
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->grantPermission(Lcom/android/server/pm/BasePermission;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 155
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@4
    .line 156
    if-ne p2, v0, :cond_0

    #@6
    .line 157
    return v0

    #@7
    .line 159
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->grantPermission(Lcom/android/server/pm/BasePermission;I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 211
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@4
    .line 213
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 214
    return v1

    #@9
    .line 217
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@11
    .line 218
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-eqz v0, :cond_1

    #@13
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    #@16
    move-result v1

    #@17
    :cond_1
    return v1
.end method

.method public hasRequestedPermission(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 226
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 227
    return v3

    #@6
    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    #@9
    move-result v1

    #@a
    add-int/lit8 v0, v1, -0x1

    #@c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@e
    .line 230
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 231
    const/4 v1, 0x1

    #@1b
    return v1

    #@1c
    .line 229
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 234
    :cond_2
    return v3
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 188
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 431
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@2
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@4
    .line 432
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@7
    .line 430
    return-void
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    #@0
    .prologue
    .line 142
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->revokePermission(Lcom/android/server/pm/BasePermission;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 172
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@4
    .line 173
    if-ne p2, v0, :cond_0

    #@6
    .line 174
    return v0

    #@7
    .line 176
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->revokePermission(Lcom/android/server/pm/BasePermission;I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public setGlobalGids([I)V
    .locals 1
    .param p1, "globalGids"    # [I

    #@0
    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 82
    array-length v0, p1

    #@7
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@d
    .line 80
    :cond_0
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z
    .locals 5
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 341
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@4
    .line 343
    if-nez p4, :cond_0

    #@6
    if-eqz p3, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    .line 345
    .local v0, "mayChangeFlags":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@b
    if-nez v2, :cond_3

    #@d
    .line 346
    if-nez v0, :cond_2

    #@f
    .line 347
    return v4

    #@10
    .line 343
    .end local v0    # "mayChangeFlags":Z
    :cond_1
    const/4 v0, 0x0

    #@11
    .restart local v0    # "mayChangeFlags":Z
    goto :goto_0

    #@12
    .line 349
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    #@15
    .line 352
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@17
    iget-object v3, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@19
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@1f
    .line 353
    .local v1, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v1, :cond_5

    #@21
    .line 354
    if-nez v0, :cond_4

    #@23
    .line 355
    return v4

    #@24
    .line 357
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    #@27
    move-result-object v1

    #@28
    .line 360
    :cond_5
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    #@2b
    move-result v2

    #@2c
    return v2
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    #@0
    .prologue
    .line 365
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 367
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@5
    if-nez v4, :cond_0

    #@7
    .line 368
    const/4 v4, 0x0

    #@8
    return v4

    #@9
    .line 370
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 371
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v2

    #@10
    .line 372
    .local v2, "permissionCount":I
    const/4 v1, 0x0

    #@11
    .end local v0    # "changed":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@13
    .line 373
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@1b
    .line 374
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    #@1e
    move-result v4

    #@1f
    or-int/2addr v0, v4

    #@20
    .line 372
    .local v0, "changed":Z
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 376
    .end local v0    # "changed":Z
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    return v0
.end method
