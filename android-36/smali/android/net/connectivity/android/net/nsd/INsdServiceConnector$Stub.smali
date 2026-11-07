.class public abstract Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;
.super Landroid/os/Binder;
.source "INsdServiceConnector.java"

# interfaces
.implements Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_discoverServices:I = 0x3

.field static final blacklist TRANSACTION_registerOffloadEngine:I = 0xa

.field static final blacklist TRANSACTION_registerService:I = 0x1

.field static final blacklist TRANSACTION_registerServiceInfoCallback:I = 0x8

.field static final blacklist TRANSACTION_resolveService:I = 0x5

.field static final blacklist TRANSACTION_startDaemon:I = 0x6

.field static final blacklist TRANSACTION_stopDiscovery:I = 0x4

.field static final blacklist TRANSACTION_stopResolution:I = 0x7

.field static final blacklist TRANSACTION_unregisterOffloadEngine:I = 0xb

.field static final blacklist TRANSACTION_unregisterService:I = 0x2

.field static final blacklist TRANSACTION_unregisterServiceInfoCallback:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.net.connectivity.android.net.nsd.INsdServiceConnector"

    invoke-virtual {p0, p0, v0}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "android.net.connectivity.android.net.nsd.INsdServiceConnector"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_26

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 133
    :pswitch_5
    const-string v0, "unregisterOffloadEngine"

    return-object v0

    .line 129
    :pswitch_8
    const-string v0, "registerOffloadEngine"

    return-object v0

    .line 125
    :pswitch_b
    const-string v0, "unregisterServiceInfoCallback"

    return-object v0

    .line 121
    :pswitch_e
    const-string v0, "registerServiceInfoCallback"

    return-object v0

    .line 117
    :pswitch_11
    const-string v0, "stopResolution"

    return-object v0

    .line 113
    :pswitch_14
    const-string v0, "startDaemon"

    return-object v0

    .line 109
    :pswitch_17
    const-string v0, "resolveService"

    return-object v0

    .line 105
    :pswitch_1a
    const-string v0, "stopDiscovery"

    return-object v0

    .line 101
    :pswitch_1d
    const-string v0, "discoverServices"

    return-object v0

    .line 97
    :pswitch_20
    const-string v0, "unregisterService"

    return-object v0

    .line 93
    :pswitch_23
    const-string v0, "registerService"

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

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 476
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 144
    invoke-static {p1}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const-string v0, "android.net.connectivity.android.net.nsd.INsdServiceConnector"

    .line 149
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return v1

    .line 156
    :cond_16
    packed-switch p1, :pswitch_data_f8

    .line 270
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 262
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/nsd/IOffloadEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/nsd/IOffloadEngine;

    move-result-object v2

    .line 263
    .local v2, "_arg0":Landroid/net/connectivity/android/net/nsd/IOffloadEngine;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->unregisterOffloadEngine(Landroid/net/connectivity/android/net/nsd/IOffloadEngine;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object v3, p0

    goto/16 :goto_f6

    .line 247
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/nsd/IOffloadEngine;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/nsd/IOffloadEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/nsd/IOffloadEngine;

    move-result-object v5

    .line 251
    .local v5, "_arg1":Landroid/net/connectivity/android/net/nsd/IOffloadEngine;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 253
    .local v6, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 254
    .local v8, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->registerOffloadEngine(Ljava/lang/String;Landroid/net/connectivity/android/net/nsd/IOffloadEngine;JJ)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto/16 :goto_f6

    .line 238
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/net/connectivity/android/net/nsd/IOffloadEngine;
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":J
    :pswitch_53
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->unregisterServiceInfoCallback(I)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto/16 :goto_f6

    .line 227
    .end local v2    # "_arg0":I
    :pswitch_63
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    .line 230
    .local v4, "_arg1":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v4}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->registerServiceInfoCallback(ILandroid/net/nsd/NsdServiceInfo;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_f6

    .line 218
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_7b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->stopResolution(I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto/16 :goto_f6

    .line 211
    .end local v2    # "_arg0":I
    :pswitch_8b
    move-object v3, p0

    invoke-virtual {p0}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->startDaemon()V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto :goto_f6

    .line 201
    :pswitch_93
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    .line 204
    .restart local v4    # "_arg1":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v4}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_f6

    .line 192
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_aa
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->stopDiscovery(I)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_f6

    .line 181
    .end local v2    # "_arg0":I
    :pswitch_b9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/net/nsd/DiscoveryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/nsd/DiscoveryRequest;

    .line 184
    .local v4, "_arg1":Landroid/net/nsd/DiscoveryRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v4}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->discoverServices(ILandroid/net/nsd/DiscoveryRequest;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_f6

    .line 172
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/nsd/DiscoveryRequest;
    :pswitch_d0
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->unregisterService(I)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_f6

    .line 161
    .end local v2    # "_arg0":I
    :pswitch_df
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/net/nsd/AdvertisingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/nsd/AdvertisingRequest;

    .line 164
    .local v4, "_arg1":Landroid/net/nsd/AdvertisingRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v4}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector$Stub;->registerService(ILandroid/net/nsd/AdvertisingRequest;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    nop

    .line 273
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/nsd/AdvertisingRequest;
    :goto_f6
    return v1

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_df
        :pswitch_d0
        :pswitch_b9
        :pswitch_aa
        :pswitch_93
        :pswitch_8b
        :pswitch_7b
        :pswitch_63
        :pswitch_53
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
