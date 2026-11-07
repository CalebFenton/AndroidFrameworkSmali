.class public interface abstract Landroid/companion/ICompanionDeviceDiscoveryService;
.super Ljava/lang/Object;
.source "ICompanionDeviceDiscoveryService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceDiscoveryService$Stub;,
        Landroid/companion/ICompanionDeviceDiscoveryService$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onAssociationCreated()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IAssociationRequestCallback;Lcom/android/internal/infra/AndroidFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/AssociationRequest;",
            "Ljava/lang/String;",
            "Landroid/companion/IAssociationRequestCallback;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
