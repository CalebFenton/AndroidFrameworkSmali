.class public abstract Landroid/app/pinner/IPinnerService$Stub;
.super Landroid/os/Binder;
.source "IPinnerService.java"

# interfaces
.implements Landroid/app/pinner/IPinnerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/pinner/IPinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/pinner/IPinnerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getPinnerStats:I = 0x1


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
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

    invoke-direct {p0, v0}, Landroid/app/pinner/IPinnerService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.app.pinner.IPinnerService"

    invoke-virtual {p0, p0, v0}, Landroid/app/pinner/IPinnerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    if-eqz p1, :cond_d

    .line 39
    iput-object p1, p0, Landroid/app/pinner/IPinnerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 40
    return-void

    .line 37
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/pinner/IPinnerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.app.pinner.IPinnerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/pinner/IPinnerService;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/app/pinner/IPinnerService;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/app/pinner/IPinnerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/pinner/IPinnerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_8

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_5
    const-string v0, "getPinnerStats"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
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

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getPinnerStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Landroid/app/pinner/IPinnerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/pinner/IPinnerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/pinner/IPinnerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 149
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Landroid/app/pinner/IPinnerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 88
    const-string v0, "android.app.pinner.IPinnerService"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 96
    :cond_16
    packed-switch p1, :pswitch_data_2a

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 100
    :pswitch_1e
    invoke-virtual {p0}, Landroid/app/pinner/IPinnerService$Stub;->getPinnerStats()Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/pinner/PinnedFileStat;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 103
    nop

    .line 110
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/pinner/PinnedFileStat;>;"
    return v1

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
