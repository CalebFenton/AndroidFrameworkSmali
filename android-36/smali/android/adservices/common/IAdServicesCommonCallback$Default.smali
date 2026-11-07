.class public Landroid/adservices/common/IAdServicesCommonCallback$Default;
.super Ljava/lang/Object;
.source "IAdServicesCommonCallback.java"

# interfaces
.implements Landroid/adservices/common/IAdServicesCommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/IAdServicesCommonCallback;
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

.method public blacklist onFailure(I)V
    .registers 2
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onResult(Landroid/adservices/common/IsAdServicesEnabledResult;)V
    .registers 2
    .param p1, "responseParcel"    # Landroid/adservices/common/IsAdServicesEnabledResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
