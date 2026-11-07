.class public abstract Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Stub;
.super Landroid/os/Binder;
.source "ICertificateTransparencyManager.java"

# interfaces
.implements Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.net.connectivity.android.net.ct.ICertificateTransparencyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "android.net.connectivity.android.net.ct.ICertificateTransparencyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 55
    nop

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 66
    invoke-static {p1}, Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 70
    const-string v0, "android.net.connectivity.android.net.ct.ICertificateTransparencyManager"

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_c

    .line 72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x1

    return v1

    .line 75
    :cond_c
    nop

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1
.end method
