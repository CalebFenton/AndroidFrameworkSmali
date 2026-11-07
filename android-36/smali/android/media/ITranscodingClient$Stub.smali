.class public abstract Landroid/media/ITranscodingClient$Stub;
.super Landroid/os/Binder;
.source "ITranscodingClient.java"

# interfaces
.implements Landroid/media/ITranscodingClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ITranscodingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ITranscodingClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addClientUid:I = 0x4

.field static final blacklist TRANSACTION_cancelSession:I = 0x2

.field static final blacklist TRANSACTION_getClientUids:I = 0x5

.field static final blacklist TRANSACTION_getSessionWithId:I = 0x3

.field static final blacklist TRANSACTION_submitRequest:I = 0x1

.field static final blacklist TRANSACTION_unregister:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    const-string v0, "android.media.ITranscodingClient"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/ITranscodingClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_4
    const-string v0, "android.media.ITranscodingClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 115
    instance-of v1, v0, Landroid/media/ITranscodingClient;

    if-eqz v1, :cond_13

    .line 116
    check-cast v0, Landroid/media/ITranscodingClient;

    return-object v0

    .line 118
    :cond_13
    new-instance v0, Landroid/media/ITranscodingClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/ITranscodingClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 127
    const-string v0, "android.media.ITranscodingClient"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    packed-switch p1, :pswitch_data_88

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 191
    :pswitch_1e
    invoke-interface {p0}, Landroid/media/ITranscodingClient;->unregister()V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_87

    .line 183
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 184
    invoke-interface {p0, p1}, Landroid/media/ITranscodingClient;->getClientUids(I)[I

    move-result-object p0

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_87

    .line 172
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 175
    invoke-interface {p0, p1, p2}, Landroid/media/ITranscodingClient;->addClientUid(II)Z

    move-result p0

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_87

    .line 160
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 162
    new-instance p2, Landroid/media/TranscodingSessionParcel;

    invoke-direct {p2}, Landroid/media/TranscodingSessionParcel;-><init>()V

    .line 163
    invoke-interface {p0, p1, p2}, Landroid/media/ITranscodingClient;->getSessionWithId(ILandroid/media/TranscodingSessionParcel;)Z

    move-result p0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 166
    invoke-virtual {p3, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_87

    .line 151
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 152
    invoke-interface {p0, p1}, Landroid/media/ITranscodingClient;->cancelSession(I)Z

    move-result p0

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_87

    .line 139
    :pswitch_6d
    sget-object p1, Landroid/media/TranscodingRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/TranscodingRequestParcel;

    .line 141
    new-instance p2, Landroid/media/TranscodingSessionParcel;

    invoke-direct {p2}, Landroid/media/TranscodingSessionParcel;-><init>()V

    .line 142
    invoke-interface {p0, p1, p2}, Landroid/media/ITranscodingClient;->submitRequest(Landroid/media/TranscodingRequestParcel;Landroid/media/TranscodingSessionParcel;)Z

    move-result p0

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 145
    invoke-virtual {p3, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_87
    return v1

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_5e
        :pswitch_47
        :pswitch_34
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method
