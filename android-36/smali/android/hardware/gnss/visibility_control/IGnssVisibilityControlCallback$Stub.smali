.class public abstract Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;
.super Landroid/os/Binder;
.source "IGnssVisibilityControlCallback.java"

# interfaces
.implements Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_isInEmergencySession:I = 0x2

.field static final blacklist TRANSACTION_nfwNotifyCb:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->markVintfStability()V

    .line 52
    sget-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    sget-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    sparse-switch p0, :sswitch_data_12

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 88
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 92
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 84
    :sswitch_b
    const-string v0, "isInEmergencySession"

    return-object v0

    .line 80
    :sswitch_e
    const-string v0, "nfwNotifyCb"

    return-object v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 247
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    sget-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v2

    .line 115
    :cond_16
    if-ne p1, v1, :cond_23

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v2

    .line 120
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v2

    .line 125
    :cond_33
    packed-switch p1, :pswitch_data_5a

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->isInEmergencySession()Z

    move-result v1

    .line 139
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 141
    goto :goto_58

    .line 130
    .end local v1    # "_result":Z
    :pswitch_46
    sget-object v1, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;

    .line 131
    .local v1, "_arg0":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->nfwNotifyCb(Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    nop

    .line 148
    .end local v1    # "_arg0":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    :goto_58
    return v2

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3b
    .end packed-switch
.end method
