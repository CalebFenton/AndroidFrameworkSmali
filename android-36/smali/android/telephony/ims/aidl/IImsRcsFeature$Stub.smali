.class public abstract Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;
.super Landroid/os/Binder;
.source "IImsRcsFeature.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRcsFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRcsFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCapabilityCallback:I = 0x3

.field static final blacklist TRANSACTION_changeCapabilitiesConfiguration:I = 0x5

.field static final blacklist TRANSACTION_getFeatureState:I = 0x2

.field static final blacklist TRANSACTION_publishCapabilities:I = 0x8

.field static final blacklist TRANSACTION_queryCapabilityConfiguration:I = 0x6

.field static final blacklist TRANSACTION_queryCapabilityStatus:I = 0x1

.field static final blacklist TRANSACTION_removeCapabilityCallback:I = 0x4

.field static final blacklist TRANSACTION_sendOptionsCapabilityRequest:I = 0xa

.field static final blacklist TRANSACTION_setCapabilityExchangeEventListener:I = 0x7

.field static final blacklist TRANSACTION_subscribeForCapabilities:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.telephony.ims.aidl.IImsRcsFeature"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsRcsFeature"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRcsFeature;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsFeature;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_24

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 130
    :pswitch_5
    const-string v0, "sendOptionsCapabilityRequest"

    return-object v0

    .line 126
    :pswitch_8
    const-string v0, "subscribeForCapabilities"

    return-object v0

    .line 122
    :pswitch_b
    const-string v0, "publishCapabilities"

    return-object v0

    .line 118
    :pswitch_e
    const-string v0, "setCapabilityExchangeEventListener"

    return-object v0

    .line 114
    :pswitch_11
    const-string v0, "queryCapabilityConfiguration"

    return-object v0

    .line 110
    :pswitch_14
    const-string v0, "changeCapabilitiesConfiguration"

    return-object v0

    .line 106
    :pswitch_17
    const-string v0, "removeCapabilityCallback"

    return-object v0

    .line 102
    :pswitch_1a
    const-string v0, "addCapabilityCallback"

    return-object v0

    .line 98
    :pswitch_1d
    const-string v0, "getFeatureState"

    return-object v0

    .line 94
    :pswitch_20
    const-string v0, "queryCapabilityStatus"

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

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 423
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 141
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 145
    const-string v0, "android.telephony.ims.aidl.IImsRcsFeature"

    .line 146
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 153
    :cond_16
    packed-switch p1, :pswitch_data_d6

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 238
    :pswitch_1e
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 240
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 242
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ims/aidl/IOptionsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    move-result-object v4

    .line 243
    .local v4, "_arg2":Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V

    .line 245
    goto/16 :goto_d5

    .line 228
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    :pswitch_3a
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 230
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    move-result-object v3

    .line 231
    .local v3, "_arg1":Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->subscribeForCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V

    .line 233
    goto/16 :goto_d5

    .line 218
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IPublishResponseCallback;

    move-result-object v3

    .line 221
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IPublishResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V

    .line 223
    goto/16 :goto_d5

    .line 210
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IPublishResponseCallback;
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    move-result-object v2

    .line 211
    .local v2, "_arg0":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V

    .line 213
    goto :goto_d5

    .line 198
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v4

    .line 203
    .local v4, "_arg2":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 205
    goto :goto_d5

    .line 188
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_8a
    sget-object v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 190
    .local v2, "_arg0":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v3

    .line 191
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 193
    goto :goto_d5

    .line 180
    .end local v2    # "_arg0":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 181
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 183
    goto :goto_d5

    .line 172
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 173
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 175
    goto :goto_d5

    .line 164
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_bf
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->getFeatureState()I

    move-result v2

    .line 165
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    goto :goto_d5

    .line 157
    .end local v2    # "_result":I
    :pswitch_ca
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->queryCapabilityStatus()I

    move-result v2

    .line 158
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    nop

    .line 252
    .end local v2    # "_result":I
    :goto_d5
    return v1

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_bf
        :pswitch_b0
        :pswitch_a1
        :pswitch_8a
        :pswitch_73
        :pswitch_64
        :pswitch_50
        :pswitch_3a
        :pswitch_1e
    .end packed-switch
.end method
