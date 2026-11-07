.class public abstract Landroid/media/tv/ad/ITvAdService$Stub;
.super Landroid/os/Binder;
.source "ITvAdService.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSession:I = 0x3

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_sendAppLinkCommand:I = 0x4

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.media.tv.ad.ITvAdService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.media.tv.ad.ITvAdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ad/ITvAdService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/media/tv/ad/ITvAdService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/ITvAdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_12

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "sendAppLinkCommand"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "createSession"

    return-object v0

    .line 76
    :pswitch_b
    const-string v0, "unregisterCallback"

    return-object v0

    .line 72
    :pswitch_e
    const-string v0, "registerCallback"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 228
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/media/tv/ad/ITvAdService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const-string v0, "android.media.tv.ad.ITvAdService"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_6c

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 142
    :pswitch_1e
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 143
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdService$Stub;->sendAppLinkCommand(Landroid/os/Bundle;)V

    .line 145
    goto :goto_6a

    .line 128
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_2d
    sget-object v2, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputChannel;

    .line 130
    .local v2, "_arg0":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object v3

    .line 132
    .local v3, "_arg1":Landroid/media/tv/ad/ITvAdSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/ad/ITvAdService$Stub;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    goto :goto_6a

    .line 120
    .end local v2    # "_arg0":Landroid/view/InputChannel;
    .end local v3    # "_arg1":Landroid/media/tv/ad/ITvAdSessionCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ad/ITvAdServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdServiceCallback;

    move-result-object v2

    .line 121
    .local v2, "_arg0":Landroid/media/tv/ad/ITvAdServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdService$Stub;->unregisterCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V

    .line 123
    goto :goto_6a

    .line 112
    .end local v2    # "_arg0":Landroid/media/tv/ad/ITvAdServiceCallback;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ad/ITvAdServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdServiceCallback;

    move-result-object v2

    .line 113
    .restart local v2    # "_arg0":Landroid/media/tv/ad/ITvAdServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Landroid/media/tv/ad/ITvAdService$Stub;->registerCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V

    .line 115
    nop

    .line 152
    .end local v2    # "_arg0":Landroid/media/tv/ad/ITvAdServiceCallback;
    :goto_6a
    return v1

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_4c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
