.class public abstract Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;
.super Landroid/os/Binder;
.source "IAuthenticationPolicyService.java"

# interfaces
.implements Landroid/security/authenticationpolicy/IAuthenticationPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/authenticationpolicy/IAuthenticationPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableSecureLockDevice:I = 0x2

.field static final blacklist TRANSACTION_enableSecureLockDevice:I = 0x1


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    nop

    .line 49
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.security.authenticationpolicy.IAuthenticationPolicyService"

    invoke-virtual {p0, p0, v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_d

    .line 43
    iput-object p1, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 44
    return-void

    .line 41
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/authenticationpolicy/IAuthenticationPolicyService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.security.authenticationpolicy.IAuthenticationPolicyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_c

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string v0, "disableSecureLockDevice"

    return-object v0

    .line 77
    :pswitch_8
    const-string v0, "enableSecureLockDevice"

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

    .line 68
    return-object p0
.end method

.method protected blacklist disableSecureLockDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_SECURE_LOCK_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 194
    return-void
.end method

.method protected blacklist enableSecureLockDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_SECURE_LOCK_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 189
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "android.security.authenticationpolicy.IAuthenticationPolicyService"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 104
    :cond_16
    packed-switch p1, :pswitch_data_4c

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 119
    :pswitch_1e
    sget-object v2, Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;

    .line 120
    .local v2, "_arg0":Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->disableSecureLockDevice(Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I

    move-result v3

    .line 122
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    goto :goto_4a

    .line 109
    .end local v2    # "_arg0":Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;
    .end local v3    # "_result":I
    :pswitch_34
    sget-object v2, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;

    .line 110
    .local v2, "_arg0":Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->enableSecureLockDevice(Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I

    move-result v3

    .line 112
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    nop

    .line 131
    .end local v2    # "_arg0":Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;
    .end local v3    # "_result":I
    :goto_4a
    return v1

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
