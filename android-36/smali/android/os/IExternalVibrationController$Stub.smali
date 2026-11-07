.class public abstract Landroid/os/IExternalVibrationController$Stub;
.super Landroid/os/Binder;
.source "IExternalVibrationController.java"

# interfaces
.implements Landroid/os/IExternalVibrationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IExternalVibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IExternalVibrationController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_mute:I = 0x1

.field static final blacklist TRANSACTION_unmute:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.os.IExternalVibrationController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IExternalVibrationController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IExternalVibrationController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "android.os.IExternalVibrationController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IExternalVibrationController;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/os/IExternalVibrationController;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Landroid/os/IExternalVibrationController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IExternalVibrationController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_e

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 86
    :pswitch_5
    const-string/jumbo v0, "unmute"

    return-object v0

    .line 82
    :pswitch_9
    const-string/jumbo v0, "mute"

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

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 97
    invoke-static {p1}, Landroid/os/IExternalVibrationController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 101
    const-string v0, "android.os.IExternalVibrationController"

    .line 102
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v1

    .line 109
    :cond_16
    packed-switch p1, :pswitch_data_36

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_1e
    invoke-virtual {p0}, Landroid/os/IExternalVibrationController$Stub;->unmute()Z

    move-result v2

    .line 121
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 123
    goto :goto_34

    .line 113
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p0}, Landroid/os/IExternalVibrationController$Stub;->mute()Z

    move-result v2

    .line 114
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 116
    nop

    .line 130
    .end local v2    # "_result":Z
    :goto_34
    return v1

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
