.class public abstract Landroid/media/IRingtonePlayer$Stub;
.super Landroid/os/Binder;
.source "IRingtonePlayer.java"

# interfaces
.implements Landroid/media/IRingtonePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRingtonePlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IRingtonePlayer"

.field static final greylist-max-o TRANSACTION_getTitle:I = 0x8

.field static final greylist-max-o TRANSACTION_isPlaying:I = 0x4

.field static final greylist-max-o TRANSACTION_openRingtone:I = 0x9

.field static final greylist-max-o TRANSACTION_play:I = 0x1

.field static final greylist-max-o TRANSACTION_playAsync:I = 0x6

.field static final blacklist TRANSACTION_playWithVolumeShaping:I = 0x2

.field static final greylist-max-o TRANSACTION_setPlaybackProperties:I = 0x5

.field static final greylist-max-o TRANSACTION_stop:I = 0x3

.field static final greylist-max-o TRANSACTION_stopAsync:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.media.IRingtonePlayer"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRingtonePlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    const-string v0, "android.media.IRingtonePlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_14

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/media/IRingtonePlayer;

    return-object v1

    .line 76
    :cond_14
    new-instance v1, Landroid/media/IRingtonePlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IRingtonePlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_20

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 121
    :pswitch_5
    const-string v0, "openRingtone"

    return-object v0

    .line 117
    :pswitch_8
    const-string v0, "getTitle"

    return-object v0

    .line 113
    :pswitch_b
    const-string v0, "stopAsync"

    return-object v0

    .line 109
    :pswitch_e
    const-string v0, "playAsync"

    return-object v0

    .line 105
    :pswitch_11
    const-string v0, "setPlaybackProperties"

    return-object v0

    .line 101
    :pswitch_14
    const-string v0, "isPlaying"

    return-object v0

    .line 97
    :pswitch_17
    const-string v0, "stop"

    return-object v0

    .line 93
    :pswitch_1a
    const-string v0, "playWithVolumeShaping"

    return-object v0

    .line 89
    :pswitch_1d
    const-string v0, "play"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 434
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 132
    invoke-static {p1}, Landroid/media/IRingtonePlayer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 136
    const-string v7, "android.media.IRingtonePlayer"

    .line 137
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 138
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 141
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v8

    .line 144
    :cond_16
    packed-switch p1, :pswitch_data_102

    .line 255
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 246
    :pswitch_1e
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 247
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v1}, Landroid/media/IRingtonePlayer$Stub;->openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 249
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 251
    goto/16 :goto_100

    .line 236
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_35
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 237
    .restart local v1    # "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v1}, Landroid/media/IRingtonePlayer$Stub;->getTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    goto/16 :goto_100

    .line 230
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {p0}, Landroid/media/IRingtonePlayer$Stub;->stopAsync()V

    .line 231
    goto/16 :goto_100

    .line 215
    :pswitch_51
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 217
    .restart local v1    # "_arg0":Landroid/net/Uri;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 219
    .local v2, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 221
    .local v3, "_arg2":Z
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioAttributes;

    .line 223
    .local v4, "_arg3":Landroid/media/AudioAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 224
    .local v5, "_arg4":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IRingtonePlayer$Stub;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V

    .line 226
    goto/16 :goto_100

    .line 201
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/media/AudioAttributes;
    .end local v5    # "_arg4":F
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 203
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 205
    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 207
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 208
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IRingtonePlayer$Stub;->setPlaybackProperties(Landroid/os/IBinder;FZZ)V

    .line 210
    goto :goto_100

    .line 191
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 192
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v1}, Landroid/media/IRingtonePlayer$Stub;->isPlaying(Landroid/os/IBinder;)Z

    move-result v2

    .line 194
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 196
    goto :goto_100

    .line 183
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 184
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v1}, Landroid/media/IRingtonePlayer$Stub;->stop(Landroid/os/IBinder;)V

    .line 186
    goto :goto_100

    .line 165
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 167
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 169
    .local v2, "_arg1":Landroid/net/Uri;
    sget-object v3, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    .line 171
    .local v3, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 173
    .local v4, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 175
    .local v5, "_arg4":Z
    sget-object v6, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/VolumeShaper$Configuration;

    .line 176
    .local v6, "_arg5":Landroid/media/VolumeShaper$Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/IRingtonePlayer$Stub;->playWithVolumeShaping(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZLandroid/media/VolumeShaper$Configuration;)V

    .line 178
    goto :goto_100

    .line 149
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/media/AudioAttributes;
    .end local v4    # "_arg3":F
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/media/VolumeShaper$Configuration;
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 151
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    .line 153
    .restart local v2    # "_arg1":Landroid/net/Uri;
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/media/AudioAttributes;

    .line 155
    .restart local v3    # "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 157
    .restart local v4    # "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 158
    .restart local v5    # "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IRingtonePlayer$Stub;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V

    .line 160
    nop

    .line 258
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Landroid/media/AudioAttributes;
    .end local v4    # "_arg3":F
    .end local v5    # "_arg4":Z
    :goto_100
    return v8

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_da
        :pswitch_ae
        :pswitch_a3
        :pswitch_91
        :pswitch_7a
        :pswitch_51
        :pswitch_4c
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
