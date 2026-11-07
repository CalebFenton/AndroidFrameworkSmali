.class public Landroid/companion/ICompanionDeviceDiscoveryService$Default;
.super Ljava/lang/Object;
.source "ICompanionDeviceDiscoveryService.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceDiscoveryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceDiscoveryService;
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

.method public blacklist onAssociationCreated()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IAssociationRequestCallback;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "applicationCallback"    # Landroid/companion/IAssociationRequestCallback;
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

    .line 18
    .local p4, "serviceCallback":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    return-void
.end method
