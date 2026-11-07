.class public Landroid/adservices/adid/IAdIdService$Default;
.super Ljava/lang/Object;
.source "IAdIdService.java"

# interfaces
.implements Landroid/adservices/adid/IAdIdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adid/IAdIdService;
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

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAdId(Landroid/adservices/adid/GetAdIdParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adid/IGetAdIdCallback;)V
    .registers 4
    .param p1, "adIdParam"    # Landroid/adservices/adid/GetAdIdParam;
    .param p2, "callerMetadata"    # Landroid/adservices/common/CallerMetadata;
    .param p3, "callback"    # Landroid/adservices/adid/IGetAdIdCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
