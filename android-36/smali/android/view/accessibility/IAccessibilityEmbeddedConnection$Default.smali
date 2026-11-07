.class public Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Default;
.super Ljava/lang/Object;
.source "IAccessibilityEmbeddedConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityEmbeddedConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
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

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist associateEmbeddedHierarchy(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .registers 4
    .param p1, "hostToken"    # Landroid/os/IBinder;
    .param p2, "sourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist disassociateEmbeddedHierarchy()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist setWindowMatrix([F)V
    .registers 2
    .param p1, "matrixValues"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
