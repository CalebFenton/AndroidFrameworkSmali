.class Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;
.super Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;
.source "CameraExtensionCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializeSessionHandler"
.end annotation


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 575
    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;-><init>()V

    .line 576
    iput-object p2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;->mContext:Landroid/content/Context;

    .line 577
    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .registers 3

    .line 614
    const-string v0, "CameraExtensionManagerGlobal"

    const-string v1, "Failed to initialize proxy service session!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 11

    .line 583
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "callingUidPackages":[Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 586
    const v2, 0x1040275

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "fallbackPackageName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_81

    .line 589
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 590
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 591
    const-string v2, "android.permission.SYSTEM_CAMERA"

    const-string v3, "android.permission.CAMERA"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "cameraPermissions":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 597
    .local v3, "allPermissionsGranted":Z
    array-length v4, v2

    const/4 v5, 0x0

    :goto_3e
    if-ge v5, v4, :cond_7c

    aget-object v6, v2, v5

    .line 598
    .local v6, "permission":Ljava/lang/String;
    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;->mContext:Landroid/content/Context;

    .line 599
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 598
    invoke-virtual {v7, v6, v8, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    .line 600
    .local v7, "permissionResult":I
    if-eqz v7, :cond_79

    .line 601
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " permission not granted for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", permission check result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CameraExtensionManagerGlobal"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v3, 0x0

    .line 597
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "permissionResult":I
    :cond_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 608
    :cond_7c
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-static {v4, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->-$$Nest$fputmPermissionForFallbackEnabled(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;Z)V

    .line 610
    .end local v2    # "cameraPermissions":[Ljava/lang/String;
    .end local v3    # "allPermissionsGranted":Z
    :cond_81
    return-void
.end method
