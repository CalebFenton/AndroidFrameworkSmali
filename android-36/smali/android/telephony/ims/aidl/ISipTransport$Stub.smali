.class public abstract Landroid/telephony/ims/aidl/ISipTransport$Stub;
.super Landroid/os/Binder;
.source "ISipTransport.java"

# interfaces
.implements Landroid/telephony/ims/aidl/ISipTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISipTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSipDelegate:I = 0x1

.field static final blacklist TRANSACTION_destroySipDelegate:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.telephony.ims.aidl.ISipTransport"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ISipTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipTransport;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.telephony.ims.aidl.ISipTransport"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/ISipTransport;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/ISipTransport;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/ISipTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/ISipTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_c

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 69
    :pswitch_5
    const-string v0, "destroySipDelegate"

    return-object v0

    .line 65
    :pswitch_8
    const-string v0, "createSipDelegate"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 80
    invoke-static {p1}, Landroid/telephony/ims/aidl/ISipTransport$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 84
    const-string v0, "android.telephony.ims.aidl.ISipTransport"

    .line 85
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v1

    .line 92
    :cond_16
    packed-switch p1, :pswitch_data_56

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v2

    .line 113
    .local v2, "_arg0":Landroid/telephony/ims/aidl/ISipDelegate;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/ISipTransport$Stub;->destroySipDelegate(Landroid/telephony/ims/aidl/ISipDelegate;I)V

    .line 116
    goto :goto_54

    .line 97
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/ISipDelegate;
    .end local v3    # "_arg1":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/DelegateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/DelegateRequest;

    .line 101
    .local v3, "_arg1":Landroid/telephony/ims/DelegateRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v4

    .line 103
    .local v4, "_arg2":Landroid/telephony/ims/aidl/ISipDelegateStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    move-result-object v5

    .line 104
    .local v5, "_arg3":Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/telephony/ims/aidl/ISipTransport$Stub;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    .line 106
    nop

    .line 123
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/DelegateRequest;
    .end local v4    # "_arg2":Landroid/telephony/ims/aidl/ISipDelegateStateCallback;
    .end local v5    # "_arg3":Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    :goto_54
    return v1

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
