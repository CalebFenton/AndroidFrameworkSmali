.class public abstract Landroid/media/IMediaTranscodingService$Stub;
.super Landroid/os/Binder;
.source "IMediaTranscodingService.java"

# interfaces
.implements Landroid/media/IMediaTranscodingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaTranscodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaTranscodingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getNumOfClients:I = 0x2

.field static final blacklist TRANSACTION_registerClient:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.media.IMediaTranscodingService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaTranscodingService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    const-string v0, "android.media.IMediaTranscodingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 68
    instance-of v1, v0, Landroid/media/IMediaTranscodingService;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Landroid/media/IMediaTranscodingService;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Landroid/media/IMediaTranscodingService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IMediaTranscodingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const-string v0, "android.media.IMediaTranscodingService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 104
    :cond_20
    invoke-interface {p0}, Landroid/media/IMediaTranscodingService;->getNumOfClients()I

    move-result p0

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .line 92
    :cond_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/ITranscodingClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ITranscodingClientCallback;

    move-result-object p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-interface {p0, p1, p4, p2}, Landroid/media/IMediaTranscodingService;->registerClient(Landroid/media/ITranscodingClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/media/ITranscodingClient;

    move-result-object p0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :goto_45
    return v1
.end method
