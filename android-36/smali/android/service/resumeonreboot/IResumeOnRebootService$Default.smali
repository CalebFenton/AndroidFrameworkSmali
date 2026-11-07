.class public Landroid/service/resumeonreboot/IResumeOnRebootService$Default;
.super Ljava/lang/Object;
.source "IResumeOnRebootService.java"

# interfaces
.implements Landroid/service/resumeonreboot/IResumeOnRebootService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/resumeonreboot/IResumeOnRebootService;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unwrap([BLandroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "wrappedBlob"    # [B
    .param p2, "resultCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist wrapSecret([BJLandroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "unwrappedBlob"    # [B
    .param p2, "lifeTimeInMillis"    # J
    .param p4, "resultCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
