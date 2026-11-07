.class public abstract Landroid/net/vcn/IVcnManagementService$Stub;
.super Landroid/os/Binder;
.source "IVcnManagementService.java"

# interfaces
.implements Landroid/net/vcn/IVcnManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/IVcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/IVcnManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addVcnUnderlyingNetworkPolicyListener:I = 0x4

.field static final blacklist TRANSACTION_clearVcnConfig:I = 0x2

.field static final blacklist TRANSACTION_getConfiguredSubscriptionGroups:I = 0x3

.field static final blacklist TRANSACTION_getUnderlyingNetworkPolicy:I = 0x6

.field static final blacklist TRANSACTION_registerVcnStatusCallback:I = 0x7

.field static final blacklist TRANSACTION_removeVcnUnderlyingNetworkPolicyListener:I = 0x5

.field static final blacklist TRANSACTION_setVcnConfig:I = 0x1

.field static final blacklist TRANSACTION_unregisterVcnStatusCallback:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.net.vcn.IVcnManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/net/vcn/IVcnManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnManagementService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "android.net.vcn.IVcnManagementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/vcn/IVcnManagementService;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/net/vcn/IVcnManagementService;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Landroid/net/vcn/IVcnManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/vcn/IVcnManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_1e

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 110
    :pswitch_5
    const-string v0, "unregisterVcnStatusCallback"

    return-object v0

    .line 106
    :pswitch_8
    const-string v0, "registerVcnStatusCallback"

    return-object v0

    .line 102
    :pswitch_b
    const-string v0, "getUnderlyingNetworkPolicy"

    return-object v0

    .line 98
    :pswitch_e
    const-string v0, "removeVcnUnderlyingNetworkPolicyListener"

    return-object v0

    .line 94
    :pswitch_11
    const-string v0, "addVcnUnderlyingNetworkPolicyListener"

    return-object v0

    .line 90
    :pswitch_14
    const-string v0, "getConfiguredSubscriptionGroups"

    return-object v0

    .line 86
    :pswitch_17
    const-string v0, "clearVcnConfig"

    return-object v0

    .line 82
    :pswitch_1a
    const-string v0, "setVcnConfig"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 387
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 121
    invoke-static {p1}, Landroid/net/vcn/IVcnManagementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 125
    const-string v0, "android.net.vcn.IVcnManagementService"

    .line 126
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 127
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 133
    :cond_16
    packed-switch p1, :pswitch_data_da

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 215
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/IVcnStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnStatusCallback;

    move-result-object v2

    .line 216
    .local v2, "_arg0":Landroid/net/vcn/IVcnStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto/16 :goto_d8

    .line 202
    .end local v2    # "_arg0":Landroid/net/vcn/IVcnStatusCallback;
    :pswitch_31
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 204
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/vcn/IVcnStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnStatusCallback;

    move-result-object v3

    .line 206
    .local v3, "_arg1":Landroid/net/vcn/IVcnStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/vcn/IVcnManagementService$Stub;->registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_d8

    .line 190
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/net/vcn/IVcnStatusCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_50
    sget-object v2, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkCapabilities;

    .line 192
    .local v2, "_arg0":Landroid/net/NetworkCapabilities;
    sget-object v3, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 193
    .local v3, "_arg1":Landroid/net/LinkProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2, v3}, Landroid/net/vcn/IVcnManagementService$Stub;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v4

    .line 195
    .local v4, "_result":Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    goto :goto_d8

    .line 181
    .end local v2    # "_arg0":Landroid/net/NetworkCapabilities;
    .end local v3    # "_arg1":Landroid/net/LinkProperties;
    .end local v4    # "_result":Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    move-result-object v2

    .line 182
    .local v2, "_arg0":Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_d8

    .line 172
    .end local v2    # "_arg0":Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    move-result-object v2

    .line 173
    .restart local v2    # "_arg0":Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_d8

    .line 162
    .end local v2    # "_arg0":Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2}, Landroid/net/vcn/IVcnManagementService$Stub;->getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 165
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 167
    goto :goto_d8

    .line 151
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :pswitch_a4
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 153
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/net/vcn/IVcnManagementService$Stub;->clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_d8

    .line 138
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_ba
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 140
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    sget-object v3, Landroid/net/vcn/VcnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnConfig;

    .line 142
    .local v3, "_arg1":Landroid/net/vcn/VcnConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/vcn/IVcnManagementService$Stub;->setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    nop

    .line 226
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/net/vcn/VcnConfig;
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_d8
    return v1

    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_a4
        :pswitch_92
        :pswitch_80
        :pswitch_6e
        :pswitch_50
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
