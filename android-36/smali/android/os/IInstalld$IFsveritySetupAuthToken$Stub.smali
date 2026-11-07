.class public abstract Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld$IFsveritySetupAuthToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld$IFsveritySetupAuthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 2355
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2356
    const-string v0, "android.os.IInstalld.IFsveritySetupAuthToken"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 2357
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 2364
    if-nez p0, :cond_4

    .line 2365
    const/4 v0, 0x0

    return-object v0

    .line 2367
    :cond_4
    const-string v0, "android.os.IInstalld.IFsveritySetupAuthToken"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2368
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IInstalld$IFsveritySetupAuthToken;

    if-eqz v1, :cond_14

    .line 2369
    move-object v1, v0

    check-cast v1, Landroid/os/IInstalld$IFsveritySetupAuthToken;

    return-object v1

    .line 2371
    :cond_14
    new-instance v1, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 2380
    nop

    .line 2384
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 2375
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2427
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 2391
    invoke-static {p1}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2395
    const-string v0, "android.os.IInstalld.IFsveritySetupAuthToken"

    .line 2396
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_c

    .line 2397
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2398
    const/4 v1, 0x1

    return v1

    .line 2400
    :cond_c
    nop

    .line 2404
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1
.end method
