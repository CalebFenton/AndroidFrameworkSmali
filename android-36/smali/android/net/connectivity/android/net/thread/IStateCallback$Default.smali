.class public Landroid/net/connectivity/android/net/thread/IStateCallback$Default;
.super Ljava/lang/Object;
.source "IStateCallback.java"

# interfaces
.implements Landroid/net/connectivity/android/net/thread/IStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/thread/IStateCallback;
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

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDeviceRoleChanged(I)V
    .registers 2
    .param p1, "deviceRole"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onEphemeralKeyStateChanged(ILjava/lang/String;J)V
    .registers 5
    .param p1, "ephemeralKeyState"    # I
    .param p2, "ephemeralKey"    # Ljava/lang/String;
    .param p3, "lifetimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onPartitionIdChanged(J)V
    .registers 3
    .param p1, "partitionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onThreadEnableStateChanged(I)V
    .registers 2
    .param p1, "enabledState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
