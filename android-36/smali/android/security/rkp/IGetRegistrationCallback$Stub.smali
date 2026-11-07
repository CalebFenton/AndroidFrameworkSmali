.class public abstract Landroid/security/rkp/IGetRegistrationCallback$Stub;
.super Landroid/os/Binder;
.source "IGetRegistrationCallback.java"

# interfaces
.implements Landroid/security/rkp/IGetRegistrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/rkp/IGetRegistrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IGetRegistrationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCancel:I = 0x2

.field static final blacklist TRANSACTION_onError:I = 0x3

.field static final blacklist TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.security.rkp.IGetRegistrationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/security/rkp/IGetRegistrationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IGetRegistrationCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    const-string v0, "android.security.rkp.IGetRegistrationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/rkp/IGetRegistrationCallback;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/security/rkp/IGetRegistrationCallback;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/security/rkp/IGetRegistrationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/rkp/IGetRegistrationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_12

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_5
    const-string/jumbo v0, "onError"

    return-object v0

    .line 89
    :pswitch_9
    const-string/jumbo v0, "onCancel"

    return-object v0

    .line 85
    :pswitch_d
    const-string/jumbo v0, "onSuccess"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 218
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Landroid/security/rkp/IGetRegistrationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const-string v0, "android.security.rkp.IGetRegistrationCallback"

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 116
    :cond_16
    packed-switch p1, :pswitch_data_3e

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 134
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/security/rkp/IGetRegistrationCallback$Stub;->onError(Ljava/lang/String;)V

    .line 137
    goto :goto_3c

    .line 128
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p0}, Landroid/security/rkp/IGetRegistrationCallback$Stub;->onCancel()V

    .line 129
    goto :goto_3c

    .line 121
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/rkp/IRegistration$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IRegistration;

    move-result-object v2

    .line 122
    .local v2, "_arg0":Landroid/security/rkp/IRegistration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Landroid/security/rkp/IGetRegistrationCallback$Stub;->onSuccess(Landroid/security/rkp/IRegistration;)V

    .line 124
    nop

    .line 144
    .end local v2    # "_arg0":Landroid/security/rkp/IRegistration;
    :goto_3c
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
