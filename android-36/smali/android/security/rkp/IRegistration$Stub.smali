.class public abstract Landroid/security/rkp/IRegistration$Stub;
.super Landroid/os/Binder;
.source "IRegistration.java"

# interfaces
.implements Landroid/security/rkp/IRegistration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/rkp/IRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IRegistration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelGetKey:I = 0x2

.field static final blacklist TRANSACTION_getKey:I = 0x1

.field static final blacklist TRANSACTION_storeUpgradedKeyAsync:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    const-string v0, "android.security.rkp.IRegistration"

    invoke-virtual {p0, p0, v0}, Landroid/security/rkp/IRegistration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IRegistration;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 103
    if-nez p0, :cond_4

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_4
    const-string v0, "android.security.rkp.IRegistration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/rkp/IRegistration;

    if-eqz v1, :cond_14

    .line 108
    move-object v1, v0

    check-cast v1, Landroid/security/rkp/IRegistration;

    return-object v1

    .line 110
    :cond_14
    new-instance v1, Landroid/security/rkp/IRegistration$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/rkp/IRegistration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 119
    packed-switch p0, :pswitch_data_10

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 131
    :pswitch_5
    const-string/jumbo v0, "storeUpgradedKeyAsync"

    return-object v0

    .line 127
    :pswitch_9
    const-string v0, "cancelGetKey"

    return-object v0

    .line 123
    :pswitch_c
    const-string v0, "getKey"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 114
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 301
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 142
    invoke-static {p1}, Landroid/security/rkp/IRegistration$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 146
    const-string v0, "android.security.rkp.IRegistration"

    .line 147
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 151
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return v1

    .line 154
    :cond_16
    packed-switch p1, :pswitch_data_58

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 177
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 179
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 181
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/security/rkp/IStoreUpgradedKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IStoreUpgradedKeyCallback;

    move-result-object v4

    .line 182
    .local v4, "_arg2":Landroid/security/rkp/IStoreUpgradedKeyCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/rkp/IRegistration$Stub;->storeUpgradedKeyAsync([B[BLandroid/security/rkp/IStoreUpgradedKeyCallback;)V

    .line 184
    goto :goto_57

    .line 169
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Landroid/security/rkp/IStoreUpgradedKeyCallback;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/rkp/IGetKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IGetKeyCallback;

    move-result-object v2

    .line 170
    .local v2, "_arg0":Landroid/security/rkp/IGetKeyCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/security/rkp/IRegistration$Stub;->cancelGetKey(Landroid/security/rkp/IGetKeyCallback;)V

    .line 172
    goto :goto_57

    .line 159
    .end local v2    # "_arg0":Landroid/security/rkp/IGetKeyCallback;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/security/rkp/IGetKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/rkp/IGetKeyCallback;

    move-result-object v3

    .line 162
    .local v3, "_arg1":Landroid/security/rkp/IGetKeyCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3}, Landroid/security/rkp/IRegistration$Stub;->getKey(ILandroid/security/rkp/IGetKeyCallback;)V

    .line 164
    nop

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/security/rkp/IGetKeyCallback;
    :goto_57
    return v1

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_44
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
