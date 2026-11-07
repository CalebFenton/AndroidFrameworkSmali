.class public Landroid/adservices/adid/IGetAdIdProviderCallback$Default;
.super Ljava/lang/Object;
.source "IGetAdIdProviderCallback.java"

# interfaces
.implements Landroid/adservices/adid/IGetAdIdProviderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adid/IGetAdIdProviderCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onError(Ljava/lang/String;)V
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onResult(Landroid/adservices/adid/GetAdIdResult;)V
    .registers 2
    .param p1, "responseParcel"    # Landroid/adservices/adid/GetAdIdResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
