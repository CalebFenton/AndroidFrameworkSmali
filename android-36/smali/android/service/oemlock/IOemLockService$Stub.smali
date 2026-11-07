.class public abstract Landroid/service/oemlock/IOemLockService$Stub;
.super Landroid/os/Binder;
.source "IOemLockService.java"

# interfaces
.implements Landroid/service/oemlock/IOemLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/oemlock/IOemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/oemlock/IOemLockService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.oemlock.IOemLockService"

.field static final blacklist PERMISSIONS_isDeviceOemUnlocked:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_isOemUnlockAllowed:[Ljava/lang/String;

.field static final blacklist TRANSACTION_getLockName:I = 0x1

.field static final greylist-max-o TRANSACTION_isDeviceOemUnlocked:I = 0x7

.field static final greylist-max-o TRANSACTION_isOemUnlockAllowed:I = 0x6

.field static final greylist-max-o TRANSACTION_isOemUnlockAllowedByCarrier:I = 0x3

.field static final greylist-max-o TRANSACTION_isOemUnlockAllowedByUser:I = 0x5

.field static final greylist-max-o TRANSACTION_setOemUnlockAllowedByCarrier:I = 0x2

.field static final greylist-max-o TRANSACTION_setOemUnlockAllowedByUser:I = 0x4


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 367
    const-string v0, "android.permission.READ_OEM_UNLOCK_STATE"

    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isOemUnlockAllowed:[Ljava/lang/String;

    .line 373
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isDeviceOemUnlocked:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    nop

    .line 68
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/oemlock/IOemLockService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.service.oemlock.IOemLockService"

    invoke-virtual {p0, p0, v0}, Landroid/service/oemlock/IOemLockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    if-eqz p1, :cond_d

    .line 62
    iput-object p1, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 63
    return-void

    .line 60
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/oemlock/IOemLockService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_4
    const-string v0, "android.service.oemlock.IOemLockService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/oemlock/IOemLockService;

    if-eqz v1, :cond_14

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/service/oemlock/IOemLockService;

    return-object v1

    .line 83
    :cond_14
    new-instance v1, Landroid/service/oemlock/IOemLockService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/oemlock/IOemLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 92
    packed-switch p0, :pswitch_data_20

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 120
    :pswitch_5
    const-string/jumbo v0, "isDeviceOemUnlocked"

    return-object v0

    .line 116
    :pswitch_9
    const-string/jumbo v0, "isOemUnlockAllowed"

    return-object v0

    .line 112
    :pswitch_d
    const-string/jumbo v0, "isOemUnlockAllowedByUser"

    return-object v0

    .line 108
    :pswitch_11
    const-string/jumbo v0, "setOemUnlockAllowedByUser"

    return-object v0

    .line 104
    :pswitch_15
    const-string/jumbo v0, "isOemUnlockAllowedByCarrier"

    return-object v0

    .line 100
    :pswitch_19
    const-string/jumbo v0, "setOemUnlockAllowedByCarrier"

    return-object v0

    .line 96
    :pswitch_1d
    const-string v0, "getLockName"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 87
    return-object p0
.end method

.method protected blacklist getLockName_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 345
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 381
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 131
    invoke-static {p1}, Landroid/service/oemlock/IOemLockService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isDeviceOemUnlocked_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isDeviceOemUnlocked:[Ljava/lang/String;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 377
    return-void
.end method

.method protected blacklist isOemUnlockAllowedByCarrier_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 355
    return-void
.end method

.method protected blacklist isOemUnlockAllowedByUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 365
    return-void
.end method

.method protected blacklist isOemUnlockAllowed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isOemUnlockAllowed:[Ljava/lang/String;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 371
    return-void
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
    const-string v0, "android.service.oemlock.IOemLockService"

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
    packed-switch p1, :pswitch_data_76

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 195
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isDeviceOemUnlocked()Z

    move-result v2

    .line 196
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 198
    goto :goto_75

    .line 188
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowed()Z

    move-result v2

    .line 189
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    goto :goto_75

    .line 181
    .end local v2    # "_result":Z
    :pswitch_34
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByUser()Z

    move-result v2

    .line 182
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 184
    goto :goto_75

    .line 173
    .end local v2    # "_result":Z
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 174
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByUser(Z)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_75

    .line 165
    .end local v2    # "_arg0":Z
    :pswitch_4d
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    .line 166
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 168
    goto :goto_75

    .line 155
    .end local v2    # "_result":Z
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 157
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 158
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByCarrier(Z[B)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_75

    .line 147
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[B
    :pswitch_6a
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->getLockName()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    nop

    .line 205
    .end local v2    # "_result":Ljava/lang/String;
    :goto_75
    return v1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_58
        :pswitch_4d
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist setOemUnlockAllowedByCarrier_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 350
    return-void
.end method

.method protected blacklist setOemUnlockAllowedByUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 360
    return-void
.end method
