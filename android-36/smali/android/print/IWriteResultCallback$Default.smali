.class public Landroid/print/IWriteResultCallback$Default;
.super Ljava/lang/Object;
.source "IWriteResultCallback.java"

# interfaces
.implements Landroid/print/IWriteResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IWriteResultCallback;
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

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onWriteCanceled(I)V
    .registers 2
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onWriteFailed(Ljava/lang/CharSequence;I)V
    .registers 3
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onWriteFinished([Landroid/print/PageRange;I)V
    .registers 3
    .param p1, "pages"    # [Landroid/print/PageRange;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onWriteStarted(Landroid/os/ICancellationSignal;I)V
    .registers 3
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
