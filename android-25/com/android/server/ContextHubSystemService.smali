.class Lcom/android/server/ContextHubSystemService;
.super Lcom/android/server/SystemService;
.source "ContextHubSystemService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubSystemService"


# instance fields
.field private final mContextHubService:Landroid/hardware/location/ContextHubService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 29
    new-instance v0, Landroid/hardware/location/ContextHubService;

    #@5
    invoke-direct {v0, p1}, Landroid/hardware/location/ContextHubService;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Landroid/hardware/location/ContextHubService;

    #@a
    .line 27
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 38
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 39
    const-string/jumbo v0, "ContextHubSystemService"

    #@7
    const-string/jumbo v1, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 40
    const-string/jumbo v0, "contexthub_service"

    #@10
    iget-object v1, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Landroid/hardware/location/ContextHubService;

    #@12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/ContextHubSystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@15
    .line 37
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    #@0
    .prologue
    .line 33
    return-void
.end method
