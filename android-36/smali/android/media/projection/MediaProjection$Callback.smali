.class public abstract Landroid/media/projection/MediaProjection$Callback;
.super Ljava/lang/Object;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCapturedContentResize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 402
    return-void
.end method

.method public whitelist onCapturedContentVisibilityChanged(Z)V
    .registers 2
    .param p1, "isVisible"    # Z

    .line 430
    return-void
.end method

.method public whitelist onStop()V
    .registers 1

    .line 368
    return-void
.end method
