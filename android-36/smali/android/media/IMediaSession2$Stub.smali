.class public abstract Landroid/media/IMediaSession2$Stub;
.super Landroid/os/Binder;
.source "IMediaSession2.java"

# interfaces
.implements Landroid/media/IMediaSession2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaSession2$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelSessionCommand:I = 0x4

.field static final blacklist TRANSACTION_connect:I = 0x1

.field static final blacklist TRANSACTION_disconnect:I = 0x2

.field static final blacklist TRANSACTION_sendSessionCommand:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.media.IMediaSession2"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaSession2;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    const-string v0, "android.media.IMediaSession2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 59
    instance-of v1, v0, Landroid/media/IMediaSession2;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Landroid/media/IMediaSession2;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Landroid/media/IMediaSession2$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IMediaSession2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_e
    const-string p0, "cancelSessionCommand"

    return-object p0

    .line 83
    :cond_11
    const-string p0, "sendSessionCommand"

    return-object p0

    .line 79
    :cond_14
    const-string p0, "disconnect"

    return-object p0

    .line 75
    :cond_17
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
    const/4 p0, 0x3

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 98
    invoke-static {p1}, Landroid/media/IMediaSession2$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const-string v0, "android.media.IMediaSession2"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 107
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_74

    const/4 v0, 0x2

    if-eq p1, v0, :cond_63

    const/4 v0, 0x3

    if-eq p1, v0, :cond_36

    const/4 v0, 0x4

    if-eq p1, v0, :cond_26

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 150
    :cond_26
    sget-object p1, Landroid/media/Controller2Link;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/Controller2Link;

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 153
    invoke-interface {p0, p1, p2}, Landroid/media/IMediaSession2;->cancelSessionCommand(Landroid/media/Controller2Link;I)V

    goto :goto_8c

    .line 135
    :cond_36
    sget-object p1, Landroid/media/Controller2Link;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/media/Controller2Link;

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 139
    sget-object p1, Landroid/media/Session2Command;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/media/Session2Command;

    .line 141
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    .line 143
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/ResultReceiver;

    move-object v2, p0

    .line 144
    invoke-interface/range {v2 .. v7}, Landroid/media/IMediaSession2;->sendSessionCommand(Landroid/media/Controller2Link;ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_8c

    :cond_63
    move-object v2, p0

    .line 126
    sget-object p0, Landroid/media/Controller2Link;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/Controller2Link;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 129
    invoke-interface {v2, p0, p1}, Landroid/media/IMediaSession2;->disconnect(Landroid/media/Controller2Link;I)V

    goto :goto_8c

    :cond_74
    move-object v2, p0

    .line 115
    sget-object p0, Landroid/media/Controller2Link;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/Controller2Link;

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 119
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 120
    invoke-interface {v2, p0, p1, p2}, Landroid/media/IMediaSession2;->connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V

    :goto_8c
    return v1
.end method
