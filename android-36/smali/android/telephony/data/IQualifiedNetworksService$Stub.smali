.class public abstract Landroid/telephony/data/IQualifiedNetworksService$Stub;
.super Landroid/os/Binder;
.source "IQualifiedNetworksService.java"

# interfaces
.implements Landroid/telephony/data/IQualifiedNetworksService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IQualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IQualifiedNetworksService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createNetworkAvailabilityProvider:I = 0x1

.field static final blacklist TRANSACTION_removeNetworkAvailabilityProvider:I = 0x2

.field static final blacklist TRANSACTION_reportEmergencyDataNetworkPreferredTransportChanged:I = 0x4

.field static final blacklist TRANSACTION_reportThrottleStatusChanged:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.telephony.data.IQualifiedNetworksService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IQualifiedNetworksService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IQualifiedNetworksService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.telephony.data.IQualifiedNetworksService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/data/IQualifiedNetworksService;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/telephony/data/IQualifiedNetworksService;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/telephony/data/IQualifiedNetworksService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/data/IQualifiedNetworksService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_14

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string/jumbo v0, "reportEmergencyDataNetworkPreferredTransportChanged"

    return-object v0

    .line 76
    :pswitch_9
    const-string/jumbo v0, "reportThrottleStatusChanged"

    return-object v0

    .line 72
    :pswitch_d
    const-string/jumbo v0, "removeNetworkAvailabilityProvider"

    return-object v0

    .line 68
    :pswitch_11
    const-string v0, "createNetworkAvailabilityProvider"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 224
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/telephony/data/IQualifiedNetworksService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const-string v0, "android.telephony.data.IQualifiedNetworksService"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_16
    packed-switch p1, :pswitch_data_5e

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 136
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3}, Landroid/telephony/data/IQualifiedNetworksService$Stub;->reportEmergencyDataNetworkPreferredTransportChanged(II)V

    .line 141
    goto :goto_5c

    .line 126
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 128
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telephony/data/ThrottleStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 129
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ThrottleStatus;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2, v3}, Landroid/telephony/data/IQualifiedNetworksService$Stub;->reportThrottleStatusChanged(ILjava/util/List;)V

    .line 131
    goto :goto_5c

    .line 118
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ThrottleStatus;>;"
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/telephony/data/IQualifiedNetworksService$Stub;->removeNetworkAvailabilityProvider(I)V

    .line 121
    goto :goto_5c

    .line 108
    .end local v2    # "_arg0":I
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IQualifiedNetworksServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    move-result-object v3

    .line 111
    .local v3, "_arg1":Landroid/telephony/data/IQualifiedNetworksServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3}, Landroid/telephony/data/IQualifiedNetworksService$Stub;->createNetworkAvailabilityProvider(ILandroid/telephony/data/IQualifiedNetworksServiceCallback;)V

    .line 113
    nop

    .line 148
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/data/IQualifiedNetworksServiceCallback;
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_49
        :pswitch_3e
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
