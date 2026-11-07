.class public abstract Landroid/media/IMediaSession2Service$Stub;
.super Landroid/os/Binder;
.source "IMediaSession2Service.java"

# interfaces
.implements Landroid/media/IMediaSession2Service;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaSession2Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaSession2Service$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_connect:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.media.IMediaSession2Service"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaSession2Service;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_4
    const-string v0, "android.media.IMediaSession2Service"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 49
    instance-of v1, v0, Landroid/media/IMediaSession2Service;

    if-eqz v1, :cond_13

    .line 50
    check-cast v0, Landroid/media/IMediaSession2Service;

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Landroid/media/IMediaSession2Service$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IMediaSession2Service$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_5
    const-string p0, "connect"

    return-object p0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 76
    invoke-static {p1}, Landroid/media/IMediaSession2Service$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const-string v0, "android.media.IMediaSession2Service"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_1d

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 93
    :cond_1d
    sget-object p1, Landroid/media/Controller2Link;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/Controller2Link;

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 97
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 98
    invoke-interface {p0, p1, p3, p2}, Landroid/media/IMediaSession2Service;->connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V

    return v1
.end method
