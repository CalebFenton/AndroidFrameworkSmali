.class public abstract Landroid/media/session/ISessionControllerCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionControllerCallback.java"

# interfaces
.implements Landroid/media/session/ISessionControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionControllerCallback"

.field static final greylist-max-o TRANSACTION_onEvent:I = 0x1

.field static final greylist-max-o TRANSACTION_onExtrasChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onMetadataChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onQueueChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_onSessionDestroyed:I = 0x2

.field static final greylist-max-o TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "android.media.session.ISessionControllerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/ISessionControllerCallback;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/media/session/ISessionControllerCallback;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/media/session/ISessionControllerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_1e

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_5
    const-string v0, "onVolumeInfoChanged"

    return-object v0

    .line 105
    :pswitch_8
    const-string v0, "onExtrasChanged"

    return-object v0

    .line 101
    :pswitch_b
    const-string v0, "onQueueTitleChanged"

    return-object v0

    .line 97
    :pswitch_e
    const-string v0, "onQueueChanged"

    return-object v0

    .line 93
    :pswitch_11
    const-string v0, "onMetadataChanged"

    return-object v0

    .line 89
    :pswitch_14
    const-string v0, "onPlaybackStateChanged"

    return-object v0

    .line 85
    :pswitch_17
    const-string v0, "onSessionDestroyed"

    return-object v0

    .line 81
    :pswitch_1a
    const-string v0, "onEvent"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 336
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/media/session/ISessionControllerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 124
    const-string v0, "android.media.session.ISessionControllerCallback"

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 132
    :cond_16
    packed-switch p1, :pswitch_data_90

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 192
    :pswitch_1e
    sget-object v2, Landroid/media/session/MediaController$PlaybackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController$PlaybackInfo;

    .line 193
    .local v2, "_arg0":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionControllerCallback$Stub;->onVolumeInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V

    .line 195
    goto :goto_8f

    .line 184
    .end local v2    # "_arg0":Landroid/media/session/MediaController$PlaybackInfo;
    :pswitch_2d
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 185
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 187
    goto :goto_8f

    .line 176
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_3c
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 177
    .local v2, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 179
    goto :goto_8f

    .line 168
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :pswitch_4b
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 169
    .local v2, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionControllerCallback$Stub;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V

    .line 171
    goto :goto_8f

    .line 160
    .end local v2    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :pswitch_5a
    sget-object v2, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaMetadata;

    .line 161
    .local v2, "_arg0":Landroid/media/MediaMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionControllerCallback$Stub;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 163
    goto :goto_8f

    .line 152
    .end local v2    # "_arg0":Landroid/media/MediaMetadata;
    :pswitch_69
    sget-object v2, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/PlaybackState;

    .line 153
    .local v2, "_arg0":Landroid/media/session/PlaybackState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionControllerCallback$Stub;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 155
    goto :goto_8f

    .line 146
    .end local v2    # "_arg0":Landroid/media/session/PlaybackState;
    :pswitch_78
    invoke-virtual {p0}, Landroid/media/session/ISessionControllerCallback$Stub;->onSessionDestroyed()V

    .line 147
    goto :goto_8f

    .line 137
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 140
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    nop

    .line 202
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :goto_8f
    return v1

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_78
        :pswitch_69
        :pswitch_5a
        :pswitch_4b
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
