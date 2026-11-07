.class public abstract Landroid/hardware/security/secureclock/ISecureClock$Stub;
.super Landroid/os/Binder;
.source "ISecureClock.java"

# interfaces
.implements Landroid/hardware/security/secureclock/ISecureClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/secureclock/ISecureClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/secureclock/ISecureClock$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_generateTimeStamp:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    invoke-virtual {p0}, Landroid/hardware/security/secureclock/ISecureClock$Stub;->markVintfStability()V

    .line 49
    sget-object v0, Landroid/hardware/security/secureclock/ISecureClock$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/security/secureclock/ISecureClock$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/security/secureclock/ISecureClock;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    sget-object v0, Landroid/hardware/security/secureclock/ISecureClock$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/security/secureclock/ISecureClock;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/hardware/security/secureclock/ISecureClock;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/hardware/security/secureclock/ISecureClock$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/security/secureclock/ISecureClock$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    sparse-switch p0, :sswitch_data_e

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 81
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 85
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 77
    :sswitch_b
    const-string v0, "generateTimeStamp"

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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 216
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/hardware/security/secureclock/ISecureClock$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    sget-object v0, Landroid/hardware/security/secureclock/ISecureClock$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v2

    .line 108
    :cond_16
    if-ne p1, v1, :cond_23

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p0}, Landroid/hardware/security/secureclock/ISecureClock$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return v2

    .line 113
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p0}, Landroid/hardware/security/secureclock/ISecureClock$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v2

    .line 118
    :cond_33
    packed-switch p1, :pswitch_data_4e

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 123
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 124
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v3, v4}, Landroid/hardware/security/secureclock/ISecureClock$Stub;->generateTimeStamp(J)Landroid/hardware/security/secureclock/TimeStampToken;

    move-result-object v1

    .line 126
    .local v1, "_result":Landroid/hardware/security/secureclock/TimeStampToken;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 128
    nop

    .line 135
    .end local v1    # "_result":Landroid/hardware/security/secureclock/TimeStampToken;
    .end local v3    # "_arg0":J
    return v2

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3b
    .end packed-switch
.end method
