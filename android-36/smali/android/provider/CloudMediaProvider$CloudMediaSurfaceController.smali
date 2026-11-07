.class public abstract Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;
.super Ljava/lang/Object;
.source "CloudMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CloudMediaSurfaceController"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onConfigChange(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onDestroy()V
.end method

.method public abstract whitelist onMediaPause(I)V
.end method

.method public abstract whitelist onMediaPlay(I)V
.end method

.method public abstract whitelist onMediaSeekTo(IJ)V
.end method

.method public abstract whitelist onPlayerCreate()V
.end method

.method public abstract whitelist onPlayerRelease()V
.end method

.method public abstract whitelist onSurfaceChanged(IIII)V
.end method

.method public abstract whitelist onSurfaceCreated(ILandroid/view/Surface;Ljava/lang/String;)V
.end method

.method public abstract whitelist onSurfaceDestroyed(I)V
.end method
