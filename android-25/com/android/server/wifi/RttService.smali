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
.field private final mHandlerThread:Landroid/os/HandlerThread;

.field mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 593
    new-instance v0, Landroid/os/HandlerThread;

    #@5
    const-string/jumbo v1, "WifiRttService"

    #@8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lcom/android/server/wifi/RttService;->mHandlerThread:Landroid/os/HandlerThread;

    #@d
    .line 594
    iget-object v0, p0, Lcom/android/server/wifi/RttService;->mHandlerThread:Landroid/os/HandlerThread;

    #@f
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@12
    .line 595
    const-string/jumbo v0, "RttService"

    #@15
    const-string/jumbo v1, "Creating rttmanager"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 591
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 608
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 609
    const-string/jumbo v0, "RttService"

    #@7
    const-string/jumbo v1, "Registering rttmanager"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 610
    iget-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@f
    if-nez v0, :cond_0

    #@11
    .line 611
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@13
    invoke-virtual {p0}, Lcom/android/server/wifi/RttService;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lcom/android/server/wifi/RttService;->mHandlerThread:Landroid/os/HandlerThread;

    #@19
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    #@20
    iput-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@22
    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@24
    invoke-virtual {v0}, Lcom/android/server/wifi/RttService$RttServiceImpl;->startService()V

    #@27
    .line 607
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 600
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/RttService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/server/wifi/RttService;->mHandlerThread:Landroid/os/HandlerThread;

    #@8
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    #@f
    iput-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@11
    .line 602
    const-string/jumbo v0, "RttService"

    #@14
    const-string/jumbo v1, "Starting rttmanager"

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 603
    const-string/jumbo v0, "rttmanager"

    #@1d
    iget-object v1, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@1f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/RttService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@22
    .line 599
    return-void
.end method
