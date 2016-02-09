.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightImpl;,
        Lcom/android/server/lights/LightsService$1;,
        Lcom/android/server/lights/LightsService$2;
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@5
    .line 31
    new-array v1, v4, [Lcom/android/server/lights/LightsService$LightImpl;

    #@7
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    #@9
    .line 137
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    #@b
    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    #@e
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    #@10
    .line 154
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    #@12
    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    #@15
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    #@17
    .line 125
    invoke-static {}, Lcom/android/server/lights/LightsService;->init_native()J

    #@1a
    move-result-wide v2

    #@1b
    iput-wide v2, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    #@1d
    .line 127
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@20
    .line 128
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    #@22
    new-instance v2, Lcom/android/server/lights/LightsService$LightImpl;

    #@24
    const/4 v3, 0x0

    #@25
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$LightImpl;)V

    #@28
    aput-object v2, v1, v0

    #@2a
    .line 127
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 122
    :cond_0
    return-void
.end method

.method private static native finalize_native(J)V
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
    .line 150
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    #@2
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->finalize_native(J)V

    #@5
    .line 151
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    #@8
    .line 149
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 134
    const-class v0, Lcom/android/server/lights/LightsManager;

    #@2
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@7
    .line 133
    return-void
.end method
