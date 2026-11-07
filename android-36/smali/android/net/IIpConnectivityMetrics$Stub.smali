.class public abstract Landroid/net/IIpConnectivityMetrics$Stub;
.super Landroid/os/Binder;
.source "IIpConnectivityMetrics.java"

# interfaces
.implements Landroid/net/IIpConnectivityMetrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpConnectivityMetrics$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.IIpConnectivityMetrics"

.field static final greylist-max-o TRANSACTION_addNetdEventCallback:I = 0x4

.field static final blacklist TRANSACTION_logDefaultNetworkEvent:I = 0x3

.field static final blacklist TRANSACTION_logDefaultNetworkValidity:I = 0x2

.field static final greylist-max-o TRANSACTION_logEvent:I = 0x1

.field static final greylist-max-o TRANSACTION_removeNetdEventCallback:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.net.IIpConnectivityMetrics"

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpConnectivityMetrics$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "android.net.IIpConnectivityMetrics"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IIpConnectivityMetrics;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/net/IIpConnectivityMetrics;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/net/IIpConnectivityMetrics$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IIpConnectivityMetrics$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 80
    packed-switch p0, :pswitch_data_18

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 100
    :pswitch_5
    const-string/jumbo v0, "removeNetdEventCallback"

    return-object v0

    .line 96
    :pswitch_9
    const-string v0, "addNetdEventCallback"

    return-object v0

    .line 92
    :pswitch_c
    const-string/jumbo v0, "logDefaultNetworkEvent"

    return-object v0

    .line 88
    :pswitch_10
    const-string/jumbo v0, "logDefaultNetworkValidity"

    return-object v0

    .line 84
    :pswitch_14
    const-string/jumbo v0, "logEvent"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 327
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 111
    invoke-static {p1}, Landroid/net/IIpConnectivityMetrics$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.net.IIpConnectivityMetrics"

    .line 116
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_13

    const v1, 0xffffff

    if-gt v10, v1, :cond_13

    .line 117
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_13
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1c

    .line 120
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v14

    .line 123
    :cond_1c
    packed-switch v10, :pswitch_data_be

    .line 193
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 184
    :pswitch_24
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v1}, Landroid/net/IIpConnectivityMetrics$Stub;->removeNetdEventCallback(I)Z

    move-result v2

    .line 187
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 189
    goto/16 :goto_bc

    .line 172
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_37
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetdEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetdEventCallback;

    move-result-object v2

    .line 175
    .local v2, "_arg1":Landroid/net/INetdEventCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v1, v2}, Landroid/net/IIpConnectivityMetrics$Stub;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v3

    .line 177
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_bc

    .line 147
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/INetdEventCallback;
    .end local v3    # "_result":Z
    :pswitch_51
    sget-object v1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 149
    .local v1, "_arg0":Landroid/net/Network;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 153
    .local v3, "_arg2":Z
    sget-object v4, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProperties;

    .line 155
    .local v4, "_arg3":Landroid/net/LinkProperties;
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkCapabilities;

    .line 157
    .local v5, "_arg4":Landroid/net/NetworkCapabilities;
    sget-object v6, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Network;

    .line 159
    .local v6, "_arg5":Landroid/net/Network;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 161
    .local v7, "_arg6":I
    sget-object v8, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkProperties;

    .line 163
    .local v8, "_arg7":Landroid/net/LinkProperties;
    sget-object v9, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkCapabilities;

    .line 164
    .local v9, "_arg8":Landroid/net/NetworkCapabilities;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/net/IIpConnectivityMetrics$Stub;->logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 166
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_bc

    .line 138
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/net/LinkProperties;
    .end local v5    # "_arg4":Landroid/net/NetworkCapabilities;
    .end local v6    # "_arg5":Landroid/net/Network;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/net/LinkProperties;
    .end local v9    # "_arg8":Landroid/net/NetworkCapabilities;
    :pswitch_98
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 139
    .local v1, "_arg0":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v1}, Landroid/net/IIpConnectivityMetrics$Stub;->logDefaultNetworkValidity(Z)V

    .line 141
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    goto :goto_bc

    .line 128
    .end local v1    # "_arg0":Z
    :pswitch_a6
    sget-object v1, Landroid/net/ConnectivityMetricsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityMetricsEvent;

    .line 129
    .local v1, "_arg0":Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v1}, Landroid/net/IIpConnectivityMetrics$Stub;->logEvent(Landroid/net/ConnectivityMetricsEvent;)I

    move-result v2

    .line 131
    .local v2, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    nop

    .line 196
    .end local v1    # "_arg0":Landroid/net/ConnectivityMetricsEvent;
    .end local v2    # "_result":I
    :goto_bc
    return v14

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_98
        :pswitch_51
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
