.class public abstract Landroid/media/IMediaRouter2Manager$Stub;
.super Landroid/os/Binder;
.source "IMediaRouter2Manager.java"

# interfaces
.implements Landroid/media/IMediaRouter2Manager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouter2Manager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_invalidateInstance:I = 0x9

.field static final blacklist TRANSACTION_notifyDeviceSuggestionsUpdated:I = 0x6

.field static final blacklist TRANSACTION_notifyDiscoveryPreferenceChanged:I = 0x4

.field static final blacklist TRANSACTION_notifyRequestFailed:I = 0x8

.field static final blacklist TRANSACTION_notifyRouteListingPreferenceChange:I = 0x5

.field static final blacklist TRANSACTION_notifyRoutesUpdated:I = 0x7

.field static final blacklist TRANSACTION_notifySessionCreated:I = 0x1

.field static final blacklist TRANSACTION_notifySessionReleased:I = 0x3

.field static final blacklist TRANSACTION_notifySessionUpdated:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.media.IMediaRouter2Manager"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouter2Manager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.media.IMediaRouter2Manager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRouter2Manager;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/media/IMediaRouter2Manager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRouter2Manager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_20

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 115
    :pswitch_5
    const-string v0, "invalidateInstance"

    return-object v0

    .line 111
    :pswitch_8
    const-string v0, "notifyRequestFailed"

    return-object v0

    .line 107
    :pswitch_b
    const-string v0, "notifyRoutesUpdated"

    return-object v0

    .line 103
    :pswitch_e
    const-string v0, "notifyDeviceSuggestionsUpdated"

    return-object v0

    .line 99
    :pswitch_11
    const-string v0, "notifyRouteListingPreferenceChange"

    return-object v0

    .line 95
    :pswitch_14
    const-string v0, "notifyDiscoveryPreferenceChanged"

    return-object v0

    .line 91
    :pswitch_17
    const-string v0, "notifySessionReleased"

    return-object v0

    .line 87
    :pswitch_1a
    const-string v0, "notifySessionUpdated"

    return-object v0

    .line 83
    :pswitch_1d
    const-string v0, "notifySessionCreated"

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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 369
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Landroid/media/IMediaRouter2Manager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const-string v0, "android.media.IMediaRouter2Manager"

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v1

    .line 138
    :cond_16
    packed-switch p1, :pswitch_data_ae

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 218
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/IMediaRouter2Manager$Stub;->invalidateInstance()V

    .line 219
    goto/16 :goto_ac

    .line 209
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRequestFailed(II)V

    .line 214
    goto/16 :goto_ac

    .line 201
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_33
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 202
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRoutesUpdated(Ljava/util/List;)V

    .line 204
    goto :goto_ac

    .line 189
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/media/SuggestedDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 194
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IMediaRouter2Manager$Stub;->notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 196
    goto :goto_ac

    .line 179
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/RouteListingPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RouteListingPreference;

    .line 182
    .local v3, "_arg1":Landroid/media/RouteListingPreference;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRouteListingPreferenceChange(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    .line 184
    goto :goto_ac

    .line 169
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/RouteListingPreference;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RouteDiscoveryPreference;

    .line 172
    .local v3, "_arg1":Landroid/media/RouteDiscoveryPreference;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    .line 174
    goto :goto_ac

    .line 161
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/RouteDiscoveryPreference;
    :pswitch_7b
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 162
    .local v2, "_arg0":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 164
    goto :goto_ac

    .line 153
    .end local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    :pswitch_8a
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 154
    .restart local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V

    .line 156
    goto :goto_ac

    .line 143
    .end local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .local v2, "_arg0":I
    sget-object v3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 146
    .local v3, "_arg1":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V

    .line 148
    nop

    .line 226
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/RoutingSessionInfo;
    :goto_ac
    return v1

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_99
        :pswitch_8a
        :pswitch_7b
        :pswitch_68
        :pswitch_55
        :pswitch_40
        :pswitch_33
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method
