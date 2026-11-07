.class public abstract Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;
.super Landroid/os/Binder;
.source "IMeasurementCorrectionsCallback.java"

# interfaces
.implements Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_setCapabilitiesCb:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;->markVintfStability()V

    .line 48
    sget-object v0, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    sget-object v0, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    sparse-switch p0, :sswitch_data_e

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 80
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 84
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 76
    :sswitch_b
    const-string v0, "setCapabilitiesCb"

    return-object v0

    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 211
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    sget-object v0, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v2

    .line 107
    :cond_16
    if-ne p1, v1, :cond_23

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v2

    .line 112
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p0}, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v2

    .line 117
    :cond_33
    packed-switch p1, :pswitch_data_4a

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 122
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/measurement_corrections/IMeasurementCorrectionsCallback$Stub;->setCapabilitiesCb(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    nop

    .line 133
    .end local v1    # "_arg0":I
    return v2

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3b
    .end packed-switch
.end method
