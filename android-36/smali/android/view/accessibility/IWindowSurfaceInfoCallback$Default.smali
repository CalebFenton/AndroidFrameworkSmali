.class public Landroid/view/accessibility/IWindowSurfaceInfoCallback$Default;
.super Ljava/lang/Object;
.source "IWindowSurfaceInfoCallback.java"

# interfaces
.implements Landroid/view/accessibility/IWindowSurfaceInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IWindowSurfaceInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist provideWindowSurfaceInfo(IILandroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "windowFlags"    # I
    .param p2, "processUid"    # I
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
