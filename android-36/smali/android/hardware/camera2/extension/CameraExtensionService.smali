.class public abstract Landroid/hardware/camera2/extension/CameraExtensionService;
.super Landroid/app/Service;
.source "CameraExtensionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;,
        Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraExtensionService"

.field private static blacklist mInitializeCb:Landroid/hardware/camera2/extension/IInitializeSessionCallback;

.field private static blacklist mLock:Ljava/lang/Object;


# instance fields
.field private blacklist mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/CameraExtensionService;)Landroid/hardware/camera2/extension/CameraUsageTracker;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/extension/CameraExtensionService;->mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Landroid/hardware/camera2/extension/CameraExtensionService;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/extension/CameraExtensionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmInitializeCb()Landroid/hardware/camera2/extension/IInitializeSessionCallback;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/extension/CameraExtensionService;->mInitializeCb:Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/extension/CameraExtensionService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmInitializeCb(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V
    .registers 1

    sput-object p0, Landroid/hardware/camera2/extension/CameraExtensionService;->mInitializeCb:Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/camera2/extension/CameraExtensionService;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/camera2/extension/CameraExtensionService;->mInitializeCb:Landroid/hardware/camera2/extension/IInitializeSessionCallback;

    return-void
.end method

.method protected constructor whitelist <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    new-instance v0, Landroid/hardware/camera2/extension/CameraExtensionService$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/extension/CameraExtensionService$1;-><init>(Landroid/hardware/camera2/extension/CameraExtensionService;)V

    iput-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 89
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService;->mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 95
    new-instance v0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/extension/CameraExtensionService$CameraTracker;-><init>(Landroid/hardware/camera2/extension/CameraExtensionService;Landroid/hardware/camera2/extension/CameraExtensionService-IA;)V

    iput-object v0, p0, Landroid/hardware/camera2/extension/CameraExtensionService;->mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

    .line 97
    :cond_c
    new-instance v0, Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/extension/CameraExtensionService$CameraExtensionServiceImpl;-><init>(Landroid/hardware/camera2/extension/CameraExtensionService;Landroid/hardware/camera2/extension/CameraExtensionService-IA;)V

    return-object v0
.end method

.method public abstract whitelist onInitializeAdvancedExtension(I)Landroid/hardware/camera2/extension/AdvancedExtender;
.end method

.method public abstract whitelist onRegisterClient(Landroid/os/IBinder;)Z
.end method

.method public abstract whitelist onUnregisterClient(Landroid/os/IBinder;)V
.end method
