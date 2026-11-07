.class public interface abstract Landroid/hardware/display/DisplayManager$DisplayListener;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayListener"
.end annotation


# virtual methods
.method public abstract whitelist onDisplayAdded(I)V
.end method

.method public abstract whitelist onDisplayChanged(I)V
.end method

.method public blacklist onDisplayConnected(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2025
    return-void
.end method

.method public blacklist onDisplayDisconnected(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2035
    return-void
.end method

.method public abstract whitelist onDisplayRemoved(I)V
.end method
