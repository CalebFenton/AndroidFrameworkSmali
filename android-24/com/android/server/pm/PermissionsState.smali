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

.field private mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

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
    .line 63
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [I

    #@3
    sput-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@5
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@5
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@7
    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState;)V
    .locals 1
    .param p1, "prototype"    # Lcom/android/server/pm/PermissionsState;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@5
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@7
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    #@a
    .line 75
    return-void
.end method

.method private static appendInts([I[I)[I
    .locals 3
    .param p0, "current"    # [I
    .param p1, "added"    # [I

    #@0
    .prologue
    .line 569
    if-eqz p0, :cond_0

    #@2
    if-eqz p1, :cond_0

    #@4
    .line 570
    const/4 v1, 0x0

    #@5
    array-length v2, p1

    #@6
    :goto_0
    if-ge v1, v2, :cond_0

    #@8
    aget v0, p1, v1

    #@a
    .line 571
    .local v0, "guid":I
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    #@d
    move-result-object p0

    #@e
    .line 570
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 574
    .end local v0    # "guid":I
    :cond_0
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .locals 3
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 578
    const/4 v0, -0x1

    #@1
    if-eq p0, v0, :cond_0

    #@3
    if-gez p0, :cond_0

    #@5
    .line 579
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
    .line 577
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
    .line 596
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 597
    return-void

    #@6
    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 600
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 601
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@15
    .line 595
    :cond_1
    return-void
.end method

.method private ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;
    .locals 3
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    #@0
    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 585
    new-instance v1, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@b
    .line 587
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
    .line 588
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_1

    #@17
    .line 589
    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@19
    .end local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-direct {v0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    #@1c
    .line 590
    .restart local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1e
    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 592
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
    .line 484
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 485
    return-object v2

    #@6
    .line 487
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@e
    .line 488
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_1

    #@10
    .line 489
    return-object v2

    #@11
    .line 491
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
    .line 495
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 497
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@5
    if-nez v5, :cond_0

    #@7
    .line 498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object v5

    #@b
    return-object v5

    #@c
    .line 501
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    #@e
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 503
    .local v4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@16
    move-result v1

    #@17
    .line 504
    .local v1, "permissionCount":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1a
    .line 505
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@22
    .line 507
    .local v2, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    #@25
    move-result-object v3

    #@26
    .line 508
    .local v3, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v3, :cond_1

    #@28
    .line 509
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    .line 504
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 513
    .end local v2    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    .end local v3    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_2
    return-object v4
.end method

.method private grantPermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 8
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v7, -0x1

    #@3
    .line 517
    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@5
    invoke-virtual {p0, v6, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    #@8
    move-result v6

    #@9
    if-eqz v6, :cond_0

    #@b
    .line 518
    return v7

    #@c
    .line 521
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    #@f
    move-result-object v6

    #@10
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_1

    #@16
    move v0, v4

    #@17
    .line 522
    .local v0, "hasGids":Z
    :goto_0
    if-eqz v0, :cond_2

    #@19
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@1c
    move-result-object v2

    #@1d
    .line 524
    .local v2, "oldGids":[I
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    #@20
    move-result-object v3

    #@21
    .line 526
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->grant(I)Z

    #@24
    move-result v6

    #@25
    if-nez v6, :cond_3

    #@27
    .line 527
    return v7

    #@28
    .end local v0    # "hasGids":Z
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    move v0, v5

    #@29
    .line 521
    goto :goto_0

    #@2a
    .line 522
    .restart local v0    # "hasGids":Z
    :cond_2
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@2c
    .restart local v2    # "oldGids":[I
    goto :goto_1

    #@2d
    .line 530
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    if-eqz v0, :cond_4

    #@2f
    .line 531
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@32
    move-result-object v1

    #@33
    .line 532
    .local v1, "newGids":[I
    array-length v6, v2

    #@34
    array-length v7, v1

    #@35
    if-eq v6, v7, :cond_4

    #@37
    .line 533
    return v5

    #@38
    .line 537
    .end local v1    # "newGids":[I
    :cond_4
    return v4
.end method

.method private revokePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 9
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v8, -0x1

    #@3
    .line 541
    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@5
    invoke-virtual {p0, v6, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    #@8
    move-result v6

    #@9
    if-nez v6, :cond_0

    #@b
    .line 542
    return v8

    #@c
    .line 545
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    #@f
    move-result-object v6

    #@10
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_1

    #@16
    move v0, v4

    #@17
    .line 546
    .local v0, "hasGids":Z
    :goto_0
    if-eqz v0, :cond_2

    #@19
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@1c
    move-result-object v2

    #@1d
    .line 548
    .local v2, "oldGids":[I
    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1f
    iget-object v7, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@21
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@27
    .line 550
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->revoke(I)Z

    #@2a
    move-result v6

    #@2b
    if-nez v6, :cond_3

    #@2d
    .line 551
    return v8

    #@2e
    .end local v0    # "hasGids":Z
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    move v0, v5

    #@2f
    .line 545
    goto :goto_0

    #@30
    .line 546
    .restart local v0    # "hasGids":Z
    :cond_2
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@32
    .restart local v2    # "oldGids":[I
    goto :goto_1

    #@33
    .line 554
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_4

    #@39
    .line 555
    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@3b
    invoke-direct {p0, v6}, Lcom/android/server/pm/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    #@3e
    .line 558
    :cond_4
    if-eqz v0, :cond_5

    #@40
    .line 559
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@43
    move-result-object v1

    #@44
    .line 560
    .local v1, "newGids":[I
    array-length v6, v2

    #@45
    array-length v7, v1

    #@46
    if-eq v6, v7, :cond_5

    #@48
    .line 561
    return v5

    #@49
    .line 565
    .end local v1    # "newGids":[I
    :cond_5
    return v4
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 435
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 437
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@5
    .line 439
    .local v0, "gids":[I
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@7
    if-eqz v6, :cond_2

    #@9
    .line 440
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v4

    #@f
    .line 441
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@12
    .line 442
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/lang/String;

    #@1a
    .line 443
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    #@1d
    move-result v6

    #@1e
    if-nez v6, :cond_1

    #@20
    .line 441
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 446
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@2b
    .line 447
    .local v5, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v5, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->computeGids(I)[I

    #@2e
    move-result-object v2

    #@2f
    .line 448
    .local v2, "permGids":[I
    sget-object v6, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@31
    if-eq v2, v6, :cond_0

    #@33
    .line 449
    invoke-static {v0, v2}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    #@36
    move-result-object v0

    #@37
    goto :goto_1

    #@38
    .line 454
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
    .line 464
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@2
    .line 466
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
    .line 467
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    #@b
    move-result-object v1

    #@c
    .line 468
    .local v1, "userGids":[I
    invoke-static {v0, v1}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    #@f
    move-result-object v0

    #@10
    .line 466
    add-int/lit8 v3, v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 471
    .end local v1    # "userGids":[I
    .end local v2    # "userId":I
    :cond_0
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/pm/PermissionsState;)V
    .locals 9
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 96
    if-ne p1, p0, :cond_0

    #@3
    .line 97
    return-void

    #@4
    .line 99
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@6
    if-eqz v6, :cond_1

    #@8
    .line 100
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@a
    if-nez v6, :cond_3

    #@c
    .line 101
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@e
    .line 106
    :cond_1
    :goto_0
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@10
    if-eqz v6, :cond_4

    #@12
    .line 107
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@14
    if-nez v6, :cond_2

    #@16
    .line 108
    new-instance v6, Landroid/util/ArrayMap;

    #@18
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    #@1b
    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1d
    .line 110
    :cond_2
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@22
    move-result v2

    #@23
    .line 111
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    #@26
    .line 112
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@28
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/lang/String;

    #@2e
    .line 113
    .local v1, "name":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@30
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@36
    .line 114
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@38
    new-instance v7, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@3a
    invoke-direct {v7, v3}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V

    #@3d
    invoke-virtual {v6, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 111
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_1

    #@43
    .line 103
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "permissionCount":I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@45
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    #@48
    goto :goto_0

    #@49
    .line 118
    :cond_4
    sget-object v6, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@4b
    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@4d
    .line 119
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@4f
    sget-object v7, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@51
    if-eq v6, v7, :cond_5

    #@53
    .line 120
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@55
    .line 121
    iget-object v7, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@57
    array-length v7, v7

    #@58
    .line 120
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    #@5b
    move-result-object v6

    #@5c
    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@5e
    .line 124
    :cond_5
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@60
    if-eqz v6, :cond_6

    #@62
    .line 125
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@64
    if-nez v6, :cond_8

    #@66
    .line 126
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@68
    .line 131
    :cond_6
    :goto_2
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@6a
    if-eqz v6, :cond_9

    #@6c
    .line 132
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@6e
    if-nez v6, :cond_7

    #@70
    .line 133
    new-instance v6, Landroid/util/SparseBooleanArray;

    #@72
    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    #@75
    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@77
    .line 135
    :cond_7
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@79
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    #@7c
    move-result v5

    #@7d
    .line 136
    .local v5, "userCount":I
    const/4 v0, 0x0

    #@7e
    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v5, :cond_9

    #@80
    .line 137
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@82
    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@85
    move-result v4

    #@86
    .line 138
    .local v4, "reviewRequired":Z
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@88
    invoke-virtual {v6, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@8b
    .line 136
    add-int/lit8 v0, v0, 0x1

    #@8d
    goto :goto_3

    #@8e
    .line 128
    .end local v0    # "i":I
    .end local v4    # "reviewRequired":Z
    .end local v5    # "userCount":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@90
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    #@93
    goto :goto_2

    #@94
    .line 95
    :cond_9
    return-void
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 304
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
    .line 325
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
    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;

    #@3
    move-result-object v0

    #@4
    .line 347
    .local v0, "installPermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_0

    #@6
    .line 348
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 350
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    #@e
    move-result-object v1

    #@f
    .line 351
    .local v1, "runtimePermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v1, :cond_1

    #@11
    .line 352
    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 354
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
    .line 271
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 273
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@5
    if-nez v4, :cond_0

    #@7
    .line 274
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@a
    move-result-object v4

    #@b
    return-object v4

    #@c
    .line 277
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    #@e
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@11
    .line 279
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@16
    move-result v2

    #@17
    .line 280
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@1a
    .line 281
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/lang/String;

    #@22
    .line 283
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 284
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    .line 287
    :cond_1
    const/4 v4, -0x1

    #@2c
    if-eq p1, v4, :cond_2

    #@2e
    .line 288
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_2

    #@34
    .line 289
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 294
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
    .line 315
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 316
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
    .line 334
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 335
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
    .line 156
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
    .line 181
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@4
    .line 182
    if-ne p2, v0, :cond_0

    #@6
    .line 183
    return v0

    #@7
    .line 185
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
    .line 225
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
    .line 237
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@4
    .line 239
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 240
    return v1

    #@9
    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@11
    .line 244
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
    .line 252
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 253
    return v3

    #@6
    .line 255
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
    .line 256
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
    .line 257
    const/4 v1, 0x1

    #@1b
    return v1

    #@1c
    .line 255
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 260
    :cond_2
    return v3
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 214
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 215
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

.method public isPermissionReviewRequired(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 478
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    #@3
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@5
    .line 479
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@7
    .line 480
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@9
    .line 477
    return-void
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    #@0
    .prologue
    .line 168
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
    .line 198
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@4
    .line 199
    if-ne p2, v0, :cond_0

    #@6
    .line 200
    return v0

    #@7
    .line 202
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
    .line 85
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 86
    array-length v0, p1

    #@7
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    #@d
    .line 84
    :cond_0
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z
    .locals 9
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 367
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@5
    .line 369
    if-nez p4, :cond_0

    #@7
    if-eqz p3, :cond_1

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    .line 371
    .local v0, "mayChangeFlags":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@c
    if-nez v5, :cond_3

    #@e
    .line 372
    if-nez v0, :cond_2

    #@10
    .line 373
    return v7

    #@11
    .line 369
    .end local v0    # "mayChangeFlags":Z
    :cond_1
    const/4 v0, 0x0

    #@12
    .restart local v0    # "mayChangeFlags":Z
    goto :goto_0

    #@13
    .line 375
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    #@16
    .line 378
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@18
    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@1a
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@20
    .line 379
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v3, :cond_5

    #@22
    .line 380
    if-nez v0, :cond_4

    #@24
    .line 381
    return v7

    #@25
    .line 383
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    #@28
    move-result-object v3

    #@29
    .line 386
    :cond_5
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getFlags(I)I

    #@2c
    move-result v2

    #@2d
    .line 388
    .local v2, "oldFlags":I
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    #@30
    move-result v4

    #@31
    .line 389
    .local v4, "updated":Z
    if-eqz v4, :cond_7

    #@33
    .line 390
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getFlags(I)I

    #@36
    move-result v1

    #@37
    .line 391
    .local v1, "newFlags":I
    and-int/lit8 v5, v2, 0x40

    #@39
    if-nez v5, :cond_8

    #@3b
    .line 392
    and-int/lit8 v5, v1, 0x40

    #@3d
    if-eqz v5, :cond_8

    #@3f
    .line 393
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@41
    if-nez v5, :cond_6

    #@43
    .line 394
    new-instance v5, Landroid/util/SparseBooleanArray;

    #@45
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    #@48
    iput-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@4a
    .line 396
    :cond_6
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@4c
    const/4 v6, 0x1

    #@4d
    invoke-virtual {v5, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@50
    .line 407
    .end local v1    # "newFlags":I
    :cond_7
    :goto_1
    return v4

    #@51
    .line 397
    .restart local v1    # "newFlags":I
    :cond_8
    and-int/lit8 v5, v2, 0x40

    #@53
    if-eqz v5, :cond_7

    #@55
    .line 398
    and-int/lit8 v5, v1, 0x40

    #@57
    if-nez v5, :cond_7

    #@59
    .line 399
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@5b
    if-eqz v5, :cond_7

    #@5d
    .line 400
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@5f
    invoke-virtual {v5, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    #@62
    .line 401
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@64
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    #@67
    move-result v5

    #@68
    if-gtz v5, :cond_7

    #@6a
    .line 402
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    #@6c
    goto :goto_1
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    #@0
    .prologue
    .line 412
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    #@3
    .line 414
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@5
    if-nez v4, :cond_0

    #@7
    .line 415
    const/4 v4, 0x0

    #@8
    return v4

    #@9
    .line 417
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 418
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v2

    #@10
    .line 419
    .local v2, "permissionCount":I
    const/4 v1, 0x0

    #@11
    .end local v0    # "changed":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@13
    .line 420
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    #@1b
    .line 421
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    #@1e
    move-result v4

    #@1f
    or-int/2addr v0, v4

    #@20
    .line 419
    .local v0, "changed":Z
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 423
    .end local v0    # "changed":Z
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    return v0
.end method
