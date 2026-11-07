.class public abstract Landroid/media/IMediaRoute2ProviderService$Stub;
.super Landroid/os/Binder;
.source "IMediaRoute2ProviderService.java"

# interfaces
.implements Landroid/media/IMediaRoute2ProviderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRoute2ProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deselectRoute:I = 0x7

.field static final blacklist TRANSACTION_releaseSession:I = 0xa

.field static final blacklist TRANSACTION_requestCreateSession:I = 0x4

.field static final blacklist TRANSACTION_requestCreateSystemMediaSession:I = 0x5

.field static final blacklist TRANSACTION_selectRoute:I = 0x6

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setRouteVolume:I = 0x3

.field static final blacklist TRANSACTION_setSessionVolume:I = 0x9

.field static final blacklist TRANSACTION_transferToRoute:I = 0x8

.field static final blacklist TRANSACTION_updateDiscoveryPreference:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.media.IMediaRoute2ProviderService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRoute2ProviderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    const-string v0, "android.media.IMediaRoute2ProviderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRoute2ProviderService;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRoute2ProviderService;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRoute2ProviderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_24

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 135
    :pswitch_5
    const-string v0, "releaseSession"

    return-object v0

    .line 131
    :pswitch_8
    const-string v0, "setSessionVolume"

    return-object v0

    .line 127
    :pswitch_b
    const-string v0, "transferToRoute"

    return-object v0

    .line 123
    :pswitch_e
    const-string v0, "deselectRoute"

    return-object v0

    .line 119
    :pswitch_11
    const-string v0, "selectRoute"

    return-object v0

    .line 115
    :pswitch_14
    const-string v0, "requestCreateSystemMediaSession"

    return-object v0

    .line 111
    :pswitch_17
    const-string v0, "requestCreateSession"

    return-object v0

    .line 107
    :pswitch_1a
    const-string v0, "setRouteVolume"

    return-object v0

    .line 103
    :pswitch_1d
    const-string v0, "updateDiscoveryPreference"

    return-object v0

    .line 99
    :pswitch_20
    const-string v0, "setCallback"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
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

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 463
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 146
    invoke-static {p1}, Landroid/media/IMediaRoute2ProviderService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 150
    const-string v7, "android.media.IMediaRoute2ProviderService"

    .line 151
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 152
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 155
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    return v8

    .line 158
    :cond_16
    packed-switch p1, :pswitch_data_ec

    .line 278
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 269
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 271
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IMediaRoute2ProviderService$Stub;->releaseSession(JLjava/lang/String;)V

    .line 274
    goto/16 :goto_eb

    .line 257
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 259
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 261
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 262
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRoute2ProviderService$Stub;->setSessionVolume(JLjava/lang/String;I)V

    .line 264
    goto/16 :goto_eb

    .line 245
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 247
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 249
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRoute2ProviderService$Stub;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 252
    goto/16 :goto_eb

    .line 233
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 235
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRoute2ProviderService$Stub;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 240
    goto/16 :goto_eb

    .line 221
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 223
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 225
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 226
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRoute2ProviderService$Stub;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 228
    goto :goto_eb

    .line 205
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 207
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "_arg3":Ljava/lang/String;
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 214
    .local v6, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/IMediaRoute2ProviderService$Stub;->requestCreateSystemMediaSession(JILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 216
    goto :goto_eb

    .line 191
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_arg4":Landroid/os/Bundle;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 193
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 197
    .restart local v4    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 198
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IMediaRoute2ProviderService$Stub;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 200
    goto :goto_eb

    .line 179
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 181
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 184
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IMediaRoute2ProviderService$Stub;->setRouteVolume(JLjava/lang/String;I)V

    .line 186
    goto :goto_eb

    .line 171
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_cd
    sget-object v1, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RouteDiscoveryPreference;

    .line 172
    .local v1, "_arg0":Landroid/media/RouteDiscoveryPreference;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v1}, Landroid/media/IMediaRoute2ProviderService$Stub;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V

    .line 174
    goto :goto_eb

    .line 163
    .end local v1    # "_arg0":Landroid/media/RouteDiscoveryPreference;
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderServiceCallback;

    move-result-object v1

    .line 164
    .local v1, "_arg0":Landroid/media/IMediaRoute2ProviderServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v1}, Landroid/media/IMediaRoute2ProviderService$Stub;->setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V

    .line 166
    nop

    .line 281
    .end local v1    # "_arg0":Landroid/media/IMediaRoute2ProviderServiceCallback;
    :goto_eb
    return v8

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_dc
        :pswitch_cd
        :pswitch_ba
        :pswitch_9d
        :pswitch_7d
        :pswitch_6a
        :pswitch_56
        :pswitch_42
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
