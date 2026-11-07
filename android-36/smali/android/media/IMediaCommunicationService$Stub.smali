.class public abstract Landroid/media/IMediaCommunicationService$Stub;
.super Landroid/os/Binder;
.source "IMediaCommunicationService.java"

# interfaces
.implements Landroid/media/IMediaCommunicationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaCommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaCommunicationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dispatchMediaKeyEvent:I = 0x4

.field static final blacklist TRANSACTION_getSession2Tokens:I = 0x3

.field static final blacklist TRANSACTION_isTrusted:I = 0x2

.field static final blacklist TRANSACTION_notifySession2Created:I = 0x1

.field static final blacklist TRANSACTION_registerCallback:I = 0x5

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.media.IMediaCommunicationService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaCommunicationService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    const-string v0, "android.media.IMediaCommunicationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 60
    instance-of v1, v0, Landroid/media/IMediaCommunicationService;

    if-eqz v1, :cond_13

    .line 61
    check-cast v0, Landroid/media/IMediaCommunicationService;

    return-object v0

    .line 63
    :cond_13
    new-instance v0, Landroid/media/IMediaCommunicationService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/IMediaCommunicationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return-object p0

    .line 96
    :pswitch_5
    const-string p0, "unregisterCallback"

    return-object p0

    .line 92
    :pswitch_8
    const-string p0, "registerCallback"

    return-object p0

    .line 88
    :pswitch_b
    const-string p0, "dispatchMediaKeyEvent"

    return-object p0

    .line 84
    :pswitch_e
    const-string p0, "getSession2Tokens"

    return-object p0

    .line 80
    :pswitch_11
    const-string p0, "isTrusted"

    return-object p0

    .line 76
    :pswitch_14
    const-string p0, "notifySession2Created"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
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
    const/4 p0, 0x5

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 107
    invoke-static {p1}, Landroid/media/IMediaCommunicationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    const-string v0, "android.media.IMediaCommunicationService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 113
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 116
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    packed-switch p1, :pswitch_data_8c

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 176
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/IMediaCommunicationServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaCommunicationServiceCallback;

    move-result-object p1

    .line 177
    invoke-interface {p0, p1}, Landroid/media/IMediaCommunicationService;->unregisterCallback(Landroid/media/IMediaCommunicationServiceCallback;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8b

    .line 166
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/IMediaCommunicationServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaCommunicationServiceCallback;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-interface {p0, p1, p2}, Landroid/media/IMediaCommunicationService;->registerCallback(Landroid/media/IMediaCommunicationServiceCallback;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8b

    .line 154
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 156
    sget-object p4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/KeyEvent;

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    .line 159
    invoke-interface {p0, p1, p4, p2}, Landroid/media/IMediaCommunicationService;->dispatchMediaKeyEvent(Ljava/lang/String;Landroid/view/KeyEvent;Z)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8b

    .line 145
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 146
    invoke-interface {p0, p1}, Landroid/media/IMediaCommunicationService;->getSession2Tokens(I)Landroid/media/MediaParceledListSlice;

    move-result-object p0

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_8b

    .line 132
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 137
    invoke-interface {p0, p1, p4, p2}, Landroid/media/IMediaCommunicationService;->isTrusted(Ljava/lang/String;II)Z

    move-result p0

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_8b

    .line 124
    :pswitch_7d
    sget-object p1, Landroid/media/Session2Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/Session2Token;

    .line 125
    invoke-interface {p0, p1}, Landroid/media/IMediaCommunicationService;->notifySession2Created(Landroid/media/Session2Token;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_8b
    return v1

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_66
        :pswitch_57
        :pswitch_40
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
