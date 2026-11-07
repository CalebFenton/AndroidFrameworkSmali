.class public final Landroid/media/Controller2Link;
.super Ljava/lang/Object;
.source "Controller2Link.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Controller2Link$Controller2Stub;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/Controller2Link;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "Controller2Link"


# instance fields
.field private final blacklist mController:Landroid/media/MediaController2;

.field private final blacklist mIController:Landroid/media/IMediaController2;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    sget-boolean v0, Landroid/media/MediaController2;->DEBUG:Z

    sput-boolean v0, Landroid/media/Controller2Link;->DEBUG:Z

    .line 37
    new-instance v0, Landroid/media/Controller2Link$1;

    invoke-direct {v0}, Landroid/media/Controller2Link$1;-><init>()V

    sput-object v0, Landroid/media/Controller2Link;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/MediaController2;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/media/Controller2Link;->mController:Landroid/media/MediaController2;

    .line 56
    new-instance p1, Landroid/media/Controller2Link$Controller2Stub;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/media/Controller2Link$Controller2Stub;-><init>(Landroid/media/Controller2Link;Landroid/media/Controller2Link-IA;)V

    iput-object p1, p0, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Landroid/media/Controller2Link;->mController:Landroid/media/MediaController2;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaController2;

    move-result-object p1

    iput-object p1, p0, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    return-void
.end method


# virtual methods
.method public blacklist cancelSessionCommand(I)V
    .registers 2

    .line 128
    :try_start_0
    iget-object p0, p0, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    invoke-interface {p0, p1}, Landroid/media/IMediaController2;->cancelSessionCommand(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 130
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 81
    instance-of v0, p1, Landroid/media/Controller2Link;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 84
    :cond_6
    check-cast p1, Landroid/media/Controller2Link;

    .line 85
    iget-object p0, p0, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    iget-object p1, p1, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 76
    iget-object p0, p0, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist notifyConnected(ILandroid/os/Bundle;)V
    .registers 3

    .line 91
    :try_start_0
    iget-object p0, p0, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    invoke-interface {p0, p1, p2}, Landroid/media/IMediaController2;->notifyConnected(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 93
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist notifyDisconnected(I)V
    .registers 2

    .line 100
    :try_start_0
    iget-object p0, p0, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    invoke-interface {p0, p1}, Landroid/media/IMediaController2;->notifyDisconnected(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 102
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist notifyPlaybackActiveChanged(IZ)V
    .registers 3

    .line 109
    :try_start_0
    iget-object p0, p0, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    invoke-interface {p0, p1, p2}, Landroid/media/IMediaController2;->notifyPlaybackActiveChanged(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 111
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist onCancelCommand(I)V
    .registers 2

    .line 161
    iget-object p0, p0, Landroid/media/Controller2Link;->mController:Landroid/media/MediaController2;

    invoke-virtual {p0, p1}, Landroid/media/MediaController2;->onCancelCommand(I)V

    return-void
.end method

.method public blacklist onConnected(ILandroid/os/Bundle;)V
    .registers 3

    if-nez p2, :cond_6

    .line 137
    invoke-virtual {p0, p1}, Landroid/media/Controller2Link;->onDisconnected(I)V

    return-void

    .line 140
    :cond_6
    iget-object p0, p0, Landroid/media/Controller2Link;->mController:Landroid/media/MediaController2;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaController2;->onConnected(ILandroid/os/Bundle;)V

    return-void
.end method

.method public blacklist onDisconnected(I)V
    .registers 2

    .line 145
    iget-object p0, p0, Landroid/media/Controller2Link;->mController:Landroid/media/MediaController2;

    invoke-virtual {p0, p1}, Landroid/media/MediaController2;->onDisconnected(I)V

    return-void
.end method

.method public blacklist onPlaybackActiveChanged(IZ)V
    .registers 3

    .line 150
    iget-object p0, p0, Landroid/media/Controller2Link;->mController:Landroid/media/MediaController2;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaController2;->onPlaybackActiveChanged(IZ)V

    return-void
.end method

.method public blacklist onSessionCommand(ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 156
    iget-object p0, p0, Landroid/media/Controller2Link;->mController:Landroid/media/MediaController2;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaController2;->onSessionCommand(ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public blacklist sendSessionCommand(ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 5

    .line 119
    :try_start_0
    iget-object p0, p0, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/media/IMediaController2;->sendSessionCommand(ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 121
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 71
    iget-object p0, p0, Landroid/media/Controller2Link;->mIController:Landroid/media/IMediaController2;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
