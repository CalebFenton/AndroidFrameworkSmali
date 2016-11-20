.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$1;,
        Lcom/android/server/lights/LightsService$2;,
        Lcom/android/server/lights/LightsService$3;,
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mH:Landroid/os/Handler;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private mNativePointer:J

.field private final mService:Lcom/android/server/lights/LightsManager;

.field private mVrModeEnabled:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/lights/LightsService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mVrModeEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mVrModeEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/lights/LightsService;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@5
    .line 38
    new-array v1, v4, [Lcom/android/server/lights/LightsService$LightImpl;

    #@7
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    #@9
    .line 191
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    #@b
    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    #@e
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    #@10
    .line 215
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    #@12
    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    #@15
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    #@17
    .line 232
    new-instance v1, Lcom/android/server/lights/LightsService$3;

    #@19
    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    #@1c
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    #@1e
    .line 158
    invoke-static {}, Lcom/android/server/lights/LightsService;->init_native()J

    #@21
    move-result-wide v2

    #@22
    iput-wide v2, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    #@24
    .line 160
    const/4 v0, 0x0

    #@25
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@27
    .line 161
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    #@29
    new-instance v2, Lcom/android/server/lights/LightsService$LightImpl;

    #@2b
    const/4 v3, 0x0

    #@2c
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$LightImpl;)V

    #@2f
    aput-object v2, v1, v0

    #@31
    .line 160
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 155
    :cond_0
    return-void
.end method

.method private static native finalize_native(J)V
.end method

.method private getVrDisplayMode()I
    .locals 4

    #@0
    .prologue
    .line 184
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3
    move-result v0

    #@4
    .line 185
    .local v0, "currentUser":I
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v1

    #@c
    .line 186
    const-string/jumbo v2, "vr_display_mode"

    #@f
    .line 187
    const/4 v3, 0x0

    #@10
    .line 185
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@13
    move-result v1

    #@14
    return v1
.end method

.method private static native init_native()J
.end method

.method static native setLight_native(JIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    #@2
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->finalize_native(J)V

    #@5
    .line 229
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    #@8
    .line 227
    return-void
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 172
    const/16 v2, 0x1f4

    #@2
    if-ne p1, v2, :cond_0

    #@4
    .line 174
    const-string/jumbo v2, "vrmanager"

    #@7
    invoke-virtual {p0, v2}, Lcom/android/server/lights/LightsService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/service/vr/IVrManager;

    #@d
    .line 176
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    #@f
    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 171
    .end local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :cond_0
    :goto_0
    return-void

    #@13
    .line 177
    .restart local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_0
    move-exception v0

    #@14
    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LightsService"

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Failed to register VR mode state listener: "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 167
    const-class v0, Lcom/android/server/lights/LightsManager;

    #@2
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@7
    .line 166
    return-void
.end method
