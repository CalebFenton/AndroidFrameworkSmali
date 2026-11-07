.class public Lcom/android/internal/telephony/IWwanSelectorCallback$Default;
.super Ljava/lang/Object;
.source "IWwanSelectorCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/IWwanSelectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IWwanSelectorCallback;
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

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCancel()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onDomainSelected(IZ)V
    .registers 3
    .param p1, "domain"    # I
    .param p2, "useEmergencyPdn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onRequestEmergencyNetworkScan([IIZLcom/android/internal/telephony/IWwanSelectorResultCallback;)V
    .registers 5
    .param p1, "preferredNetworks"    # [I
    .param p2, "scanType"    # I
    .param p3, "resetScan"    # Z
    .param p4, "cb"    # Lcom/android/internal/telephony/IWwanSelectorResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
