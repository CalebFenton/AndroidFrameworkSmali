.class public Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Default;
.super Ljava/lang/Object;
.source "IVirtualDeviceIntentInterceptor.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
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

.method public blacklist onIntentIntercepted(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method
