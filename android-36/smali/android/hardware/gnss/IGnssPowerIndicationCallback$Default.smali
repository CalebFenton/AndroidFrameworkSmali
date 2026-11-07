.class public Landroid/hardware/gnss/IGnssPowerIndicationCallback$Default;
.super Ljava/lang/Object;
.source "IGnssPowerIndicationCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssPowerIndicationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssPowerIndicationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist gnssPowerStatsCb(Landroid/hardware/gnss/GnssPowerStats;)V
    .registers 2
    .param p1, "gnssPowerStats"    # Landroid/hardware/gnss/GnssPowerStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist setCapabilitiesCb(I)V
    .registers 2
    .param p1, "capabilities"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
