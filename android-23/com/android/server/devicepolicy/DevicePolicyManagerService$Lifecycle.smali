.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 295
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@5
    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@a
    .line 293
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 305
    const/16 v0, 0x1e0

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 306
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@6
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->systemReady()V

    #@9
    .line 304
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 300
    const-string/jumbo v0, "device_policy"

    #@3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 299
    return-void
.end method
