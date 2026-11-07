.class public abstract Landroid/media/tv/ITvInputManagerCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInputManagerCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputManagerCallback"

.field static final blacklist TRANSACTION_onCurrentTunedInfosUpdated:I = 0x6

.field static final greylist-max-o TRANSACTION_onInputAdded:I = 0x1

.field static final greylist-max-o TRANSACTION_onInputRemoved:I = 0x2

.field static final greylist-max-o TRANSACTION_onInputStateChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onInputUpdated:I = 0x3

.field static final greylist-max-o TRANSACTION_onTvInputInfoUpdated:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.media.tv.ITvInputManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputManagerCallback;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_18

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_5
    const-string v0, "onCurrentTunedInfosUpdated"

    return-object v0

    .line 93
    :pswitch_8
    const-string v0, "onTvInputInfoUpdated"

    return-object v0

    .line 89
    :pswitch_b
    const-string v0, "onInputStateChanged"

    return-object v0

    .line 85
    :pswitch_e
    const-string v0, "onInputUpdated"

    return-object v0

    .line 81
    :pswitch_11
    const-string v0, "onInputRemoved"

    return-object v0

    .line 77
    :pswitch_14
    const-string v0, "onInputAdded"

    return-object v0

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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 279
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    const-string v0, "android.media.tv.ITvInputManagerCallback"

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_16
    packed-switch p1, :pswitch_data_6c

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 167
    :pswitch_1e
    sget-object v2, Landroid/media/tv/TunedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 168
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onCurrentTunedInfosUpdated(Ljava/util/List;)V

    .line 170
    goto :goto_6a

    .line 159
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    :pswitch_2b
    sget-object v2, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputInfo;

    .line 160
    .local v2, "_arg0":Landroid/media/tv/TvInputInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V

    .line 162
    goto :goto_6a

    .line 149
    .end local v2    # "_arg0":Landroid/media/tv/TvInputInfo;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 152
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputStateChanged(Ljava/lang/String;I)V

    .line 154
    goto :goto_6a

    .line 141
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputUpdated(Ljava/lang/String;)V

    .line 144
    goto :goto_6a

    .line 133
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputRemoved(Ljava/lang/String;)V

    .line 136
    goto :goto_6a

    .line 125
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputAdded(Ljava/lang/String;)V

    .line 128
    nop

    .line 177
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_6a
    return v1

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_54
        :pswitch_49
        :pswitch_3a
        :pswitch_2b
        :pswitch_1e
    .end packed-switch
.end method
