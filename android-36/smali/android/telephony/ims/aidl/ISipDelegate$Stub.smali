.class public abstract Landroid/telephony/ims/aidl/ISipDelegate$Stub;
.super Landroid/os/Binder;
.source "ISipDelegate.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISipDelegate$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cleanupSession:I = 0x4

.field static final blacklist TRANSACTION_notifyMessageReceiveError:I = 0x3

.field static final blacklist TRANSACTION_notifyMessageReceived:I = 0x2

.field static final blacklist TRANSACTION_sendMessage:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.telephony.ims.aidl.ISipDelegate"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegate;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.telephony.ims.aidl.ISipDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/ISipDelegate;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/ISipDelegate;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/ISipDelegate$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/ISipDelegate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_12

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 83
    :pswitch_5
    const-string v0, "cleanupSession"

    return-object v0

    .line 79
    :pswitch_8
    const-string v0, "notifyMessageReceiveError"

    return-object v0

    .line 75
    :pswitch_b
    const-string v0, "notifyMessageReceived"

    return-object v0

    .line 71
    :pswitch_e
    const-string v0, "sendMessage"

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

    .line 62
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

    .line 94
    invoke-static {p1}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 98
    const-string v0, "android.telephony.ims.aidl.ISipDelegate"

    .line 99
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 106
    :cond_16
    packed-switch p1, :pswitch_data_58

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 139
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->cleanupSession(Ljava/lang/String;)V

    .line 142
    goto :goto_56

    .line 129
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 132
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->notifyMessageReceiveError(Ljava/lang/String;I)V

    .line 134
    goto :goto_56

    .line 121
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->notifyMessageReceived(Ljava/lang/String;)V

    .line 124
    goto :goto_56

    .line 111
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_43
    sget-object v2, Landroid/telephony/ims/SipMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/SipMessage;

    .line 113
    .local v2, "_arg0":Landroid/telephony/ims/SipMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 114
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->sendMessage(Landroid/telephony/ims/SipMessage;J)V

    .line 116
    nop

    .line 149
    .end local v2    # "_arg0":Landroid/telephony/ims/SipMessage;
    .end local v3    # "_arg1":J
    :goto_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_43
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
