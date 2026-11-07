.class public abstract Landroid/media/IMediaRouter2$Stub;
.super Landroid/os/Binder;
.source "IMediaRouter2.java"

# interfaces
.implements Landroid/media/IMediaRouter2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouter2$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyDeviceSuggestionsUpdated:I = 0x7

.field static final blacklist TRANSACTION_notifyRouterRegistered:I = 0x1

.field static final blacklist TRANSACTION_notifyRoutesUpdated:I = 0x2

.field static final blacklist TRANSACTION_notifySessionCreated:I = 0x3

.field static final blacklist TRANSACTION_notifySessionInfoChanged:I = 0x4

.field static final blacklist TRANSACTION_notifySessionReleased:I = 0x5

.field static final blacklist TRANSACTION_requestCreateSessionByManager:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.media.IMediaRouter2"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouter2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "android.media.IMediaRouter2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRouter2;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRouter2;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/media/IMediaRouter2$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRouter2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_1a

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 105
    :pswitch_5
    const-string v0, "notifyDeviceSuggestionsUpdated"

    return-object v0

    .line 101
    :pswitch_8
    const-string v0, "requestCreateSessionByManager"

    return-object v0

    .line 97
    :pswitch_b
    const-string v0, "notifySessionReleased"

    return-object v0

    .line 93
    :pswitch_e
    const-string v0, "notifySessionInfoChanged"

    return-object v0

    .line 89
    :pswitch_11
    const-string v0, "notifySessionCreated"

    return-object v0

    .line 85
    :pswitch_14
    const-string v0, "notifyRoutesUpdated"

    return-object v0

    .line 81
    :pswitch_17
    const-string v0, "notifyRouterRegistered"

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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 322
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 116
    invoke-static {p1}, Landroid/media/IMediaRouter2$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 120
    const-string v0, "android.media.IMediaRouter2"

    .line 121
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 128
    :cond_16
    packed-switch p1, :pswitch_data_9e

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 189
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/SuggestedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 192
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2$Stub;->notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V

    .line 194
    goto :goto_9d

    .line 177
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 179
    .local v2, "_arg0":J
    sget-object v4, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RoutingSessionInfo;

    .line 181
    .local v4, "_arg1":Landroid/media/RoutingSessionInfo;
    sget-object v5, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 182
    .local v5, "_arg2":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/IMediaRouter2$Stub;->requestCreateSessionByManager(JLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 184
    goto :goto_9d

    .line 169
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/media/RoutingSessionInfo;
    .end local v5    # "_arg2":Landroid/media/MediaRoute2Info;
    :pswitch_4a
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 170
    .local v2, "_arg0":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 172
    goto :goto_9d

    .line 161
    .end local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    :pswitch_59
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 162
    .restart local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2$Stub;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V

    .line 164
    goto :goto_9d

    .line 151
    .end local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg0":I
    sget-object v3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 154
    .local v3, "_arg1":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2$Stub;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V

    .line 156
    goto :goto_9d

    .line 143
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/RoutingSessionInfo;
    :pswitch_7b
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2$Stub;->notifyRoutesUpdated(Ljava/util/List;)V

    .line 146
    goto :goto_9d

    .line 133
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :pswitch_88
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 135
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    sget-object v3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 136
    .restart local v3    # "_arg1":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2$Stub;->notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V

    .line 138
    nop

    .line 201
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    .end local v3    # "_arg1":Landroid/media/RoutingSessionInfo;
    :goto_9d
    return v1

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_88
        :pswitch_7b
        :pswitch_68
        :pswitch_59
        :pswitch_4a
        :pswitch_2f
        :pswitch_1e
    .end packed-switch
.end method
