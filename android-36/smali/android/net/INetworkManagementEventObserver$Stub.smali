.class public abstract Landroid/net/INetworkManagementEventObserver$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementEventObserver.java"

# interfaces
.implements Landroid/net/INetworkManagementEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkManagementEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkManagementEventObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkManagementEventObserver"

.field static final greylist-max-o TRANSACTION_addressRemoved:I = 0x6

.field static final greylist-max-o TRANSACTION_addressUpdated:I = 0x5

.field static final greylist-max-o TRANSACTION_interfaceAdded:I = 0x3

.field static final greylist-max-o TRANSACTION_interfaceClassDataActivityChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_interfaceDnsServerInfo:I = 0x9

.field static final greylist-max-o TRANSACTION_interfaceLinkStateChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_interfaceRemoved:I = 0x4

.field static final greylist-max-o TRANSACTION_interfaceStatusChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_limitReached:I = 0x7

.field static final greylist-max-o TRANSACTION_routeRemoved:I = 0xb

.field static final greylist-max-o TRANSACTION_routeUpdated:I = 0xa


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 125
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 126
    const-string v0, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 134
    if-nez p0, :cond_4

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_4
    const-string v0, "android.net.INetworkManagementEventObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 138
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkManagementEventObserver;

    if-eqz v1, :cond_14

    .line 139
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkManagementEventObserver;

    return-object v1

    .line 141
    :cond_14
    new-instance v1, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 150
    packed-switch p0, :pswitch_data_30

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 194
    :pswitch_5
    const-string/jumbo v0, "routeRemoved"

    return-object v0

    .line 190
    :pswitch_9
    const-string/jumbo v0, "routeUpdated"

    return-object v0

    .line 186
    :pswitch_d
    const-string/jumbo v0, "interfaceDnsServerInfo"

    return-object v0

    .line 182
    :pswitch_11
    const-string/jumbo v0, "interfaceClassDataActivityChanged"

    return-object v0

    .line 178
    :pswitch_15
    const-string/jumbo v0, "limitReached"

    return-object v0

    .line 174
    :pswitch_19
    const-string v0, "addressRemoved"

    return-object v0

    .line 170
    :pswitch_1c
    const-string v0, "addressUpdated"

    return-object v0

    .line 166
    :pswitch_1f
    const-string/jumbo v0, "interfaceRemoved"

    return-object v0

    .line 162
    :pswitch_23
    const-string/jumbo v0, "interfaceAdded"

    return-object v0

    .line 158
    :pswitch_27
    const-string/jumbo v0, "interfaceLinkStateChanged"

    return-object v0

    .line 154
    :pswitch_2b
    const-string/jumbo v0, "interfaceStatusChanged"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 145
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 569
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 205
    invoke-static {p1}, Landroid/net/INetworkManagementEventObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 209
    const-string v6, "android.net.INetworkManagementEventObserver"

    .line 210
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 211
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 214
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return v7

    .line 217
    :cond_16
    packed-switch p1, :pswitch_data_d4

    .line 329
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 322
    :pswitch_1e
    sget-object v1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 323
    .local v1, "_arg0":Landroid/net/RouteInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->routeRemoved(Landroid/net/RouteInfo;)V

    .line 325
    goto/16 :goto_d3

    .line 314
    .end local v1    # "_arg0":Landroid/net/RouteInfo;
    :pswitch_2e
    sget-object v1, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 315
    .restart local v1    # "_arg0":Landroid/net/RouteInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->routeUpdated(Landroid/net/RouteInfo;)V

    .line 317
    goto/16 :goto_d3

    .line 302
    .end local v1    # "_arg0":Landroid/net/RouteInfo;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 306
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 309
    goto/16 :goto_d3

    .line 288
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":[Ljava/lang/String;
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 292
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 294
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 295
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceClassDataActivityChanged(IZJI)V

    .line 297
    goto :goto_d3

    .line 278
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkManagementEventObserver$Stub;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    goto :goto_d3

    .line 268
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 271
    .local v2, "_arg1":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkManagementEventObserver$Stub;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 273
    goto :goto_d3

    .line 258
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/LinkAddress;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 261
    .restart local v2    # "_arg1":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkManagementEventObserver$Stub;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 263
    goto :goto_d3

    .line 250
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/LinkAddress;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceRemoved(Ljava/lang/String;)V

    .line 253
    goto :goto_d3

    .line 242
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceAdded(Ljava/lang/String;)V

    .line 245
    goto :goto_d3

    .line 232
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 235
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 237
    goto :goto_d3

    .line 222
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 225
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v1, v2}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 227
    nop

    .line 332
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :goto_d3
    return v7

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_b5
        :pswitch_aa
        :pswitch_9f
        :pswitch_8c
        :pswitch_79
        :pswitch_6a
        :pswitch_52
        :pswitch_3e
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
