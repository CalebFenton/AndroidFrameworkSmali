.class public abstract Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;
.super Landroid/os/Binder;
.source "IRcsConfigCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IRcsConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IRcsConfigCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAutoConfigurationErrorReceived:I = 0x2

.field static final blacklist TRANSACTION_onConfigurationChanged:I = 0x1

.field static final blacklist TRANSACTION_onConfigurationReset:I = 0x3

.field static final blacklist TRANSACTION_onPreProvisioningReceived:I = 0x5

.field static final blacklist TRANSACTION_onRemoved:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.telephony.ims.aidl.IRcsConfigCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IRcsConfigCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IRcsConfigCallback;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IRcsConfigCallback;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_14

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_5
    const-string v0, "onPreProvisioningReceived"

    return-object v0

    .line 86
    :pswitch_8
    const-string v0, "onRemoved"

    return-object v0

    .line 82
    :pswitch_b
    const-string v0, "onConfigurationReset"

    return-object v0

    .line 78
    :pswitch_e
    const-string v0, "onAutoConfigurationErrorReceived"

    return-object v0

    .line 74
    :pswitch_11
    const-string v0, "onConfigurationChanged"

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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 241
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    const-string v0, "android.telephony.ims.aidl.IRcsConfigCallback"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_16
    packed-switch p1, :pswitch_data_4c

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 146
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 147
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onPreProvisioningReceived([B)V

    .line 149
    goto :goto_4b

    .line 140
    .end local v2    # "_arg0":[B
    :pswitch_29
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onRemoved()V

    .line 141
    goto :goto_4b

    .line 135
    :pswitch_2d
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onConfigurationReset()V

    .line 136
    goto :goto_4b

    .line 126
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 128
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onAutoConfigurationErrorReceived(ILjava/lang/String;)V

    .line 131
    goto :goto_4b

    .line 118
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 119
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->onConfigurationChanged([B)V

    .line 121
    nop

    .line 156
    .end local v2    # "_arg0":[B
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
