.class public Landroid/ondevicepersonalization/OnDevicePersonalizationSystemServiceManager;
.super Ljava/lang/Object;
.source "OnDevicePersonalizationSystemServiceManager.java"


# static fields
.field public static final blacklist ON_DEVICE_PERSONALIZATION_SYSTEM_SERVICE:Ljava/lang/String; = "ondevicepersonalization_system_service"


# instance fields
.field private final blacklist mService:Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemService;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemService;

    move-result-object v0

    iput-object v0, p0, Landroid/ondevicepersonalization/OnDevicePersonalizationSystemServiceManager;->mService:Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemService;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getService()Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemService;
    .registers 2

    .line 40
    iget-object v0, p0, Landroid/ondevicepersonalization/OnDevicePersonalizationSystemServiceManager;->mService:Landroid/ondevicepersonalization/IOnDevicePersonalizationSystemService;

    return-object v0
.end method
