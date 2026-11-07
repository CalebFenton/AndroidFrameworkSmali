.class public Landroid/media/ISoundDoseCallback$Default;
.super Ljava/lang/Object;
.source "ISoundDoseCallback.java"

# interfaces
.implements Landroid/media/ISoundDoseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ISoundDoseCallback;
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

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onMomentaryExposure(FI)V
    .registers 3
    .param p1, "currentMel"    # F
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onNewCsdValue(F[Landroid/media/SoundDoseRecord;)V
    .registers 3
    .param p1, "currentCsd"    # F
    .param p2, "records"    # [Landroid/media/SoundDoseRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
