.class public final Landroid/companion/virtual/camera/VirtualCamera;
.super Ljava/lang/Object;
.source "VirtualCamera.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method public constructor blacklist <init>(Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .registers 5
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/IVirtualDevice;

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 71
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mCameraId:Ljava/lang/String;

    .line 72
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/camera/VirtualCameraConfig;

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 95
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/camera/VirtualCamera;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 98
    goto :goto_c

    .line 96
    :catch_8
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public whitelist getConfig()Landroid/companion/virtual/camera/VirtualCameraConfig;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mCameraId:Ljava/lang/String;

    return-object v0
.end method
