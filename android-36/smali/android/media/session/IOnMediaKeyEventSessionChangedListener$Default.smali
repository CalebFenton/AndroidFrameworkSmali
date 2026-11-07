.class public Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Default;
.super Ljava/lang/Object;
.source "IOnMediaKeyEventSessionChangedListener.java"

# interfaces
.implements Landroid/media/session/IOnMediaKeyEventSessionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mediaKeyEventSessionToken"    # Landroid/media/session/MediaSession$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
