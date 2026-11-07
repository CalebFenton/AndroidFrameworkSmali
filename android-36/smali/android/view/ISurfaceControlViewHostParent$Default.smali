.class public Landroid/view/ISurfaceControlViewHostParent$Default;
.super Ljava/lang/Object;
.source "ISurfaceControlViewHostParent.java"

# interfaces
.implements Landroid/view/ISurfaceControlViewHostParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISurfaceControlViewHostParent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist forwardBackKeyToParent(Landroid/view/KeyEvent;)V
    .registers 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist updateParams([Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .param p1, "childAttrs"    # [Landroid/view/WindowManager$LayoutParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
