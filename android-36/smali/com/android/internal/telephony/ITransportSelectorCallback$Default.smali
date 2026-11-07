.class public Lcom/android/internal/telephony/ITransportSelectorCallback$Default;
.super Ljava/lang/Object;
.source "ITransportSelectorCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/ITransportSelectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITransportSelectorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCreated(Lcom/android/internal/telephony/IDomainSelector;)V
    .registers 2
    .param p1, "selector"    # Lcom/android/internal/telephony/IDomainSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onSelectionTerminated(I)V
    .registers 2
    .param p1, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist onWlanSelected(Z)V
    .registers 2
    .param p1, "useEmergencyPdn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onWwanSelectedAsync(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/internal/telephony/ITransportSelectorResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
