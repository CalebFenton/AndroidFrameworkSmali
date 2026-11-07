.class public abstract Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;
.super Landroid/os/Binder;
.source "IMDnsEventListener.java"

# interfaces
.implements Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onGettingServiceAddressStatus:I = 0x4

.field static final blacklist TRANSACTION_onServiceDiscoveryStatus:I = 0x2

.field static final blacklist TRANSACTION_onServiceRegistrationStatus:I = 0x1

.field static final blacklist TRANSACTION_onServiceResolutionStatus:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    sget-object v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    sget-object v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
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

    .line 79
    sget-object v0, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v2

    .line 87
    :cond_16
    if-ne p1, v1, :cond_23

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v2

    .line 92
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v2

    .line 97
    :cond_33
    packed-switch p1, :pswitch_data_6c

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 123
    :pswitch_3b
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    .line 124
    .local v1, "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->onGettingServiceAddressStatus(Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;)V

    .line 125
    goto :goto_6b

    .line 116
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    :pswitch_47
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    .line 117
    .local v1, "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->onServiceResolutionStatus(Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;)V

    .line 118
    goto :goto_6b

    .line 109
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    :pswitch_53
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    .line 110
    .local v1, "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->onServiceDiscoveryStatus(Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;)V

    .line 111
    goto :goto_6b

    .line 102
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    :pswitch_5f
    sget-object v1, Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;

    .line 103
    .local v1, "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/net/mdns/aidl/IMDnsEventListener$Stub;->onServiceRegistrationStatus(Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;)V

    .line 104
    nop

    .line 132
    .end local v1    # "_arg0":Landroid/net/connectivity/android/net/mdns/aidl/RegistrationInfo;
    :goto_6b
    return v2

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_53
        :pswitch_47
        :pswitch_3b
    .end packed-switch
.end method
