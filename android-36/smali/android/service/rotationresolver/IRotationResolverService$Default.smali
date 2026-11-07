.class public Landroid/service/rotationresolver/IRotationResolverService$Default;
.super Ljava/lang/Object;
.source "IRotationResolverService.java"

# interfaces
.implements Landroid/service/rotationresolver/IRotationResolverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/rotationresolver/IRotationResolverService;
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

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;)V
    .registers 3
    .param p1, "callback"    # Landroid/service/rotationresolver/IRotationResolverCallback;
    .param p2, "request"    # Landroid/service/rotationresolver/RotationResolutionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
