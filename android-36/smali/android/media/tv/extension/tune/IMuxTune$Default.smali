.class public Landroid/media/tv/extension/tune/IMuxTune$Default;
.super Ljava/lang/Object;
.source "IMuxTune.java"

# interfaces
.implements Landroid/media/tv/extension/tune/IMuxTune;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/tune/IMuxTune;
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

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSession(ILjava/lang/String;)Landroid/media/tv/extension/tune/IMuxTuneSession;
    .registers 4
    .param p1, "broadcastType"    # I
    .param p2, "clientToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
