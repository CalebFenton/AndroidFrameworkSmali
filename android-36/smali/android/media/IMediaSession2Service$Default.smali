.class public Landroid/media/IMediaSession2Service$Default;
.super Ljava/lang/Object;
.source "IMediaSession2Service.java"

# interfaces
.implements Landroid/media/IMediaSession2Service;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaSession2Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
