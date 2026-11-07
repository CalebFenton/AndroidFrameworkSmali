.class public abstract Landroid/telephony/ims/aidl/IImsRegistration$Stub;
.super Landroid/os/Binder;
.source "IImsRegistration.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRegistration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRegistration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addEmergencyRegistrationCallback:I = 0x4

.field static final blacklist TRANSACTION_addRegistrationCallback:I = 0x2

.field static final blacklist TRANSACTION_getRegistrationTechnology:I = 0x1

.field static final blacklist TRANSACTION_removeEmergencyRegistrationCallback:I = 0x5

.field static final blacklist TRANSACTION_removeRegistrationCallback:I = 0x3

.field static final blacklist TRANSACTION_triggerDeregistration:I = 0x9

.field static final blacklist TRANSACTION_triggerFullNetworkRegistration:I = 0x6

.field static final blacklist TRANSACTION_triggerSipDelegateDeregistration:I = 0x8

.field static final blacklist TRANSACTION_triggerUpdateSipDelegateRegistration:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "android.telephony.ims.aidl.IImsRegistration"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsRegistration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRegistration;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsRegistration$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 84
    packed-switch p0, :pswitch_data_20

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 120
    :pswitch_5
    const-string v0, "triggerDeregistration"

    return-object v0

    .line 116
    :pswitch_8
    const-string v0, "triggerSipDelegateDeregistration"

    return-object v0

    .line 112
    :pswitch_b
    const-string v0, "triggerUpdateSipDelegateRegistration"

    return-object v0

    .line 108
    :pswitch_e
    const-string v0, "triggerFullNetworkRegistration"

    return-object v0

    .line 104
    :pswitch_11
    const-string v0, "removeEmergencyRegistrationCallback"

    return-object v0

    .line 100
    :pswitch_14
    const-string v0, "addEmergencyRegistrationCallback"

    return-object v0

    .line 96
    :pswitch_17
    const-string v0, "removeRegistrationCallback"

    return-object v0

    .line 92
    :pswitch_1a
    const-string v0, "addRegistrationCallback"

    return-object v0

    .line 88
    :pswitch_1d
    const-string v0, "getRegistrationTechnology"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
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

    .line 79
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 359
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 131
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 135
    const-string v0, "android.telephony.ims.aidl.IImsRegistration"

    .line 136
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 137
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return v1

    .line 143
    :cond_16
    packed-switch p1, :pswitch_data_88

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 207
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerDeregistration(I)V

    .line 210
    goto :goto_87

    .line 201
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerSipDelegateDeregistration()V

    .line 202
    goto :goto_87

    .line 196
    :pswitch_2d
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerUpdateSipDelegateRegistration()V

    .line 197
    goto :goto_87

    .line 187
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerFullNetworkRegistration(ILjava/lang/String;)V

    .line 192
    goto :goto_87

    .line 179
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    .line 180
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->removeEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 182
    goto :goto_87

    .line 171
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    .line 172
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->addEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 174
    goto :goto_87

    .line 163
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    .line 164
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 166
    goto :goto_87

    .line 155
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    .line 156
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 158
    goto :goto_87

    .line 147
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_7c
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->getRegistrationTechnology()I

    move-result v2

    .line 148
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    nop

    .line 217
    .end local v2    # "_result":I
    :goto_87
    return v1

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_6d
        :pswitch_5e
        :pswitch_4f
        :pswitch_40
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
