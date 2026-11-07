.class public Landroid/view/IDisplayChangeWindowController$Default;
.super Ljava/lang/Object;
.source "IDisplayChangeWindowController.java"

# interfaces
.implements Landroid/view/IDisplayChangeWindowController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayChangeWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "fromRotation"    # I
    .param p3, "toRotation"    # I
    .param p4, "newDisplayAreaInfo"    # Landroid/window/DisplayAreaInfo;
    .param p5, "callback"    # Landroid/view/IDisplayChangeWindowCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method
