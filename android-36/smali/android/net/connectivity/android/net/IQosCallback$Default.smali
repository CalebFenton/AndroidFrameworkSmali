.class public Landroid/net/connectivity/android/net/IQosCallback$Default;
.super Ljava/lang/Object;
.source "IQosCallback.java"

# interfaces
.implements Landroid/net/connectivity/android/net/IQosCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/IQosCallback;
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

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onError(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onNrQosSessionAvailable(Landroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V
    .registers 3
    .param p1, "session"    # Landroid/net/QosSession;
    .param p2, "attributes"    # Landroid/telephony/data/NrQosSessionAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onQosEpsBearerSessionAvailable(Landroid/net/QosSession;Landroid/telephony/data/EpsBearerQosSessionAttributes;)V
    .registers 3
    .param p1, "session"    # Landroid/net/QosSession;
    .param p2, "attributes"    # Landroid/telephony/data/EpsBearerQosSessionAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onQosSessionLost(Landroid/net/QosSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/QosSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
