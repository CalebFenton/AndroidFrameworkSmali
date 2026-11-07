.class public abstract Landroid/media/tv/ad/ITvAdClient$Stub;
.super Landroid/os/Binder;
.source "ITvAdClient.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x3

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0x5

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0x7

.field static final blacklist TRANSACTION_onRequestCurrentVideoBounds:I = 0x4

.field static final blacklist TRANSACTION_onRequestSigning:I = 0x8

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0x6

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onSessionReleased:I = 0x2

.field static final blacklist TRANSACTION_onTvAdSessionData:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.media.tv.ad.ITvAdClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "android.media.tv.ad.ITvAdClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdClient;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ad/ITvAdClient;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/media/tv/ad/ITvAdClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ad/ITvAdClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_20

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_5
    const-string v0, "onTvAdSessionData"

    return-object v0

    .line 115
    :pswitch_8
    const-string v0, "onRequestSigning"

    return-object v0

    .line 111
    :pswitch_b
    const-string v0, "onRequestCurrentTvInputId"

    return-object v0

    .line 107
    :pswitch_e
    const-string v0, "onRequestTrackInfoList"

    return-object v0

    .line 103
    :pswitch_11
    const-string v0, "onRequestCurrentChannelUri"

    return-object v0

    .line 99
    :pswitch_14
    const-string v0, "onRequestCurrentVideoBounds"

    return-object v0

    .line 95
    :pswitch_17
    const-string v0, "onLayoutSurface"

    return-object v0

    .line 91
    :pswitch_1a
    const-string v0, "onSessionReleased"

    return-object v0

    .line 87
    :pswitch_1d
    const-string v0, "onSessionCreated"

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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 398
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Landroid/media/tv/ad/ITvAdClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const-string v6, "android.media.tv.ad.ITvAdClient"

    .line 135
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 136
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 139
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v7

    .line 142
    :cond_16
    packed-switch p1, :pswitch_data_c2

    .line 244
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 233
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 237
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 238
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/ad/ITvAdClient$Stub;->onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 240
    goto/16 :goto_c0

    .line 217
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 225
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 226
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ad/ITvAdClient$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 228
    goto :goto_c0

    .line 209
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->onRequestCurrentTvInputId(I)V

    .line 212
    goto :goto_c0

    .line 201
    .end local v1    # "_arg0":I
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->onRequestTrackInfoList(I)V

    .line 204
    goto :goto_c0

    .line 193
    .end local v1    # "_arg0":I
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->onRequestCurrentChannelUri(I)V

    .line 196
    goto :goto_c0

    .line 185
    .end local v1    # "_arg0":I
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->onRequestCurrentVideoBounds(I)V

    .line 188
    goto :goto_c0

    .line 169
    .end local v1    # "_arg0":I
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 175
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 177
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ad/ITvAdClient$Stub;->onLayoutSurface(IIIII)V

    .line 180
    goto :goto_c0

    .line 161
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v1}, Landroid/media/tv/ad/ITvAdClient$Stub;->onSessionReleased(I)V

    .line 164
    goto :goto_c0

    .line 147
    .end local v1    # "_arg0":I
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 151
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputChannel;

    .line 153
    .local v3, "_arg2":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 154
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/ad/ITvAdClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 156
    nop

    .line 247
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/view/InputChannel;
    .end local v4    # "_arg3":I
    :goto_c0
    return v7

    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_9a
        :pswitch_7e
        :pswitch_73
        :pswitch_68
        :pswitch_5d
        :pswitch_52
        :pswitch_36
        :pswitch_1e
    .end packed-switch
.end method
