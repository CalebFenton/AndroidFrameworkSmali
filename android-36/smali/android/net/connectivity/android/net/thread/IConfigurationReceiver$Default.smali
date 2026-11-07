.class public Landroid/net/connectivity/android/net/thread/IConfigurationReceiver$Default;
.super Ljava/lang/Object;
.source "IConfigurationReceiver.java"

# interfaces
.implements Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/net/thread/ThreadConfiguration;)V
    .registers 2
    .param p1, "configuration"    # Landroid/net/thread/ThreadConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
