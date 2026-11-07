.class public Landroid/window/ITaskFragmentOrganizerController$Default;
.super Ljava/lang/Object;
.source "ITaskFragmentOrganizerController.java"

# interfaces
.implements Landroid/window/ITaskFragmentOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ITaskFragmentOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist applyTransaction(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    .registers 5
    .param p1, "wct"    # Landroid/window/WindowContainerTransaction;
    .param p2, "transitionType"    # I
    .param p3, "shouldApplyIndependently"    # Z
    .param p4, "remoteTransition"    # Landroid/window/RemoteTransition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onTransactionHandled(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;IZ)V
    .registers 5
    .param p1, "transactionToken"    # Landroid/os/IBinder;
    .param p2, "wct"    # Landroid/window/WindowContainerTransaction;
    .param p3, "transitionType"    # I
    .param p4, "shouldApplyIndependently"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist registerOrganizer(Landroid/window/ITaskFragmentOrganizer;ZLandroid/os/Bundle;)V
    .registers 4
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "isSystemOrganizer"    # Z
    .param p3, "outSavedState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;Landroid/view/RemoteAnimationDefinition;)V
    .registers 3
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist setSavedState(Landroid/window/ITaskFragmentOrganizer;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "savedState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .registers 2
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;)V
    .registers 2
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method
