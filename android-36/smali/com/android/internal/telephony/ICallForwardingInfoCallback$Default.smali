.class public Lcom/android/internal/telephony/ICallForwardingInfoCallback$Default;
.super Ljava/lang/Object;
.source "ICallForwardingInfoCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/ICallForwardingInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ICallForwardingInfoCallback;
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

.method public blacklist onCallForwardingInfoAvailable(Landroid/telephony/CallForwardingInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/telephony/CallForwardingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onError(I)V
    .registers 2
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
