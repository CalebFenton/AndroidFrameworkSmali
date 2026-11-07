.class public abstract Landroid/net/wifi/rtt/IWifiRttManager$Stub;
.super Landroid/os/Binder;
.source "IWifiRttManager.java"

# interfaces
.implements Landroid/net/wifi/rtt/IWifiRttManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/IWifiRttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/IWifiRttManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.rtt.IWifiRttManager"

.field static final greylist-max-o TRANSACTION_cancelRanging:I = 0x3

.field static final blacklist TRANSACTION_getRttCharacteristics:I = 0x4

.field static final greylist-max-o TRANSACTION_isAvailable:I = 0x1

.field static final greylist-max-o TRANSACTION_startRanging:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.net.wifi.rtt.IWifiRttManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/wifi/rtt/IWifiRttManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "android.net.wifi.rtt.IWifiRttManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/rtt/IWifiRttManager;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/rtt/IWifiRttManager;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Landroid/net/wifi/rtt/IWifiRttManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/rtt/IWifiRttManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_12

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 82
    :pswitch_5
    const-string v0, "getRttCharacteristics"

    return-object v0

    .line 78
    :pswitch_8
    const-string v0, "cancelRanging"

    return-object v0

    .line 74
    :pswitch_b
    const-string v0, "startRanging"

    return-object v0

    .line 70
    :pswitch_e
    const-string v0, "isAvailable"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 251
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 93
    invoke-static {p1}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-string v0, "android.net.wifi.rtt.IWifiRttManager"

    .line 98
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v1

    .line 105
    :cond_16
    packed-switch p1, :pswitch_data_7c

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 144
    :pswitch_1e
    invoke-virtual {p0}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->getRttCharacteristics()Landroid/os/Bundle;

    move-result-object v2

    .line 145
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 147
    goto :goto_7a

    .line 137
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_29
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 138
    .local v2, "_arg0":Landroid/os/WorkSource;
    invoke-virtual {p0, v2}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->cancelRanging(Landroid/os/WorkSource;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_7a

    .line 117
    .end local v2    # "_arg0":Landroid/os/WorkSource;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 119
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "_arg2":Ljava/lang/String;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/os/WorkSource;

    .line 125
    .local v7, "_arg3":Landroid/os/WorkSource;
    sget-object v2, Landroid/net/wifi/rtt/RangingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/net/wifi/rtt/RangingRequest;

    .line 127
    .local v8, "_arg4":Landroid/net/wifi/rtt/RangingRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/rtt/IRttCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/rtt/IRttCallback;

    move-result-object v9

    .line 129
    .local v9, "_arg5":Landroid/net/wifi/rtt/IRttCallback;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/os/Bundle;

    .line 130
    .local v10, "_arg6":Landroid/os/Bundle;
    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->startRanging(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_7a

    .line 109
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Landroid/os/WorkSource;
    .end local v8    # "_arg4":Landroid/net/wifi/rtt/RangingRequest;
    .end local v9    # "_arg5":Landroid/net/wifi/rtt/IRttCallback;
    .end local v10    # "_arg6":Landroid/os/Bundle;
    :pswitch_6f
    invoke-virtual {p0}, Landroid/net/wifi/rtt/IWifiRttManager$Stub;->isAvailable()Z

    move-result v2

    .line 110
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 112
    nop

    .line 154
    .end local v2    # "_result":Z
    :goto_7a
    return v1

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
