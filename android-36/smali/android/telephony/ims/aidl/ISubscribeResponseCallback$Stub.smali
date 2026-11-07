.class public abstract Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;
.super Landroid/os/Binder;
.source "ISubscribeResponseCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISubscribeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCommandError:I = 0x1

.field static final blacklist TRANSACTION_onNetworkResponse:I = 0x2

.field static final blacklist TRANSACTION_onNotifyCapabilitiesUpdate:I = 0x3

.field static final blacklist TRANSACTION_onResourceTerminated:I = 0x4

.field static final blacklist TRANSACTION_onTerminated:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/ISubscribeResponseCallback;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_14

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string v0, "onTerminated"

    return-object v0

    .line 87
    :pswitch_8
    const-string v0, "onResourceTerminated"

    return-object v0

    .line 83
    :pswitch_b
    const-string v0, "onNotifyCapabilitiesUpdate"

    return-object v0

    .line 79
    :pswitch_e
    const-string v0, "onNetworkResponse"

    return-object v0

    .line 75
    :pswitch_11
    const-string v0, "onCommandError"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
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

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 250
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    const-string v0, "android.telephony.ims.aidl.ISubscribeResponseCallback"

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_16
    packed-switch p1, :pswitch_data_60

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 151
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 154
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onTerminated(Ljava/lang/String;J)V

    .line 156
    goto :goto_5f

    .line 143
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":J
    :pswitch_2d
    sget-object v2, Landroid/telephony/ims/RcsContactTerminatedReason;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onResourceTerminated(Ljava/util/List;)V

    .line 146
    goto :goto_5f

    .line 135
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 136
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V

    .line 138
    goto :goto_5f

    .line 127
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_45
    sget-object v2, Landroid/telephony/ims/SipDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/SipDetails;

    .line 128
    .local v2, "_arg0":Landroid/telephony/ims/SipDetails;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V

    .line 130
    goto :goto_5f

    .line 119
    .end local v2    # "_arg0":Landroid/telephony/ims/SipDetails;
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;->onCommandError(I)V

    .line 122
    nop

    .line 163
    .end local v2    # "_arg0":I
    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_54
        :pswitch_45
        :pswitch_3a
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
