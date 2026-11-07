.class public Landroid/media/ILoudnessCodecUpdatesDispatcher$Default;
.super Ljava/lang/Object;
.source "ILoudnessCodecUpdatesDispatcher.java"

# interfaces
.implements Landroid/media/ILoudnessCodecUpdatesDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ILoudnessCodecUpdatesDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
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

.method public blacklist dispatchLoudnessCodecParameterChange(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
