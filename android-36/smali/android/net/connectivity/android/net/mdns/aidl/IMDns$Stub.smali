.class public abstract Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;
.super Landroid/os/Binder;
.source "IMDns.java"

# interfaces
.implements Landroid/net/connectivity/android/net/mdns/aidl/IMDns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/mdns/aidl/IMDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_discover:I = 0x4

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getServiceAddress:I = 0x6

.field static final blacklist TRANSACTION_registerEventListener:I = 0x8

.field static final blacklist TRANSACTION_registerService:I = 0x3

.field static final blacklist TRANSACTION_resolve:I = 0x5

.field static final blacklist TRANSACTION_startDaemon:I = 0x1

.field static final blacklist TRANSACTION_stopDaemon:I = 0x2

.field static final blacklist TRANSACTION_stopOperation:I = 0x7

.field static final blacklist TRANSACTION_unregisterEventListener:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    sget-object v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/mdns/aidl/IMDns;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    sget-object v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/android/net/mdns/aidl/IMDns;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
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

    .line 94
    sget-object v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v2

    .line 102
    :cond_16
    if-ne p1, v1, :cond_23

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v2

    .line 107
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v2

    .line 112
    :cond_33
    packed-switch p1, :pswitch_data_b0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 177
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;

    move-result-object v1

    .line 178
    .local v1, "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->unregisterEventListener(Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_ae

    .line 169
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->registerEventListener(Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_ae

    .line 161
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->stopOperation(I)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    goto :goto_ae

    .line 153
    .end local v1    # "_arg0":I
    :pswitch_64
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    .line 154
    .local v1, "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->getServiceAddress(Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    goto :goto_ae

    .line 145
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :pswitch_73
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    .line 146
    .local v1, "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->resolve(Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    goto :goto_ae

    .line 137
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :pswitch_82
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    .line 138
    .local v1, "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->discover(Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_ae

    .line 129
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :pswitch_91
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;

    .line 130
    .local v1, "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->registerService(Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_ae

    .line 122
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    :pswitch_a0
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->stopDaemon()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    goto :goto_ae

    .line 116
    :pswitch_a7
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDns$Stub;->startDaemon()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    nop

    .line 187
    :goto_ae
    return v2

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_a0
        :pswitch_91
        :pswitch_82
        :pswitch_73
        :pswitch_64
        :pswitch_59
        :pswitch_4a
        :pswitch_3b
    .end packed-switch
.end method
