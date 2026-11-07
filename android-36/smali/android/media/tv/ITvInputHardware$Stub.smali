.class public abstract Landroid/media/tv/ITvInputHardware$Stub;
.super Landroid/os/Binder;
.source "ITvInputHardware.java"

# interfaces
.implements Landroid/media/tv/ITvInputHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputHardware"

.field static final greylist-max-o TRANSACTION_overrideAudioSink:I = 0x3

.field static final greylist-max-o TRANSACTION_setStreamVolume:I = 0x2

.field static final greylist-max-o TRANSACTION_setSurface:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "android.media.tv.ITvInputHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputHardware;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputHardware;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_e

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 99
    :pswitch_5
    const-string v0, "overrideAudioSink"

    return-object v0

    .line 95
    :pswitch_8
    const-string v0, "setStreamVolume"

    return-object v0

    .line 91
    :pswitch_b
    const-string v0, "setSurface"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 265
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 110
    invoke-static {p1}, Landroid/media/tv/ITvInputHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const-string v0, "android.media.tv.ITvInputHardware"

    .line 115
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 116
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return v1

    .line 122
    :cond_16
    packed-switch p1, :pswitch_data_6e

    .line 164
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 148
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 154
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 156
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 157
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/media/tv/ITvInputHardware$Stub;->overrideAudioSink(ILjava/lang/String;III)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_6c

    .line 139
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    :pswitch_3e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 140
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputHardware$Stub;->setStreamVolume(F)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    goto :goto_6c

    .line 127
    .end local v2    # "_arg0":F
    :pswitch_4d
    move-object v3, p0

    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 129
    .local v2, "_arg0":Landroid/view/Surface;
    sget-object v4, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/TvStreamConfig;

    .line 130
    .local v4, "_arg1":Landroid/media/tv/TvStreamConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v4}, Landroid/media/tv/ITvInputHardware$Stub;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v5

    .line 132
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    nop

    .line 167
    .end local v2    # "_arg0":Landroid/view/Surface;
    .end local v4    # "_arg1":Landroid/media/tv/TvStreamConfig;
    .end local v5    # "_result":Z
    :goto_6c
    return v1

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_3e
        :pswitch_1f
    .end packed-switch
.end method
