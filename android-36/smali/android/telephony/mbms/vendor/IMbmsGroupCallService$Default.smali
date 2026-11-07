.class public Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Default;
.super Ljava/lang/Object;
.source "IMbmsGroupCallService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsGroupCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
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

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist dispose(I)V
    .registers 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I
    .registers 4
    .param p1, "callback"    # Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I
    .registers 8
    .param p1, "subscriptionId"    # I
    .param p2, "tmgi"    # J
    .param p4, "saiList"    # Ljava/util/List;
    .param p5, "frequencyList"    # Ljava/util/List;
    .param p6, "callback"    # Landroid/telephony/mbms/IGroupCallCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopGroupCall(IJ)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "tmgi"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist updateGroupCall(IJLjava/util/List;Ljava/util/List;)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "tmgi"    # J
    .param p4, "saiList"    # Ljava/util/List;
    .param p5, "frequencyList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
