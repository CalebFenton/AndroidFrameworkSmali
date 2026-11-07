.class public abstract Landroid/net/INetworkAgentRegistry$Stub;
.super Landroid/os/Binder;
.source "INetworkAgentRegistry.java"

# interfaces
.implements Landroid/net/INetworkAgentRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkAgentRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkAgentRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_sendAddDscpPolicy:I = 0xf

.field static final blacklist TRANSACTION_sendEpsQosSessionAvailable:I = 0x9

.field static final blacklist TRANSACTION_sendExplicitlySelected:I = 0x6

.field static final blacklist TRANSACTION_sendLingerDuration:I = 0xe

.field static final blacklist TRANSACTION_sendLinkProperties:I = 0x2

.field static final blacklist TRANSACTION_sendLocalNetworkConfig:I = 0x4

.field static final blacklist TRANSACTION_sendNetworkCapabilities:I = 0x1

.field static final blacklist TRANSACTION_sendNetworkInfo:I = 0x3

.field static final blacklist TRANSACTION_sendNrQosSessionAvailable:I = 0xa

.field static final blacklist TRANSACTION_sendQosCallbackError:I = 0xc

.field static final blacklist TRANSACTION_sendQosSessionLost:I = 0xb

.field static final blacklist TRANSACTION_sendRemoveAllDscpPolicies:I = 0x11

.field static final blacklist TRANSACTION_sendRemoveDscpPolicy:I = 0x10

.field static final blacklist TRANSACTION_sendScore:I = 0x5

.field static final blacklist TRANSACTION_sendSocketKeepaliveEvent:I = 0x7

.field static final blacklist TRANSACTION_sendTeardownDelayMs:I = 0xd

.field static final blacklist TRANSACTION_sendUnderlyingNetworks:I = 0x8

.field static final blacklist TRANSACTION_sendUnregisterAfterReplacement:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "android.net.INetworkAgentRegistry"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkAgentRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/INetworkAgentRegistry;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_4
    const-string v0, "android.net.INetworkAgentRegistry"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkAgentRegistry;

    if-eqz v1, :cond_14

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkAgentRegistry;

    return-object v1

    .line 101
    :cond_14
    new-instance v1, Landroid/net/INetworkAgentRegistry$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkAgentRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 110
    packed-switch p0, :pswitch_data_3c

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 182
    :pswitch_5
    const-string v0, "sendUnregisterAfterReplacement"

    return-object v0

    .line 178
    :pswitch_8
    const-string v0, "sendRemoveAllDscpPolicies"

    return-object v0

    .line 174
    :pswitch_b
    const-string v0, "sendRemoveDscpPolicy"

    return-object v0

    .line 170
    :pswitch_e
    const-string v0, "sendAddDscpPolicy"

    return-object v0

    .line 166
    :pswitch_11
    const-string v0, "sendLingerDuration"

    return-object v0

    .line 162
    :pswitch_14
    const-string v0, "sendTeardownDelayMs"

    return-object v0

    .line 158
    :pswitch_17
    const-string v0, "sendQosCallbackError"

    return-object v0

    .line 154
    :pswitch_1a
    const-string v0, "sendQosSessionLost"

    return-object v0

    .line 150
    :pswitch_1d
    const-string v0, "sendNrQosSessionAvailable"

    return-object v0

    .line 146
    :pswitch_20
    const-string v0, "sendEpsQosSessionAvailable"

    return-object v0

    .line 142
    :pswitch_23
    const-string v0, "sendUnderlyingNetworks"

    return-object v0

    .line 138
    :pswitch_26
    const-string v0, "sendSocketKeepaliveEvent"

    return-object v0

    .line 134
    :pswitch_29
    const-string v0, "sendExplicitlySelected"

    return-object v0

    .line 130
    :pswitch_2c
    const-string v0, "sendScore"

    return-object v0

    .line 126
    :pswitch_2f
    const-string v0, "sendLocalNetworkConfig"

    return-object v0

    .line 122
    :pswitch_32
    const-string v0, "sendNetworkInfo"

    return-object v0

    .line 118
    :pswitch_35
    const-string v0, "sendLinkProperties"

    return-object v0

    .line 114
    :pswitch_38
    const-string v0, "sendNetworkCapabilities"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
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

    .line 105
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 687
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 193
    invoke-static {p1}, Landroid/net/INetworkAgentRegistry$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 197
    const-string v0, "android.net.INetworkAgentRegistry"

    .line 198
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 199
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 202
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return v1

    .line 205
    :cond_16
    packed-switch p1, :pswitch_data_13a

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 360
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendUnregisterAfterReplacement(I)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_138

    .line 353
    .end local v2    # "_arg0":I
    :pswitch_2a
    invoke-virtual {p0}, Landroid/net/INetworkAgentRegistry$Stub;->sendRemoveAllDscpPolicies()V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto/16 :goto_138

    .line 346
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendRemoveDscpPolicy(I)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    goto/16 :goto_138

    .line 338
    .end local v2    # "_arg0":I
    :pswitch_3e
    sget-object v2, Landroid/net/DscpPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/DscpPolicy;

    .line 339
    .local v2, "_arg0":Landroid/net/DscpPolicy;
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendAddDscpPolicy(Landroid/net/DscpPolicy;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    goto/16 :goto_138

    .line 330
    .end local v2    # "_arg0":Landroid/net/DscpPolicy;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendLingerDuration(I)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    goto/16 :goto_138

    .line 322
    .end local v2    # "_arg0":I
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendTeardownDelayMs(I)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto/16 :goto_138

    .line 312
    .end local v2    # "_arg0":I
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkAgentRegistry$Stub;->sendQosCallbackError(II)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_138

    .line 302
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/QosSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/QosSession;

    .line 305
    .local v3, "_arg1":Landroid/net/QosSession;
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkAgentRegistry$Stub;->sendQosSessionLost(ILandroid/net/QosSession;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_138

    .line 290
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/QosSession;
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/QosSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/QosSession;

    .line 294
    .restart local v3    # "_arg1":Landroid/net/QosSession;
    sget-object v4, Landroid/telephony/data/NrQosSessionAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/NrQosSessionAttributes;

    .line 295
    .local v4, "_arg2":Landroid/telephony/data/NrQosSessionAttributes;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkAgentRegistry$Stub;->sendNrQosSessionAvailable(ILandroid/net/QosSession;Landroid/telephony/data/NrQosSessionAttributes;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto/16 :goto_138

    .line 278
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/QosSession;
    .end local v4    # "_arg2":Landroid/telephony/data/NrQosSessionAttributes;
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/net/QosSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/QosSession;

    .line 282
    .restart local v3    # "_arg1":Landroid/net/QosSession;
    sget-object v4, Landroid/telephony/data/EpsBearerQosSessionAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/EpsBearerQosSessionAttributes;

    .line 283
    .local v4, "_arg2":Landroid/telephony/data/EpsBearerQosSessionAttributes;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkAgentRegistry$Stub;->sendEpsQosSessionAvailable(ILandroid/net/QosSession;Landroid/telephony/data/EpsBearerQosSessionAttributes;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto/16 :goto_138

    .line 270
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/QosSession;
    .end local v4    # "_arg2":Landroid/telephony/data/EpsBearerQosSessionAttributes;
    :pswitch_c2
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 271
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Network;>;"
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendUnderlyingNetworks(Ljava/util/List;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto :goto_138

    .line 260
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Network;>;"
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 262
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 263
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkAgentRegistry$Stub;->sendSocketKeepaliveEvent(II)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto :goto_138

    .line 250
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 252
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 253
    .local v3, "_arg1":Z
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkAgentRegistry$Stub;->sendExplicitlySelected(ZZ)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto :goto_138

    .line 242
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_ed
    sget-object v2, Landroid/net/NetworkScore;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkScore;

    .line 243
    .local v2, "_arg0":Landroid/net/NetworkScore;
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendScore(Landroid/net/NetworkScore;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto :goto_138

    .line 234
    .end local v2    # "_arg0":Landroid/net/NetworkScore;
    :pswitch_fc
    sget-object v2, Landroid/net/connectivity/android/net/LocalNetworkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/android/net/LocalNetworkConfig;

    .line 235
    .local v2, "_arg0":Landroid/net/connectivity/android/net/LocalNetworkConfig;
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendLocalNetworkConfig(Landroid/net/connectivity/android/net/LocalNetworkConfig;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_138

    .line 226
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/LocalNetworkConfig;
    :pswitch_10b
    sget-object v2, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 227
    .local v2, "_arg0":Landroid/net/NetworkInfo;
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_138

    .line 218
    .end local v2    # "_arg0":Landroid/net/NetworkInfo;
    :pswitch_11a
    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 219
    .local v2, "_arg0":Landroid/net/LinkProperties;
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto :goto_138

    .line 210
    .end local v2    # "_arg0":Landroid/net/LinkProperties;
    :pswitch_129
    sget-object v2, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 211
    .local v2, "_arg0":Landroid/net/NetworkCapabilities;
    invoke-virtual {p0, v2}, Landroid/net/INetworkAgentRegistry$Stub;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    nop

    .line 370
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_138
    return v1

    nop

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_129
        :pswitch_11a
        :pswitch_10b
        :pswitch_fc
        :pswitch_ed
        :pswitch_de
        :pswitch_cf
        :pswitch_c2
        :pswitch_a6
        :pswitch_8a
        :pswitch_76
        :pswitch_66
        :pswitch_5a
        :pswitch_4e
        :pswitch_3e
        :pswitch_32
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
