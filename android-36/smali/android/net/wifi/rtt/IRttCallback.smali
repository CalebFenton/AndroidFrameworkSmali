.class public interface abstract Landroid/net/wifi/rtt/IRttCallback;
.super Ljava/lang/Object;
.source "IRttCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/IRttCallback$_Parcel;,
        Landroid/net/wifi/rtt/IRttCallback$Stub;,
        Landroid/net/wifi/rtt/IRttCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onRangingFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onRangingResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
