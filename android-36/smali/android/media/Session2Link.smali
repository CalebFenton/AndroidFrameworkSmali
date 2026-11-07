.class public final Landroid/media/Session2Link;
.super Ljava/lang/Object;
.source "Session2Link.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Session2Link$Session2Stub;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/Session2Link;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "Session2Link"


# instance fields
.field private final blacklist mISession:Landroid/media/IMediaSession2;

.field private final blacklist mSession:Landroid/media/MediaSession2;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    sget-boolean v0, Landroid/media/MediaSession2;->DEBUG:Z

    sput-boolean v0, Landroid/media/Session2Link;->DEBUG:Z

    .line 40
    new-instance v0, Landroid/media/Session2Link$1;

    invoke-direct {v0}, Landroid/media/Session2Link$1;-><init>()V

    sput-object v0, Landroid/media/Session2Link;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/MediaSession2;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/media/Session2Link;->mSession:Landroid/media/MediaSession2;

    .line 58
    new-instance p1, Landroid/media/Session2Link$Session2Stub;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/media/Session2Link$Session2Stub;-><init>(Landroid/media/Session2Link;Landroid/media/Session2Link-IA;)V

    iput-object p1, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Landroid/media/Session2Link;->mSession:Landroid/media/MediaSession2;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/IMediaSession2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaSession2;

    move-result-object p1

    iput-object p1, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    return-void
.end method


# virtual methods
.method public blacklist cancelSessionCommand(Landroid/media/Controller2Link;I)V
    .registers 3

    .line 142
    :try_start_0
    iget-object p0, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    invoke-interface {p0, p1, p2}, Landroid/media/IMediaSession2;->cancelSessionCommand(Landroid/media/Controller2Link;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 144
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V
    .registers 4

    .line 114
    :try_start_0
    iget-object p0, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/IMediaSession2;->connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 116
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

.method public blacklist disconnect(Landroid/media/Controller2Link;I)V
    .registers 3

    .line 123
    :try_start_0
    iget-object p0, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    invoke-interface {p0, p1, p2}, Landroid/media/IMediaSession2;->disconnect(Landroid/media/Controller2Link;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 125
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 83
    instance-of v0, p1, Landroid/media/Session2Link;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_6
    check-cast p1, Landroid/media/Session2Link;

    .line 87
    iget-object p0, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    iget-object p1, p1, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 78
    iget-object p0, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 3

    .line 92
    iget-object p0, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    if-eqz p0, :cond_18

    .line 94
    :try_start_4
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 96
    sget-boolean p1, Landroid/media/Session2Link;->DEBUG:Z

    if-eqz p1, :cond_18

    .line 97
    const-string p1, "Session2Link"

    const-string p2, "Session died too early."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    return-void
.end method

.method public blacklist onCancelCommand(Landroid/media/Controller2Link;I)V
    .registers 3

    .line 167
    iget-object p0, p0, Landroid/media/Session2Link;->mSession:Landroid/media/MediaSession2;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaSession2;->onCancelCommand(Landroid/media/Controller2Link;I)V

    return-void
.end method

.method public blacklist onConnect(Landroid/media/Controller2Link;IIILandroid/os/Bundle;)V
    .registers 6

    .line 151
    iget-object p0, p0, Landroid/media/Session2Link;->mSession:Landroid/media/MediaSession2;

    invoke-virtual/range {p0 .. p5}, Landroid/media/MediaSession2;->onConnect(Landroid/media/Controller2Link;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public blacklist onDisconnect(Landroid/media/Controller2Link;I)V
    .registers 3

    .line 156
    iget-object p0, p0, Landroid/media/Session2Link;->mSession:Landroid/media/MediaSession2;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaSession2;->onDisconnect(Landroid/media/Controller2Link;I)V

    return-void
.end method

.method public blacklist onSessionCommand(Landroid/media/Controller2Link;ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 6

    .line 162
    iget-object p0, p0, Landroid/media/Session2Link;->mSession:Landroid/media/MediaSession2;

    invoke-virtual/range {p0 .. p5}, Landroid/media/MediaSession2;->onSessionCommand(Landroid/media/Controller2Link;ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public blacklist sendSessionCommand(Landroid/media/Controller2Link;ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 7

    .line 133
    :try_start_0
    iget-object p0, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    invoke-interface/range {p0 .. p5}, Landroid/media/IMediaSession2;->sendSessionCommand(Landroid/media/Controller2Link;ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    move-object p0, v0

    .line 135
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 3

    .line 105
    iget-object p0, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    if-eqz p0, :cond_d

    .line 106
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 73
    iget-object p0, p0, Landroid/media/Session2Link;->mISession:Landroid/media/IMediaSession2;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
