.class public Landroid/hardware/cas/IDescrambler$Default;
.super Ljava/lang/Object;
.source "IDescrambler.java"

# interfaces
.implements Landroid/hardware/cas/IDescrambler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/IDescrambler;
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

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist descramble(I[Landroid/hardware/cas/SubSample;Landroid/hardware/cas/SharedBuffer;JLandroid/hardware/cas/DestinationBuffer;J)I
    .registers 10
    .param p1, "scramblingControl"    # I
    .param p2, "subSamples"    # [Landroid/hardware/cas/SubSample;
    .param p3, "srcBuffer"    # Landroid/hardware/cas/SharedBuffer;
    .param p4, "srcOffset"    # J
    .param p6, "dstBuffer"    # Landroid/hardware/cas/DestinationBuffer;
    .param p7, "dstOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist release()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMediaCasSession([B)V
    .registers 2
    .param p1, "sessionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method
