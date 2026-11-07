.class public Landroid/media/tv/extension/cam/ICamInfoListener$Default;
.super Ljava/lang/Object;
.source "ICamInfoListener.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamInfoListener;
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

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCamInfoChanged(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "updatedCamInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onNewTypeCamInsert(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "newCamType"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onSlotInfoChanged(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "updatedSlotInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
