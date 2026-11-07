.class public Landroid/service/controls/IControlsSubscriber$Default;
.super Ljava/lang/Object;
.source "IControlsSubscriber.java"

# interfaces
.implements Landroid/service/controls/IControlsSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/IControlsSubscriber;
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

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onComplete(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onError(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onNext(Landroid/os/IBinder;Landroid/service/controls/Control;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "c"    # Landroid/service/controls/Control;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onSubscribe(Landroid/os/IBinder;Landroid/service/controls/IControlsSubscription;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cs"    # Landroid/service/controls/IControlsSubscription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
