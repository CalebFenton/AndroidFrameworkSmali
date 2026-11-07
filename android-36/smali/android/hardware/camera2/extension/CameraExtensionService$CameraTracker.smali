.class final Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;
.super Ljava/lang/Object;
.source "CameraExtensionService.java"

# interfaces
.implements Landroid/hardware/camera2/extension/CameraUsageTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/CameraExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraTracker"
.end annotation


# instance fields
.field private final blacklist mAppOpsService:Landroid/app/AppOpsManager;

.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I

.field final synthetic blacklist this$0:Landroid/hardware/camera2/extension/CameraExtensionService;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/extension/CameraExtensionService;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-virtual {p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAppOpsService:Landroid/app/AppOpsManager;

    .line 54
    iget-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-virtual {p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mPackageName:Ljava/lang/String;

    .line 55
    iget-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-virtual {p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAttributionTag:Ljava/lang/String;

    .line 56
    iget-object p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->this$0:Landroid/hardware/camera2/extension/CameraExtensionService;

    invoke-virtual {p1}, Landroid/hardware/camera2/extension/CameraExtensionService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mUid:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/CameraExtensionService;Landroid/hardware/camera2/extension/CameraExtensionService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;-><init>(Landroid/hardware/camera2/extension/CameraExtensionService;)V

    return-void
.end method


# virtual methods
.method public blacklist finishCameraOperation()V
    .registers 6

    .line 68
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAppOpsService:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_11

    .line 69
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAppOpsService:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mUid:I

    iget-object v2, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAttributionTag:Ljava/lang/String;

    const-string v4, "android:camera"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_11
    return-void
.end method

.method public blacklist startCameraOperation()V
    .registers 8

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAppOpsService:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_13

    .line 61
    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAppOpsService:Landroid/app/AppOpsManager;

    iget v3, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mUid:I

    iget-object v4, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;->mAttributionTag:Ljava/lang/String;

    const-string v6, "Camera extensions"

    const-string v2, "android:camera"

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_13
    return-void
.end method
