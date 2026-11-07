.class public abstract Landroid/net/wifi/usd/IUsdManager$Stub;
.super Landroid/os/Binder;
.source "IUsdManager.java"

# interfaces
.implements Landroid/net/wifi/usd/IUsdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/usd/IUsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/usd/IUsdManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelPublish:I = 0x4

.field static final blacklist TRANSACTION_cancelSubscribe:I = 0x3

.field static final blacklist TRANSACTION_getCharacteristics:I = 0x1

.field static final blacklist TRANSACTION_publish:I = 0x6

.field static final blacklist TRANSACTION_registerPublisherStatusListener:I = 0xa

.field static final blacklist TRANSACTION_registerSubscriberStatusListener:I = 0x8

.field static final blacklist TRANSACTION_sendMessage:I = 0x2

.field static final blacklist TRANSACTION_subscribe:I = 0x7

.field static final blacklist TRANSACTION_unregisterPublisherStatusListener:I = 0xb

.field static final blacklist TRANSACTION_unregisterSubscriberStatusListener:I = 0x9

.field static final blacklist TRANSACTION_updatePublish:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.net.wifi.usd.IUsdManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/usd/IUsdManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/usd/IUsdManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.net.wifi.usd.IUsdManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/usd/IUsdManager;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/usd/IUsdManager;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/net/wifi/usd/IUsdManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/usd/IUsdManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_26

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 134
    :pswitch_5
    const-string v0, "unregisterPublisherStatusListener"

    return-object v0

    .line 130
    :pswitch_8
    const-string v0, "registerPublisherStatusListener"

    return-object v0

    .line 126
    :pswitch_b
    const-string v0, "unregisterSubscriberStatusListener"

    return-object v0

    .line 122
    :pswitch_e
    const-string v0, "registerSubscriberStatusListener"

    return-object v0

    .line 118
    :pswitch_11
    const-string v0, "subscribe"

    return-object v0

    .line 114
    :pswitch_14
    const-string v0, "publish"

    return-object v0

    .line 110
    :pswitch_17
    const-string v0, "updatePublish"

    return-object v0

    .line 106
    :pswitch_1a
    const-string v0, "cancelPublish"

    return-object v0

    .line 102
    :pswitch_1d
    const-string v0, "cancelSubscribe"

    return-object v0

    .line 98
    :pswitch_20
    const-string v0, "sendMessage"

    return-object v0

    .line 94
    :pswitch_23
    const-string v0, "getCharacteristics"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
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

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 468
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 145
    invoke-static {p1}, Landroid/net/wifi/usd/IUsdManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 149
    const-string v0, "android.net.wifi.usd.IUsdManager"

    .line 150
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v1

    .line 157
    :cond_16
    packed-switch p1, :pswitch_data_d8

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 253
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v2

    .line 254
    .local v2, "_arg0":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v2}, Landroid/net/wifi/usd/IUsdManager$Stub;->unregisterPublisherStatusListener(Landroid/net/wifi/IBooleanListener;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto/16 :goto_d7

    .line 245
    .end local v2    # "_arg0":Landroid/net/wifi/IBooleanListener;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v2

    .line 246
    .restart local v2    # "_arg0":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v2}, Landroid/net/wifi/usd/IUsdManager$Stub;->registerPublisherStatusListener(Landroid/net/wifi/IBooleanListener;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    goto/16 :goto_d7

    .line 237
    .end local v2    # "_arg0":Landroid/net/wifi/IBooleanListener;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v2

    .line 238
    .restart local v2    # "_arg0":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v2}, Landroid/net/wifi/usd/IUsdManager$Stub;->unregisterSubscriberStatusListener(Landroid/net/wifi/IBooleanListener;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_d7

    .line 229
    .end local v2    # "_arg0":Landroid/net/wifi/IBooleanListener;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v2

    .line 230
    .restart local v2    # "_arg0":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v2}, Landroid/net/wifi/usd/IUsdManager$Stub;->registerSubscriberStatusListener(Landroid/net/wifi/IBooleanListener;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto/16 :goto_d7

    .line 219
    .end local v2    # "_arg0":Landroid/net/wifi/IBooleanListener;
    :pswitch_5e
    sget-object v2, Landroid/net/wifi/usd/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/usd/SubscribeConfig;

    .line 221
    .local v2, "_arg0":Landroid/net/wifi/usd/SubscribeConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/usd/ISubscribeSessionCallback;

    move-result-object v3

    .line 222
    .local v3, "_arg1":Landroid/net/wifi/usd/ISubscribeSessionCallback;
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/usd/IUsdManager$Stub;->subscribe(Landroid/net/wifi/usd/SubscribeConfig;Landroid/net/wifi/usd/ISubscribeSessionCallback;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    goto :goto_d7

    .line 209
    .end local v2    # "_arg0":Landroid/net/wifi/usd/SubscribeConfig;
    .end local v3    # "_arg1":Landroid/net/wifi/usd/ISubscribeSessionCallback;
    :pswitch_75
    sget-object v2, Landroid/net/wifi/usd/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/usd/PublishConfig;

    .line 211
    .local v2, "_arg0":Landroid/net/wifi/usd/PublishConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/usd/IPublishSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/usd/IPublishSessionCallback;

    move-result-object v3

    .line 212
    .local v3, "_arg1":Landroid/net/wifi/usd/IPublishSessionCallback;
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/usd/IUsdManager$Stub;->publish(Landroid/net/wifi/usd/PublishConfig;Landroid/net/wifi/usd/IPublishSessionCallback;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_d7

    .line 199
    .end local v2    # "_arg0":Landroid/net/wifi/usd/PublishConfig;
    .end local v3    # "_arg1":Landroid/net/wifi/usd/IPublishSessionCallback;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 202
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/usd/IUsdManager$Stub;->updatePublish(I[B)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_d7

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/usd/IUsdManager$Stub;->cancelPublish(I)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_d7

    .line 183
    .end local v2    # "_arg0":I
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/usd/IUsdManager$Stub;->cancelSubscribe(I)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_d7

    .line 169
    .end local v2    # "_arg0":I
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 175
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IBooleanListener;

    move-result-object v5

    .line 176
    .local v5, "_arg3":Landroid/net/wifi/IBooleanListener;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/wifi/usd/IUsdManager$Stub;->sendMessage(II[BLandroid/net/wifi/IBooleanListener;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_d7

    .line 161
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":Landroid/net/wifi/IBooleanListener;
    :pswitch_cc
    invoke-virtual {p0}, Landroid/net/wifi/usd/IUsdManager$Stub;->getCharacteristics()Landroid/net/wifi/usd/Characteristics;

    move-result-object v2

    .line 162
    .local v2, "_result":Landroid/net/wifi/usd/Characteristics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 164
    nop

    .line 263
    .end local v2    # "_result":Landroid/net/wifi/usd/Characteristics;
    :goto_d7
    return v1

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_b1
        :pswitch_a6
        :pswitch_9b
        :pswitch_8c
        :pswitch_75
        :pswitch_5e
        :pswitch_4e
        :pswitch_3e
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
