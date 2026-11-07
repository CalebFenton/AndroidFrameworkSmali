.class public abstract Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;
.super Landroid/os/Binder;
.source "IImsRegistrationCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRegistrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRegistrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDeregistered:I = 0x3

.field static final blacklist TRANSACTION_onDeregisteredWithDetails:I = 0x4

.field static final blacklist TRANSACTION_onRegistered:I = 0x1

.field static final blacklist TRANSACTION_onRegistering:I = 0x2

.field static final blacklist TRANSACTION_onSubscriberAssociatedUriChanged:I = 0x6

.field static final blacklist TRANSACTION_onTechnologyChangeFailed:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_18

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 98
    :pswitch_5
    const-string v0, "onSubscriberAssociatedUriChanged"

    return-object v0

    .line 94
    :pswitch_8
    const-string v0, "onTechnologyChangeFailed"

    return-object v0

    .line 90
    :pswitch_b
    const-string v0, "onDeregisteredWithDetails"

    return-object v0

    .line 86
    :pswitch_e
    const-string v0, "onDeregistered"

    return-object v0

    .line 82
    :pswitch_11
    const-string v0, "onRegistering"

    return-object v0

    .line 78
    :pswitch_14
    const-string v0, "onRegistered"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
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

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 293
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const-string v0, "android.telephony.ims.aidl.IImsRegistrationCallback"

    .line 114
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_16
    packed-switch p1, :pswitch_data_96

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 178
    :pswitch_1e
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 179
    .local v2, "_arg0":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 181
    goto :goto_94

    .line 168
    .end local v2    # "_arg0":[Landroid/net/Uri;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 171
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 173
    goto :goto_94

    .line 154
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_40
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 156
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .local v4, "_arg2":I
    sget-object v5, Landroid/telephony/ims/SipDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/SipDetails;

    .line 161
    .local v5, "_arg3":Landroid/telephony/ims/SipDetails;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onDeregisteredWithDetails(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V

    .line 163
    goto :goto_94

    .line 142
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/telephony/ims/SipDetails;
    :pswitch_5f
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 144
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 147
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 149
    goto :goto_94

    .line 134
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_76
    sget-object v2, Landroid/telephony/ims/ImsRegistrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 135
    .local v2, "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 137
    goto :goto_94

    .line 126
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    :pswitch_85
    sget-object v2, Landroid/telephony/ims/ImsRegistrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 127
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 129
    nop

    .line 188
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsRegistrationAttributes;
    :goto_94
    return v1

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_85
        :pswitch_76
        :pswitch_5f
        :pswitch_40
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
