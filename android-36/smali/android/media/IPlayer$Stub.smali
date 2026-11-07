.class public abstract Landroid/media/IPlayer$Stub;
.super Landroid/os/Binder;
.source "IPlayer.java"

# interfaces
.implements Landroid/media/IPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IPlayer"

.field static final greylist-max-o TRANSACTION_applyVolumeShaper:I = 0x7

.field static final greylist-max-o TRANSACTION_pause:I = 0x2

.field static final greylist-max-o TRANSACTION_setPan:I = 0x5

.field static final greylist-max-o TRANSACTION_setStartDelayMs:I = 0x6

.field static final greylist-max-o TRANSACTION_setVolume:I = 0x4

.field static final greylist-max-o TRANSACTION_start:I = 0x1

.field static final greylist-max-o TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.media.IPlayer"

    invoke-virtual {p0, p0, v0}, Landroid/media/IPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.media.IPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IPlayer;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/media/IPlayer;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/media/IPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_1a

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_5
    const-string v0, "applyVolumeShaper"

    return-object v0

    .line 97
    :pswitch_8
    const-string v0, "setStartDelayMs"

    return-object v0

    .line 93
    :pswitch_b
    const-string v0, "setPan"

    return-object v0

    .line 89
    :pswitch_e
    const-string v0, "setVolume"

    return-object v0

    .line 85
    :pswitch_11
    const-string v0, "stop"

    return-object v0

    .line 81
    :pswitch_14
    const-string v0, "pause"

    return-object v0

    .line 77
    :pswitch_17
    const-string v0, "start"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 292
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 112
    invoke-static {p1}, Landroid/media/IPlayer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const-string v0, "android.media.IPlayer"

    .line 117
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    .line 124
    :cond_16
    packed-switch p1, :pswitch_data_64

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 168
    :pswitch_1e
    sget-object v2, Landroid/media/VolumeShaperConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/VolumeShaperConfiguration;

    .line 170
    .local v2, "_arg0":Landroid/media/VolumeShaperConfiguration;
    sget-object v3, Landroid/media/VolumeShaperOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/VolumeShaperOperation;

    .line 171
    .local v3, "_arg1":Landroid/media/VolumeShaperOperation;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/media/IPlayer$Stub;->applyVolumeShaper(Landroid/media/VolumeShaperConfiguration;Landroid/media/VolumeShaperOperation;)V

    .line 173
    goto :goto_62

    .line 160
    .end local v2    # "_arg0":Landroid/media/VolumeShaperConfiguration;
    .end local v3    # "_arg1":Landroid/media/VolumeShaperOperation;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/media/IPlayer$Stub;->setStartDelayMs(I)V

    .line 163
    goto :goto_62

    .line 152
    .end local v2    # "_arg0":I
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 153
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Landroid/media/IPlayer$Stub;->setPan(F)V

    .line 155
    goto :goto_62

    .line 144
    .end local v2    # "_arg0":F
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 145
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/media/IPlayer$Stub;->setVolume(F)V

    .line 147
    goto :goto_62

    .line 138
    .end local v2    # "_arg0":F
    :pswitch_56
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->stop()V

    .line 139
    goto :goto_62

    .line 133
    :pswitch_5a
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->pause()V

    .line 134
    goto :goto_62

    .line 128
    :pswitch_5e
    invoke-virtual {p0}, Landroid/media/IPlayer$Stub;->start()V

    .line 129
    nop

    .line 180
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_4b
        :pswitch_40
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
