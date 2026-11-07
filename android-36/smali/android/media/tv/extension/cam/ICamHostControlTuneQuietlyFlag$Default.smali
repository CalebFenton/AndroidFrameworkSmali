.class public Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlag$Default;
.super Ljava/lang/Object;
.source "ICamHostControlTuneQuietlyFlag.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlag;
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
.method public blacklist addHcTuneQuietlyFlagListener(Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlagListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlagListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHcTuneQuietlyFlag(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeHcTuneQuietlyFlagListener(Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlagListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/cam/ICamHostControlTuneQuietlyFlagListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
