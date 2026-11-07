.class public abstract Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .registers 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;

    .line 320
    return-void
.end method

.method public abstract whitelist onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V
.end method

.method public abstract whitelist onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V
.end method
