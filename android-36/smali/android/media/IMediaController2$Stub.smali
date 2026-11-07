.class public abstract Landroid/media/IMediaController2$Stub;
.super Landroid/os/Binder;
.source "IMediaController2.java"

# interfaces
.implements Landroid/media/IMediaController2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaController2$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelSessionCommand:I = 0x5

.field static final blacklist TRANSACTION_notifyConnected:I = 0x1

.field static final blacklist TRANSACTION_notifyDisconnected:I = 0x2

.field static final blacklist TRANSACTION_notifyPlaybackActiveChanged:I = 0x3

.field static final blacklist TRANSACTION_sendSessionCommand:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.media.IMediaController2"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaController2;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    const-string v0, "android.media.IMediaController2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 62
    instance-of v1, v0, Landroid/media/IMediaController2;

    if-eqz v1, :cond_13

    .line 63
    check-cast v0, Landroid/media/IMediaController2;

    return-object v0

    .line 65
    :cond_13
    new-instance v0, Landroid/media/IMediaController2$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IMediaController2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-eq p0, v0, :cond_14

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_11
    const-string p0, "cancelSessionCommand"

    return-object p0

    .line 90
    :cond_14
    const-string p0, "sendSessionCommand"

    return-object p0

    .line 86
    :cond_17
    const-string p0, "notifyPlaybackActiveChanged"

    return-object p0

    .line 82
    :cond_1a
    const-string p0, "notifyDisconnected"

    return-object p0

    .line 78
    :cond_1d
    const-string p0, "notifyConnected"

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
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Landroid/media/IMediaController2$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 110
    const-string v0, "android.media.IMediaController2"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_65

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_51

    const/4 v0, 0x4

    if-eq p1, v0, :cond_31

    const/4 v0, 0x5

    if-eq p1, v0, :cond_29

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 160
    :cond_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-interface {p0, p1}, Landroid/media/IMediaController2;->cancelSessionCommand(I)V

    goto :goto_74

    .line 147
    :cond_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 149
    sget-object p3, Landroid/media/Session2Command;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/Session2Command;

    .line 151
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 153
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ResultReceiver;

    .line 154
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/media/IMediaController2;->sendSessionCommand(ILandroid/media/Session2Command;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_74

    .line 138
    :cond_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    .line 141
    invoke-interface {p0, p1, p2}, Landroid/media/IMediaController2;->notifyPlaybackActiveChanged(IZ)V

    goto :goto_74

    .line 131
    :cond_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 132
    invoke-interface {p0, p1}, Landroid/media/IMediaController2;->notifyDisconnected(I)V

    goto :goto_74

    .line 122
    :cond_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 124
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 125
    invoke-interface {p0, p1, p2}, Landroid/media/IMediaController2;->notifyConnected(ILandroid/os/Bundle;)V

    :goto_74
    return v1
.end method
