.class public Landroid/net/wifi/ITwtCallback$Default;
.super Ljava/lang/Object;
.source "ITwtCallback.java"

# interfaces
.implements Landroid/net/wifi/ITwtCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ITwtCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCreate(IJIII)V
    .registers 7
    .param p1, "wakeDuration"    # I
    .param p2, "wakeInterval"    # J
    .param p4, "mloLinkId"    # I
    .param p5, "owner"    # I
    .param p6, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist onFailure(I)V
    .registers 2
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onTeardown(I)V
    .registers 2
    .param p1, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method
