.class public final Lcom/android/server/wifi/WifiService;
.super Lcom/android/server/SystemService;
.source "WifiService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiService"


# instance fields
.field final mImpl:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 34
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl;

    #@5
    invoke-direct {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    #@a
    .line 32
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 45
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V

    #@9
    .line 44
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 39
    const-string/jumbo v0, "WifiService"

    #@3
    const-string/jumbo v1, "Registering wifi"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 40
    const-string/jumbo v0, "wifi"

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@11
    .line 38
    return-void
.end method
