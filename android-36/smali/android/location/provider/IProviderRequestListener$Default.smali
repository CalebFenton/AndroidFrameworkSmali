.class public Landroid/location/provider/IProviderRequestListener$Default;
.super Ljava/lang/Object;
.source "IProviderRequestListener.java"

# interfaces
.implements Landroid/location/provider/IProviderRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/IProviderRequestListener;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onProviderRequestChanged(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/location/provider/ProviderRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
