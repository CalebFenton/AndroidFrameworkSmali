.class public abstract Landroid/media/IMediaCommunicationServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaCommunicationServiceCallback.java"

# interfaces
.implements Landroid/media/IMediaCommunicationServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaCommunicationServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaCommunicationServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSession2Changed:I = 0x2

.field static final blacklist TRANSACTION_onSession2Created:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.media.IMediaCommunicationServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaCommunicationServiceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "android.media.IMediaCommunicationServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 46
    instance-of v1, v0, Landroid/media/IMediaCommunicationServiceCallback;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Landroid/media/IMediaCommunicationServiceCallback;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Landroid/media/IMediaCommunicationServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IMediaCommunicationServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_8
    const-string p0, "onSession2Changed"

    return-object p0

    .line 62
    :cond_b
    const-string p0, "onSession2Created"

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
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 77
    invoke-static {p1}, Landroid/media/IMediaCommunicationServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 82
    const-string v0, "android.media.IMediaCommunicationServiceCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 103
    :cond_20
    sget-object p1, Landroid/media/MediaParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaParceledListSlice;

    .line 104
    invoke-interface {p0, p1}, Landroid/media/IMediaCommunicationServiceCallback;->onSession2Changed(Landroid/media/MediaParceledListSlice;)V

    goto :goto_3b

    .line 94
    :cond_2c
    sget-object p1, Landroid/media/Session2Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/Session2Token;

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 97
    invoke-interface {p0, p1, p2}, Landroid/media/IMediaCommunicationServiceCallback;->onSession2Created(Landroid/media/Session2Token;I)V

    :goto_3b
    return v1
.end method
