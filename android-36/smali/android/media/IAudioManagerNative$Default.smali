.class public Landroid/media/IAudioManagerNative$Default;
.super Ljava/lang/Object;
.source "IAudioManagerNative.java"

# interfaces
.implements Landroid/media/IAudioManagerNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioManagerNative;
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

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist permissionUpdateBarrier()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist playbackHardeningEvent(IBZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "type"    # B
    .param p3, "bypassed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist portMuteEvent(II)V
    .registers 3
    .param p1, "portId"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method
