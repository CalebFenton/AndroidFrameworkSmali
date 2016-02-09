.class public final Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveScanWorkaround"
.end annotation


# static fields
.field private static final WIFI_DISPLAY_SCAN_INTERVAL:I = 0x3a98


# instance fields
.field private mActivelyScanningWifiDisplays:Z

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v2, 0x11

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 69
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@b
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@e
    throw v1

    #@f
    .line 72
    :cond_0
    const-string/jumbo v1, "display"

    #@12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/hardware/display/DisplayManager;

    #@18
    iput-object v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@1a
    .line 73
    iput-object p2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    #@1c
    .line 75
    :try_start_0
    const-class v1, Landroid/hardware/display/DisplayManager;

    #@1e
    const-string/jumbo v2, "scanWifiDisplays"

    #@21
    const/4 v3, 0x0

    #@22
    new-array v3, v3, [Ljava/lang/Class;

    #@24
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 67
    :goto_0
    return-void

    #@2b
    .line 76
    :catch_0
    move-exception v0

    #@2c
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 108
    iget-boolean v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 110
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;

    #@6
    iget-object v3, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@8
    const/4 v4, 0x0

    #@9
    new-array v4, v4, [Ljava/lang/Object;

    #@b
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 116
    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    #@10
    const-wide/16 v4, 0x3a98

    #@12
    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@15
    .line 107
    :cond_0
    return-void

    #@16
    .line 113
    :catch_0
    move-exception v1

    #@17
    .line 114
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "MediaRouterJellybeanMr1"

    #@1a
    const-string/jumbo v3, "Cannot scan for wifi displays."

    #@1d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0

    #@21
    .line 111
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@22
    .line 112
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "MediaRouterJellybeanMr1"

    #@25
    const-string/jumbo v3, "Cannot scan for wifi displays."

    #@28
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_0
.end method

.method public setActiveScanRouteTypes(I)V
    .locals 2
    .param p1, "routeTypes"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    and-int/lit8 v0, p1, 0x2

    #@3
    if-eqz v0, :cond_2

    #@5
    .line 88
    iget-boolean v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 89
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 90
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    #@10
    .line 91
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    #@12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@15
    .line 80
    :cond_0
    :goto_0
    return-void

    #@16
    .line 93
    :cond_1
    const-string/jumbo v0, "MediaRouterJellybeanMr1"

    #@19
    const-string/jumbo v1, "Cannot scan for wifi displays because the DisplayManager.scanWifiDisplays() method is not available on this device."

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    goto :goto_0

    #@20
    .line 99
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 100
    iput-boolean v1, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    #@26
    .line 101
    iget-object v0, p0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    #@28
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@2b
    goto :goto_0
.end method
