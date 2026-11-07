.class public Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Default;
.super Ljava/lang/Object;
.source "IFaceAuthenticatorsRegisteredCallback.java"

# interfaces
.implements Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    .local p1, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    return-void
.end method
