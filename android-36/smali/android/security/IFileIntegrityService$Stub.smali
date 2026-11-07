.class public abstract Landroid/security/IFileIntegrityService$Stub;
.super Landroid/os/Binder;
.source "IFileIntegrityService.java"

# interfaces
.implements Landroid/security/IFileIntegrityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IFileIntegrityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IFileIntegrityService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createAuthToken:I = 0x1

.field static final blacklist TRANSACTION_setupFsverity:I = 0x2


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

    invoke-direct {p0, v0}, Landroid/security/IFileIntegrityService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.security.IFileIntegrityService"

    invoke-virtual {p0, p0, v0}, Landroid/security/IFileIntegrityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_d

    .line 43
    iput-object p1, p0, Landroid/security/IFileIntegrityService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 44
    return-void

    .line 41
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/IFileIntegrityService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.security.IFileIntegrityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/IFileIntegrityService;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/security/IFileIntegrityService;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/security/IFileIntegrityService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IFileIntegrityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v0, "setupFsverity"

    return-object v0

    .line 77
    :pswitch_9
    const-string v0, "createAuthToken"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/security/IFileIntegrityService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "android.security.IFileIntegrityService"

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
    packed-switch p1, :pswitch_data_54

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 119
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v2

    .line 121
    .local v2, "_arg0":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/IFileIntegrityService$Stub;->setupFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 126
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    goto :goto_52

    .line 109
    .end local v2    # "_arg0":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_3c
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 110
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Landroid/security/IFileIntegrityService$Stub;->createAuthToken(Landroid/os/ParcelFileDescriptor;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v3

    .line 112
    .local v3, "_result":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 114
    nop

    .line 135
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_result":Landroid/os/IInstalld$IFsveritySetupAuthToken;
    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist setupFsverity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/security/IFileIntegrityService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/IFileIntegrityService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/IFileIntegrityService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SETUP_FSVERITY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 196
    return-void
.end method
