.class public abstract Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
.super Ljava/lang/Object;
.source "CameraOfflineSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraOfflineSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CameraOfflineSessionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback$StatusCode;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_INTERNAL_ERROR:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onClosed(Landroid/hardware/camera2/CameraOfflineSession;)V
.end method

.method public abstract whitelist onError(Landroid/hardware/camera2/CameraOfflineSession;I)V
.end method

.method public abstract whitelist onIdle(Landroid/hardware/camera2/CameraOfflineSession;)V
.end method

.method public abstract whitelist onReady(Landroid/hardware/camera2/CameraOfflineSession;)V
.end method

.method public abstract whitelist onSwitchFailed(Landroid/hardware/camera2/CameraOfflineSession;)V
.end method
