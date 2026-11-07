.class public abstract Landroid/os/ISystemUpdateManager$Stub;
.super Landroid/os/Binder;
.source "ISystemUpdateManager.java"

# interfaces
.implements Landroid/os/ISystemUpdateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISystemUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISystemUpdateManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.ISystemUpdateManager"

.field static final greylist-max-o TRANSACTION_retrieveSystemUpdateInfo:I = 0x1

.field static final greylist-max-o TRANSACTION_updateSystemUpdateInfo:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    nop

    .line 45
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ISystemUpdateManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.os.ISystemUpdateManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISystemUpdateManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    if-eqz p1, :cond_d

    .line 39
    iput-object p1, p0, Landroid/os/ISystemUpdateManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 40
    return-void

    .line 37
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/ISystemUpdateManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.os.ISystemUpdateManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/ISystemUpdateManager;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/os/ISystemUpdateManager;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/os/ISystemUpdateManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ISystemUpdateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_e

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_5
    const-string/jumbo v0, "updateSystemUpdateInfo"

    return-object v0

    .line 73
    :pswitch_9
    const-string/jumbo v0, "retrieveSystemUpdateInfo"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Landroid/os/ISystemUpdateManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    const-string v0, "android.os.ISystemUpdateManager"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_16
    packed-switch p1, :pswitch_data_3c

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 112
    :pswitch_1e
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 113
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Landroid/os/ISystemUpdateManager$Stub;->updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    goto :goto_3b

    .line 104
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :pswitch_30
    invoke-virtual {p0}, Landroid/os/ISystemUpdateManager$Stub;->retrieveSystemUpdateInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 105
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 107
    nop

    .line 123
    .end local v2    # "_result":Landroid/os/Bundle;
    :goto_3b
    return v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist updateSystemUpdateInfo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/os/ISystemUpdateManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/ISystemUpdateManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/ISystemUpdateManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RECOVERY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 180
    return-void
.end method
