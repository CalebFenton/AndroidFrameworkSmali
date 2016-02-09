.class final Lcom/android/server/pm/PermissionsState$PermissionData;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionData"
.end annotation


# instance fields
.field private final mPerm:Lcom/android/server/pm/BasePermission;

.field private mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BasePermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/pm/BasePermission;

    #@0
    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 559
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@a
    .line 562
    iput-object p1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    #@c
    .line 561
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V
    .locals 6
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState$PermissionData;

    #@0
    .prologue
    .line 566
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    #@2
    invoke-direct {p0, v4}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    #@5
    .line 567
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v2

    #@b
    .line 568
    .local v2, "otherStateCount":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@e
    .line 569
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@13
    move-result v3

    #@14
    .line 570
    .local v3, "otherUserId":I
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@1c
    .line 571
    .local v1, "otherState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@1e
    new-instance v5, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@20
    invoke-direct {v5, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/PermissionsState$PermissionState;)V

    #@23
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@26
    .line 568
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 565
    .end local v1    # "otherState":Lcom/android/server/pm/PermissionsState$PermissionState;
    .end local v3    # "otherUserId":I
    :cond_0
    return-void
.end method

.method private isCompatibleUserId(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 681
    invoke-virtual {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    #@a
    move-result v1

    #@b
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermissionKey(I)Z

    #@e
    move-result v2

    #@f
    xor-int/2addr v1, v2

    #@10
    if-eqz v1, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    :cond_0
    return v0
.end method

.method private isInstallPermission()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 685
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v2

    #@8
    if-ne v2, v0, :cond_1

    #@a
    .line 686
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@c
    const/4 v3, -0x1

    #@d
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 685
    :goto_0
    return v0

    #@14
    :cond_0
    move v0, v1

    #@15
    .line 686
    goto :goto_0

    #@16
    :cond_1
    move v0, v1

    #@17
    .line 685
    goto :goto_0
.end method

.method public static isInstallPermissionKey(I)Z
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 648
    const/4 v0, -0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFlags(I)I
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@8
    .line 637
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_0

    #@a
    .line 638
    invoke-static {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 640
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@8
    return-object v0
.end method

.method public grant(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 593
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 594
    return v2

    #@9
    .line 597
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 598
    return v2

    #@10
    .line 601
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@18
    .line 602
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-nez v0, :cond_2

    #@1a
    .line 603
    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@1c
    .end local v0    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    #@1e
    iget-object v1, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@20
    invoke-direct {v0, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    #@23
    .line 604
    .restart local v0    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@25
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@28
    .line 607
    :cond_2
    invoke-static {v0, v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z

    #@2b
    .line 609
    return v3
.end method

.method public isDefault()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 644
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    if-gtz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isGranted(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 580
    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 581
    const/4 p1, -0x1

    #@7
    .line 584
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@f
    .line 585
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-nez v0, :cond_1

    #@11
    .line 586
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 589
    :cond_1
    invoke-static {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get1(Lcom/android/server/pm/PermissionsState$PermissionState;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public revoke(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 613
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 614
    return v2

    #@8
    .line 617
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 618
    return v2

    #@f
    .line 621
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@17
    .line 622
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    invoke-static {v0, v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z

    #@1a
    .line 624
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isDefault()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 625
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@25
    .line 628
    :cond_2
    const/4 v1, 0x1

    #@26
    return v1
.end method

.method public updateFlags(III)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 652
    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 653
    const/4 p1, -0x1

    #@9
    .line 656
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_1

    #@f
    .line 657
    return v4

    #@10
    .line 660
    :cond_1
    and-int v0, p3, p2

    #@12
    .line 662
    .local v0, "newFlags":I
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@1a
    .line 663
    .local v2, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v2, :cond_4

    #@1c
    .line 664
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    #@1f
    move-result v1

    #@20
    .line 665
    .local v1, "oldFlags":I
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    #@23
    move-result v5

    #@24
    not-int v6, p2

    #@25
    and-int/2addr v5, v6

    #@26
    or-int/2addr v5, v0

    #@27
    invoke-static {v2, v5}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I

    #@2a
    .line 666
    invoke-virtual {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->isDefault()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 667
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@32
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    #@35
    .line 669
    :cond_2
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    #@38
    move-result v5

    #@39
    if-eq v5, v1, :cond_3

    #@3b
    :goto_0
    return v3

    #@3c
    :cond_3
    move v3, v4

    #@3d
    goto :goto_0

    #@3e
    .line 670
    .end local v1    # "oldFlags":I
    :cond_4
    if-eqz v0, :cond_5

    #@40
    .line 671
    new-instance v2, Lcom/android/server/pm/PermissionsState$PermissionState;

    #@42
    .end local v2    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    #@44
    iget-object v4, v4, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    #@46
    invoke-direct {v2, v4}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    #@49
    .line 672
    .restart local v2    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    invoke-static {v2, v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I

    #@4c
    .line 673
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    #@4e
    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@51
    .line 674
    return v3

    #@52
    .line 677
    :cond_5
    return v4
.end method
