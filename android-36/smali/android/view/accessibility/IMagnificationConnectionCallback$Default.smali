.class public Landroid/view/accessibility/IMagnificationConnectionCallback$Default;
.super Ljava/lang/Object;
.source "IMagnificationConnectionCallback.java"

# interfaces
.implements Landroid/view/accessibility/IMagnificationConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IMagnificationConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAccessibilityActionPerformed(I)V
    .registers 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist onChangeMagnificationMode(II)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onMove(I)V
    .registers 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist onPerformScaleAction(IFZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "updatePersistence"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
