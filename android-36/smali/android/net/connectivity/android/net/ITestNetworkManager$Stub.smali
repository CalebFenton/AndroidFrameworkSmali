.class public abstract Landroid/net/connectivity/android/net/ITestNetworkManager$Stub;
.super Landroid/os/Binder;
.source "ITestNetworkManager.java"

# interfaces
.implements Landroid/net/connectivity/android/net/ITestNetworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/ITestNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/ITestNetworkManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createInterface:I = 0x1

.field static final blacklist TRANSACTION_setCarrierEnabled:I = 0x2

.field static final blacklist TRANSACTION_setupTestNetwork:I = 0x3

.field static final blacklist TRANSACTION_teardownTestNetwork:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.net.connectivity.android.net.ITestNetworkManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/connectivity/android/net/ITestNetworkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/ITestNetworkManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.net.connectivity.android.net.ITestNetworkManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/connectivity/android/net/ITestNetworkManager;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/android/net/ITestNetworkManager;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/net/connectivity/android/net/ITestNetworkManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/connectivity/android/net/ITestNetworkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_12

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_5
    const-string v0, "teardownTestNetwork"

    return-object v0

    .line 81
    :pswitch_8
    const-string v0, "setupTestNetwork"

    return-object v0

    .line 77
    :pswitch_b
    const-string v0, "setCarrierEnabled"

    return-object v0

    .line 73
    :pswitch_e
    const-string v0, "createInterface"

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

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 266
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/net/connectivity/android/net/ITestNetworkManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    move-object v7, p3

    const-string v8, "android.net.connectivity.android.net.ITestNetworkManager"

    .line 101
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 102
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 105
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v9

    .line 108
    :cond_17
    packed-switch p1, :pswitch_data_86

    .line 165
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 158
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/ITestNetworkManager$Stub;->teardownTestNetwork(I)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_85

    .line 142
    .end local v1    # "_arg0":I
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 146
    .local v2, "_arg1":Landroid/net/LinkProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 148
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 150
    .local v4, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 151
    .local v5, "_arg4":Landroid/os/IBinder;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/connectivity/android/net/ITestNetworkManager$Stub;->setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_85

    .line 132
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/LinkProperties;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":Landroid/os/IBinder;
    :pswitch_4a
    sget-object v1, Landroid/net/TestNetworkInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TestNetworkInterface;

    .line 134
    .local v1, "_arg0":Landroid/net/TestNetworkInterface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 135
    .local v2, "_arg1":Z
    invoke-virtual {p0, v1, v2}, Landroid/net/connectivity/android/net/ITestNetworkManager$Stub;->setCarrierEnabled(Landroid/net/TestNetworkInterface;Z)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    goto :goto_85

    .line 113
    .end local v1    # "_arg0":Landroid/net/TestNetworkInterface;
    .end local v2    # "_arg1":Z
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 115
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 117
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 119
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 121
    .local v4, "_arg3":Z
    sget-object v5, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/LinkAddress;

    .line 123
    .local v5, "_arg4":[Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/connectivity/android/net/ITestNetworkManager$Stub;->createInterface(ZZZZ[Landroid/net/LinkAddress;Ljava/lang/String;)Landroid/net/TestNetworkInterface;

    move-result-object v10

    .line 125
    .local v10, "_result":Landroid/net/TestNetworkInterface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v10, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    nop

    .line 168
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":[Landroid/net/LinkAddress;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v10    # "_result":Landroid/net/TestNetworkInterface;
    :goto_85
    return v9

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_4a
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
