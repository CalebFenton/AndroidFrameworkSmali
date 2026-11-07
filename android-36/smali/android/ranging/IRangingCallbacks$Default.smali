.class public Landroid/ranging/IRangingCallbacks$Default;
.super Ljava/lang/Object;
.source "IRangingCallbacks.java"

# interfaces
.implements Landroid/ranging/IRangingCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/IRangingCallbacks;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onClosed(Landroid/ranging/SessionHandle;I)V
    .registers 3
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onOpenFailed(Landroid/ranging/SessionHandle;I)V
    .registers 3
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onOpened(Landroid/ranging/SessionHandle;)V
    .registers 2
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onResults(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V
    .registers 4
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .param p2, "peer"    # Landroid/ranging/RangingDevice;
    .param p3, "data"    # Landroid/ranging/RangingData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onStarted(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;I)V
    .registers 4
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .param p2, "peer"    # Landroid/ranging/RangingDevice;
    .param p3, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onStopped(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;I)V
    .registers 4
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .param p2, "peer"    # Landroid/ranging/RangingDevice;
    .param p3, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
