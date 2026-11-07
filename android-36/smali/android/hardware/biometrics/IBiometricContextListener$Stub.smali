.class public abstract Landroid/hardware/biometrics/IBiometricContextListener$Stub;
.super Landroid/os/Binder;
.source "IBiometricContextListener.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricContextListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricContextListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDisplayStateChanged:I = 0x2

.field static final blacklist TRANSACTION_onFoldChanged:I = 0x1

.field static final blacklist TRANSACTION_onHardwareIgnoreTouchesChanged:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.hardware.biometrics.IBiometricContextListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricContextListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.hardware.biometrics.IBiometricContextListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricContextListener;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricContextListener;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/IBiometricContextListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_12

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string/jumbo v0, "onHardwareIgnoreTouchesChanged"

    return-object v0

    .line 80
    :pswitch_9
    const-string/jumbo v0, "onDisplayStateChanged"

    return-object v0

    .line 76
    :pswitch_d
    const-string/jumbo v0, "onFoldChanged"

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

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 203
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "android.hardware.biometrics.IBiometricContextListener"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_40

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 128
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 129
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->onHardwareIgnoreTouchesChanged(Z)V

    .line 131
    goto :goto_3f

    .line 120
    .end local v2    # "_arg0":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->onDisplayStateChanged(I)V

    .line 123
    goto :goto_3f

    .line 112
    .end local v2    # "_arg0":I
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;->onFoldChanged(I)V

    .line 115
    nop

    .line 138
    .end local v2    # "_arg0":I
    :goto_3f
    return v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
