.class public Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback$Default;
.super Ljava/lang/Object;
.source "IRemoteLockscreenValidationCallback.java"

# interfaces
.implements Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;
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

.method public blacklist onFailure(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onSuccess(Landroid/app/RemoteLockscreenValidationResult;)V
    .registers 2
    .param p1, "result"    # Landroid/app/RemoteLockscreenValidationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
