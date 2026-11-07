.class public abstract Landroid/hardware/contexthub/IContextHub$Stub;
.super Landroid/os/Binder;
.source "IContextHub.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHub$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableNanoapp:I = 0x4

.field static final blacklist TRANSACTION_enableNanoapp:I = 0x5

.field static final blacklist TRANSACTION_getContextHubs:I = 0x1

.field static final blacklist TRANSACTION_getEndpoints:I = 0x11

.field static final blacklist TRANSACTION_getHubs:I = 0x10

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getPreloadedNanoappIds:I = 0xc

.field static final blacklist TRANSACTION_loadNanoapp:I = 0x2

.field static final blacklist TRANSACTION_onHostEndpointConnected:I = 0xa

.field static final blacklist TRANSACTION_onHostEndpointDisconnected:I = 0xb

.field static final blacklist TRANSACTION_onNanSessionStateChanged:I = 0xd

.field static final blacklist TRANSACTION_onSettingChanged:I = 0x6

.field static final blacklist TRANSACTION_queryNanoapps:I = 0x7

.field static final blacklist TRANSACTION_registerCallback:I = 0x8

.field static final blacklist TRANSACTION_registerEndpointHub:I = 0x12

.field static final blacklist TRANSACTION_sendMessageDeliveryStatusToHub:I = 0xf

.field static final blacklist TRANSACTION_sendMessageToHub:I = 0x9

.field static final blacklist TRANSACTION_setTestMode:I = 0xe

.field static final blacklist TRANSACTION_unloadNanoapp:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHub$Stub;->markVintfStability()V

    .line 103
    sget-object v0, Landroid/hardware/contexthub/IContextHub$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contexthub/IContextHub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHub;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 111
    if-nez p0, :cond_4

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_4
    sget-object v0, Landroid/hardware/contexthub/IContextHub$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 115
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/contexthub/IContextHub;

    if-eqz v1, :cond_14

    .line 116
    move-object v1, v0

    check-cast v1, Landroid/hardware/contexthub/IContextHub;

    return-object v1

    .line 118
    :cond_14
    new-instance v1, Landroid/hardware/contexthub/IContextHub$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/contexthub/IContextHub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 122
    return-object p0
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

    .line 126
    sget-object v0, Landroid/hardware/contexthub/IContextHub$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 127
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v2

    .line 134
    :cond_16
    if-ne p1, v1, :cond_23

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHub$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return v2

    .line 139
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHub$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v2

    .line 144
    :cond_33
    packed-switch p1, :pswitch_data_198

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 321
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contexthub/IEndpointCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IEndpointCallback;

    move-result-object v1

    .line 323
    .local v1, "_arg0":Landroid/hardware/contexthub/IEndpointCallback;
    sget-object v3, Landroid/hardware/contexthub/HubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubInfo;

    .line 324
    .local v3, "_arg1":Landroid/hardware/contexthub/HubInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IContextHub$Stub;->registerEndpointHub(Landroid/hardware/contexthub/IEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object v4

    .line 326
    .local v4, "_result":Landroid/hardware/contexthub/IEndpointCommunication;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 328
    goto/16 :goto_197

    .line 313
    .end local v1    # "_arg0":Landroid/hardware/contexthub/IEndpointCallback;
    .end local v3    # "_arg1":Landroid/hardware/contexthub/HubInfo;
    .end local v4    # "_result":Landroid/hardware/contexthub/IEndpointCommunication;
    :pswitch_5a
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHub$Stub;->getEndpoints()Ljava/util/List;

    move-result-object v1

    .line 314
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/EndpointInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 316
    goto/16 :goto_197

    .line 306
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/EndpointInfo;>;"
    :pswitch_66
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHub$Stub;->getHubs()Ljava/util/List;

    move-result-object v1

    .line 307
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 309
    goto/16 :goto_197

    .line 296
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubInfo;>;"
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 298
    .local v1, "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/MessageDeliveryStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/MessageDeliveryStatus;

    .line 299
    .local v3, "_arg1":Landroid/hardware/contexthub/MessageDeliveryStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IContextHub$Stub;->sendMessageDeliveryStatusToHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_197

    .line 287
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/MessageDeliveryStatus;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 288
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IContextHub$Stub;->setTestMode(Z)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    goto/16 :goto_197

    .line 278
    .end local v1    # "_arg0":Z
    :pswitch_98
    sget-object v1, Landroid/hardware/contexthub/NanSessionStateUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/NanSessionStateUpdate;

    .line 279
    .local v1, "_arg0":Landroid/hardware/contexthub/NanSessionStateUpdate;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IContextHub$Stub;->onNanSessionStateChanged(Landroid/hardware/contexthub/NanSessionStateUpdate;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto/16 :goto_197

    .line 268
    .end local v1    # "_arg0":Landroid/hardware/contexthub/NanSessionStateUpdate;
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IContextHub$Stub;->getPreloadedNanoappIds(I)[J

    move-result-object v3

    .line 271
    .local v3, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 273
    goto/16 :goto_197

    .line 259
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[J
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    .line 260
    .local v1, "_arg0":C
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IContextHub$Stub;->onHostEndpointDisconnected(C)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto/16 :goto_197

    .line 250
    .end local v1    # "_arg0":C
    :pswitch_ce
    sget-object v1, Landroid/hardware/contexthub/HostEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/HostEndpointInfo;

    .line 251
    .local v1, "_arg0":Landroid/hardware/contexthub/HostEndpointInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IContextHub$Stub;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto/16 :goto_197

    .line 239
    .end local v1    # "_arg0":Landroid/hardware/contexthub/HostEndpointInfo;
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    .local v1, "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/ContextHubMessage;

    .line 242
    .local v3, "_arg1":Landroid/hardware/contexthub/ContextHubMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IContextHub$Stub;->sendMessageToHub(ILandroid/hardware/contexthub/ContextHubMessage;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto/16 :goto_197

    .line 228
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/ContextHubMessage;
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubCallback;

    move-result-object v3

    .line 231
    .local v3, "_arg1":Landroid/hardware/contexthub/IContextHubCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IContextHub$Stub;->registerCallback(ILandroid/hardware/contexthub/IContextHubCallback;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto/16 :goto_197

    .line 219
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/IContextHubCallback;
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v1}, Landroid/hardware/contexthub/IContextHub$Stub;->queryNanoapps(I)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    goto/16 :goto_197

    .line 208
    .end local v1    # "_arg0":I
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 210
    .local v1, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 211
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v1, v3}, Landroid/hardware/contexthub/IContextHub$Stub;->onSettingChanged(BZ)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_197

    .line 195
    .end local v1    # "_arg0":B
    .end local v3    # "_arg1":Z
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 199
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 200
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/contexthub/IContextHub$Stub;->enableNanoapp(IJI)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_197

    .line 182
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 184
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 186
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 187
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/contexthub/IContextHub$Stub;->disableNanoapp(IJI)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_197

    .line 169
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 173
    .restart local v3    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 174
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/contexthub/IContextHub$Stub;->unloadNanoapp(IJI)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_197

    .line 156
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":I
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1    # "_arg0":I
    sget-object v3, Landroid/hardware/contexthub/NanoappBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/NanoappBinary;

    .line 160
    .local v3, "_arg1":Landroid/hardware/contexthub/NanoappBinary;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 161
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/contexthub/IContextHub$Stub;->loadNanoapp(ILandroid/hardware/contexthub/NanoappBinary;I)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    goto :goto_197

    .line 148
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/contexthub/NanoappBinary;
    .end local v4    # "_arg2":I
    :pswitch_18c
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHub$Stub;->getContextHubs()Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/ContextHubInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 151
    nop

    .line 335
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/ContextHubInfo;>;"
    :goto_197
    return v2

    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_18c
        :pswitch_172
        :pswitch_15c
        :pswitch_146
        :pswitch_130
        :pswitch_11e
        :pswitch_10f
        :pswitch_f8
        :pswitch_e1
        :pswitch_ce
        :pswitch_be
        :pswitch_ab
        :pswitch_98
        :pswitch_89
        :pswitch_72
        :pswitch_66
        :pswitch_5a
        :pswitch_3b
    .end packed-switch
.end method
