.class public final Lcom/android/server/wifi/RttService;
.super Lcom/android/server/SystemService;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$RttServiceImpl;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "RttService"


# instance fields
.field mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 483
    const-string/jumbo v0, "RttService"

    #@6
    const-string/jumbo v1, "Creating rttmanager"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 481
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 496
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 497
    const-string/jumbo v0, "RttService"

    #@7
    const-string/jumbo v1, "Registering rttmanager"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 498
    iget-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@f
    if-nez v0, :cond_0

    #@11
    .line 499
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@13
    invoke-virtual {p0}, Lcom/android/server/wifi/RttService;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;-><init>(Lcom/android/server/wifi/RttService;Landroid/content/Context;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@1c
    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@1e
    invoke-virtual {p0}, Lcom/android/server/wifi/RttService;->getContext()Landroid/content/Context;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->startService(Landroid/content/Context;)V

    #@25
    .line 495
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 488
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/RttService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;-><init>(Lcom/android/server/wifi/RttService;Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@b
    .line 490
    const-string/jumbo v0, "RttService"

    #@e
    const-string/jumbo v1, "Starting rttmanager"

    #@11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 491
    const-string/jumbo v0, "rttmanager"

    #@17
    iget-object v1, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/RttService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1c
    .line 487
    return-void
.end method
