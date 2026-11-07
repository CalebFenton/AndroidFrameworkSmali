.class public Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Default;
.super Ljava/lang/Object;
.source "ITvInteractiveAppServiceCallback.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
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

.method public blacklist onStateChanged(III)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
