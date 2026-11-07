.class Landroid/permission/PermissionControllerService$1;
.super Landroid/permission/IPermissionController$Stub;
.source "PermissionControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/permission/PermissionControllerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/permission/PermissionControllerService;


# direct methods
.method constructor blacklist <init>(Landroid/permission/PermissionControllerService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/permission/PermissionControllerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 455
    iput-object p1, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-direct {p0}, Landroid/permission/IPermissionController$Stub;-><init>()V

    return-void
.end method

.method private varargs blacklist enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V
    .registers 6
    .param p1, "requiredPermissions"    # [Ljava/lang/String;

    .line 504
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    .line 505
    .local v2, "requiredPermission":Ljava/lang/String;
    iget-object v3, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-virtual {v3, v2}, Landroid/permission/PermissionControllerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    .line 507
    return-void

    .line 504
    .end local v2    # "requiredPermission":Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 511
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At lest one of the following permissions is required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 512
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$grantOrUpgradeDefaultRuntimePermissions$2(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2
    .param p0, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 649
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$revokeRuntimePermissions$0(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "perms"    # Ljava/util/List;

    .line 489
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string/jumbo v0, "permissions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 491
    return-void
.end method

.method static synthetic blacklist lambda$revokeRuntimePermissions$1(Lcom/android/internal/infra/AndroidFuture;Ljava/util/Map;)V
    .registers 3
    .param p0, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "revoked"    # Ljava/util/Map;

    .line 488
    new-instance v0, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p1, v0}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 493
    return-void
.end method

.method static synthetic blacklist lambda$revokeSelfPermissionsOnKill$4(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2
    .param p0, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 777
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$updateUserSensitiveForApp$3(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2
    .param p0, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 660
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 558
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v1, "android.permission.RESTORE_RUNTIME_PERMISSIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/permission/PermissionControllerService;->onApplyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 566
    return-void
.end method

.method public blacklist countPermissionApps(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p2, "flags"    # I
    .param p3, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/internal/infra/AndroidFuture;",
            ")V"
        }
    .end annotation

    .line 599
    .local p1, "permissionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "permissionNames"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 600
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 601
    const-string v0, "callback"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/permission/PermissionControllerService;->onCountPermissionApps(Ljava/util/List;ILjava/util/function/IntConsumer;)V

    .line 606
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 677
    const-string v0, "fd"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string/jumbo v0, "writer"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    # invokes: Landroid/permission/PermissionControllerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Landroid/permission/PermissionControllerService;->access$000(Landroid/permission/PermissionControllerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public blacklist getAppPermissions(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 570
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v0, "callback"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerService;->onGetAppPermissions(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 576
    return-void
.end method

.method public blacklist getGroupOfPlatformPermission(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "permissionGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 723
    .local p2, "callback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    .line 726
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 725
    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerService;->onGetGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/function/Consumer;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 729
    goto :goto_18

    .line 727
    :catchall_14
    move-exception v0

    .line 728
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 730
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_18
    return-void
.end method

.method public blacklist getHibernationEligibility(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 750
    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    const-string v0, "android.permission.MANAGE_APP_HIBERNATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    .line 756
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 755
    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerService;->onGetHibernationEligibility(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 759
    goto :goto_1e

    .line 757
    :catchall_1a
    move-exception v0

    .line 758
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 760
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1e
    return-void
.end method

.method public blacklist getPermissionUsages(ZJLcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .param p1, "countSystem"    # Z
    .param p2, "numMillis"    # J
    .param p4, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 611
    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 612
    const-string v0, "callback"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p4}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/permission/PermissionControllerService;->onGetPermissionUsages(ZJLjava/util/function/Consumer;)V

    .line 617
    return-void
.end method

.method public blacklist getPlatformPermissionsForGroup(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 709
    .local p2, "callback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    .line 712
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 711
    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerService;->onGetPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/function/Consumer;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 715
    goto :goto_18

    .line 713
    :catchall_14
    move-exception v0

    .line 714
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 716
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_18
    return-void
.end method

.method public blacklist getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .param p1, "deviceProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 690
    .local p2, "callback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 691
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v0, "android.permission.MANAGE_COMPANION_DEVICES"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    .line 698
    invoke-virtual {v0, p1}, Landroid/permission/PermissionControllerService;->getPrivilegesDescriptionStringForProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 701
    goto :goto_1d

    .line 699
    :catchall_19
    move-exception v0

    .line 700
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 702
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1d
    return-void
.end method

.method public blacklist getRuntimePermissionBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pipe"    # Landroid/os/ParcelFileDescriptor;

    .line 519
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 524
    :try_start_f
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_43
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_14} :catch_38

    .line 525
    .local v0, "backup":Ljava/io/OutputStream;
    :try_start_14
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 526
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v0, v3}, Landroid/permission/PermissionControllerService;->onGetRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/OutputStream;Ljava/lang/Runnable;)V

    .line 527
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_2e

    .line 528
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_43
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_38

    goto :goto_4d

    .line 524
    :catchall_2e
    move-exception v1

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    :try_start_34
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/permission/PermissionControllerService$1;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "pipe":Landroid/os/ParcelFileDescriptor;
    :goto_37
    throw v1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_43
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_38} :catch_38

    .line 530
    .end local v0    # "backup":Ljava/io/OutputStream;
    .restart local p0    # "this":Landroid/permission/PermissionControllerService$1;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "pipe":Landroid/os/ParcelFileDescriptor;
    :catch_38
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRuntimePermissionBackup timed out"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 528
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_43
    move-exception v0

    .line 529
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not open pipe to write backup to"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4d
    nop

    .line 533
    :goto_4e
    return-void
.end method

.method public blacklist getUnusedAppCount(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 735
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v0, "android.permission.MANAGE_APP_HIBERNATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerService;->onGetUnusedAppCount(Ljava/util/function/IntConsumer;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 743
    goto :goto_1e

    .line 741
    :catchall_1a
    move-exception v0

    .line 742
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 744
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1e
    return-void
.end method

.method public blacklist grantOrUpgradeDefaultRuntimePermissions(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 644
    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerService;->onGrantOrUpgradeDefaultRuntimePermissions(Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method

.method public blacklist notifyOneTimePermissionSessionTimeout(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .line 668
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 670
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 672
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-virtual {v0, p1, p2}, Landroid/permission/PermissionControllerService;->onOneTimePermissionSessionTimeout(Ljava/lang/String;I)V

    .line 673
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 580
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string/jumbo v0, "permissionName"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 587
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    .line 588
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 587
    invoke-virtual {v1, p1, p2, v2}, Landroid/permission/PermissionControllerService;->onRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 590
    :try_start_28
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 593
    goto :goto_37

    .line 591
    :catch_2c
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "revokeRuntimePermission timed out"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_37
    return-void
.end method

.method public blacklist revokeRuntimePermissions(Landroid/os/Bundle;ZILjava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 13
    .param p1, "bundleizedRequest"    # Landroid/os/Bundle;
    .param p2, "doDryRun"    # Z
    .param p3, "reason"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 460
    const-string v0, "bundleizedRequest"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v0

    .line 465
    .local v2, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 466
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    nop

    .line 469
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 470
    .local v3, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "permissions"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 472
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_19

    .line 475
    :cond_37
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 480
    :try_start_40
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 481
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/permission/PermissionControllerService$1;->getCallingUid()I

    move-result v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_56

    const/4 v1, 0x1

    :cond_56
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_59} :catch_68

    .line 484
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 486
    iget-object v1, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    new-instance v6, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda2;

    invoke-direct {v6, p5}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p2    # "doDryRun":Z
    .end local p3    # "reason":I
    .end local p4    # "callerPackageName":Ljava/lang/String;
    .local v3, "doDryRun":Z
    .local v4, "reason":I
    .local v5, "callerPackageName":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionControllerService;->onRevokeRuntimePermissions(Ljava/util/Map;ZILjava/lang/String;Ljava/util/function/Consumer;)V

    .line 494
    return-void

    .line 482
    .end local v3    # "doDryRun":Z
    .end local v4    # "reason":I
    .end local v5    # "callerPackageName":Ljava/lang/String;
    .restart local p2    # "doDryRun":Z
    .restart local p3    # "reason":I
    .restart local p4    # "callerPackageName":Ljava/lang/String;
    :catch_68
    move-exception v0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object p2, v0

    .line 483
    .end local p3    # "reason":I
    .end local p4    # "callerPackageName":Ljava/lang/String;
    .restart local v3    # "doDryRun":Z
    .restart local v4    # "reason":I
    .restart local v5    # "callerPackageName":Ljava/lang/String;
    .local p2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance p3, Ljava/lang/RuntimeException;

    invoke-direct {p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p3
.end method

.method public blacklist revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "callback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/internal/infra/AndroidFuture;",
            ")V"
        }
    .end annotation

    .line 767
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 770
    .local v0, "callingUid":I
    iget-object v1, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-virtual {v1}, Landroid/permission/PermissionControllerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 771
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 770
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result v1

    .line 772
    .local v1, "targetPackageUid":I
    if-eq v1, v0, :cond_22

    .line 773
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 776
    :cond_22
    iget-object v2, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    new-instance v3, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda5;

    invoke-direct {v3, p4}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v2, p1, p2, p3, v3}, Landroid/permission/PermissionControllerService;->onRevokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;ILjava/lang/Runnable;)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    .line 780
    .end local v0    # "callingUid":I
    .end local v1    # "targetPackageUid":I
    goto :goto_31

    .line 778
    :catchall_2d
    move-exception v0

    .line 779
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p4, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 781
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_31
    return-void
.end method

.method public blacklist setRuntimePermissionGrantStateByDeviceAdminFromParams(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/permission/AdminPermissionControlParams;
    .param p3, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 623
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 624
    invoke-virtual {p2}, Landroid/permission/AdminPermissionControlParams;->getGrantState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 625
    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 629
    :cond_13
    invoke-virtual {p2}, Landroid/permission/AdminPermissionControlParams;->getGrantState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 630
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 634
    :cond_23
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 636
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    .line 639
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 638
    invoke-virtual {v0, p1, p2, v1}, Landroid/permission/PermissionControllerService;->onSetRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Ljava/util/function/Consumer;)V

    .line 640
    return-void
.end method

.method public blacklist stageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pipe"    # Landroid/os/ParcelFileDescriptor;

    .line 538
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v1, "android.permission.RESTORE_RUNTIME_PERMISSIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 544
    :try_start_11
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_46
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_3a

    .line 545
    .local v0, "backup":Ljava/io/InputStream;
    :try_start_16
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 546
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v0, v3}, Landroid/permission/PermissionControllerService;->onStageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/InputStream;Ljava/lang/Runnable;)V

    .line 547
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_30

    .line 548
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_46
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_3a

    goto :goto_50

    .line 544
    :catchall_30
    move-exception v1

    :try_start_31
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v2

    :try_start_36
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/permission/PermissionControllerService$1;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "pipe":Landroid/os/ParcelFileDescriptor;
    :goto_39
    throw v1
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_46
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3a} :catch_3a

    .line 550
    .end local v0    # "backup":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/permission/PermissionControllerService$1;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "pipe":Landroid/os/ParcelFileDescriptor;
    :catch_3a
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "restoreRuntimePermissionBackup timed out"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 548
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_46
    move-exception v0

    .line 549
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not open pipe to read backup from"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    .end local v0    # "e":Ljava/io/IOException;
    :goto_50
    nop

    .line 553
    :goto_51
    return-void
.end method

.method public blacklist updateUserSensitiveForApp(ILcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "callback"    # Lcom/android/internal/infra/AndroidFuture;

    .line 654
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    .line 660
    :try_start_e
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerService;->onUpdateUserSensitivePermissionFlags(ILjava/lang/Runnable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_19

    .line 663
    goto :goto_1d

    .line 661
    :catch_19
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 664
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method
