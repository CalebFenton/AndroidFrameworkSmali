.class public Landroid/net/ICaptivePortal$Default;
.super Ljava/lang/Object;
.source "ICaptivePortal.java"

# interfaces
.implements Landroid/net/ICaptivePortal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ICaptivePortal;
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
.method public blacklist appRequest(I)V
    .registers 2
    .param p1, "request"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist appResponse(I)V
    .registers 2
    .param p1, "response"    # I
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

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setDelegateUid(ILandroid/os/IBinder;Landroid/net/IIntResultListener;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "listener"    # Landroid/net/IIntResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method
