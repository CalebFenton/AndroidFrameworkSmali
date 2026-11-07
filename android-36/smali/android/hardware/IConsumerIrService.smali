.class public interface abstract Landroid/hardware/IConsumerIrService;
.super Ljava/lang/Object;
.source "IConsumerIrService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IConsumerIrService$Stub;,
        Landroid/hardware/IConsumerIrService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o getCarrierFrequencies()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o hasIrEmitter()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o transmit(Ljava/lang/String;I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
