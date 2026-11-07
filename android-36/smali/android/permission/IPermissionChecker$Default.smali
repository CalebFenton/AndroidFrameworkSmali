.class public Landroid/permission/IPermissionChecker$Default;
.super Ljava/lang/Object;
.source "IPermissionChecker.java"

# interfaces
.implements Landroid/permission/IPermissionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionChecker;
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

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .registers 7
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .registers 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z
    .param p6, "fromDatasource"    # Z
    .param p7, "attributedOp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .registers 4
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "fromDatasource"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
