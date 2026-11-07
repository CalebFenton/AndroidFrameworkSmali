.class public Landroid/net/IEthernetServiceListener$Default;
.super Ljava/lang/Object;
.source "IEthernetServiceListener.java"

# interfaces
.implements Landroid/net/IEthernetServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IEthernetServiceListener;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onEthernetStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "role"    # I
    .param p4, "configuration"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
