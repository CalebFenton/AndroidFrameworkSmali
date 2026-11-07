.class public Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService$Default;
.super Ljava/lang/Object;
.source "IRemoteLockscreenValidationService.java"

# interfaces
.implements Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
    .registers 3
    .param p1, "guess"    # [B
    .param p2, "callback"    # Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
