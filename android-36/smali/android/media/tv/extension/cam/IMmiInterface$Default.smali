.class public Landroid/media/tv/extension/cam/IMmiInterface$Default;
.super Ljava/lang/Object;
.source "IMmiInterface.java"

# interfaces
.implements Landroid/media/tv/extension/cam/IMmiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/IMmiInterface;
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
.method public blacklist appInfoEnterMenu(ILandroid/media/tv/extension/cam/IEnterMenuErrorCallback;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/media/tv/extension/cam/IEnterMenuErrorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openSession(ILandroid/media/tv/extension/cam/IMmiStatusCallback;)Landroid/media/tv/extension/cam/IMmiSession;
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/media/tv/extension/cam/IMmiStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method
